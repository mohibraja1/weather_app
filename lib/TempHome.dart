import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/view/screens/HomeScreen.dart';

import 'bloc/BaseBlock.dart';


class TempHome extends StatelessWidget{

  @override
  Widget build(BuildContext context) {


    final bloc = BaseBlock(context);
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child:  ListView(
          children: [

            Padding(padding: EdgeInsets.all(5)),
            Center(
              widthFactor: 100,
              child: ElevatedButton(
                onPressed: () {
                  bloc.navigateNext(HomeScreen());
                },
                child: Text('HomeScreen App'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.amber,
                  padding: EdgeInsets.all(20), // Set padding
                ),
              ),
            ),

            Padding(padding: EdgeInsets.all(5)),
            Center(
              widthFactor: 100,
              child: ElevatedButton(
                onPressed: () {

                },
                child: Text('AnimatedAlignScreen App'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.amber,
                  padding: EdgeInsets.all(20), // Set padding
                ),
              ),
            ),

            Padding(padding: EdgeInsets.all(5)),
            Center(
              widthFactor: 100,
              child: ElevatedButton(
                onPressed: () {

                },
                child: Text('AnimatedPositioned App'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.amber,
                  padding: EdgeInsets.all(20), // Set padding
                ),
              ),
            ),

            Padding(padding: EdgeInsets.all(5)),
            Center(
              widthFactor: 100,
              child: ElevatedButton(
                onPressed: () {

                },
                child: Text('Anim4 App'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.amber,
                  padding: EdgeInsets.all(20), // Set padding
                ),
              ),
            ),


            Padding(padding: EdgeInsets.all(5)),
            Center(
              widthFactor: 100,
              child: ElevatedButton(
                onPressed: () {

                },
                child: Text('Anim6 App'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.amber,
                  padding: EdgeInsets.all(20), // Set padding
                ),
              ),
            ),

            Padding(padding: EdgeInsets.all(5)),
            Center(
              widthFactor: 100,
              child: ElevatedButton(
                onPressed: () {

                },
                child: Text('AnimatedCirclePage App'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.amber,
                  padding: EdgeInsets.all(20), // Set padding
                ),
              ),
            ),

            Padding(padding: EdgeInsets.all(5)),
            Center(
              widthFactor: 100,
              child: ElevatedButton(
                onPressed: () {

                },
                child: Text('Sign in animations'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.amber,
                  padding: EdgeInsets.all(20), // Set padding
                ),
              ),
            ),


            Padding(padding: EdgeInsets.all(5)),
            Center(
              widthFactor: 100,
              child: ElevatedButton(
                onPressed: () {

                },
                child: Text('CustomSampleAnim'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.amber,
                  padding: EdgeInsets.all(20), // Set padding
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}
