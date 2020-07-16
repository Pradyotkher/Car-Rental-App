import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'reusable_items/HomeScreenContainer.dart';
import 'reusable_items/car_container.dart';
import 'StatusScreen.dart';
import 'reusable_items/drawer_widget.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff174CC8),
        elevation: 0,
        actions: <Widget>[
          SizedBox(
            width: 10,
          ),
          Container(
            margin: EdgeInsets.only(right: 10),
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(35)),
              ),
              child: IconButton(icon: Icon(Icons.supervised_user_circle, color: Colors.white,size: 40,), onPressed: null)),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      drawer: MainDrawer(),
      backgroundColor: Colors.white,
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Container(
            height: 250,
            width: double.infinity,
            child: HomeScreenCont(),
          ),
        SizedBox(
          height: 20,
        ),
          Padding(
            padding: const EdgeInsets.only(top:15,left: 15,right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  width: 5,
                ),
                Text(
                  '23 Elements',
                  style: TextStyle(
                  fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          CarContainer(
            imageAddress: 'images/hyundai-elite-i20-500x500.png',
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context){
               return StatusScreen(
                  heroTag: 'images/hyundai-elite-i20-500x500.png',
                  CarName: 'Hyundai I20',
                 price: '119',
                );
              }));
            },
            CarName: 'Hyundai I20',
            No_of_deals: '18',
            starRating: '4.5',
            price: '119 dollars/day',
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                '_______________________________________',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          CarContainer(
            imageAddress: 'images/aston-martin-dbc-concept-cars-wallpaper-preview.jpg',
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return StatusScreen(heroTag: 'images/aston-martin-dbc-concept-cars-wallpaper-preview.jpg',CarName: 'Aston Martin',price: '350',);
              }));
            },
            CarName: 'Aston Martin',
            starRating: '4.7',
            price: '350 dollars/day',
            No_of_deals: '6',
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                '_______________________________________',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          CarContainer(imageAddress: 'images/01.jpg',
              onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context){
              return StatusScreen(
                heroTag: 'images/01.jpg',
                CarName: 'Lotus',
                price: '280',
              );
            }));
              },
              starRating: '4.5',
              CarName: 'Lotus',
              No_of_deals: '7',
              price: '280 Dollars/Day')
        ],
      ),
    );
  }
}
