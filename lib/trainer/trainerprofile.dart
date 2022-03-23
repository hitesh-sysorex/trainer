import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

class TrainerProfile extends StatefulWidget {
  TrainerProfile({Key? key}) : super(key: key);

  @override
  State<TrainerProfile> createState() => _TrainerProfileState();
}

class _TrainerProfileState extends State<TrainerProfile> {
  // Active image file
  File? _imageFile;

// Select an image via gallery or camera

  Future<void> _pickImage(ImageSource source) async {
    var selected = await ImagePicker().pickImage(source: source);

    setState(() {
      _imageFile = File(selected!.path);
    });
  }

  // Remove image
  void _clear() {
    setState(() => _imageFile = null);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Container(
                      width: 200.0,
                      height: 200.0,
                      decoration: BoxDecoration(
                        color: const Color(0xff7c94b6),
                        image: DecorationImage(
                          image: _imageFile == null
                              ? AssetImage('assets/images/charlotte.jpg')
                              : FileImage(_imageFile!) as ImageProvider,

                          // AssetImage('assets/images/charlotte.jpg'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(100.0),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xff55C4D8).withOpacity(0.6),
                            spreadRadius: 3,
                            blurRadius: 5,
                            offset: Offset(0, 0),
                          ),
                        ],
                        border: Border.all(
                          color: Color(0xff55C4D8).withOpacity(0.6),
                          width: 2.0,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 2,
                      right: 5,
                      child: Container(
                        child: IconButton(
                          onPressed: () {
                            showModalBottomSheet<void>(
                              context: context,
                              builder: (BuildContext context) {
                                return Container(
                                  padding: EdgeInsets.all(20.0),
                                  height:
                                      MediaQuery.of(context).size.height * 0.2,
                                  child: Column(
                                    children: [
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: const Text(
                                          'Profile photo',
                                          style: TextStyle(fontSize: 18.0),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20.0,
                                      ),
                                      Row(
                                        children: [
                                          Column(
                                            children: [
                                              IconButton(
                                                onPressed: () {
                                                  _pickImage(
                                                      ImageSource.camera);
                                                  Navigator.pop(context);
                                                },
                                                icon: Icon(Icons.photo_camera),
                                              ),
                                              Text('Camera')
                                            ],
                                          ),
                                          SizedBox(
                                            width: 20.0,
                                          ),
                                          Column(
                                            children: [
                                              IconButton(
                                                onPressed: () {
                                                  _pickImage(
                                                      ImageSource.gallery);

                                                  Navigator.pop(context);
                                                },
                                                icon: Icon(Icons.photo),
                                              ),
                                              Text('Gallery')
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                );
                              },
                            );
                          },
                          icon: Icon(Icons.add_a_photo, color: Colors.black),
                        ),
                        decoration: BoxDecoration(
                            border: Border.all(
                              width: 2,
                              color: Colors.white,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                30,
                              ),
                            ),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(2, 4),
                                color: Colors.black.withOpacity(
                                  0.3,
                                ),
                                blurRadius: 3,
                              ),
                            ]),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Form(
                      child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.05,
                      ),
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text('Full Name')),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.005,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(8.0),
                            borderSide: new BorderSide(),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.025,
                      ),
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text('Change Password')),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.005,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(8.0),
                            borderSide: new BorderSide(),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.025,
                      ),
                      Align(alignment: Alignment.topLeft, child: Text('Age')),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.005,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(8.0),
                            borderSide: new BorderSide(),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.025,
                      ),
                      Align(alignment: Alignment.topLeft, child: Text('Age')),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.005,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton.icon(
                              onPressed: null,
                              icon: Icon(Icons.radio_button_off),
                              label: Text('Male')),
                          ElevatedButton.icon(
                              onPressed: null,
                              icon: Icon(Icons.radio_button_on),
                              label: Text('Female'))
                        ],
                      )
                    ],
                  )),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Material(
          color: Color(0xff55C4D8).withOpacity(0.6),
          child: InkWell(
            onTap: () {},
            child: SizedBox(
              height: kToolbarHeight,
              width: double.infinity,
              child: Center(
                child: Text(
                  'Save & Continue',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
