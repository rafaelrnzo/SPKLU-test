import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(PengisianKwh());
}

class PengisianKwh extends StatelessWidget {
  const PengisianKwh({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pengisian kWh',
      home: PengisianDaya(),
    );
  }
}

class PengisianDaya extends StatefulWidget {
  const PengisianDaya({super.key});

  @override
  State<PengisianDaya> createState() => _PengisianDayaState();
}

class _PengisianDayaState extends State<PengisianDaya> {
  final nominalKWH = TextEditingController();
  String estimasiBiaya = "0";

  @override
  void initState() {
    super.initState();
    nominalKWH.addListener(() {
      setState(() {
        if (nominalKWH.text.isEmpty) {
          estimasiBiaya = "0";
        } else {
          estimasiBiaya = (int.parse(nominalKWH.text) * 2475)
              .toStringAsFixed(0)
              .replaceAll(RegExp(r'\B(?=(\d{3})+(?!\d))'), '.');
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final width = constraints.maxWidth;
      final height = constraints.maxHeight;
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: ElevatedButton(
            onPressed: () {
              // Navigator.push(
              //   context,
              //   PageRouteBuilder(
              //     pageBuilder: (context, animation, secondaryAnimation) =>
                   
              //     transitionsBuilder:
              //         (context, animation, secondaryAnimation, child) {
              //       return SlideTransition(
              //         position: Tween<Offset>(
              //           begin: const Offset(-1.0, 0.0),
              //           end: Offset.zero,
              //         ).animate(animation),
              //         child: child,
              //       );
              //     },
              //     transitionDuration: Duration(milliseconds: 500),
              //   ),
              // );
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor: Colors.white,
            ),
          ),
          centerTitle: true,
          title: Text('Pengisian kWh', style: TextStyle(color: Colors.black)),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              child: Column(
                children: [
                  Container(
                    child: Row(
                      children: <Widget>[
                        Container(
                          padding:
                              EdgeInsets.only(left: width * 0.05, top: 20.0),
                          child: Text(
                            'Lokasi SPKLU',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey.shade700,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Container(
                          padding:
                              EdgeInsets.only(left: width * 0.05, top: 5.0),
                          child: Container(
                            height: height * 0.058,
                            width: height * 0.058,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 18, 50, 97),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: <Widget>[
                                SizedBox(
                                  height: height * 0.016,
                                ),
                                Icon(
                                  Icons.map_sharp,
                                  size: 20,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding:
                                EdgeInsets.only(left: width * 0.02, top: 5.0),
                            child: Text(
                              'Jl. Cikunir Raya No.689, RT.002/RW.015, Jaka Mulya, Kec. Bekasi Sel., Kota Bks, Jawa Barat 17146',
                              style: TextStyle(
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Container(
                          padding:
                              EdgeInsets.only(left: width * 0.05, top: 20.0),
                          child: Text(
                            'Charging Station',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey.shade700,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Container(
                          padding:
                              EdgeInsets.only(left: width * 0.05, top: 5.0),
                          child: Container(
                            height: height * 0.058,
                            width: height * 0.058,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 18, 50, 97),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: <Widget>[
                                SizedBox(
                                  height: height * 0.016,
                                ),
                                Icon(
                                  Icons.charging_station,
                                  size: 20,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.topLeft,
                            padding: EdgeInsets.only(top: 5.0),
                            child: Column(
                              children: [
                                Container(
                                  transform:
                                      Matrix4.translationValues(-9.0, 0.0, 0.0),
                                  child: Text(
                                    'Delta DC City Charger',
                                    style: TextStyle(
                                      fontSize: 13,
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: width * 0.02),
                                  child: Text(
                                    'Plug: B.CC52 - 180 kW DC',
                                    style: TextStyle(
                                      fontSize: 13,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(
                              left: width * 0.05, top: height * 0.02),
                          child: Text(
                            'Nominal kWh',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(
                            left: width * 0.05,
                            top: height * 0.01,
                          ),
                          child: Text(
                            'Input jumlah kWh yang ingin anda beli pada form dibawah ini',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey.shade600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                        vertical: height * 0.01, horizontal: width * 0.05),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      maxLength: 3,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      decoration: InputDecoration(
                        counterText: '',
                        contentPadding: EdgeInsets.only(left: 20.0),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                            5.0,
                          ),
                          borderSide: BorderSide(
                            color: Colors.grey.shade300,
                          ),
                        ),
                        suffix: Container(
                          margin: EdgeInsets.only(right: 20.0),
                          child: Text(
                            'kWh',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        fillColor: Colors.white,
                        filled: true,
                      ),
                      controller: nominalKWH,
                    ),
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(
                            left: width * 0.05,
                            top: height * 0.01,
                          ),
                          child: Text(
                            'Estimasi Biaya',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(
                              left: width * 0.05, top: height * 0.01),
                          child: Text(
                            'Rp $estimasiBiaya',
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(15.0),
              height: height * 0.065,
              width: width,
              child: Container(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    primary: Color.fromARGB(255, 15, 35, 151),
                  ),
                  onPressed: () {},
                  child: Text('Lanjutkan', style: TextStyle(fontSize: 16)),
                ),
              ),
            )
          ],
        ),
      );
    });
  }
}