import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 63, 211, 219)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Map<String, String> forecast = {
    "name": "today",
    "temperature": "35",
    "shortForecast": "Snowy",
    "detailedForecast": "Snowy all day",
    "windSpeed": "10",
    "windDirection": "SE",
    "isDaytime": "true",
    "probabilityOfPercipitation": "100"
  };

  Map<String, String> location = {
    "city": "Bend",
    "state": "Oregon",
    "zip": "97702"
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding:
          const EdgeInsets.only(left: 50.0, top: 100, right: 50, bottom: 50),
      child: Center(
          child: Column(children: [
        Text(
          location["city"]!,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 25),
        ),
        Text(
          location["state"]!,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 25),
        ),
        Text(
          location["zip"]!,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 25),
        ),
        SizedBox(height: 50),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              forecast["name"]! + ":",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(width: 10), // Add space between the text widgets
            Text(
              forecast["temperature"]!,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(width: 10),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              forecast["shortForecast"]!,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(width: 10), // Add space between the text widgets
            Text(
              forecast["detailedForecast"]!,
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Wind speed: " + forecast["windSpeed"]!,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(width: 10), // Add space between the text widgets
            Text(
              forecast["windDirection"]!,
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Forecast is for daytime hours.",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(width: 10), // Add space between the text widgets
            Text(
              "Precipitation: 54%",
              style: TextStyle(fontSize: 18),
            ),
          ],
        )
      ])),
    ));
  }
}

class BoxPlaceHolder extends StatelessWidget {
  final double? height;
  final double? width;
  final double padding;
  final String text;

  const BoxPlaceHolder(
      {super.key,
      required this.height,
      required this.width,
      this.padding = 0,
      this.text = ""});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(padding),
        child: SizedBox(
            width: width,
            height: height,
            child: Placeholder(
                child: Text(
              text,
              textAlign: TextAlign.center,
            ))));
  }
}
