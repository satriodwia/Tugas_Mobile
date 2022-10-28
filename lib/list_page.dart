import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:navigation_car/detail_page.dart';
import 'package:navigation_car/car_model.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          "PRAKTIKUM 4",
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
        backgroundColor: Colors.redAccent[400],
      ), //AppBar
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 585,
              color: Colors.redAccent[400],
              child: Container(
                margin: const EdgeInsets.all(8.0),
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: listCars.length,
                  itemBuilder: (context, index) {
                    final item = listCars[index];
                    return Card(
                      elevation: 0,
                      child: ListTile(
                        leading: ConstrainedBox(
                          constraints: const BoxConstraints(
                            minHeight: 44,
                            minWidth: 44,
                            maxHeight: 44,
                            maxWidth: 44,
                          ),
                          child: (Image.asset(
                            item.images,
                            fit: BoxFit.cover,
                          )),
                        ),
                        title: Text(
                          item.title,
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                        subtitle: Text(item.subtitle),
                        tileColor: Colors.white,
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailPage(cars: item),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
