import 'package:digital_trons_assignment/modules/select_slot_module/select_slot_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SlotTileWidget extends StatelessWidget {
  final idx;
  SlotTileWidget(this.idx);


  @override
  Widget build(BuildContext context) {
    return GetBuilder<SelectSlotController>(
      builder: (gxValues) {
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: GestureDetector(
            onTap: () {
              SelectSlotController controller = Get.find();
              controller.onSlotSelect(idx);
            },
            child: Container(
              decoration: BoxDecoration(
                  color:  gxValues.timeSlotList[idx].isBooked?Colors.red:Colors.blue[500], borderRadius: BorderRadius.circular(20)),
              height: 50,
              width: double.infinity,
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  gxValues.timeSlotList[idx].slotTime,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        );
      }
    );
  }
}
