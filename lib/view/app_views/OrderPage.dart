import 'package:drugland_app/utilities/Constants.dart';
import 'package:drugland_app/view/app_views/HomePage.dart';
import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return OrderPageState();
  }
}

class OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Constants.druglandBlue,
        leading: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const HomePage(),
              ),
            );
          },
          child: const Center(
            child: Text(
              'Home',
            ),
          ),
        ),
        title: const Text(
          'Orders',
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Add new order button
            Container(
              margin: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'All Orders',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Constants.druglandGreen,
                    ),
                    onPressed: () {
                      print('ADD ORDER CLICKED');
                    },
                    child: const Text('+ New Order'),
                  ),
                ],
              ),
            ),

            /// Display all orders
            Container(),
          ],
        ),
      ),
    );
  }
}
