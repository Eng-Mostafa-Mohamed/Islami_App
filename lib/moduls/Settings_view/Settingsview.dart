import 'package:flutter/cupertino.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child:  Text(
        "Setting View",style: TextStyle(
        fontSize: 30,
      ),
      ),
    );
  }
}
