import 'package:flutter/material.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Column(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.75,
                  child: Image.asset('assets/images/mix_title.png'),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.75,
                  child: Divider(),
                ),
                Text('مرحبا بكم في ميكس كارت'),
                Text('الخيار الأفضل للتسوق الإلكتروني'),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(),
          ),
        ],
      ),
    );
  }
}
