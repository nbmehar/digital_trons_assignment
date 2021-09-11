import 'package:flutter/cupertino.dart';

class SlotModel {
  String slotTime;
  bool isBooked;
  String firstName;
  String lastName;
  String phoneNum;

  SlotModel({
    @required this.slotTime,
    @required this.isBooked,
    @required this.firstName,
    @required this.lastName,
    @required this.phoneNum,
  });
}
