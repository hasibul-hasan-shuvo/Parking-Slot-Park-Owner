import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parking_slot_seller/Features/Widgets/widgets_login_registration.dart';
import 'package:parking_slot_seller/Resources/strings.dart';
import 'package:parking_slot_seller/Resources/values.dart';

class RegistrationDesign extends StatefulWidget {
  @override
  _RegistrationDesignState createState() => _RegistrationDesignState();
}

class _RegistrationDesignState extends State<RegistrationDesign> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(RADIUS_LOGIN_REGISTRATION_BOTTOM),
          topRight: Radius.circular(RADIUS_LOGIN_REGISTRATION_BOTTOM),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: PADDING_HORIZONTAL_LOGIN_BOTTOM,
          vertical: PADDING_VERTICAL_LOGIN_BOTTOM,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            LoginTextField(
              (value) {
                print(value);
              },
              hint: HINT_EMAIL,
              keyboardType: TextInputType.emailAddress,
              obscure: false,
            ),
            SizedBox(
              height: 30.0,
            ),
            LoginTextField(
              (value) {
                print(value);
              },
              hint: HINT_PASSWORD,
              keyboardType: TextInputType.visiblePassword,
              obscure: true,
            ),
            SizedBox(
              height: 50.0,
            ),
            SubmitButton(
              onPressed: () {
                print("Pressed");
              },
            ),
            SizedBox(
              height: 20.0,
            ),
            BottomOption(
              text: ALREADY_HAVE_AN_ACCOUNT,
              onPressed: () {
                Get.back();
              },
            )
          ],
        ),
      ),
    );
  }
}