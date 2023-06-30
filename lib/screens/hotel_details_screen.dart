import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HotelDetailsScreen extends StatelessWidget {
  HotelDetailsScreen({super.key});

  static const String routeName = '/details-screen';

  List<Map<String, CustomIconOption>> amenities = [
    {
      "2 bed": const CustomIconOption(
        iconData: Icons.bed_outlined,
      )
    },
    {
      "Dinner": const CustomIconOption(
        iconData: Icons.dinner_dining_outlined,
      )
    },
    {
      "Hot tub": const CustomIconOption(
        iconData: Icons.hot_tub_outlined,
      )
    },
    {"1 Ac": const CustomIconOption(iconData: Icons.ac_unit_outlined)}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(children: [
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: 300,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/img3.jpeg"),
                    fit: BoxFit.cover),
              ),
            ),
          ),
          Positioned(
              top: 70,
              left: 20,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    style: IconButton.styleFrom(backgroundColor: Colors.white),
                    icon: const Icon(Icons.arrow_back),
                    color: Colors.black,
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const SizedBox(
                        width: 220,
                      ),
                      IconButton(
                        onPressed: () {},
                        style:
                            IconButton.styleFrom(backgroundColor: Colors.white),
                        icon: const Icon(Icons.share),
                        color: Colors.black,
                      ),
                      IconButton(
                        onPressed: () {},
                        style:
                            IconButton.styleFrom(backgroundColor: Colors.white),
                        icon: const Icon(Icons.favorite_border_outlined),
                        color: Colors.black,
                      ),
                    ],
                  )
                ],
              )),
          Positioned(
            top: 240,
            child: Container(
              padding: const EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width,
              height: 600,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Bali Motel Vung Tau",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Row(
                    children: [
                      Icon(
                        Icons.place_outlined,
                        color: Colors.black,
                        size: 18,
                      ),
                      Text(
                        "  Indonesia",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  const Row(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 20,
                          ),
                          Text(
                            "4.9",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            "(6.8k review)",
                            style: TextStyle(color: Colors.grey, fontSize: 16),
                          )
                        ],
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Text(
                            "\$580/",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),
                          ),
                          Text("night")
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Divider(
                    color: Colors.grey.withOpacity(0.5),
                    indent: 15,
                    endIndent: 15,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Text(
                    "Set in Vung Tau, 100 metres from front beach, Bali motel offers accomodation with a garden, private parking and a shared bedroom...",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                    style: TextStyle(color: Colors.black45, fontSize: 14),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Text(
                    "What we offer",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    height: 100,
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => GestureDetector(
                              child: Container(
                                padding: const EdgeInsets.all(15),
                                width: 85,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(
                                    color: Colors.grey.shade400,
                                    width: 0.5,
                                  ),
                                ),
                                child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      amenities[index].values.first,
                                      Text(amenities[index].keys.first)
                                    ]),
                              ),
                            ),
                        separatorBuilder: (context, index) => const SizedBox(
                              width: 10,
                            ),
                        itemCount: amenities.length),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Text(
                    "Hosted by",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image:
                                  AssetImage("assets/images/hosted_by.jpeg")),
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Harleen smith",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 20,
                              ),
                              Text(
                                "4.9",
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                "(1.4k review)",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 16),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Spacer(),
                      IconButton(
                          style: IconButton.styleFrom(
                              backgroundColor: Colors.orangeAccent.shade200,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          onPressed: () {},
                          icon: const Icon(
                            Icons.chat_outlined,
                            color: Colors.white,
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.lightBlue.shade200,
                          padding: EdgeInsets.all(8)),
                      child: const Text(
                        "Book Now",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

class CustomIconOption extends StatelessWidget {
  final IconData iconData;
  const CustomIconOption({
    super.key,
    required this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return Icon(
      iconData,
      size: 30,
      color: Colors.black87,
    );
  }
}
