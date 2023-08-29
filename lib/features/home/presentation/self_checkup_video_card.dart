import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class SelfCheckupVideoCard extends StatefulWidget {
  const SelfCheckupVideoCard({Key? key}) : super(key: key);

  @override
  _SelfCheckupVideoCardState createState() => _SelfCheckupVideoCardState();
}

class _SelfCheckupVideoCardState extends State<SelfCheckupVideoCard> {
  late VideoPlayerController _videoController;

  @override
  void initState() {
    super.initState();

    _videoController = VideoPlayerController.network(

      "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4",
    )..initialize().then((_) {
      setState(() {}); // Initialize the video player
    });
  }

  @override
  void dispose() {
    _videoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width / 2,
      width: double.maxFinite,
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),

      ),
      child: GestureDetector(
        onTap: () {
          if (_videoController.value.isInitialized) {
            _videoController.play(); // Play the video when tapped
          }
        },
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            _buildVideoPlayer(),
            DefaultTextStyle(
              style: Theme.of(context)
                  .textTheme
                  .headline6!
                  .copyWith(color: Colors.white),
              child: Container(
                padding: const EdgeInsets.all(20),

                child: SizedBox(
                  height: 70,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Self check up',
                              style: TextStyle(fontSize: 18),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'How to make your self check up',
                            ),
                          ],
                        ),
                      ),
                      Icon(
                        Icons.play_circle,
                        color: Colors.white,
                      ),
                      Expanded(
                        flex: 2,
                        child: Text(
                          'Watch tutorial',
                          textAlign: TextAlign.end,
                          style: TextStyle(
                            color: Colors.white,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildVideoPlayer() {
    if (_videoController.value.isInitialized) {
      return AspectRatio(
        aspectRatio: _videoController.value.aspectRatio,

        child: VideoPlayer(_videoController),
      );
    } else {
      return CircularProgressIndicator();
    }
  }
}

