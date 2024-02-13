import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

import 'package:kevell_care/core/them/custom_theme_extension.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../../core/helper/toast.dart';
import '../../widgets/buttons/text_button_widget.dart';
import 'bloc/profile_bloc.dart';

class UploadImagePage extends StatefulWidget {
  const UploadImagePage({super.key});

  @override
  State<UploadImagePage> createState() => _UploadImagePageState();
}

class _UploadImagePageState extends State<UploadImagePage> {
  String status = "";
  File? _selectedImage;
  bool isButtonDisabled = true;
  bool isLoading = false;

  Future<void> requestPermission(Permission permission) async {
    final status = await permission.request();

    log(status.toString());
  }

  Future<void> _selectImage(ImageSource source) async {
    final pickedImage =
        await ImagePicker().pickImage(source: source, imageQuality: 50);

    setState(() {
      if (pickedImage != null) {
        _selectedImage = File(pickedImage.path);
        isButtonDisabled = false;
      }
    });

    if (_selectedImage != null) {
      final appDir = await getApplicationDocumentsDirectory();
      const fileName = 'selected_image.jpg';
      await _selectedImage!.copy('${appDir.path}/$fileName');
    }
  }

  // _cropImage(File imgFile) async {
  //   final croppedFile = await ImageCropper().cropImage(
  //       sourcePath: imgFile.path,
  //       aspectRatioPresets: Platform.isAndroid
  //           ? [
  //               CropAspectRatioPreset.square,
  //             ]
  //           : [
  //               CropAspectRatioPreset.square,
  //             ],
  //       uiSettings: [
  //         AndroidUiSettings(
  //             toolbarTitle: "Image Cropper",
  //             toolbarColor: Colors.deepOrange,
  //             toolbarWidgetColor: Colors.white,
  //             initAspectRatio: CropAspectRatioPreset.original,
  //             lockAspectRatio: false),
  //         IOSUiSettings(
  //           title: "Image Cropper",
  //         )
  //       ]);
  //   if (croppedFile != null) {
  //     imageCache.clear();
  //     setState(() {
  //       _selectedImage = File(croppedFile.path);
  //     });
  //     // reload();
  //   }
  // }



  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.theme.primary,
        title: Text(
          "Upload Image",
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),
      body: Column(
        children: [
          _selectedImage != null
              ? Expanded(
                  child: SizedBox(
                    width: w,
                    height: w,
                    child: Image.file(
                      _selectedImage!,
                      width: w,
                      fit: BoxFit.fill,
                    ),
                  ),
                )
              : Expanded(
                  child: SizedBox(
                    height: w,
                    width: w,
                    child: const Center(
                      child: Text(
                        'No image selected',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ),
          Padding(
            padding: const EdgeInsets.all(20).copyWith(bottom: 100),
            child: BlocConsumer<ProfileBloc, ProfileState>(
              listener: (context, state) {
                if (!state.isUpdateLoading && state.isError) {
                  Toast.showToast(
                      context: context,
                      message: "Error occured try again later");
                }
                if (!state.isUpdateLoading && state.hasData) {
                  Toast.showToast(
                      context: context,
                      message: "Profile Updated Successfully");

                  Navigator.of(context).pop();
                }
              },
              builder: (context, state) {
                return TextButtonWidget(
                  onPressed: isButtonDisabled
                      ? null
                      : () async {
                          if (_selectedImage != null) {
                            // List<int> imageBytes =
                            //     await _selectedImage!.readAsBytes();
                            // String base64String = base64Encode(imageBytes);
                            // log(base64String);
                            // uploadImage(base64String);

                            context.read<ProfileBloc>().add(
                                  ProfileEvent.uplaodImage(
                                      image: _selectedImage!),
                                );
                          }
                        },
                  name: "upload",
                  // isLoading: isLoading
                  isLoading: state.isUpdateLoading,
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          DecoratedBox(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: context.theme.primary),
            child: IconButton(
              onPressed: () async {
                _selectImage(ImageSource.camera);

                Map<Permission, PermissionStatus> statuses = await [
                  Permission.accessMediaLocation,
                  Permission.storage,
                  Permission.camera,
                ].request();
                if (statuses[Permission.storage]!.isGranted &&
                    statuses[Permission.camera]!.isGranted) {
                  _selectImage(ImageSource.camera);
                } else {
                  requestPermission(Permission.storage);
                  requestPermission(Permission.camera);
                  log('no permission provided');
                }
              },
              icon: const Icon(
                Icons.camera,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(width: 20),
          DecoratedBox(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: context.theme.primary),
            child: IconButton(
              onPressed: () async {
                _selectImage(ImageSource.gallery);
                // Map<Permission, PermissionStatus> statuses = await [
                //   Permission.accessMediaLocation,
                //   Permission.storage,
                //   Permission.camera,
                // ].request();
                // if (statuses[Permission.storage]!.isGranted &&
                //     statuses[Permission.camera]!.isGranted) {
                //   _selectImage(ImageSource.gallery);
                // } else {
                //   requestPermission(Permission.storage);
                //   requestPermission(Permission.camera);
                //   log('no permission provided');
                // }
              },
              icon: const Icon(
                Icons.image,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
// class UploadImagePage extends StatefulWidget {


//   const UploadImagePage({
//     Key? key,

//   }) : super(key: key);

//   @override
//   _UploadImagePageState createState() => _UploadImagePageState();
// }

// class _UploadImagePageState extends State<UploadImagePage> {
//   XFile? _pickedFile;
//   CroppedFile? _croppedFile;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: !kIsWeb ? AppBar(title: Text('ff')) : null,
//       body: Column(
//         mainAxisSize: MainAxisSize.max,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
          
//           Expanded(child: _body()),
//         ],
//       ),
//     );
//   }

//   Widget _body() {
//     if (_croppedFile != null || _pickedFile != null) {
//       return _imageCard();
//     } else {
//       return _uploaderCard();
//     }
//   }

//   Widget _imageCard() {
//     return Center(
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Padding(
//             padding:
//                 const EdgeInsets.symmetric(horizontal: kIsWeb ? 24.0 : 16.0),
//             child: Card(
//               elevation: 4.0,
//               child: Padding(
//                 padding: const EdgeInsets.all(kIsWeb ? 24.0 : 16.0),
//                 child: _image(),
//               ),
//             ),
//           ),
//           const SizedBox(height: 24.0),
//           _menu(),
//         ],
//       ),
//     );
//   }

//   Widget _image() {
//     final screenWidth = MediaQuery.of(context).size.width;
//     final screenHeight = MediaQuery.of(context).size.height;
//     if (_croppedFile != null) {
//       final path = _croppedFile!.path;
//       return ConstrainedBox(
//         constraints: BoxConstraints(
//           maxWidth: 0.8 * screenWidth,
//           maxHeight: 0.7 * screenHeight,
//         ),
//         child: kIsWeb ? Image.network(path) : Image.file(File(path)),
//       );
//     } else if (_pickedFile != null) {
//       final path = _pickedFile!.path;
//       return ConstrainedBox(
//         constraints: BoxConstraints(
//           maxWidth: 0.8 * screenWidth,
//           maxHeight: 0.7 * screenHeight,
//         ),
//         child: kIsWeb ? Image.network(path) : Image.file(File(path)),
//       );
//     } else {
//       return const SizedBox.shrink();
//     }
//   }

//   Widget _menu() {
//     return Row(
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         FloatingActionButton(
//           onPressed: () {
//             _clear();
//           },
//           backgroundColor: Colors.redAccent,
//           tooltip: 'Delete',
//           child: const Icon(Icons.delete),
//         ),
//         if (_croppedFile == null)
//           Padding(
//             padding: const EdgeInsets.only(left: 32.0),
//             child: FloatingActionButton(
//               onPressed: () {
//                 _cropImage();
//               },
//               backgroundColor: const Color(0xFFBC764A),
//               tooltip: 'Crop',
//               child: const Icon(Icons.crop),
//             ),
//           )
//       ],
//     );
//   }

//   Widget _uploaderCard() {
//     return Center(
//       child: Card(
//         elevation: 4.0,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(16.0),
//         ),
//         child: SizedBox(
//           width: kIsWeb ? 380.0 : 320.0,
//           height: 300.0,
//           child: Column(
//             mainAxisSize: MainAxisSize.max,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Expanded(
//                 child: Padding(
//                   padding: const EdgeInsets.all(16.0),
//                   child: DottedBorder(
//                     radius: const Radius.circular(12.0),
//                     borderType: BorderType.RRect,
//                     dashPattern: const [8, 4],
//                     color: Theme.of(context).highlightColor.withOpacity(0.4),
//                     child: Center(
//                       child: Column(
//                         mainAxisSize: MainAxisSize.min,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Icon(
//                             Icons.image,
//                             color: Theme.of(context).highlightColor,
//                             size: 80.0,
//                           ),
//                           const SizedBox(height: 24.0),
//                           Text(
//                             'Upload an image to start',
//                             style: kIsWeb
//                                 ? Theme.of(context)
//                                     .textTheme
//                                     .headlineSmall!
//                                     .copyWith(
//                                         color: Theme.of(context).highlightColor)
//                                 : Theme.of(context)
//                                     .textTheme
//                                     .bodyMedium!
//                                     .copyWith(
//                                         color:
//                                             Theme.of(context).highlightColor),
//                           )
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(vertical: 24.0),
//                 child: ElevatedButton(
//                   onPressed: () {
//                     _uploadImage();
//                   },
//                   child: const Text('Upload'),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Future<void> _cropImage() async {
//     if (_pickedFile != null) {
//       final croppedFile = await ImageCropper().cropImage(
//         sourcePath: _pickedFile!.path,
//         compressFormat: ImageCompressFormat.jpg,
//         compressQuality: 100,
//         uiSettings: [
//           AndroidUiSettings(
//               toolbarTitle: 'Cropper',
//               toolbarColor: Colors.deepOrange,
//               toolbarWidgetColor: Colors.white,
//               initAspectRatio: CropAspectRatioPreset.original,
//               lockAspectRatio: false),
//           IOSUiSettings(
//             title: 'Cropper',
//           ),
//           WebUiSettings(
//             context: context,
//             presentStyle: CropperPresentStyle.dialog,
//             boundary: const CroppieBoundary(
//               width: 520,
//               height: 520,
//             ),
//             viewPort:
//                 const CroppieViewPort(width: 480, height: 480, type: 'circle'),
//             enableExif: true,
//             enableZoom: true,
//             showZoomer: true,
//           ),
//         ],
//       );
//       if (croppedFile != null) {
//         setState(() {
//           _croppedFile = croppedFile;
//         });
//       }
//     }
//   }

//   Future<void> _uploadImage() async {
//     final pickedFile =
//         await ImagePicker().pickImage(source: ImageSource.gallery);
//     if (pickedFile != null) {
//       setState(() {
//         _pickedFile = pickedFile;
//       });
//     }
//   }

//   void _clear() {
//     setState(() {
//       _pickedFile = null;
//       _croppedFile = null;
//     });
//   }
// }