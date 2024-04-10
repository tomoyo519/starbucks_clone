import 'package:flutter/material.dart';
import 'package:starbucks_clone/model/coffeeOrder.dart';

class OrderCard extends StatelessWidget {
  final CoffeeOrder order;
  // 이 문법 모르겠어.....,,,,,,
  const OrderCard({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          decoration: BoxDecoration(
              color: Colors.black12, borderRadius: BorderRadius.circular(10)),
          child: Column(
            children: [
              Row(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/cf.png',
                    width: 20,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(order.name),
                    Text('${order.iceOrHot} | ${order.size}')
                  ],
                ),
              ]),
              Divider(color: Colors.black),
              TextButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(Icons.location_on_outlined),
                      Text("경기광주신현DT")
                    ],
                  ))
            ],
          )),
    );
  }
}
