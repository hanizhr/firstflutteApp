import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.deepOrangeAccent,
        child: Center(
          child: Text("hello", textDirection: TextDirection.ltr),
        )
    );
  }
}

class bizcard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (
        title: Text("Bizcard"),
       backgroundColor: Colors.black,
       // centerTitle: true,
      ),
      backgroundColor: Colors.black12,
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.topCenter,
          children:  [
            _getCard(),
            _getAvatar(),
          ],
        ),

    )
    );
  }

  Container _getCard() {
    return Container(
      width: 350,
      height: 200,
      margin: EdgeInsets.all(50.4),
      decoration: BoxDecoration(
          color: Colors.orange,
        borderRadius: BorderRadius.circular(14.8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Haniyeh Zahraee", style: 
          TextStyle(fontSize: 25.3 , fontWeight:FontWeight.w500 , fontFamily:  AutofillHints.birthdayDay, color: Colors.black)),
          Text("haniyehzahraee@gmail.com" ,style:
          TextStyle(fontSize: 17.3 ,)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.perm_identity),
              Text("GitHub: @hanizhr",style:
                TextStyle(fontSize: 17.3 ))
            ],

          )
        ],
      ),
    );
  }

 Container _getAvatar() {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.all(Radius.circular(50.0)),
        border: Border.all(color: Colors.black, width: 1.2),
        image: DecorationImage(image: NetworkImage("https://picsum.photos/id/1/200/300"),
        fit: BoxFit.cover)
      )
    );
 }
}