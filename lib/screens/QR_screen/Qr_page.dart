import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class qr_page extends StatefulWidget {
  @override
  State<qr_page> createState() => _qr_pageState();
}

class _qr_pageState extends State<qr_page> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  Barcode? result;
  QRViewController? controller;

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller!.pauseCamera();
    } else if (Platform.isIOS) {
      controller!.resumeCamera();
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Scaffold(
          appBar: AppBar(backgroundColor: Colors.black87.withOpacity(0.2),),
          body: Stack(
            children: [
              QRView(
                key: qrKey,
                onPermissionSet: (ctrl, p) =>
                    _onPermissionSet(context, ctrl, p),
                onQRViewCreated: onQRViewCreated,
                overlay: QrScannerOverlayShape(
                    overlayColor: const Color.fromRGBO(0, 0, 0, 0.2),
                    cutOutWidth: 234.w,
                    cutOutHeight: 234.h,
                    borderWidth: 2.sp,
                    borderLength: 42.sp,cutOutBottomOffset: 50,
                    borderColor: const Color(0xFFC2C2C2)),
              ),
              Positioned(
                  top: 58.h,
                  left: 66.w,
                  child: Text(
                    'Place the QR Code inside the area',
                    style: TextStyle(
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        fontSize: 14.sp,
                        color: const Color(0xFFFFFFFF)),
                  )),
              Positioned(
                  top: 78.h,
                  left: 87.w,
                  child: Text(
                    'Scanning will start automatically',
                    style: TextStyle(
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        fontSize: 12.sp,
                        color: const Color(0xFFFFFFFF)),
                  )),
              Positioned(
                top: 700.h,
                left: 140.w,
                child: result != null
                    ? Text(
                        '${result!.code}',
                        style: const TextStyle(color: Color(0xFFFFFFFF)),
                      )
                    : const Text('',),
              ),
              Positioned(
                  top: 480,
                  left: 175.w,
                  child: InkWell(
                    onTap: () async {
                      await controller?.toggleFlash();
                      setState(() {});
                    },
                    child: Image.asset(
                      'assets/images/torch.png',
                      height: 26.26.h,
                      width: 26.26.w,
                    ),
                  )),
              Positioned(
                  top: 520.0.h,
                  left: 120.w,
                  child: SizedBox(
                    width: 137.64.w,
                    height: 36.22.h,
                    child: TextField(keyboardType: TextInputType.number,
                      maxLines: 10,
                      textAlign: TextAlign.center,
                      style: const TextStyle(color: Color(0xFFCCFAFF)),
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.all(8.0),
                          hintText: 'Enter Mobile No',
                          hintStyle: TextStyle(
                              fontFamily: 'Inter',
                              color: const Color(0XFFCCFAFF),
                              fontWeight: FontWeight.w600,
                              fontSize: 13.sp),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 0.5.r, color: Colors.white70),
                              borderRadius: BorderRadius.circular(10.r)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 0.5.w,
                                  color: const Color(0xFFC2C2C2)),
                              borderRadius: BorderRadius.circular(10.r))),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }

  void onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((event) {
      setState(() {
        result = event;
      });
    });
  }

  void _onPermissionSet(BuildContext context, QRViewController ctrl, bool p) {
    log('${DateTime.now().toIso8601String()}_onPermissionSet $p');
    if (!p) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('no Permission')),
      );
    }
  }
}
