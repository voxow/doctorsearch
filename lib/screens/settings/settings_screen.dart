import 'package:doctor/constants.dart';
//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/setting_item_caed.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Configuración"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: defaultPadding),
              SettingTab(
                text: "Notificaciones",
                iconSrc: "assets/icons/Notificatio_box.svg",
                value: true,
                onChanged: (value) {},
              ),
              SettingTab(
                text: "Mensajes",
                iconSrc: "assets/icons/Chat_box.svg",
                value: false,
                onChanged: (value) {},
              ),
              SettingTab(
                text: "Video Llamada",
                iconSrc: "assets/icons/Video_box.svg",
                value: false,
                onChanged: (value) {},
              ),
              SettingTab(
                text: "Llamada",
                iconSrc: "assets/icons/Call_box.svg",
                value: true,
                onChanged: (value) {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
