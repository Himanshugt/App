import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class globalPro extends StatelessWidget {
  const globalPro({Key? key}) : super(key: key);

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
            SizedBox(width: 60),
            Text(
                'Global Products',
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.black,
                          width: 2
                      ),
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                    ),
                    width: MediaQuery.of(context).size.width-90,
                    height: 60,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Search',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                            ),
                          ),
                          Icon(
                            Icons.search,
                            size: 25,
                            color: Colors.grey,
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                      decoration: BoxDecoration(

                          borderRadius: BorderRadius.circular(5),
                          color: Colors.amber
                      ),
                      width: 60,
                      height: 60,
                      child: const Icon(
                        Icons.app_registration,
                        size: 35,
                        color: Colors.black,
                      )
                  )
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
