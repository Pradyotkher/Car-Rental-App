import 'package:flutter/material.dart';

class HomeScreenCont extends StatefulWidget {
  @override
  _HomeScreenContState createState() => _HomeScreenContState();
}

class _HomeScreenContState extends State<HomeScreenCont> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.only(left: 20, right: 3,bottom: 20,top:20),
      height: 150,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xff174CC8),
        borderRadius: BorderRadius.only( bottomLeft:Radius.circular(50), bottomRight: Radius.circular(50)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Choose a Car',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          SizedBox(
            height: 80,
          ),
          Container(
            height: 60,
            width: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              color: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  width: 20,
                ),
                Row(

                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Icon(
                      Icons.location_on,
                      color: Colors.black,
                    ),
                    Text(
                      'Florida,USA',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 180,
                ),
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
                SizedBox(
                  width: 10,
                )
              ],
            ),
          ),
        ],   //END OF THE COLUMN
      ),
    );
  }
}
