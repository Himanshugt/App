import 'package:app/main.dart';
import 'package:app/users.dart';
import 'package:flutter/material.dart';

class Orders extends StatelessWidget {
  const Orders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
            extendBodyBehindAppBar: true,
            appBar: AppBar(
              iconTheme: const IconThemeData(
                color: Colors.white, //change your color here
              ),
              bottom: const TabBar(
                tabs: [
                  Tab(
                    text: 'Pending',
                  ),
                  Tab(
                    text: 'Completed',
                  ),
                  Tab(
                    text: 'All Orders',
                  )
                ],
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  SizedBox(width: 60),
                  Text(
                      'Store Orders',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      )
                  ),
                ],
              ),
              backgroundColor: Colors.brown,
              elevation: 0.00,
            ),
            body: const TabBarView(
              children: [
                Pending(),
                Completed(),
                AllOrders()
              ],
            )
        )
    );
  }
}


class Pending extends StatelessWidget {
  const Pending({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            orderCard(context),
            const SizedBox(height: 10),
            orderCard(context),
            const SizedBox(height: 10),
            orderCard(context),
            const SizedBox(height: 10),
            orderCard(context),
            const SizedBox(height: 10),
            orderCard(context),
            const SizedBox(height: 10),
            orderCard(context),
            const SizedBox(height: 10),
            orderCard(context),
            const SizedBox(height: 10),
            orderCard(context),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

class Completed extends StatelessWidget {
  const Completed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            orderCard(context),
            const SizedBox(height: 10),
            orderCard(context),
            const SizedBox(height: 10),
            orderCard(context),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

class AllOrders extends StatelessWidget {
  const AllOrders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            orderCard(context),
            const SizedBox(height: 10),
            orderCard(context),
            const SizedBox(height: 10),
            orderCard(context),
            const SizedBox(height: 10),
            orderCard(context),
            const SizedBox(height: 10),
            orderCard(context),
            const SizedBox(height: 10),
            orderCard(context),
            const SizedBox(height: 10),
            orderCard(context),
            const SizedBox(height: 10),
            orderCard(context),
            const SizedBox(height: 10),
            orderCard(context),
            const SizedBox(height: 10),
            orderCard(context),
            const SizedBox(height: 10),
            orderCard(context),
            const SizedBox(height: 10),

          ],
        ),
      ),
    );
  }
}

orderCard(BuildContext context){
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: Colors.white,
    ),
    child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'No:# BQ020000010',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'Date: 17-Jul-20 02:25 am',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            const Text(
              'Total: 51.0 QAR',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
            const Text(
              'Total Items: 4',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
            const Text(
              'Customer: Vivek (33200747)',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
          ],
        )
    ),
  );
}


