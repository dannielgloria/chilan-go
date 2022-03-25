import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';

class ProfilePic extends StatefulWidget {
  const ProfilePic({
    Key? key,
  }) : super(key: key);

  @override
  State<ProfilePic> createState() => _ProfilePicState();
}

class _ProfilePicState extends State<ProfilePic> {
  bool imageTaken = false;
  late XFile? imageFile;
  final ImagePicker picker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115,
      width: 115,
      child: Stack(
        fit: StackFit.expand,
        clipBehavior: Clip.none,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/profile.png"),
          ),
          Positioned(
            right: -16,
            bottom: 0,
            child: SizedBox(
              height: 46,
              width: 46,
              child: TextButton(
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                    side: BorderSide(color: Colors.white),
                  ),
                  primary: Colors.white,
                  backgroundColor: Color(0xFFF5F6F9),
                ),
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: ((builder) => Container(
                          height: 100,
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 20,
                          ),
                          child: Column(
                            children: <Widget>[
                              const Text(
                                "Elige tu imagen",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: "Lato-Regular",
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    margin: const EdgeInsets.only(
                                      right: 20,
                                    ),
                                    child: TextButton.icon(
                                      onPressed: () {
                                        takePhoto(ImageSource.camera);
                                      },
                                      icon: const Icon(Icons.camera),
                                      label: const Text(
                                        "Camara",
                                        style: TextStyle(
                                          fontFamily: "Lato-Regular",
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(
                                      left: 20,
                                    ),
                                    child: TextButton.icon(
                                      onPressed: () {
                                        takePhoto(ImageSource.gallery);
                                      },
                                      icon: const Icon(Icons.image),
                                      label: const Text(
                                        "Galería",
                                        style: TextStyle(
                                          fontFamily: "Lato-Regular",
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )),
                  );
                },
                child: Image.asset("assets/icons/camera.png"),
              ),
            ),
          )
        ],
      ),
    );
  }

  void takePhoto(ImageSource source) async {
    final pickedFile = await picker.pickImage(
      source: source,
    );
    setState(() {
      imageTaken = true;
      imageFile = pickedFile;
      uploadImage(imageFile!);
      Navigator.pop(context);
    });
  }

  Future<void> uploadImage(XFile pickedFile) async {
    String filePath = pickedFile.path;
    //await uploadFile(filePath);
    imageTaken = true;
  }
}
