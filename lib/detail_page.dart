import 'package:flutter/material.dart';
import 'package:navigation_car/car_model.dart';

class DetailPage extends StatelessWidget {
  final Cars cars;
  const DetailPage({
    super.key,
    required this.cars,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.redAccent[400],
              borderRadius: BorderRadius.circular(20.0),
            ),
            padding: const EdgeInsets.only(right: 5, left: 5, top: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    TextButton.icon(
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                        size: 16,
                      ),
                      label: const Text(
                        "BACK",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    const Spacer(),
                    Column(
                      children: [
                        Container(
                          height: 20,
                        ),
                      ],
                    ),
                    const Spacer(
                      flex: 2,
                    ),
                  ],
                ),
                Container(
                  height: 10,
                ),
                SizedBox(
                  width: 350,
                  height: 40,
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            cars.title,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            cars.subtitle,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      const Icon(Icons.attach_money),
                      Text("${cars.price}"),
                    ],
                  ),
                ),
                Container(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  color: Colors.black,
                  child: SizedBox(
                    height: 245,
                    width: 390,
                    child: Image.asset(
                      cars.images,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(5),
                  width: 380,
                  height: 283,
                  // color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 10,
                      ),
                      Text(
                        cars.description,
                        textAlign: TextAlign.justify,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        height: 120,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
