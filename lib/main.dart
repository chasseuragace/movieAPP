import 'package:flutter/material.dart';

import 'custom_widgets/bottom_navigation.dart';
import 'custom_widgets/custom_search.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(items: bottomBar),
        body: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Icon(Icons.menu),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CircleAvatar(
                  child: Container(),
                ),
              ],
            ),
            WelcomeText(username: "Ajay"),
            Text(
              "Lets find a movie",
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  ?.copyWith(color: Colors.black87),
            ),
            CustomSearch(),
            Container(
              height: 80,
              //color: Colors.red,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_, __) => SizedBox(
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                            child: Text(
                          "title $__",
                          style: Theme.of(context).textTheme.headline6,
                        )),
                      ))),
            ),
            Expanded(
              child: Container(
                //  color: Colors.red,
                child: PageView.builder(
                    controller: PageController(viewportFraction: 0.4),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, __) => SizedBox(
                            child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    color: Colors.green,
                                    height: 200,
                                    width: 200,
                                  )),
                              Text("Title $__")
                            ],
                          ),
                        ))),
              ),
            )
          ]),
        ));
  }
}

class WelcomeText extends StatelessWidget {
  final String username;
  const WelcomeText({
    Key? key,
    required this.username,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text("Hi, $username",
        style:
            Theme.of(context).textTheme.headline5?.copyWith(letterSpacing: 1));
  }
}
