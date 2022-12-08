import 'package:flutter/material.dart';
import './profile_page.dart';
class InfoPage extends StatefulWidget {
  static const String routeName = '/';
  const InfoPage({super.key});
  @override
  State<InfoPage> createState() => _InfoPageState();
}
class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Image.asset(
                'images/9.png',
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Become a',
                      style:
                          TextStyle(fontWeight: FontWeight.w200, fontSize: 15),
                    ),
                    const Text(
                      'Masterchef 👨‍🍳',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      'Get tasty recipies from the Masterchefs at around the world to fulfill your cravings,',
                      style: TextStyle(fontSize: 15),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SliderCustomWidget(),
                        InkWell(
                          onTap: () {
                            Navigator.pushReplacementNamed(
                                context, ProfilePage.routeName);
                          },
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Color(0xfff07549),
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 2,
                                    color: Colors.grey,
                                    spreadRadius: 2)
                              ],
                            ),
                            child: const CircleAvatar(
                              radius: 25,
                              backgroundColor: Color(0xfff07549),
                              child: Icon(
                                Icons.arrow_right_alt,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SliderCustomWidget extends StatelessWidget {
  const SliderCustomWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 6,
          width: 17,
          decoration: BoxDecoration(
            color: Color(0xfff07549),
            borderRadius: BorderRadius.circular(7),
          ),
        ),
        SizedBox(
          width: 2,
        ),
        Container(
          height: 6,
          width: 5,
          decoration: BoxDecoration(
            color: Color(0xffdce2e2),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        SizedBox(
          width: 2,
        ),
        Container(
          height: 6,
          width: 5,
          decoration: BoxDecoration(
            color: Color(0xffdce2e2),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ],
    );
  }
}
