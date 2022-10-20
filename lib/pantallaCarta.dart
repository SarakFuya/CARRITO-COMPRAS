import 'package:carrito_compras/carrito/Carrito.dart';
import 'package:carrito_compras/model/Carta.dart';
import 'package:carrito_compras/pantallaCarrito.dart';
import 'package:flutter/material.dart';
import 'package:carrito_compras/pantallaInicio.dart';
import 'package:provider/provider.dart';

class PantallaCarta extends StatefulWidget {

  @override
  _PantallaCartaState createState() => _PantallaCartaState();
}

class _PantallaCartaState extends State<PantallaCarta> {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
  final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20.0))),
    padding: const EdgeInsets.all(13.0),
  );

  @override
  Widget build(BuildContext context) {
    // el constructor le pasa la funcionalidad dela clase carrito
    return Consumer<Carrito>(builder: (context, carrito, child) {
      return DefaultTabController(
          length: 3,
          child: Scaffold(
            key: _globalKey,
            backgroundColor: Colors.lightGreen,
            appBar: AppBar(
              title: const Center(
                child: Text("Productos disponibles", style: TextStyle(color: Colors.black),),

              ),
              backgroundColor: Colors.lightGreen,
              elevation: 0,
              bottom: const TabBar(
                labelColor: Colors.black,
                indicatorColor: Colors.deepOrange,
                indicatorSize: TabBarIndicatorSize.label,
                tabs: <Widget>[
                  Tab(
                    child: Padding(
                      padding: EdgeInsets.only(left: 5, right: 5),
                      child: Text("iPhone"),
                    ),
                  ),
                  Tab(
                    child: Padding(
                      padding: EdgeInsets.only(left: 5, right: 5),
                      child: Text("Xiaomi"),
                    ),
                  ),
                  Tab(
                    child: Padding(
                      padding: EdgeInsets.only(left: 5, right: 5),
                      child: Text("Motorola"),
                    ),
                  ),
                ],
              ),
              actions: [
                Stack(
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.shopping_cart,
                      ),
                      onPressed: () {
                       carrito.numeroItems!=0 ?
                           Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext) => PantallaCarrito()),
                           )
                           :
                           const SnackBar(content: Text(
                             "Llenar carrito"
                           ));

                      }
                    ),
                    Positioned(
                        top: 6,
                        right: 6,
                        child: Container(
                          padding: const EdgeInsets.all(2),
                          decoration: BoxDecoration(
                              color: Colors.orangeAccent,
                              borderRadius: BorderRadius.circular(4)),
                            // para configurar el ancho
                            constraints: const BoxConstraints(
                              minWidth: 14,
                              minHeight: 14
                            ),
                          child: Text(carrito.numeroItems.toString(), textAlign: TextAlign.center,
                            style: const TextStyle(color: Colors.black, fontSize: 10),),
                        ),
                    )
                  ],
                )
              ],
            ),
            drawer: menuLateral(),
            body: TabBarView(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  child: GridView.builder(
                      itemCount: pantalones.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: MediaQuery.of(context).size.width /
                              (MediaQuery.of(context).size.height / 1.0),
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 20),
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.all(10),
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: const [
                                BoxShadow(
                                    color: Color(0x000005cc),
                                    blurRadius: 30,
                                    offset: Offset(10, 10))
                              ]),
                          child: Column(
                            children: [
                              Image.asset(pantalones[index].imagen, width: 180),
                              Text(
                                pantalones[index].nombre,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Text(
                                  'S/.${pantalones[index].precio.toString()}',
                                  style: const TextStyle(fontSize: 16),
                                ),
                              ),
                              ElevatedButton.icon(
                                style: raisedButtonStyle,
                                onPressed: () {
                                  setState(() {
                                    carrito.agregarItems(
                                        // toString para q reciba una cadena de texto
                                        pantalones[index].id.toString(),
                                        pantalones[index].nombre,
                                        pantalones[index].precio,
                                        "1",
                                        pantalones[index].imagen,
                                        1);
                                  });
                                },
                                icon: const Icon(
                                  Icons.add_shopping_cart,
                                  color: Colors.black,
                                ),
                                label: const Text("A G R E G A R"),
                              )
                            ],
                          ),
                        );
                      }),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: GridView.builder(
                      itemCount: chaquetas.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: MediaQuery.of(context).size.width /
                              (MediaQuery.of(context).size.height / 1.2),
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 20),
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.all(10),
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: const [
                                BoxShadow(
                                    color: Color(0x000005cc),
                                    blurRadius: 30,
                                    offset: Offset(10, 10))
                              ]),
                          child: Column(
                            children: [
                              Image.asset(chaquetas[index].imagen, width: 130),
                              Text(
                                chaquetas[index].nombre,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Text(
                                  'S/.${chaquetas[index].precio.toString()}',
                                  style: const TextStyle(fontSize: 16),
                                ),
                              ),
                              ElevatedButton.icon(
                                style: raisedButtonStyle,
                                onPressed: () {
                                  setState(() {
                                    carrito.agregarItems(
                                        // toString para q reciba una cadena de texto
                                        chaquetas[index].id.toString(),
                                        chaquetas[index].nombre,
                                        chaquetas[index].precio,
                                        "1",
                                        chaquetas[index].imagen,
                                        1);
                                  });
                                },
                                icon: const Icon(
                                  Icons.add_shopping_cart,
                                  color: Colors.black,
                                ),
                                label: const Text("A G R E G A R"),
                              )
                            ],
                          ),
                        );
                      }),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: GridView.builder(
                      itemCount: tenis.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: MediaQuery.of(context).size.width /
                              (MediaQuery.of(context).size.height / 0.9),
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 20),
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.all(10),
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: const [
                                BoxShadow(
                                    color: Color(0x000005cc),
                                    blurRadius: 30,
                                    offset: Offset(10, 10))
                              ]),
                          child: Column(
                            children: [
                              Image.asset(tenis[index].imagen, width: 200),
                              Text(
                                tenis[index].nombre,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Text(
                                  'S/.${tenis[index].precio.toString()}',
                                  style: const TextStyle(fontSize: 16),
                                ),
                              ),
                              ElevatedButton.icon(
                                style: raisedButtonStyle,
                                onPressed: () {
                                  setState(() {
                                    carrito.agregarItems(
                                        // toString para q reciba una cadena de texto
                                        tenis[index].id.toString(),
                                        tenis[index].nombre,
                                        tenis[index].precio,
                                        "1",
                                        tenis[index].imagen,
                                        1);
                                  });
                                },
                                icon: const Icon(
                                  Icons.add_shopping_cart,
                                  color: Colors.black,
                                ),
                                label: const Text("A G R E G A R"),
                              )
                            ],
                          ),
                        );
                      }),
                ),
              ],
            ),
          ));
    });
  }
}

class menuLateral extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          const UserAccountsDrawerHeader(
            accountName:
                Center(child: Text("C A R R I T O  D E  C O M P R A S")),
            accountEmail: null,
            decoration: BoxDecoration(
              color: Colors.orangeAccent,
            ),
          ),
          InkWell(
            child: const ListTile(
              title: Text(
                "I N I C I O",
                style: TextStyle(color: Colors.black),
              ),
              leading: Icon(
                Icons.house,
                color: Colors.orangeAccent,
              ),
            ),
            onTap: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (BuildContext) => PantallaCarta()));
            },
          ),
          InkWell(
            child: const ListTile(
              title: Text(
                "P R O D U C T O S",
                style: TextStyle(color: Colors.black),
              ),
              leading: Icon(
                Icons.phone_android_outlined,
                color: Colors.orangeAccent,
              ),
            ),
            onTap: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (BuildContext) => PantallaCarta()));
            },
          ),
        ],
      ),
    );
  }
}
