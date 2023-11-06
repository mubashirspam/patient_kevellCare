import 'dart:async';
import 'dart:convert';

import 'dart:io';

import 'package:flutter/material.dart';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/services.dart';
import 'package:kevell_care/core/them/custom_theme_extension.dart';
import 'package:path_provider/path_provider.dart';

import 'widgets/checkup_card.dart';

class StethoscopeWidget extends StatefulWidget {
  final String audio;
  final VoidCallback onpress;
  final bool isReading;
 
  const StethoscopeWidget(
      {super.key,
      required this.audio,
      required this.onpress,
      required this.isReading,
      });

  @override
  State<StethoscopeWidget> createState() => _StethoscopeWidgetState();
}

class _StethoscopeWidgetState extends State<StethoscopeWidget> {
  final audioPlayer = AudioPlayer();
  bool isPlying = false;

  bool isLoading = false;

  Duration duration = Duration.zero;
  Duration position = Duration.zero;

  String formatTime(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final hours = twoDigits(duration.inHours);
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));
    return [
      if (duration.inHours > 0) hours,
      minutes,
      seconds,
    ].join(':');
  }

  late StreamSubscription<PlayerState> playerStateSubscription;
  late StreamSubscription<Duration> durationChangedSubscription;
  late StreamSubscription<Duration> positionChangedSubscription;

  @override
  void initState() {

    _initAudioStreaming();

    playerStateSubscription = audioPlayer.onPlayerStateChanged.listen((event) {
      setState(() {
        isPlying = event == PlayerState.playing;
      });
    });

    durationChangedSubscription =
        audioPlayer.onDurationChanged.listen((newDuration) {
      setState(() {
        duration = newDuration;
      });
    });

    positionChangedSubscription =
        audioPlayer.onPositionChanged.listen((newPosition) {
      setState(() {
        position = newPosition;
      });
    });

    super.initState();
  }


  ////////////////////////////*************************************** */////////////////////////////
  ///////////////////////////////*************************************** */////////////////////////////
  ///////////////////////////////*************************************** */////////////////////////////
  ///////////////////////////////*************************************** */////////////////////////////
  ///v
  StreamController<Uint8List> controller = StreamController<Uint8List>();

  void _initAudioStreaming() {
    // Replace with your actual Base64 encoded audio data

    Stream<Uint8List> audioDataStream = getStreamingAudioData(widget.audio);

    audioDataStream.listen((Uint8List audioData) async {
      if (!isPlying) {
        await audioPlayer.setSourceBytes(audioData);
        isPlying = true;
      }
    });
  }

  Stream<Uint8List> getStreamingAudioData(String base64Data) {
    final decodedData = base64Decode(base64Data);

    const chunkSize = 1024;
    for (int i = 0; i < decodedData.length; i += chunkSize) {
      final end = i + chunkSize < decodedData.length
          ? i + chunkSize
          : decodedData.length;
      final chunk = Uint8List.sublistView(decodedData, i, end);
      controller.add(chunk);
    }

    controller.close();

    return controller.stream;
  }

////////////////////////////*************************************** */////////////////////////////
///////////////////////////////*************************************** */////////////////////////////
///////////////////////////////*************************************** */////////////////////////////
///////////////////////////////*************************************** */////////////////////////////

  File? file;

  void convertFile() async {
    setState(() => isLoading = true);
    final bytes = base64Decode(widget.audio);
    final dir = await getTemporaryDirectory();
    file = File('${dir.path}/audio.wav');

    await file!.writeAsBytes(bytes);

    setState(() => isLoading = false);
  }

  @override
  void didChangeDependencies() {
      // _initAudioStreaming();
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    playerStateSubscription.cancel();
    durationChangedSubscription.cancel();
    positionChangedSubscription.cancel();
    audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CheckupCard(
    
      name: "Stethoscope",
      onPress: widget.onpress,
      children: [
        SizedBox(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 50,
                    width: 50,
                    child: Center(
                      child: isLoading
                          ? CircularProgressIndicator(
                              backgroundColor: Colors.white.withOpacity(0.3),
                              color: Colors.white,
                            )
                          : IconButton(
                              color: Colors.white,
                              onPressed: file != null && widget.isReading
                                  ? () async {
                                      if (isPlying) {
                                        await audioPlayer.pause();
                                      } else {
                                        setState(() {
                                          isLoading = true;
                                        });

                                        audioPlayer
                                            .play(DeviceFileSource(file!.path))
                                            .then((value) async {
                                          await audioPlayer.resume();
                                          setState(() {
                                            isLoading = false;
                                          });
                                        });
                                      }
                                    }
                                  : () {
                                      convertFile();
                                    },
                              icon: Icon(
                                isPlying ? Icons.pause : Icons.play_arrow,
                                color: context.theme.primary,
                                size: 30,
                              ),
                            ),
                    ),
                  ),
                  Expanded(child: SizedBox(height: 30, child: buildSlider()))

                  // widget.isReading
                  //     ? Lottie.asset(AppLottie.loading,
                  //         fit: BoxFit.contain, height: 60)
                  //     : const SizedBox()
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 45),
                    child: Text(
                      formatTime(duration),
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 22),
                    child: Text(
                      formatTime(duration - position),
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }

  Widget buildSlider() => Slider(
        inactiveColor: context.theme.primary!.withOpacity(0.4),
        thumbColor: context.theme.primary,
        activeColor: context.theme.primary,
        min: 0,
        max: duration.inSeconds.toDouble(),
        value: position.inSeconds.toDouble(),
        onChanged: (value) async {
          final position = Duration(seconds: value.toInt());
          await audioPlayer.seek(position);
          await audioPlayer.resume();
        },
      );
}
