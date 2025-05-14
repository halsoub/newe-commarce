import 'package:flutter/material.dart';

class NotificationSetting extends StatefulWidget {
  const NotificationSetting({super.key});

  @override
  State<NotificationSetting> createState() => _NotificationSettingState();
}

class _NotificationSettingState extends State<NotificationSetting> {
  bool _isSwitch = true;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 245, 245, 1),
      appBar: AppBar(backgroundColor: Colors.white, title: const Text("Notification Setting")),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Promotion"),
                Switch(
                  activeColor: Colors.green,
                  value: _isSwitch,
                  onChanged: (value) {
                    setState(() {
                      _isSwitch = value;
                    });
                  },
                ),
              ],
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Chat"),
                Switch(
                  activeColor: Colors.green,
                  value: _isSwitch,
                  onChanged: (value) {
                    setState(() {
                      _isSwitch = value;
                    });
                  },
                ),
              ],
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("New Order Status"),
                Switch(
                  activeColor: Colors.green,
                  value: _isSwitch,
                  onChanged: (value) {
                    setState(() {
                      _isSwitch = value;
                    });
                  },
                ),
              ],
            ),
            const Divider(),
          ],
        ),
      ),
    );
  }
}
