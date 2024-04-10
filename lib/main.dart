import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'model/coffeeOrder.dart';
import 'package:starbucks_clone/presentation/orderCard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  List<CoffeeOrder> coffeOrder = [
    CoffeeOrder(name: '디카페인 스타벅스 돌체 라떼', iceOrHot: 'Hot', size: "Grande"),
    CoffeeOrder(name: '스타벅스 아이스 아메리카노', iceOrHot: 'Ice', size: "Tall"),
    CoffeeOrder(name: '스타벅스 따뜻한 아이스 아메리카노', iceOrHot: 'Ice', size: "Venti")
  ];
  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        shape: CircleBorder(),
      ),
      body: CustomScrollView(slivers: [
        SliverAppBar(
          expandedHeight: 300.0, // 확장될 때의 최대 높이
          floating: false, // 스크롤을 아래로 내렸을 때 바로 나타나지 않음
          pinned: true, // 스크롤 시 상단에 고정됩니다.
          flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              titlePadding: EdgeInsets.only(left: 1.0, bottom: 1.0),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    child: Row(
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/mail.png',
                                  width: 15,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5.0),
                                  child: Text(
                                    '''What's New''',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 11,
                                        color: Colors.black),
                                  ),
                                )
                              ],
                            )),
                        TextButton(
                            onPressed: () {},
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/voucher.png',
                                  width: 15,
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 5.0),
                                  child: Text(
                                    '''Coupon''',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 11,
                                        color: Colors.black),
                                  ),
                                ),
                              ],
                            )),
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.notifications_outlined),
                    iconSize: 20,
                  )
                ],
              ),
              background: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Image.asset(
                          width: double.infinity,
                          height: 200,
                          'assets/starbucks.jpg',
                          fit: BoxFit.fill,
                        ),
                        const Positioned(
                            top: 80,
                            left: 50,
                            child: Text(
                              "달콤한 스타벅스 디저트와\n 봄날의 오후를 함께해요!",
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.w800),
                            )),
                        const Positioned(
                            top: 160,
                            left: 300,
                            child: Text(
                              "내용보기 ->",
                              style: TextStyle(fontSize: 20),
                            )),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 100,
                          width: MediaQuery.of(context).size.width * 0.75,
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Text(
                                  "25★ until Gold Level ",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.green),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10.0),
                                child: LinearProgressIndicator(
                                  minHeight: 5,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular((10))),
                                  value: 0,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                            height: 100,
                            width: MediaQuery.of(context).size.width * 0.25,
                            child: const Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "0",
                                  style: TextStyle(
                                      fontSize: 25, color: Colors.black),
                                ),
                                Text(
                                  '/',
                                  style: TextStyle(
                                      fontSize: 21, color: Colors.grey),
                                ),
                                Text(
                                  '25★',
                                  style: TextStyle(
                                      fontSize: 21, color: Colors.green),
                                ),
                              ],
                            ))
                      ],
                    )
                  ],
                ),
              )),
        ),
        // 스크롤 가능한 콘텐츠 영역
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text("Quick Order"), Text('최근 주문')],
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          ...coffeOrder
                              .map((e) => OrderCard(order: e))
                              .toList(),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
            childCount: 1, // 리스트 항목의 수
          ),
        ),
      ]),
    );
  }
}
