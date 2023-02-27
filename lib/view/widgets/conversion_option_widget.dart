import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mostalah/logic/controllers/settings_controller.dart';

class ConversionOptionWidget extends StatelessWidget {
  ConversionOptionWidget({Key? key, required this.text, required this.index})
      : super(key: key);
  final Widget text;
  final int index;
  final ctrl = Get.find<SettingsController>();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // focusColor: Colors.transparent,
      hoverColor: Theme.of(context).primaryColor,
      focusColor: Theme.of(context).primaryColor,
      highlightColor: Theme.of(context).primaryColor,
      onTap: () {
        ctrl.changeType(index);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
        child: Obx(() => Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Text(
                //   text,
                //   // style: const TextStyle(color: Colors.white, fontSize: 17),
                //   style: TextStyle(
                //       color: Get.isDarkMode ? Colors.white : Colors.black,
                //       fontSize: 17),
                // ),
                text,
                index == ctrl.conversionIndex.value
                    ? Icon(
                        Icons.check_circle,
                        color: Theme.of(context).primaryColor,
                      )
                    : Icon(
                        Icons.circle_outlined,
                        color: Get.isDarkMode ? Colors.white : Colors.black,
                      ),
              ],
            )),
      ),
    );
  }
}
