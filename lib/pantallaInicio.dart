import 'package:flutter/material.dart';
import 'package:carrito_compras/pantallaCarta.dart';

class PantallaInicio extends StatefulWidget {

  @override
  State<PantallaInicio> createState() => _PantallaInicioState();
}

class _PantallaInicioState extends State<PantallaInicio> {
  final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
    shape: const CircleBorder(),
    padding: const  EdgeInsets.all(13.0),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      body: Container(
        // me permite utilizar varios elementos y manipular la posicion uno sobre otro y sobre otro
        child: Stack(
          children: <Widget> [
            Positioned(
                child: Align(
                  alignment: FractionalOffset.bottomRight,
                  child: Container(
                    padding: const EdgeInsets.only(right: 15, left: 5, top: 50, bottom: 50),
                    decoration: const BoxDecoration(
                      color: Colors.orangeAccent,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(200)
                      )
                    ),
                    child: const RotatedBox(
                      quarterTurns: 3,
                    ),
                  ),
                )
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget> [
                Center(
                  child: Image.asset("assets/img/logoti.jpeg",
                    width: MediaQuery.of(context).size.width/2,
                    height: 200,
                  ),
                ),
                const Padding(

                    padding: EdgeInsets.only(top: 100)
                ),
                ElevatedButton(
                  style: raisedButtonStyle,
                  child: const Icon(
                    Icons.chevron_right,
                    color: Colors.orangeAccent,
                  ),
                  onPressed: () => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  PantallaCarta())
                    )
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
