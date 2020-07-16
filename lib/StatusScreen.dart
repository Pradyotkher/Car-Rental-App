import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'HomeScreen.dart';
import 'reusable_items/car_container.dart';
class StatusScreen extends StatefulWidget {
  final  heroTag;
  final String CarName;
  final String price;
  StatusScreen({this.CarName,this.heroTag, this.price });
  @override
  _StatusScreenState createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 600,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomLeft:Radius.circular(200),bottomRight: Radius.circular(200)),
                  color: Color(0xff164BC9),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top:40.0,left: 8),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(icon: Icon(Icons.arrow_back_ios, color: Colors.white,size: 30,),
                        onPressed:(){
                      Navigator.of(context).pop();
                        }),
                  ),
                ),
              ),
              Positioned(
                left: 50,
                right: 50,
                top: 120,
                child: Container(
                  padding: EdgeInsets.only(left: 8,right: 8),
                  height: 400,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,

                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),

                ),
              ),
              Positioned(
                top: 60,
                left: 100,
                child: Hero(
                  tag: widget.heroTag,
                  child: Container(
                    height: 150,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      image: DecorationImage(
                        image: AssetImage(widget.heroTag),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 240,
                  left: 130,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        widget.CarName,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 30
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        ' | 4 Doors |  ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),

                    ],
                  ),
              ),
              Positioned(
                left: 100,
                top: 360,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Icon(
                          Icons.phone_android,
                          size: 30,
                          color: Colors.black,
                        ),
                        Text(
                          'Bluetooth ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Icon(
                          Icons.ac_unit,
                          size: 30,
                          color: Colors.black,

                        ),
                        Text(
                          'Air Con',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Icon(
                          Icons.person,
                          size: 30,
                          color: Colors.black,
                        ),
                        Text(
                          '5 Seater',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  'Trip Dates',
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            height: 80,
            width: 400,
            padding: EdgeInsets.only(
              left: 10,right: 10,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              color: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Color(0xffF16BAA),
                  ),
                  child: IconButton(
                      icon: Icon(
                        Icons.calendar_today,
                        size: 30,
                        color: Colors.white,
                      ),
                      onPressed: null),
                ),
                Text(
                  '03-07-2020 to 07-07-2020',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,

                  ),
                ),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    color: Color(0xff2155BF),
                  ),
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 25,
                    ),
                    onPressed: null,
                  ),

                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                '__________________________',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ],
          ),

          Container(
            height: 80,
            width: 400,
            padding: EdgeInsets.only(
              left: 10,right: 10,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              color: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Color(0xffF16BAA),
                  ),
                  child: IconButton(
                      icon: Icon(
                        Icons.location_on,
                        size: 30,
                        color: Colors.white,
                      ),
                      onPressed: null),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Miami',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,

                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    color: Color(0xff2155BF),
                  ),
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 25,
                    ),
                    onPressed: null,
                  ),

                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                '__________________________',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ],
          ),
          Container(
            width: 400,
            height: 100,
            padding: EdgeInsets.only(
              left: 10,right: 10,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              color: Colors.white,
            ),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text(
                        'Total',
                        style: TextStyle(
                          color: Colors.grey.shade400,
                          fontSize: 18,
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Text(widget.price,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 23,
                                fontWeight: FontWeight.bold

                            ),
                          ),
                          SizedBox(
                          width: 3,
                          ),
                          Text('Dollars/Trip',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 23,
                                fontWeight: FontWeight.bold

                            ),
                          ),
                        ],

                      )
                    ],
                  ),
                  GestureDetector(
                    onTap: null,
                    child: Container(
                      height: 60,
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        color: Colors.deepOrange,
                      ),
                      child: Center(
                        child: Text(
                          'Go to Checkout',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
