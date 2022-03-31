import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app_with_provider/controller/weather_controller.dart';

class SearchTemp extends StatefulWidget {
  @override
  State<SearchTemp> createState() => _SearchTempState();
}

class _SearchTempState extends State<SearchTemp> {
  TextEditingController namecity = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    namecity.clear();
  }

  @override
  Widget build(BuildContext context) {
    var state = Provider.of<WeatherController>((context), listen: true);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
        ),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(24.0)),
        child: Row(
          children: [
            GestureDetector(
                onTap: () {
                  if (namecity.text.isNotEmpty) {
                    state.searchCity(namecity.text);
                  }
                },
                child: const Icon(
                  Icons.search,
                  color: Colors.blueAccent,
                )),
            const SizedBox(
              width: 10.0,
            ),
            Expanded(
              child: TextField(
                controller: namecity,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: "Search Any City Name",
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
