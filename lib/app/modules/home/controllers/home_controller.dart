import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  Offset _postion = Offset.zero;

  Offset get postion => _postion;

  onPanStart(DragStartDetails details) {}

  onPanEnd(DragEndDetails details) {
    showDialog();
    resetPostion();
  }

  onPanUpdate(DragUpdateDetails details) {
    _postion += details.delta;
    update();
  }

  resetPostion() {
    _postion = Offset.zero;
    update();
  }

  showDialog() {
    log('callled');
    var x = _postion.dx;
    var y = _postion.dy;

    final delta = 100;

    if (x >= delta) {
      //right swipe
      Get.dialog(
        AlertDialog(
          backgroundColor: Colors.white,
          title: Text(
            'Alert',
            style: TextStyle(color: Colors.black),
          ),
          content: Text(
            'YOU LIKE THE PROFILE',
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Get.back();
              },
              child: Text(
                'Ok',
              ),
            )
          ],
        ),
      );
      log('right swipe');
    } else if (x <= -delta) {
      //left swipe
      Get.dialog(
        AlertDialog(
          backgroundColor: Colors.white,
          title: Text(
            'Alert',
            style: TextStyle(color: Colors.black),
          ),
          content: Text(
            'SEE PREVIOUS PROFILE',
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Get.back();
              },
              child: Text(
                'Ok',
              ),
            )
          ],
        ),
      );
      log('left swipe');
    } else if (y <= -delta / 2) {
      //up swipe
      Get.dialog(
        AlertDialog(
          backgroundColor: Colors.white,
          title: Text(
            'Alert',
            style: TextStyle(color: Colors.black),
          ),
          content: Text(
            'YOU SUPER LIKE THE PROFILE',
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Get.back();
              },
              child: Text(
                'Ok',
              ),
            )
          ],
        ),
      );
      log('up swipe');
    } else if (y >= delta / 2) {
      //down swipe
      Get.dialog(
        AlertDialog(
          backgroundColor: Colors.white,
          title: Text(
            'Alert',
            style: TextStyle(color: Colors.black),
          ),
          content: Text(
            'YOU DIDN’T LIKE THE PROFILE',
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Get.back();
              },
              child: Text(
                'Ok',
              ),
            )
          ],
        ),
      );
      log('down swipe');
    } else {
      log('inside else');
    }
  }

  showDialogOnButton(int index) {
    if (index == 0) {
      Get.dialog(
        AlertDialog(
          backgroundColor: Colors.white,
          title: Text(
            'Alert',
            style: TextStyle(color: Colors.black),
          ),
          content: Text(
            'SEE PREVIOUS PROFILE',
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Get.back();
              },
              child: Text(
                'Ok',
              ),
            )
          ],
        ),
      );
    } else if (index == 1) {
      Get.dialog(
        AlertDialog(
          backgroundColor: Colors.white,
          title: Text(
            'Alert',
            style: TextStyle(color: Colors.black),
          ),
          content: Text(
            'YOU SUPER LIKE THE PROFILE',
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Get.back();
              },
              child: Text(
                'Ok',
              ),
            )
          ],
        ),
      );
    } else if (index == 2) {
      Get.dialog(
        AlertDialog(
          backgroundColor: Colors.white,
          title: Text(
            'Alert',
            style: TextStyle(color: Colors.black),
          ),
          content: Text(
            'YOU LIKE THE PROFILE',
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Get.back();
              },
              child: Text(
                'Ok',
              ),
            )
          ],
        ),
      );
    } else {
      Get.dialog(
        AlertDialog(
          backgroundColor: Colors.white,
          title: Text(
            'Alert',
            style: TextStyle(color: Colors.black),
          ),
          content: Text(
            'YOU DIDN’T LIKE THE PROFILE',
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Get.back();
              },
              child: Text(
                'Ok',
              ),
            )
          ],
        ),
      );
    }
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
