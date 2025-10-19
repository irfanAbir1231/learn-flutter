import 'package:flutter/material.dart';
import 'dart:ui';

class MainWidget extends StatefulWidget {
  const MainWidget({super.key});

  @override
  State<MainWidget> createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> {
  bool showAll = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton.icon(
              icon: Image.asset('images/send_money.jpg', width: 30 , height: 30,),
            label: Text('', style: TextStyle(
              //button e label add korle sidewise ashe
              fontSize: 10,
            ),),
            onPressed: () => {},
            ),
            ElevatedButton.icon(
              icon: Image.asset('images/mobile_recharge.jpg', width: 30 , height: 30,),
              label: Text('', style: TextStyle(
                //button e label add korle sidewise ashe
                fontSize: 10,
              ),),
              onPressed: () => {},
            ),
            ElevatedButton.icon(
              icon: Image.asset('images/cash_out.jpg', width: 30 , height: 30,),
              label: Text('', style: TextStyle(
                //button e label add korle sidewise ashe
                fontSize: 10,
              ),),
              onPressed: () => {},
            ),
            ElevatedButton.icon(
              icon: Image.asset('images/make_payment.jpg',width: 30 , height: 30,),
              label: Text('', style: TextStyle(
                fontSize: 10,
              ),),
              onPressed: () => {},
            ),
          ],

        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton.icon(
              icon: Image.asset('images/add_money.jpg', width: 30 , height: 30,),
              label: Text('', style: TextStyle(
                //button e label add korle sidewise ashe
                fontSize: 10,
              ),),
              onPressed: () => {},
            ),
            ElevatedButton.icon(
              icon: Image.asset('images/pay_bill.jpg', width: 30 , height: 30,),
              label: Text('', style: TextStyle(
                //button e label add korle sidewise ashe
                fontSize: 10,
              ),),
              onPressed: () => {},
            ),
            ElevatedButton.icon(
              icon: Image.asset('images/savings.png', width: 30 , height: 30,),
              label: Text('', style: TextStyle(
                //button e label add korle sidewise ashe
                fontSize: 10,
              ),),
              onPressed: () => {},
            ),
            ElevatedButton.icon(
              icon: Image.asset('images/loan.png', width: 30 , height: 30,),
              label: Text('', style: TextStyle(
                //button e label add korle sidewise ashe
                // first e container diye try korsilam but oita to button na ejonno kete disi
                fontSize: 10,
              ),),
              onPressed: () => {},
            ),
          ],
        ),
        Stack(
          children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton.icon(
                icon: Image.asset('images/send_money.jpg', width: 30 , height: 30,),
                label: Text('', style: TextStyle(
                  //button e label add korle sidewise ashe
                  fontSize: 10,
                ),),
                onPressed: () => {},
              ),
              ElevatedButton.icon(
                icon: Image.asset('images/mobile_recharge.jpg', width: 30 , height: 30,),
                label: Text('', style: TextStyle(
                  //button e label add korle sidewise ashe
                  fontSize: 10,
                ),),
                onPressed: () => {},
              ),
              ElevatedButton.icon(
                icon: Image.asset('images/cash_out.jpg', width: 30 , height: 30,),
                label: Text('', style: TextStyle(
                  //button e label add korle sidewise ashe
                  fontSize: 10,
                ),),
                onPressed: () => {},
              ),
              ElevatedButton.icon(
                icon: Image.asset('images/make_payment.jpg',width: 30 , height: 30,),
                label: Text('', style: TextStyle(
                  fontSize: 10,
                ),),
                onPressed: () => {},
              ),
            ],
          ),
            if (!showAll)
              Positioned.fill(
                child: ClipRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                    child: Container(
                      color: Colors.white.withValues(alpha: 0.2),
                      alignment: Alignment.center,
                      child: TextButton(
                        onPressed: () => setState(() => showAll = true),
                        child: const Text('Show More'),
                      ),
                    ),
                  ),
                ),
              ),
          ]
        ),
        if(showAll)
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton.icon(
              icon: Image.asset('images/add_money.jpg', width: 30 , height: 30,),
              label: Text('', style: TextStyle(
                //button e label add korle sidewise ashe
                fontSize: 10,
              ),),
              onPressed: () => {},
            ),
            ElevatedButton.icon(
              icon: Image.asset('images/pay_bill.jpg', width: 30 , height: 30,),
              label: Text('', style: TextStyle(
                //button e label add korle sidewise ashe
                fontSize: 10,
              ),),
              onPressed: () => {},
            ),
            ElevatedButton.icon(
              icon: Image.asset('images/savings.png', width: 30 , height: 30,),
              label: Text('', style: TextStyle(
                //button e label add korle sidewise ashe
                fontSize: 10,
              ),),
              onPressed: () => {},
            ),
            ElevatedButton.icon(
              icon: Image.asset('images/loan.png', width: 30 , height: 30,),
              label: Text('', style: TextStyle(
                //button e label add korle sidewise ashe
                // first e container diye try korsilam but oita to button na ejonno kete disi
                fontSize: 10,
              ),),
              onPressed: () => {},
            ),
          ],
        ),
        if(showAll)
          TextButton(onPressed: () => setState(() =>
            showAll =false,
          ),
              child: const Text('show less'),
          )
      ],
    );
  }
}
