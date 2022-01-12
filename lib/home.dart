
import 'package:app/Stores.dart';
import 'package:app/global_products.dart';
import 'package:app/orders.dart';
import 'package:app/users.dart';
import 'package:flutter/material.dart';





class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey[350],
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              const Text(
                'Hello, Vivek',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 0.00),
                child: RaisedButton(
                    child: const Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text(
                        'Go To Online Store',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    color: Colors.red,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                    onPressed: () async {            }
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Row(
                          children: const [
                            Expanded(
                              child: Text(
                                'Today',
                                style: TextStyle(
                                  fontSize: 27,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Text(
                              '5-1-2022',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey,
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Row(
                          children: const [
                            SizedBox(width: 15),
                            Expanded(
                              child: Text(
                                '15',
                                style: TextStyle(
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green,
                                ),
                              ),
                            ),
                            Text(
                              '4,505',
                              style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                                color: Colors.green,
                              ),
                            ),
                            SizedBox(width: 15)
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Row(
                          children: const [
                            Expanded(
                              child: Text(
                                'Total Orders',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            Text(
                              'Total Value (QAR)',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey,
                              ),
                            )
                          ],
                        ),
                      ),
                      const Divider(
                        height: 20,
                        thickness: 1,
                        color: Colors.grey,
                      ),
                      const SizedBox(height: 5 ),
                      IntrinsicHeight(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: const [
                                Text(
                                  '8',
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green,
                                  ),
                                ),
                                Text(
                                  'Delivered',
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green,
                                  ),
                                ),
                              ],
                            ),
                            const VerticalDivider(
                              color: Colors.grey,
                              thickness: 2,
                            ),
                            Column(
                              children: const [
                                Text(
                                  '1',
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red,
                                  ),
                                ),
                                Text(
                                  'Cancelled',
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red,
                                  ),
                                ),
                              ],
                            ),
                            const VerticalDivider(
                              color: Colors.grey,
                              thickness: 2,
                            ),
                            Column(
                              children: const [
                                Text(
                                  '6',
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black87,
                                  ),
                                ),
                                Text(
                                  'Pending',
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black87,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  homeCard(Icons.person, Colors.indigo, 'Users','( 29000 )' ,context,(){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Users()));}),
                  homeCard(Icons.home, Colors.deepOrange, 'Stores','3 Stores' ,context,(){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Stores()));})
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  homeCard(Icons.photo, Colors.teal, 'Products','( 32100 )' ,context,(){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const globalPro()));}),
                  homeCard(Icons.assignment, Colors.purple, 'Orders','( 1565523 )' ,context,(){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Orders()));})
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  homeCard2(Icons.info, Colors.deepOrange, 'Suggestions',context,(){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Stores()));}),
                  homeCard2(Icons.settings, Colors.green, 'App Settings', context,(){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Stores()));}),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  homeCard2(Icons.bookmark, Colors.deepPurple, 'Promotions' ,context,(){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Stores()));}),
                  homeCard2(Icons.notifications, Colors.pink, 'Notifications',context,(){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Stores()));}),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  homeCard2(Icons.view_headline_sharp, Colors.brown, 'Reports',context,(){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Stores()));}),
                  homeCard2(Icons.logout, Colors.indigo, 'Exit',context,(){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Stores()));}),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 0.00),
                child: RaisedButton(
                  child: const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      'Log Out',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  color: Colors.red,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                  onPressed: () async {            }
                ),
              ),

            ],
          ),
        )
      ),
    );
  }
}

homeCard(IconData icon,MaterialColor color,String title,String subTitle,BuildContext context,void Function() function){
  return ButtonTheme(
    minWidth: MediaQuery.of(context).size.width/2-15,
    child: RaisedButton(
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      onPressed: function,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 28),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: Icon(
                icon,
                size: 65,
                color: color,
              ),
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: color,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              subTitle,
              style: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

homeCard2(IconData icon,MaterialColor color,String title,BuildContext context,void Function() function){
  return ButtonTheme(
    minWidth: MediaQuery.of(context).size.width/2-15,
    child: RaisedButton(
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      onPressed: function,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 28),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: Icon(
                icon,
                size: 65,
                color: color,
              ),
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: color,
              ),
            ),
            const SizedBox(height: 23),
          ],
        ),
      ),
    ),
  );
}