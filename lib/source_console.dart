import 'package:app/Stores.dart';
import 'package:app/home.dart';
import 'package:app/select_products.dart';
import 'package:app/store_orders.dart';
import 'package:flutter/material.dart';


class storeConsole extends StatelessWidget {
  const storeConsole({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            SizedBox(width: 70),
            Text(
                'Store Console',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                )
            ),
          ],
        ),
        backgroundColor: Colors.grey[200],
        elevation: 0.00,
      ),
      body: Container(
        color: Colors.grey[200],
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              const SizedBox(height: 15),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.brown[600],
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 40),
                  child: Column(
                    children:const [
                      Text(
                        'Family Food Center',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        '(Grocery Store)',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Store Manager : Store Manager',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 20),
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
                  homeCard2(Icons.assignment, Colors.indigo, 'Orders' ,context,(){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const storeOrders()));}),
                  homeCard2(Icons.photo, Colors.deepOrange, 'Products' ,context,(){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const selectPro()));}),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  homeCard2(Icons.location_on, Colors.green, 'Areas' ,context,(){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Stores()));}),
                  homeCard2(Icons.check_box, Colors.purple, 'Slots',context,(){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Stores()));}),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  homeCard2(Icons.view_list_outlined, Colors.red, 'Pickers',context,(){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Stores()));}),
                  homeCard2(Icons.airport_shuttle_sharp, Colors.green, 'Drivers', context,(){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Stores()));}),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  homeCard2(Icons.check_box, Colors.purple, 'QC' ,context,(){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const storeOrders()));}),
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

            ],
          ),
        ),
      ),
    );
  }
}
