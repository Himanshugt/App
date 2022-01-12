import 'package:app/main.dart';
import 'package:flutter/material.dart';

class storeOrders extends StatelessWidget {
  const storeOrders({Key? key}) : super(key: key);

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
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Icon(
          Icons.account_balance_sharp,
          size: 165,
          color: Colors.indigoAccent,
        ),
        Text(
            'No Pending Orders',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Colors.grey,
            )
        ),
      ],
    );
  }
}

class Completed extends StatelessWidget {
  const Completed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Icon(
          Icons.account_balance_sharp,
          size: 165,
          color: Colors.indigo,
        ),
        Text(
            'No Completed Orders',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Colors.grey,
            )
        ),
      ],
    );
  }
}

class AllOrders extends StatelessWidget {
  const AllOrders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Icon(
          Icons.account_balance_sharp,
          size: 165,
          color: Colors.purple,
        ),
        Text(
            'No Orders Available',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Colors.grey,
            )
        ),
      ],
    );
  }
}

