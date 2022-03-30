import 'package:flutter/material.dart';

class AirHumidity extends StatefulWidget {
  final String image;
  int detail;
  String des;
  AirHumidity({
    Key? key,
    required this.image,
    required this.des,
    required this.detail,
  }) : super(key: key);

  @override
  State<AirHumidity> createState() => _AirHumidityState();
}

class _AirHumidityState extends State<AirHumidity> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 180,
        margin: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.5),
            borderRadius: BorderRadius.circular(15)),
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  widget.image,
                  width: 30,
                  height: 30,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.detail.toString(),
                  style: const TextStyle(
                      fontSize: 40.0, fontWeight: FontWeight.bold),
                ),
                Text(
                  widget.des,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
