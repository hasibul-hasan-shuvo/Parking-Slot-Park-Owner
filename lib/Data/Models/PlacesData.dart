import 'package:dataclass/dataclass.dart';
import 'package:flutter/cupertino.dart';

@dataClass
class PlaceData {
  var id;
  var address;
  var imageUrl;
  var rate;
  var phoneNumber;
  PlaceData(
      {this.id,
      @required this.address,
      @required this.imageUrl,
      @required this.rate,
      @required this.phoneNumber});
}
