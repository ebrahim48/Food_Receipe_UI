import 'package:flutter/material.dart';
import './info_page.dart';
import '../widgets/reuseable_colum.dart';
import '../widgets/reuseable_stack.dart';
import '../widgets/reuseable_widget.dart';
class ProfilePage extends StatefulWidget {
  static const String routeName = '/profile_page';
  const ProfilePage({super.key});
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}
class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: InkWell(
              onTap: () {
                Navigator.pushReplacementNamed(
                    context, InfoPage.routeName);
              },
              child: Image.asset('images/a.png')),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 10.0, right: 16),
            child: Stack(
              children: [
                Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xfff6cd77),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Image.asset('images/0.png'),
                    )),
                Positioned(
                  right: 0,
                  child: Container(
                    height: 8,
                    width: 8,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: const [
                Text(
                  'Welcome, ',
                  style: TextStyle(color: Colors.black, fontSize: 32),
                ),
                Text(
                  'Joey! 👋',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 32,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              'How you doin?',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            ReusableWidget(startText: "Trending Recipies", endText: 'See more'),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: ReuseableStack(
                      color: Color(0xfff8c2a8), imgString: 'images/1.png'),
                ),
                SizedBox(
                  width: 25,
                ),
                Expanded(
                  child: ReuseableStack(
                      color: Color(0xfffce466), imgString: 'images/2.png'),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Turkish egg curry',
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  color: Color(0xff9ef3c6),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Image.asset('images/3.png'),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              const Text('By Monika'),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 25,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Sunday Salad',
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                          Row(
                            children: [
                              Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  color: Color(0xfffce466),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Image.asset('images/4.png'),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              const Text('By Ross'),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            ReusableWidget(
                startText: 'Explore Categories', endText: 'See more'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ReuseableColumn(
                    color: Color(0xfff6dad8),
                    imageString: 'images/5.png',
                    txt: 'Curry'),
                ReuseableColumn(
                    color: Color(0xfffbd9ab),
                    imageString: 'images/6.png',
                    txt: 'Snacks'),
                ReuseableColumn(
                    color: Color(0xfff8bcbb),
                    imageString: 'images/7.png',
                    txt: 'Drinks'),
                ReuseableColumn(
                    color: Color(0xff9ef3c6),
                    imageString: 'images/8.png',
                    txt: 'Dessert'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
