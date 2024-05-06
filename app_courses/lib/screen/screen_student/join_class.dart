import 'package:flutter/material.dart';

class JoinClass extends StatefulWidget {
  const JoinClass({super.key});

  @override
  State<JoinClass> createState() => _JoinClassState();
}

class _JoinClassState extends State<JoinClass> {
  @override
  final codeController = TextEditingController();
  String _code = '';
  bool _showButton = false;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('انضمام الى الصف'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            const SizedBox(
              height: 80,
            ),
            Text(
              "اطلب رمز الصف من معلمكو ثم ادخل رمز هنا.",
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            TextField(
              controller: codeController,
              onChanged: (val) {
                setState(() {
                  _code = val;
                  _showButton = _code.length >= 6 && _code.length <= 8;
                });
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter Code',
                hintText: 'Code',
              ),
            ),
            const SizedBox(height: 20),
            Visibility(
              visible: _showButton,
              child: ElevatedButton(
                onPressed: () {
                  // Handle Join action
                  print('Join with class: $_code');
                },
                child: const Text('Join'),
              ),
            ),
            const SizedBox(height: 20),
            Text("يجب استخدام رمز صف يتألف من 6 الى 8 أحرف ورقام بدون مسافات")
          ],
        ),
      ),
    );
  }
}
