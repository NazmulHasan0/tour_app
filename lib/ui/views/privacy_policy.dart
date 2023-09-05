import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:tourapp/ui/route/route.dart';
import 'package:tourapp/ui/widgets/vialetbutton.dart';

class PrivacyPolicy extends StatelessWidget {
  //
  PdfViewerController? _pdfViewerController;
  RxBool _loaded = false.obs;
  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 20.h),
          child: Column(
            children: [
              Expanded(
                child: SfPdfViewer.network(
                  "https://firebasestorage.googleapis.com/v0/b/mytourapp-9a034.appspot.com/o/privacy-policy%2Fdummy%20pdf.pdf?alt=media&token=e06eac60-76d1-42c9-bc01-3a8b13a44ec7",
                  onDocumentLoaded: (PdfDocumentLoadedDetails details) {
                    _loaded.value = true;
                  },
                ),
              ),
              Obx(
                () => _loaded == true
                    ? VialetButton(
                        "Agree",
                        () => Get.toNamed(mainHomeScreen),
                      )
                    : Text("Still Loading"),
              ),
              SizedBox(height: 10.h),
              SizedBox(height: 10.h),
            ],
          ),
        ),
      ),
    );
  }
}
