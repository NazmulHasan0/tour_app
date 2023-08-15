import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:tourapp/const/app_color.dart';
import 'package:tourapp/ui/route/route.dart';
import 'package:tourapp/ui/styles/style.dart';

import '../widgets/vialetbutton.dart';

class UserForm extends StatelessWidget {
  //
  TextEditingController _namecontroller = TextEditingController();
  TextEditingController _phonecontroller = TextEditingController();
  TextEditingController _addresscontroller = TextEditingController();

  //! যেহেতু stateless use করছি, তাই state change করার জন্য Rx<> .obs use করা হয়েছে
  Rx<TextEditingController> _dobcontroller = TextEditingController().obs;
  Rx<DateTime> selectedDate = DateTime.now().obs; //! initial date পাবার জন্য

  _selectDate(BuildContext context) async {
    //! parameter হিসাবে context পাঠানো হচ্ছে
    final selected = await showDatePicker(
      context: context,
      initialDate: selectedDate.value,
      firstDate: DateTime(2000),
      lastDate: DateTime(2024), //Cannot be 2023
    );
    if (selected != null && selected != selectedDate) {
      _dobcontroller.value.text =
          "${selected.day}-${selected.month}-${selected.year}";
    }
  }

  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 20.h),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Tell Us More About You.",
                  style: TextStyle(
                      fontSize: 32.sp,
                      fontWeight: FontWeight.w500,
                      color: AppsColor.violetColor),
                ),
                SizedBox(height: 12.h),
                Text(
                  "We will not share your information outside this application.",
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                SizedBox(height: 80.h),
                FormField(_namecontroller, TextInputType.name, 'name'),
                FormField(_phonecontroller, TextInputType.number, 'phone'),
                FormField(_addresscontroller, TextInputType.text, 'address'),
                Obx(
                  () => TextFormField(
                    controller: _dobcontroller.value,
                    readOnly: true,
                    decoration: InputDecoration(
                      hintText: "Date of Birth",
                      hintStyle: TextStyle(fontSize: 15.sp),
                      suffixIcon: IconButton(
                        onPressed: () => _selectDate(context),
                        icon: Icon(
                          Icons.calendar_today,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30.h),
                ToggleSwitch(
                  initialLabelIndex: 0,
                  totalSwitches: 2,
                  labels: ['Male', 'Female'],
                  onToggle: (index) {
                    print('switched to: $index');
                  },
                ),
                SizedBox(height: 30.h),
                VialetButton("Submit", () => Get.toNamed(privacyPolicy)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget FormField(controller, inputType, hint) {
  return TextFormField(
    controller: controller,
    keyboardType: inputType,
    decoration: AppStyle().textfielddecoration(hint),
  );
}
