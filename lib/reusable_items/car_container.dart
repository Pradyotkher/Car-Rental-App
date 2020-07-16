import 'package:flutter/material.dart';
class CarContainer extends StatelessWidget {
  final String starRating;
  final String No_of_deals;
  final String imageAddress;
  final String CarName;
  final String price;
  final Function onPressed;
  CarContainer({@required this.imageAddress,@required this.onPressed,@required this.CarName,@required this.No_of_deals,@required this.price,this.starRating});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: double.infinity,
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.only(left: 8,right: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(40)),
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                width: 10,
              ),
              Container(
                height: 25,
                width: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Color(0xffFFC160),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    SizedBox(
                      width: 3,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.white,
                      size: 20,
                    ),
                    Text(
                      starRating,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 200,
              ),
              Text(
                '$No_of_deals Deals',
                style: TextStyle(
                  color: Color(0xff34A885),
                  fontSize: 20,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Hero(
            tag: imageAddress,
            child: Image(
              image: AssetImage(imageAddress),
              fit: BoxFit.cover,
              height: 200,
              width: double.infinity,
            ),
          ),
          SizedBox(
            height: 10,

          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                width: 5,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                      '$CarName',
                      style:TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      )
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    '$price',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 120,
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
                    onPressed: onPressed,
                ),

              ),
            ],
          )
        ],
      ),
    );
  }
}
