import 'package:flutter/material.dart';

class Users extends StatelessWidget {
  const Users({Key? key}) : super(key: key);

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
            SizedBox(width: 80),
            Text(
                'All Users',
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
              userCard(context),
              const SizedBox(height: 10),
              userCard(context),
              const SizedBox(height: 10),
              userCard(context),
              const SizedBox(height: 10),
              userCard(context),
              const SizedBox(height: 10),
              userCard(context),
              const SizedBox(height: 10),
              userCard(context),
              const SizedBox(height: 10),
              userCard(context),
              const SizedBox(height: 10),
              userCard(context),
              const SizedBox(height: 10),

            ],
          ),
        ),
      ),
    );
  }
}

userCard(BuildContext context){
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: Colors.white,
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Icon(
              Icons.person,
              size: 65,
              color: Colors.grey,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Vivek',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w900,
                  color: Colors.grey,
                ),
              ),
              Text(
                '33200747',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w800,
                  color: Colors.black,
                ),
              ),
              Text(
                'User',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.red,
                ),
              ),
              Text(
                'VERIFIED',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w900,
                  color: Colors.green,
                ),
              ),
              Text(
                'Last Login: 17-Jul-20 02:25 am',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
            ],
          )
        ],
      )
    ),
  );
}
