import 'package:flutter/material.dart';
import 'package:parking_slot_seller/Resources/assets.dart';
import 'package:parking_slot_seller/Resources/colors.dart';
import 'package:parking_slot_seller/Resources/strings.dart';
import 'package:parking_slot_seller/Resources/values.dart';

class WidgetTopLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _WidgetCarLogo(),
          _WidgetTopText(LOGIN_SCREEN_TOP_TEXT),
        ],
      ),
    );
  }
}

class _WidgetCarLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: TAG_CAR_LOGO,
      child: Container(
        child: Image.asset(
          IMAGE_LAUNCHER_ICON,
          height: 70.0,
        ),
      ),
    );
  }
}

class _WidgetTopText extends StatelessWidget {
  final String text;
  _WidgetTopText(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 34.0,
          fontWeight: FontWeight.bold,
          fontFamily: FONT_BANK_GOTHIC,
        ),
      ),
    );
  }
}

class WidgetLoginBottom extends StatefulWidget {
  @override
  _WidgetLoginBottomState createState() => _WidgetLoginBottomState();
}

class _WidgetLoginBottomState extends State<WidgetLoginBottom> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(LOGIN_REGISTRATION_BOTTOM_RADIUS),
          topRight: Radius.circular(LOGIN_REGISTRATION_BOTTOM_RADIUS),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _TextField(
            (value) {
              print(value);
            },
            hint: HINT_EMAIL,
            keyboarType: TextInputType.emailAddress,
          ),
        ],
      ),
    );
  }
}

class _TextField extends StatelessWidget {
  Function onTextChange;
  var hint;
  var keyboarType;
  _TextField(this.onTextChange, {this.hint, this.keyboarType});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 30.0,
        right: 30.0,
      ),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(15.0),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 7,
                offset: Offset(0, 3),
              )
            ]),
        child: Padding(
          padding:
              EdgeInsets.only(left: 20.0, top: 5.0, right: 20.0, bottom: 5.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: hint,
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              hintStyle: TextStyle(
                color: COLOR_SHAMROCK,
                fontFamily: FONT_BANK_GOTHIC,
              ),
            ),
            onChanged: (value) {
              onTextChange(value);
            },
            style: TextStyle(
              color: COLOR_CARIBBEAN_GREEN,
              fontSize: 20.0,
              fontFamily: FONT_BANK_GOTHIC,
            ),
            keyboardType: keyboarType,
          ),
        ),
      ),
    );
  }
}
