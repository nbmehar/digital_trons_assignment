import 'package:digital_trons_assignment/models/slot_model.dart';
import 'package:digital_trons_assignment/modules/details_module/details_page.dart';
import 'package:get/get.dart';

class SelectSlotController extends GetxController {
  int currentSelectedIndex = 0;

  var timeSlotList = [
    SlotModel(slotTime: "9AM - 10AM", isBooked: false,firstName: "",lastName: "",phoneNum: ""),
    SlotModel(slotTime: "10AM - 11AM", isBooked: false,firstName: "",lastName: "",phoneNum: ""),
    SlotModel(slotTime: "11AM - 12PM", isBooked: false,firstName: "",lastName: "",phoneNum: ""),
    SlotModel(slotTime: "12PM - 1PM", isBooked: false,firstName: "",lastName: "",phoneNum: ""),
    SlotModel(slotTime: "1PM - 2PM", isBooked: false,firstName: "",lastName: "",phoneNum: ""),
    SlotModel(slotTime: "2PM - 3PM", isBooked: false,firstName: "",lastName: "",phoneNum: ""),
    SlotModel(slotTime: "3PM - 4PM", isBooked: false,firstName: "",lastName: "",phoneNum: ""),
    SlotModel(slotTime: "4PM - 5PM", isBooked: false,firstName: "",lastName: "",phoneNum: ""),
  ];

  @override
  void onInit() {
    super.onInit();
  }

  void onSlotSelect(idx) {
    currentSelectedIndex = idx;
    Get.to(() => DetailsPage());
  }
}
