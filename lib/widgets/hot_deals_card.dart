import 'package:flutter/material.dart';
import 'package:tecudia/screens/hotel_details_screen.dart';

class HotDealsCard extends StatelessWidget {
  const HotDealsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          Navigator.of(context).pushNamed(HotelDetailsScreen.routeName),
      child: Container(
        // margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.all(15),
        height: 200,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.black,
            image: DecorationImage(
              image: const AssetImage("assets/images/img3.jpeg"),
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.3), BlendMode.darken),
              fit: BoxFit.cover,
            )),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            height: 40,
            width: 90,
            padding: const EdgeInsets.only(
              left: 10,
              top: 10,
            ),
            decoration: BoxDecoration(
              color: Colors.red.withOpacity(0.5),
              borderRadius: BorderRadius.circular(40),
            ),
            child: Text(
              "25% OFF",
              style: TextStyle(
                color: Colors.white.withOpacity(0.8),
              ),
            ),
          ),
          const Spacer(),
          const Text(
            "Bali Motel Vung Tau",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Row(
            children: [
              Icon(
                Icons.place,
                color: Colors.white,
              ),
              Text(
                "Indonesia",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              )
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "\$580/night",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 18,
                  ),
                  Text(
                    "4.8",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ],
              )
            ],
          ),
        ]),
      ),
    );
  }
}
