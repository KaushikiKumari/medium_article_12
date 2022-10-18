import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0),
      body: Center(
        child: SingleChildScrollView(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //CircleBorder
            SizedBox(
              height: 45,
              width: 150,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(shape: const CircleBorder()),
                child: const Center(child: Icon(Icons.add)),
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            //StadiumBorder
            SizedBox(
              height: 45,
              width: 150,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(shape: const StadiumBorder()),
                child: const Center(child: Icon(Icons.add)),
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            //StadiumBorder
            const SizedBox(
              height: 55,
              width: 150,
              child: Card(
                color: Colors.pink,
                shape: StadiumBorder(),
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            Container(
              height: 45,
              width: 150,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade400,
                      offset: const Offset(0, 3),
                      spreadRadius: 1,
                      blurRadius: 3,
                    )
                  ]),
            )
          ],
        )),
      ),
    );
  }
}
