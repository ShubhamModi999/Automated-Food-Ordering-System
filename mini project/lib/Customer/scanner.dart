import 'dart:async';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:qrscan/qrscan.dart' as scanner;

class Scanner extends StatefulWidget {
@override
_ScannerState createState() => _ScannerState();
}

class _ScannerState extends State<Scanner> {
  String barcode;
  Uint8List bytes = Uint8List(200);
  String tabel;


  @override
  initState() {
    _scan();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        color: Colors.orange[50],
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              //checktable(),
              Text(
                  'you can order now $barcode'
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future _scan() async {
    String barcode = await scanner.scan();
    setState(() => this.barcode = barcode);
  }

  Future _scanPhoto() async {
    String barcode = await scanner.scanPhoto();
    setState(() => this.barcode = barcode);
  }

  Future _generateBarCode() async {
    Uint8List result = await scanner.generateBarCode('https://github.com/leyan95/qrcode_scanner');
    this.setState(() => this.bytes = result);
  }

  checktable()
  {
    if(barcode=='t1')
    {
      tabel='t1';
      // Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => restuarant()));
    }
    else if(barcode=='t2')
    {
      tabel='t3';
    }

    else if(barcode=='t3')
    {
      tabel='t3';
    }
    else
    {

    }
  }
}