import 'package:app/source_console.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Stores extends StatelessWidget {
  const Stores({Key? key}) : super(key: key);

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
            SizedBox(width: 100),
            Text(
                'Stores',
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.lightGreen[400],
                    ),
                    width: MediaQuery.of(context).size.width/2-15,
                    child: const Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Center(
                        child: Text(
                          'New Stores',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.teal,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.deepOrangeAccent[100],
                    ),
                    width: MediaQuery.of(context).size.width/2-15,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
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
              ),
              const SizedBox(height: 15),
              const Center(
                child: Text(
                  'ALL STORES',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w900,
                    color: Colors.grey,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              storeCard('Family Food Center', '(Grocery Store)',context),
              const SizedBox(height: 15),
              storeCard('Indian Super Market', '(Grocery Store)',context),
              const SizedBox(height: 15),
              storeCard('Doha Flowers', '(Flowers)',context),
              const SizedBox(height: 15),
              storeCard('Doha Fish', '(Fresh Fish)',context),
              const SizedBox(height: 15),
              storeCard('Wakra Store', '(Grocery Store)',context),
              const SizedBox(height: 15),
              storeCard('store1', '(Flowers)',context),
              const SizedBox(height: 15),
              storeCard('store2', '(Fresh Fish)',context),
              const SizedBox(height: 15),

            ],
          ),
        ),
      ),
    );
  }
}

storeCard(String title, String subtitle,BuildContext context){
  return RaisedButton(
    color: Colors.brown[600],
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
    onPressed: () {
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const storeConsole()));
    },
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children:[
          Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
          Text(
            subtitle,
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w500,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    ),
  );
}
