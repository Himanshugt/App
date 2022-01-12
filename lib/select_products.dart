import 'package:flutter/material.dart';

class selectPro extends StatelessWidget {
  const selectPro({Key? key}) : super(key: key);

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
            SizedBox(width:57),
            Text(
                'Select Products',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                )
            ),
            SizedBox(width: 70),
            Icon(
              Icons.search,
              size: 32,
              color: Colors.black,
            ),
          ],
        ),
        backgroundColor: Colors.grey[200],
        elevation: 0.00,
      ),
      bottomNavigationBar: Material(
        elevation: 0.00,
        color: Colors.white,
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 15,horizontal: 48),

              color: Colors.green,
              child: const Text(
                '45 items , 656.5 QAR',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              child: FlatButton(
                padding: EdgeInsets.symmetric(vertical: 15),
                color: Colors.lightGreen,
                textColor: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text("View Cart", style: TextStyle(fontSize: 20.0)),
                ),
                onPressed: (){}
              ),
            ),
          ],
        ),
      ),
      body: Container(
        color: Colors.grey[200],
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              ListView(
                children: [
                  const SizedBox(height: 10),
                  proRow(context),
                  const SizedBox(height: 10),
                  proRow(context),
                  const SizedBox(height: 10),
                  proRow(context),
                  const SizedBox(height: 10),
                  proRow(context),
                  const SizedBox(height: 10),
                  proRow(context),
                  const SizedBox(height: 10),
                  proRow(context),
                ],
              ),

              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.deepOrangeAccent[100],
                ),
                height: 50,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Center(
                    child: Text(
                      'Store Types',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.orange[900],
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
        ),
      ),
    );
  }
}


proRow(BuildContext context){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
          width: MediaQuery.of(context).size.width/2-15,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(
                  5.0,
                  5.0,
                ),
                blurRadius: 5.0,
                spreadRadius: 0.5,
              ), //BoxShadow
              BoxShadow(
                color: Colors.white,
                offset: Offset(0.0, 0.0),
                blurRadius: 0.0,
                spreadRadius: 0.0,
              ),
            ],
            color: Colors.white70,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Sainsbury',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    Icon(
                      Icons.favorite_border,
                      size: 22,
                      color: Colors.grey,
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Stack(
                  children:  const [
                    Image(
                      image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjD9nVWH7qJfylXyLPZd8kXXk4woSKIz2npw&usqp=CAU'),
                    ),
                    Positioned(
                        top: 15,
                        left: 120,
                        child: Icon(
                          Icons.circle,
                          size: 39,
                          color: Colors.amber,
                        )
                    ),
                    Positioned(
                      top: 22,
                      left: 127,
                      child: Text(
                        'x6',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      '7.0 QAR',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w900,
                        color: Colors.green,
                      ),
                    ),
                    Icon(
                      Icons.info,
                      size: 22,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ],
            ),
          )
      ),
      Container(
          width: MediaQuery.of(context).size.width/2-15,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(
                  5.0,
                  5.0,
                ),
                blurRadius: 5.0,
                spreadRadius: 0.5,
              ), //BoxShadow
              BoxShadow(
                color: Colors.white,
                offset: Offset(0.0, 0.0),
                blurRadius: 0.0,
                spreadRadius: 0.0,
              ),
            ],
            color: Colors.white70,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Sainsbury',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    Icon(
                      Icons.favorite_border,
                      size: 22,
                      color: Colors.grey,
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Stack(
                  children:  const [
                    Image(
                      image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjD9nVWH7qJfylXyLPZd8kXXk4woSKIz2npw&usqp=CAU'),
                    ),
                    Positioned(
                        top: 15,
                        left: 120,
                        child: Icon(
                          Icons.circle,
                          size: 39,
                          color: Colors.amber,
                        )
                    ),
                    Positioned(
                      top: 22,
                      left: 127,
                      child: Text(
                        'x6',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      '7.0 QAR',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w900,
                        color: Colors.green,
                      ),
                    ),
                    Icon(
                      Icons.info,
                      size: 22,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ],
            ),
          )
      ),
    ],
  );
}