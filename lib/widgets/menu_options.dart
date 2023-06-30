import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MenuOptions extends StatelessWidget {
  MenuOptions({super.key});

  final List<Map<String, CustomIconOption>> _options = [
    {
      "Hotel": const CustomIconOption(
        iconData: Icons.hotel,
      )
    },
    {
      "Flight": const CustomIconOption(
        iconData: Icons.flight,
      )
    },
    {"Place": const CustomIconOption(iconData: Icons.place)},
    {"Food": const CustomIconOption(iconData: FontAwesomeIcons.bowlFood)},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 125,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
                child: Container(
                  padding: const EdgeInsets.all(15),
                  width: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: Colors.grey.shade400,
                      width: 1,
                    ),
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        _options[index].values.first,
                        Text(_options[index].keys.first)
                      ]),
                ),
              ),
          separatorBuilder: (context, index) => const SizedBox(
                width: 10,
              ),
          itemCount: _options.length),
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
      size: 36,
    );
  }
}
