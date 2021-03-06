import 'package:flutter/material.dart';
import 'package:loja_online/tiles/drawer_tile.dart';

class CustomDrawer extends StatelessWidget {

  final PageController _pageController;

  CustomDrawer(this._pageController);

  Widget _buildDrawerBack() => Container(
    decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 203, 236, 241),
              Colors.white
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter
        )
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Stack(
        children: <Widget>[
          _buildDrawerBack(),
          ListView(
            padding: EdgeInsets.only(left: 15.0, top: 16),
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: 8.0),
                padding: EdgeInsets.fromLTRB(0.0, 16.0, 16.0, 0),
                height: 170.0,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      top: 8.0,
                      left: 0.0,
                      child: Text("Loja do \nChicó", style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),),
                    ),
                    Positioned(
                      left: 0.0,
                      bottom: 0.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Olá,",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          GestureDetector(
                            child:   Text("Entre ou cadastra-se >",
                              style:
                              TextStyle(color: Theme.of(context).primaryColor, fontSize: 19.0, fontWeight: FontWeight.bold),)
                            ,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Divider(),
              DrawerTile(Icons.home, "Início",_pageController,0),
              DrawerTile(Icons.list, "Produtos",_pageController,1),
              DrawerTile(Icons.location_on, "Lojas",_pageController,2),
              DrawerTile(Icons.playlist_add_check, "Meus Pedidos",_pageController,3),
            ],
          ),
        ],
      ),
    );
  }
}
