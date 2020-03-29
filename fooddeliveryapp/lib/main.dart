import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:fooddeliveryapp/bloc/cartListBloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      blocs: [
        Bloc((i) => CartListBloc())
      ],
      child: MaterialApp(
        title: "The Smashing Pumpkins",
        home: Home(),
        debugShowCheckedModeBanner: false,
      )
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: ListView(
            children: <Widget>[
              FirstHalf()
            ]
          ),
        ),
      )
    );
  }
}

class FirstHalf extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(35, 25, 0, 0),
      child: Column(
        children: <Widget>[
          CustomAppBar(),
          SizedBox(height: 30),
          title(),
          SizedBox(height: 30)
        ]
      )
    );
  }
  Widget title() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        SizedBox(width: 45),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget> [
            Text(
              "The Feast",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 30,
              )
            ),
            Text(
              "Knight Bus",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 30,
              )
            )
          ]
        )
      ]
    );
  }
}


class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var edgeInsets = EdgeInsets.only(right: 30);
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Icon(Icons.menu),
          GestureDetector(
            onTap: () {},
            child:Container(
              margin: edgeInsets,
              child: Text("0"),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.yellow[800],
                borderRadius: BorderRadius.circular(50)
              ),
            )
          )
          
        ]
      ),
    );
  }
}
