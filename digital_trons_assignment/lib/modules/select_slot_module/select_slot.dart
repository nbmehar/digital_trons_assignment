import 'package:digital_trons_assignment/modules/select_slot_module/select_slot_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'widgets/slot_tile_widget.dart';

class SelectSlotScreen extends StatelessWidget {
  final controller = Get.put(SelectSlotController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   title: Text("Select Time Slot"),
      // ),
      body: GetBuilder<SelectSlotController>(builder: (gxValues) {
        return SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 20.h,
              ),
              Text(
                "Select a Time Slot",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
              SizedBox(
                height: 20.h,
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: gxValues.timeSlotList.length,
                    itemBuilder: (ctx, idx) {
                      return SlotTileWidget(idx);
                    }),
              ),
            ],
          ),
        );
      }),
    );
  }
}
