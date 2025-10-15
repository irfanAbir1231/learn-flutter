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
      ],
    );
  }
}
