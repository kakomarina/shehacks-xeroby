import 'package:flutter/material.dart';


class meujardim extends StatelessWidget {
  var controller = PageController(
    viewportFraction: 1 / 3,
    initialPage: 1,
  );
  meujardim({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
        child: Wrap(
          direction: Axis.horizontal,
          children: [
            Container(
              alignment: Alignment(-0.9, 0.6),
              child: Text('Meu Jardim',
                style: TextStyle(
                    fontSize: 15.0,
                    color: Color(0xff16613D)
                ),
              ),
            ),


            Container(
              //alignment: Alignment.topRight,
              margin: EdgeInsets.symmetric(vertical: 20.0),
              height: 200.0,
              child: PageView(
                controller: controller,
                scrollDirection: Axis.horizontal,
                children: <Widget>[

                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10.0),
                    width: 160.0,
                    //color: Colors.red,
                    child: Column(
                      children: <Widget>[
                        Card(child: Image.asset('Images/cacto.png')),
                        Text('Elisa, o cacto', style: TextStyle(color: Color(0xff16613D)),)
                      ],
                    )
                  ),

                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10.0),
                    width: 160.0,
                      child: Column(
                        children: <Widget>[
                          Card(child: Image.asset('Images/sanseviera.jpg')),
                          Text('Sanseviera', style: TextStyle(color: Color(0xff16613D)),)
                        ],
                      )
                  ),

                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10.0),
                    width: 160.0,
                      child: Column(
                        children: <Widget>[
                          Card(child: Image.asset('Images/planta_jade.jpg')),
                          Text('Planta Jade', style: TextStyle(color: Color(0xff16613D)),)
                        ],
                      )
                  ),

                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10.0),
                    width: 160.0,
                      child: Column(
                        children: <Widget>[
                          Card(child: Image.asset('Images/hiedra.jpg')),
                          Text('Hiedra', style: TextStyle(color: Color(0xff16613D)),)
                        ],
                      )
                  ),

                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10.0),
                    width: 160.0,
                      child: Column(
                        children: <Widget>[
                          Card(child: Image.asset('Images/manjericao.png')),
                          Text('Basilio, o manjericao', style: TextStyle(color: Color(0xff16613D)),)
                        ],
                      )
                  ),

                ],
              ),
            ),
            Container(
              alignment: Alignment(-0.9, 0.6),
              child: Text('Sugestões para você',
                style: TextStyle(
                    fontSize: 15.0,
                    color: Color(0xff16613D)
                ),
              ),
            ),


      Container(
        //alignment: Alignment.topRight,
        margin: EdgeInsets.symmetric(vertical: 20.0),
        height: 200.0,
        child: PageView(
          controller: controller,
          scrollDirection: Axis.horizontal,
          children: <Widget>[

            Container(
                margin: EdgeInsets.symmetric(horizontal: 10.0),
                decoration: BoxDecoration(
                  color: Color(0xffb714365),
                  image: DecorationImage(
                    image: AssetImage('Images/suculentas.jpeg'),
                    fit: BoxFit.cover,
                  ),
                  border: Border.all(
                    color: Color(0xffb714365),
                    width: 8,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(

                    child: Text('Suculentas',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20.0,color: Colors.white),)
                )


            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 10.0),
                decoration: BoxDecoration(
                  color: Color(0xffb714365),
                  image: DecorationImage(
                    image: AssetImage('Images/horta.png'),
                    fit: BoxFit.cover,
                  ),
                  border: Border.all(
                    color: Color(0xffb714365),
                    width: 8,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(

                    child: Text('Monte sua horta',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20.0,color: Colors.white),)
                )


            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 10.0),
                decoration: BoxDecoration(
                  color: Color(0xffb714365),
                  image: DecorationImage(
                    image: AssetImage('Images/Zamioculca.jpg'),
                    fit: BoxFit.cover,
                  ),
                  border: Border.all(
                    color: Color(0xffb714365),
                    width: 8,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(

                    child: Text('Zamioculca',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20.0,color: Colors.white),)
                )


            ),


            Container(
                margin: EdgeInsets.symmetric(horizontal: 10.0),
                decoration: BoxDecoration(
                  color: Color(0xffb714365),
                  image: DecorationImage(
                    image: AssetImage('Images/girassol.jpeg'),
                    fit: BoxFit.cover,
                  ),
                  border: Border.all(
                    color: Color(0xffb714365),
                    width: 8,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(

                    child: Text('Girassol',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20.0,color: Colors.white),)
                )


            ),

            Container(
                margin: EdgeInsets.symmetric(horizontal: 10.0),
                decoration: BoxDecoration(
                  color: Color(0xffb714365),
                  image: DecorationImage(
                    image: AssetImage('Images/anturio1.jpeg'),
                    fit: BoxFit.cover,
                  ),
                  border: Border.all(
                    color: Color(0xffb714365),
                    width: 8,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(

                    child: Text('Anturio',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20.0,color: Colors.white),)
                )


            ),

          ],
        ),
      ),
          ],
        ),
        
      ),

    );
  }
}