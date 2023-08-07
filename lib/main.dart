import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Exercise: Stateful Widget'),
        ),
        body: const MyHome(),
      ),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  int status = 0;
  Icon starIcon = const Icon(Icons.star_border, color: Colors.red);
  int likeNum = 40;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Image(
          image: AssetImage('assets/images/paris.jpg'),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Eiffel Tower",
                    style: GoogleFonts.kanit(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                  Text(
                    "Locally nicknamed 'La dame de fer'",
                    style: GoogleFonts.kanit(
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      if (status == 0) {
                        setState(() {
                          starIcon = const Icon(Icons.star, color: Colors.red);
                          likeNum++;
                          status = 1;
                        });
                      } else {
                        setState(() {
                          starIcon =
                              const Icon(Icons.star_border, color: Colors.red);
                          likeNum--;
                          status = 0;
                        });
                      }
                    },
                    icon: starIcon,
                    iconSize: 40,
                  ),
                  Text(likeNum.toString()),
                ],
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Icon(
                    Icons.phone,
                    size: 30,
                    color: Colors.lightBlue,
                  ),
                  Text("CALL"),
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.map,
                    size: 30,
                    color: Colors.lightBlue,
                  ),
                  Text("ROUTE"),
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.share,
                    size: 30,
                    color: Colors.lightBlue,
                  ),
                  Text("SHARE"),
                ],
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          child: Text(
            "The tower is 324 metres (1,063 ft) tall, about the same height as an 81-storey building, and the tallest structure in Paris. Its base is square, measuring 125 metres (410 ft) on each side. During its construction, the Eiffel Tower surpassed the Washington Monument to become the tallest man-made structure in the world, a title it held for 41 years until the Chrysler Building in New York City was finished in 1930. It was the first structure in the world to surpass both the 200-metre and 300-metre mark in height.",
            // style: TextStyle(
            //   fontFamily: 'Kanit',
            //   fontSize: 13,
            // ),
            style: GoogleFonts.kanit(
              fontSize: 13,
            ),
            textAlign: TextAlign.justify,
          ),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          child: const Text(
            "Source: Wikipedia",
            style: TextStyle(
              fontFamily: 'Kanit',
              fontSize: 13,
            ),
          ),
        )
      ],
    );
  }
}
