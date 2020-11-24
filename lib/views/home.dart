import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_reader/providers/ui_provider.dart';
import 'package:qr_reader/views/direcciones.dart';
import 'package:qr_reader/views/mapas.dart';
import 'package:qr_reader/widgets/custom_navigator.dart';
import 'package:qr_reader/widgets/scan_button.dart';


class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text('Historial'),
        actions: [
          IconButton(
            icon: Icon(Icons.delete_forever),
            onPressed: (){}
          )
        ],
      ),
      body: _HomePageBody(),
      bottomNavigationBar: CustomNavigartionBar(),
      floatingActionButton: ScanButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class _HomePageBody extends StatelessWidget {
  //Obetener selected Menu opt
  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UiProvider>(context);
    final currentIndex = uiProvider.selectedMenuOpt;

    switch(currentIndex){
      case 0:
        return MapasPage();

      case 1:
        return DireccionesPage(); 

      default:
        return MapasPage();
    }
  }
}