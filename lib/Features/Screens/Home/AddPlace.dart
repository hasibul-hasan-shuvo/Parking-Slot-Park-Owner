import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:parking_slot_seller/Features/Widgets/AddPlaceWidgets.dart';
import 'package:parking_slot_seller/Features/Widgets/widgets_login_registration.dart';
import 'package:parking_slot_seller/Resources/assets.dart';
import 'package:parking_slot_seller/Resources/colors.dart';
import 'package:parking_slot_seller/Resources/strings.dart';
import 'package:parking_slot_seller/Resources/values.dart';

class AddPlace extends StatefulWidget {
  @override
  _AddPlaceState createState() => _AddPlaceState();
}

class _AddPlaceState extends State<AddPlace> {
  var _imageUrl;

  final picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);

    setState(() {
      if (pickedFile != null) {
        _imageUrl = pickedFile.path;
      } else {
        print('No image selected.');
      }
    });
  }

  void saveData() async {
    //
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            APPBAR_ADD_PLACE,
            style: TextStyle(
              fontFamily: FONT_BANK_GOTHIC,
              fontSize: FONT_SIZE_APPBAR,
            ),
          ),
          backgroundColor: COLOR_CARIBBEAN_GREEN,
        ),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Image field

                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(RADIUS_PREVIEW_IMAGE),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        )
                      ],
                    ),
                    height: HEIGHT_PARKING_PLACE_IMAGE,
                    child: FlatButton(
                      onPressed: getImage,
                      child: _getImage(_imageUrl),
                      padding: EdgeInsets.all(0.0),
                    ),
                  ),

                  SizedBox(
                    height: 20.0,
                  ),
                  // Address field
                  AddPlaceTextField(
                    (value) {
                      print(value);
                    },
                    obscure: false,
                    hint: HINT_ADDRESS,
                    keyboardType: TextInputType.streetAddress,
                    icon: Icons.place,
                  ),

                  SizedBox(
                    height: 20.0,
                  ),

                  AddPlaceTextField(
                    (value) {
                      print(value);
                    },
                    obscure: false,
                    hint: HINT_RATE,
                    keyboardType:
                        TextInputType.numberWithOptions(decimal: true),
                    icon: Icons.attach_money,
                  ),

                  SizedBox(
                    height: 20.0,
                  ),

                  AddPlaceTextField(
                    (value) {
                      print(value);
                    },
                    obscure: false,
                    hint: TITLE_TOTAL_SLOT,
                    keyboardType:
                        TextInputType.numberWithOptions(decimal: false),
                    icon: Icons.park,
                  ),

                  SizedBox(
                    height: 40.0,
                  ),

                  SubmitButton(
                    onPressed: saveData,
                    text: BUTTON_ADD_PLACE,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget _getImage(imageUrl) {
  if (imageUrl == null) {
    return Image(
      image: AssetImage(
        IMAGE_ADD_IMAGE,
      ),
      height: HEIGHT_PARKING_PLACE_ADD_IMAGE,
    );
  } else {
    return ConstrainedBox(
      constraints: BoxConstraints.expand(),
      child: ClipRRect(
        borderRadius: BorderRadius.all(
          Radius.circular(RADIUS_PREVIEW_IMAGE),
        ),
        child: Image.file(
          File(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
