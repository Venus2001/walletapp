import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:walletapp/util/my_buttom.dart';
import 'package:walletapp/util/my_cards.dart';
import 'package:walletapp/util/my_list_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color.fromARGB(255, 243, 101, 148),
        elevation: 8,
        shape: CircleBorder(),
        child: Icon(
          Icons.monetization_on,
          color: Colors.white,
          size: 32,
        ),
      ),
      // ignore: sized_box_for_whitespace
      bottomNavigationBar: Container(
        height: 70,
        child: BottomAppBar(
          color: Colors.grey.shade100,
          notchMargin: 14,
          shape: CircularNotchedRectangle(), // ایجاد بریدگی برای FAB
          child: Container(
            height: 70,
            padding: EdgeInsets.symmetric(horizontal: 32),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.home, size: 40),
                  color: Color.fromARGB(255, 243, 101, 148),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.settings, size: 40),
                  color: const Color.fromARGB(255, 118, 116, 253),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              // text appbar
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'My',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Cards',
                        style: TextStyle(fontSize: 28),
                      ),
                    ],
                  ),

                  // Icon add
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Icon(Icons.add),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),

            // List CARD item
            SizedBox(
              height: 210,
              child: ListView(
                controller: _controller,
                scrollDirection: Axis.horizontal,
                children: [
                  MyCards(
                    balance: 5250.202,
                    cardNumber: 5022291524264,
                    expiryMonth: 10,
                    expiryYear: 24,
                    color: const Color.fromARGB(255, 118, 116, 253),
                  ),
                  MyCards(
                    balance: 7320.122,
                    cardNumber: 502224451264,
                    expiryMonth: 5,
                    expiryYear: 12,
                    color: const Color.fromARGB(255, 122, 215, 231),
                  ),
                  MyCards(
                    balance: 3454.504,
                    cardNumber: 5022291445264,
                    expiryMonth: 8,
                    expiryYear: 16,
                    color: const Color.fromARGB(255, 238, 143, 180),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),

            // Icon Scroll
            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: ExpandingDotsEffect(
                dotWidth: 8.0,
                dotHeight: 8.0,
                spacing: 4.0,
                activeDotColor: Colors.grey.shade600,
              ),
            ),

            SizedBox(height: 40),

            // 3 buttom -> send + pay + bill
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // send buttom
                  MyButtom(
                    iconImagePath: 'images/send-money.png',
                    buttonText: 'Send',
                  ),

                  // pay buttom
                  MyButtom(
                    iconImagePath: 'images/credit.png',
                    buttonText: 'Pay',
                  ),

                  // bill buttom
                  MyButtom(
                    iconImagePath: 'images/payment.png',
                    buttonText: 'Bills',
                  ),
                ],
              ),
            ),

            SizedBox(height: 40),

            // column -> stats + transections
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26),
              child: Column(
                children: [
                  MyListTile(
                    iconImagePath: 'images/statistics.png',
                    tileTitle: 'Statistics',
                    tileSubTitle: 'Payments and Icoms',
                  ),
                  MyListTile(
                    iconImagePath: 'images/card-payment.png',
                    tileTitle: 'Trasections',
                    tileSubTitle: 'Transection History',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
