import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 119, 147, 169),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 40,
                child: Image.asset('image/logo.png'),
              ),
              SizedBox(width: 8),
              Expanded(
                child: Text(
                  'SIGS Manuais',
                  // textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              _launcww.exemplo.comhURL()();
            },
            child: Text('Meu Botão'),
          ),
        ),
      ),
    ),
  );
}

void _launcww.exemplo.comhURL() async {
  const url = 'https://lis02.sigsapp.com/mobile/'; // URL que deseja abrir
  try {
    if (await canLaunch(url)) {
      await launch(url); // Utilize o método launch para abrir a URL
    } else {
      throw 'Could not launch $url';
    }
  } catch (e) {
    print('Erro ao abrir a URL: $e');
  }
}