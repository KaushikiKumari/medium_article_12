import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
            _textShadowView(),
            _textHeightView(),
            _focuseNodeView(),
            _shapeView(),
          ],
        )),
      ),
    );
  }

  _textShadowView() {
    return Center(
      child: Text(
        'Hello, world!',
        style: TextStyle(
          fontSize: 50,
          color: Colors.pink,
          fontWeight: FontWeight.w900,
          shadows: <Shadow>[
            const Shadow(
              offset: Offset(4.0, 4.0),
              blurRadius: 3.0,
              color: Color.fromARGB(99, 64, 64, 64),
            ),
            Shadow(
                offset: const Offset(1.0, 1.0),
                blurRadius: 8.0,
                color: Colors.grey.shade100),
          ],
        ),
      ),
    );
  }

  _shapeView() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // CircleBorder
        SizedBox(
          height: 45,
          width: 60,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                elevation: 10, shape: const CircleBorder()),
            child: const Center(child: Icon(Icons.add)),
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        //StadiumBorder
        SizedBox(
          height: 45,
          width: 200,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                elevation: 10, shape: const StadiumBorder()),
            child: const Center(child: Text('Elevated Button')),
          ),
        ),
      ],
    );
  }

  _focuseNodeView() {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            textInputAction: TextInputAction.next,
          ),
          const SizedBox(
            height: 50,
          ),
          TextFormField(
            textInputAction: TextInputAction.next,
          ),
          const SizedBox(
            height: 50,
          ),
          TextFormField(
            textInputAction: TextInputAction.done,
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }

  _textHeightView() {
    return const Padding(
      padding: EdgeInsets.all(20.0),
      child: Text(
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
        style: TextStyle(
          fontSize: 17.0,
          height: 1.8,
        ),
      ),
    );
  }
}
