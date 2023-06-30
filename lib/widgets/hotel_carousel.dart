import 'package:flutter/material.dart';
import '../models/hotel_model.dart';

class HotelCarousel extends StatelessWidget {
  HotelCarousel({super.key});

  List<Hotel> hotel_list = [
    Hotel(
      rate: 488,
      location: "Greece",
      rating: 4.8,
      imageUrl: "assets/images/img1.jpeg",
      name: "Santorini",
    ),
    Hotel(
      rate: 280,
      location: "Spain",
      rating: 4.8,
      imageUrl: "assets/images/img2.jpeg",
      name: "Hotel Royal",
    ),
    Hotel(
        rate: 580,
        location: "Indonesia",
        rating: 4.9,
        imageUrl: "assets/images/img3.jpeg",
        name: "Bali Motel Vung Tau",
        description:
            "Set in Vung Tau, 100 metres from front beach, Bali motel offers accomodation with a garden, private parking and a shared bedroom. Perfect place for a family trip to Indonesia!"),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 270,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          Hotel currHotel = hotel_list[index];
          return Container(
            width: 165,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.3), BlendMode.darken),
                    image: AssetImage(currHotel.imageUrl),
                    fit: BoxFit.cover)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Spacer(),
                    Text(
                      currHotel.name,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.place,
                          color: Colors.white,
                        ),
                        Text(
                          currHotel.location,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\$${currHotel.rate}/night",
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 13,
                          ),
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 18,
                            ),
                            Text(
                              currHotel.rating.toString(),
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                  ]),
            ),
          );
        },
        itemCount: hotel_list.length,
        separatorBuilder: (context, index) => const SizedBox(width: 20),
      ),
    );
  }
}
