import 'package:flutter/material.dart';

class MainWidget extends StatelessWidget {
  const MainWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton.icon(
              icon: Image.asset('images/send_money.jpg', width: 50 , height: 50,),
            label: Text('', style: TextStyle(
              //button e label add korle sidewise ashe
              fontSize: 10,
            ),),
            onPressed: () => {},
            ),
            Container(
              width: 50,
              height: 50,
              child: Image.asset('images/send_money.jpg'),
            ),
            Container(
              width: 50,
              height: 50,
              child: Image.asset('images/send_money.jpg'),
            ),
            Container(
              width: 50,
              height: 50,
              child: Image.asset('images/send_money.jpg'),
            ),
          ],

        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 50,
              height: 50,
              child: Image.asset('images/send_money.jpg'),
            ),
            Container(
              width: 50,
              height: 50,
              child: Image.asset('images/send_money.jpg'),
            ),Container(
              width: 50,
              height: 50,
              child: Image.asset('images/send_money.jpg'),
            ),Container(
              width: 50,
              height: 50,
              child: Image.asset('images/send_money.jpg'),
            ),
          ],
        )
      ],
    );
  }
}
