import 'package:flutter/material.dart';
import 'package:tecudia/constants/global_variables.dart';
import 'package:tecudia/widgets/hot_deals_card.dart';
import 'package:tecudia/widgets/hotel_carousel.dart';
import 'package:tecudia/widgets/menu_options.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalVariables.bgWhite,
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Padding(
          padding: const EdgeInsets.only(
            top: 20.0,
            left: 30,
            right: 30,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CustomText(
                        txt: 'Where you wanna go?',
                        sz: 40,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 30,
                        child: IconButton(
                          icon: const Icon(Icons.search),
                          iconSize: 40,
                          onPressed: () {},
                        ),
                      ),
                    ]),
                const SizedBox(
                  height: 15,
                ),
                MenuOptions(),
                const SizedBox(
                  height: 15,
                ),
                Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(txt: "Popular Hotels", sz: 30),
                        Text(
                          "See all",
                          style: TextStyle(color: Colors.orange),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    HotelCarousel(),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      children: [
                        CustomText(
                          txt: "Hot Deals",
                          sz: 30,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    HotDealsCard(),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.txt,
    required this.sz,
  });
  final String txt;
  final double sz;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Text(
        txt,
        overflow: TextOverflow.clip,
        style: TextStyle(fontSize: sz, color: Colors.black),
      ),
    );
  }
}
