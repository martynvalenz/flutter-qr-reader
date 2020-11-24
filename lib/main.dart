import 'package:flutter/material.dart';
import 'package:qr_reader/providers/ui_provider.dart';
import 'package:qr_reader/views/home.dart';
import 'package:qr_reader/views/mapa.dart';
import 'package:provider/provider.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers:[
        ChangeNotifierProvider(create:(_) => new UiProvider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'QR Reader',
        initialRoute:'home',
        routes:{
          'home':(_) => HomePage(),
          'mapa':(_) => MapaPage() 
        },
        theme:ThemeData(
          primaryColor:Colors.deepPurpleAccent,
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: Colors.deepPurpleAccent
          )
        )
      ),
    );
  }
}