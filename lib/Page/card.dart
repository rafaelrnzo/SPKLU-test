import 'package:flutter/material.dart';
import 'package:flutter_navbar/Page/HistoryPage.dart';
import 'package:flutter_navbar/Page/LocationPage.dart';

void main() {
  runApp(DashboardPage());
}

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dashboard',
      home: DashboardScreen(),
    );
  }
}

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double heightCard;
        final width = constraints.maxWidth;
        final height = constraints.maxHeight;

        if (height > 700) {
          heightCard = height * 0.30;
        } else {
          print(width);
          heightCard = height * 0.35;
        }

        return DefaultTabController(
          length: 2,
          child: SafeArea(
            child: Scaffold(
              body: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    const TitleSPKLU(),
                    YourBalance(),
                    Balance(),
                    Column(
                      children: <Widget>[
                        Container(
                          transform: Matrix4.translationValues(0.0, -60.0, 0.0),
                          padding: EdgeInsets.all(15.0),
                          height: heightCard,
                          width: double.infinity,
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            elevation: 7.0,
                            child: Container(
                              padding: EdgeInsets.all(20.0),
                              child: Column(
                                children: <Widget>[
                                  Column(
                                    children: <Widget>[
                                      Container(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          'Hi, Fahmi Ibrahim',
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 15,
                                      ),
                                      Card(
                                        child: Container(
                                          decoration: BoxDecoration(
                                            border: Border(
                                              bottom: BorderSide(
                                                color: Colors.grey,
                                                width: 0.1,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 18,
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            padding:
                                                EdgeInsets.only(left: 10.0),
                                            child: IconButton(
                                              onPressed: () {
                                                print("Home Charging");
                                              },
                                              iconSize: 40.0,
                                              icon: Icon(Icons
                                                  .maps_home_work_outlined),
                                              color: Color.fromRGBO(
                                                  0, 125, 251, 1),
                                            ),
                                          ),
                                          Expanded(child: Container()),
                                          IconButton(
                                            onPressed: () {
                                              print("SPKLU Location");
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(builder: (context) => LocationPage(),)
                                              );
                                            },
                                            iconSize: 40.0,
                                            icon: Icon(Icons.map_sharp),
                                            color:
                                                Color.fromRGBO(0, 125, 251, 1),
                                          ),
                                          Expanded(child: Container()),
                                          Container(
                                            padding:
                                                EdgeInsets.only(right: 13.0),
                                            child: IconButton(
                                              onPressed: () {
                                                print("Topup Balance");
                                              },
                                              iconSize: 40.0,
                                              icon:
                                                  Icon(Icons.add_card_rounded),
                                              color: Color.fromRGBO(
                                                  0, 125, 251, 1),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            padding:
                                                EdgeInsets.only(left: 10.0),
                                            alignment: Alignment.center,
                                            width: 70,
                                            child: Text(
                                              'Home Charging',
                                              style: TextStyle(),
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                          Expanded(child: Container()),
                                          Container(
                                            alignment: Alignment.center,
                                            width: 70,
                                            child: Text(
                                              'SPKLU Location',
                                              style: TextStyle(),
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                          Expanded(child: Container()),
                                          Container(
                                            padding:
                                                EdgeInsets.only(right: 10.0),
                                            alignment: Alignment.center,
                                            width: 70,
                                            child: Text(
                                              'Topup Balance',
                                              style: TextStyle(),
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          transform: Matrix4.translationValues(0.0, -70.0, 0.0),
                          padding: EdgeInsets.all(15.0),
                          height: 500,
                          width: double.infinity,
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            elevation: 7.0,
                            child: Container(
                              padding: EdgeInsets.all(20.0),
                              child: Column(
                                children: <Widget>[
                                  Column(
                                    children: <Widget>[
                                      Text(
                                        'SPKLU ENERGY CONSUMPTION',
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.black,
                                        ),
                                      ),
                                      Container(
                                        height: 7,
                                      ),
                                      Text(
                                        'Today',
                                        style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 100, 99, 99),
                                        ),
                                      ),
                                      Container(
                                        height: 7,
                                      ),
                                      Text(
                                        '02 February 2023',
                                        style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 100, 99, 99),
                                        ),
                                      ),
                                      Container(
                                        height: 20,
                                      ),
                                      Text(
                                        '0.00 kWh',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Color.fromARGB(255, 18, 50, 97),
                                        ),
                                      ),
                                      Container(
                                        height: 13,
                                      ),
                                      Card(
                                        child: Container(
                                          decoration: BoxDecoration(
                                            border: Border(
                                              bottom: BorderSide(
                                                color: Colors.grey,
                                                width: 0.5,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Container(
                                        width: width * 0.55,
                                        height: height * 0.055,
                                        child: Card(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                          ),
                                          color: Color.fromRGBO(0, 125, 251, 1),
                                          child: Container(
                                            padding: EdgeInsets.only(
                                                left: width * 0.03, right: 1.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: <Widget>[
                                                ElevatedButton(
                                                  onPressed: () {},
                                                  child: Text(
                                                    'Weekly',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                          backgroundColor:
                                                              Colors
                                                                  .transparent,
                                                          shadowColor: Colors
                                                              .transparent),
                                                ),
                                                Expanded(
                                                  child: Container(),
                                                ),
                                                Card(
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5.0)),
                                                  child: Container(
                                                    alignment: Alignment.center,
                                                    width: width * 0.25,
                                                    height: height * 0.15,
                                                    child: Text(
                                                      'Monthly',
                                                      style: TextStyle(
                                                        color: Color.fromRGBO(
                                                            0, 125, 251, 1),
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class TitleSPKLU extends StatelessWidget {
  const TitleSPKLU({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color.fromRGBO(0, 125, 251, 1),
      ),
      padding: EdgeInsets.only(left: 20.0, top: 10.0),
      alignment: Alignment.topLeft,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          // SizedBox(
          //   height: 20,
          // ),
          Text(
            'SPKLU Intek',
            style: TextStyle(
              fontSize: 26,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HistoryPage()),
                );
              },
              icon: Icon(
                Icons.notifications,
                color: Colors.white,
                size: 30,
              )),
        ],
      ),
    );
  }
}

class YourBalance extends StatelessWidget {
  const YourBalance({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      transform: Matrix4.translationValues(0.0, -90.0, 0.0),
      alignment: Alignment.topLeft,
      padding: EdgeInsets.only(left: 20.0, top: 20.0),
      child: Column(
        children: <Widget>[
          Text(
            'Your balance',
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}

class Balance extends StatelessWidget {
  const Balance({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      transform: Matrix4.translationValues(0.0, -90.0, 0.0),
      padding: EdgeInsets.only(left: 20.0, top: 5.0),
      child: Row(
        children: <Widget>[
          Icon(
            Icons.wallet,
            color: Colors.white,
          ),
          Container(
            width: 5,
          ),
          Text(
            'Rp 1.321.000',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
