import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/support_field.dart';

class Support extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Support", style: TextStyle(color: Colors.black)),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 20, top: 20, right: 20),
        child: Column(
          children: [
            Text(
              "If you have any problems , please contact us . We are at your service all the time.",
              style: TextStyle(
                fontSize: 20.sp,
              ),
            ),
            Divider(color: Colors.blue),
            supportField("Phone", "01616738383"),
            supportField("E-mail", "info@gmail.com"),
            supportField("Facebook", "http://facebook.com/shelter/info"),
          ],
        ),
      ),
    );
  }
}
