import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    // In real app fields are read-only if provided by admin.
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text('تنظیمات')),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              const ListTile(title: Text('نام'), subtitle: Text('محمد امین')),
              const ListTile(title: Text('نام خانوادگی'), subtitle: Text('هیودی')),
              const ListTile(title: Text('کد ملی'), subtitle: Text('1234567890')),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('حالت شب'),
                  Switch(value: false, onChanged: (v) {
                    // TODO: toggle theme
                  }),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
