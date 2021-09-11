import 'package:digital_trons_assignment/models/slot_model.dart';
import 'package:digital_trons_assignment/modules/select_slot_module/select_slot.dart';
import 'package:digital_trons_assignment/modules/select_slot_module/select_slot_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailsController extends GetxController {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  SelectSlotController slotSelectController = Get.find();

  @override
  void onInit() {
    SlotModel currentSlot = slotSelectController
        .timeSlotList[slotSelectController.currentSelectedIndex];

    if (currentSlot.isBooked) {
      firstNameController.text = currentSlot.firstName;
      lastNameController.text = currentSlot.lastName;
      phoneController.text = currentSlot.phoneNum;
    }

    super.onInit();
  }

  Future<void> onSave() async {
    if (firstNameController.text.isEmpty) {
      Get.snackbar("Error", "Plese Enter First Name",
          colorText: Colors.white, backgroundColor: Colors.red);
    } else if (lastNameController.text.isEmpty) {
      Get.snackbar("Error", "Plese Enter Last Name",
          colorText: Colors.white, backgroundColor: Colors.red);
    } else if (phoneController.text.isEmpty ||
        phoneController.text.length != 10) {
      Get.snackbar("Error", "Plese Enter 10 Digit Phone Number",
          colorText: Colors.white, backgroundColor: Colors.red);
    } else {
      Get.snackbar("Success", "Slot Booked Successfully",
          colorText: Colors.white, backgroundColor: Colors.green);

      slotSelectController
          .timeSlotList[slotSelectController.currentSelectedIndex]
          .firstName = firstNameController.text;
      slotSelectController
          .timeSlotList[slotSelectController.currentSelectedIndex]
          .lastName = lastNameController.text;
      slotSelectController
          .timeSlotList[slotSelectController.currentSelectedIndex]
          .phoneNum = phoneController.text;
      slotSelectController
          .timeSlotList[slotSelectController.currentSelectedIndex]
          .isBooked = true;

      slotSelectController.update();

      await Future.delayed(Duration(milliseconds: 1000));
      Get.back();
      Get.back();
    }
  }
}
