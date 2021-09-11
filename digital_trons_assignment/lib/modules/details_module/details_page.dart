import 'package:digital_trons_assignment/modules/details_module/details_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class DetailsPage extends StatelessWidget {
  final controller = Get.put(DetailsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: GetBuilder<DetailsController>(builder: (gxValues) {
        return SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    "Enter Your Details",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xff333333),
                      fontSize: 24.sp,
                      fontFamily: "Erply Ladna",
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0.sp),
                    child: buildFirstNameFormField(gxValues),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0.sp),
                    child: buildLastNameFormField(gxValues),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0.sp),
                    child: buildPhoneFormField(),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0.sp),
                    child: GestureDetector(
                      onTap: () {
                        gxValues.onSave();
                      },
                      child: Container(
                        width: 1.sw,
                        height: 40.h,
                        color: Color(0xff50afe2),
                        padding: const EdgeInsets.all(15),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Save",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                letterSpacing: 0.21,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0.sp),
                    child: GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Container(
                        width: 1.sw,
                        height: 40.h,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xff50afe2),
                            width: 1,
                          ),
                          color: Color(0xfff5faf9),
                        ),
                        padding: const EdgeInsets.all(15),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Cancel",
                              style: TextStyle(
                                color: Color(0xff1a1a1a),
                                fontSize: 14.sp,
                                fontFamily: "Erply Ladna",
                                fontWeight: FontWeight.w700,
                                letterSpacing: 0.21,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          new FloatingActionButton(
            onPressed: getImage,
            tooltip: 'Pick Image',
            child: new Icon(Icons.add_a_photo),
          ),
          SizedBox(
            height: 3,
          ),
          Text("Open Gallery")
        ],
      ),
    );
  }

  Future getImage() async {
    final ImagePicker _picker = ImagePicker();
    final XFile image = await _picker.pickImage(source: ImageSource.gallery);
  }

  Widget buildPhoneFormField() {
    return GetBuilder<DetailsController>(builder: (gxValues) {
      return TextFormField(
        controller: gxValues.phoneController,
        decoration: InputDecoration(
          labelText: "Phone Number",
        ),
        keyboardType: TextInputType.phone,
      );
    });
  }

  TextFormField buildFirstNameFormField(DetailsController gxValues) {
    return TextFormField(
      controller: gxValues.firstNameController,
      decoration: InputDecoration(
        labelText: "First Name",
        hintText: "Enter your First Name",
      ),
      keyboardType: TextInputType.text,
    );
  }

  buildLastNameFormField(DetailsController gxValues) {
    return TextFormField(
      controller: gxValues.lastNameController,
      decoration: InputDecoration(
        labelText: "Last Name",
        hintText: "Enter your Last Name",
        // suffixIcon: CustomSuffixIcon(iconPath: "assets/icons/Mail.svg"),
      ),
      keyboardType: TextInputType.text,
    );
  }
}
