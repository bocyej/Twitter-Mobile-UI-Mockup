import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: const MyHomePage(title: 'Home'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  void _onNavTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.portrait),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: 'Profile',
            );
          },
        ),
        title: Text(widget.title),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.auto_awesome_outlined),
            // or Icon(Icons.grade_outlined),
            tooltip: 'Switch Timeline',
            onPressed: () {},
            padding: const EdgeInsets.only(right: 15),
          ),
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 100,
                // width: 25,
                padding: EdgeInsets.zero,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        const Padding(padding: EdgeInsets.only(left: 5)),
                        IconButton(
                          icon: const Icon(
                            Icons.perm_identity,
                            size: 50,
                          ),
                          onPressed: () {
                            Scaffold.of(context).openDrawer();
                          },
                        ),
                        const Padding(padding: EdgeInsets.only(left: 32)),
                        const Text(
                          'Bocaj',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Padding(padding: EdgeInsets.only(left: 5)),
                        const Text(
                          '@jjj',
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.grey,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        const Padding(padding: EdgeInsets.only(left: 10)),
                        const Text(
                          '·',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Padding(padding: EdgeInsets.only(left: 5)),
                        const Text(
                          '16h',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const <Widget>[
                        Padding(padding: EdgeInsets.only(left: 77)),
                        Text(
                          'hello this is tweet 1',
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        const Padding(padding: EdgeInsets.only(left: 65)),
                        IconButton(
                          icon: const Icon(
                            Icons.chat_bubble_outline,
                            size: 15,
                          ),
                          onPressed: () {},
                        ),
                        const Text('123'),
                        const Padding(padding: EdgeInsets.only(left: 10)),
                        IconButton(
                          icon: const Icon(
                            Icons.repeat,
                            size: 15,
                          ),
                          onPressed: () {},
                        ),
                        const Text('123'),
                        const Padding(padding: EdgeInsets.only(left: 10)),
                        IconButton(
                          icon: const Icon(
                            Icons.favorite_border,
                            size: 15,
                          ),
                          onPressed: () {},
                        ),
                        const Text('123'),
                        const Padding(padding: EdgeInsets.only(left: 10)),
                        IconButton(
                          icon: const Icon(
                            Icons.share,
                            size: 15,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Divider(),
              Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        const Padding(padding: EdgeInsets.only(left: 5)),
                        IconButton(
                          icon: const Icon(
                            Icons.perm_identity,
                            size: 50,
                          ),
                          onPressed: () {
                            Scaffold.of(context).openDrawer();
                          },
                        ),
                        const Padding(padding: EdgeInsets.only(left: 32)),
                        const Text(
                          'Bocaj',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Padding(padding: EdgeInsets.only(left: 5)),
                        const Text(
                          '@jjj',
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.grey,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        const Padding(padding: EdgeInsets.only(left: 10)),
                        const Text(
                          '·',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Padding(padding: EdgeInsets.only(left: 5)),
                        const Text(
                          '16h',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const <Widget>[
                        Padding(padding: EdgeInsets.only(left: 77)),
                        Text(
                          'hello this is tweet 2',
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        const Padding(padding: EdgeInsets.only(left: 65)),
                        IconButton(
                          icon: const Icon(
                            Icons.chat_bubble_outline,
                            size: 15,
                          ),
                          onPressed: () {},
                        ),
                        const Text('123'),
                        const Padding(padding: EdgeInsets.only(left: 10)),
                        IconButton(
                          icon: const Icon(
                            Icons.repeat,
                            size: 15,
                          ),
                          onPressed: () {},
                        ),
                        const Text('123'),
                        const Padding(padding: EdgeInsets.only(left: 10)),
                        IconButton(
                          icon: const Icon(
                            Icons.favorite_border,
                            size: 15,
                          ),
                          onPressed: () {},
                        ),
                        const Text('123'),
                        const Padding(padding: EdgeInsets.only(left: 10)),
                        IconButton(
                          icon: const Icon(
                            Icons.share,
                            size: 15,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ]),
              const Divider(),
              Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        const Padding(padding: EdgeInsets.only(left: 5)),
                        IconButton(
                          icon: const Icon(
                            Icons.perm_identity,
                            size: 50,
                          ),
                          onPressed: () {
                            Scaffold.of(context).openDrawer();
                          },
                        ),
                        const Padding(padding: EdgeInsets.only(left: 32)),
                        const Text(
                          'Bocaj',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Padding(padding: EdgeInsets.only(left: 5)),
                        const Text(
                          '@jjj',
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.grey,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        const Padding(padding: EdgeInsets.only(left: 10)),
                        const Text(
                          '·',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Padding(padding: EdgeInsets.only(left: 5)),
                        const Text(
                          '16h',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const <Widget>[
                        Padding(padding: EdgeInsets.only(left: 77)),
                        Text(
                          'hello this is tweet 3',
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        const Padding(padding: EdgeInsets.only(left: 65)),
                        IconButton(
                          icon: const Icon(
                            Icons.chat_bubble_outline,
                            size: 15,
                          ),
                          onPressed: () {},
                        ),
                        const Text('123'),
                        const Padding(padding: EdgeInsets.only(left: 10)),
                        IconButton(
                          icon: const Icon(
                            Icons.repeat,
                            size: 15,
                          ),
                          onPressed: () {},
                        ),
                        const Text('123'),
                        const Padding(padding: EdgeInsets.only(left: 10)),
                        IconButton(
                          icon: const Icon(
                            Icons.favorite_border,
                            size: 15,
                          ),
                          onPressed: () {},
                        ),
                        const Text('123'),
                        const Padding(padding: EdgeInsets.only(left: 10)),
                        IconButton(
                          icon: const Icon(
                            Icons.share,
                            size: 15,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ]),
              const Divider(),
              Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        const Padding(padding: EdgeInsets.only(left: 5)),
                        IconButton(
                          icon: const Icon(
                            Icons.perm_identity,
                            size: 50,
                          ),
                          onPressed: () {
                            Scaffold.of(context).openDrawer();
                          },
                        ),
                        const Padding(padding: EdgeInsets.only(left: 32)),
                        const Text(
                          'Bocaj',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Padding(padding: EdgeInsets.only(left: 5)),
                        const Text(
                          '@jjj',
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.grey,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        const Padding(padding: EdgeInsets.only(left: 10)),
                        const Text(
                          '·',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Padding(padding: EdgeInsets.only(left: 5)),
                        const Text(
                          '16h',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const <Widget>[
                        Padding(padding: EdgeInsets.only(left: 77)),
                        Text(
                          'hello this is tweet 4',
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        const Padding(padding: EdgeInsets.only(left: 65)),
                        IconButton(
                          icon: const Icon(
                            Icons.chat_bubble_outline,
                            size: 15,
                          ),
                          onPressed: () {},
                        ),
                        const Text('123'),
                        const Padding(padding: EdgeInsets.only(left: 10)),
                        IconButton(
                          icon: const Icon(
                            Icons.repeat,
                            size: 15,
                          ),
                          onPressed: () {},
                        ),
                        const Text('123'),
                        const Padding(padding: EdgeInsets.only(left: 10)),
                        IconButton(
                          icon: const Icon(
                            Icons.favorite_border,
                            size: 15,
                          ),
                          onPressed: () {},
                        ),
                        const Text('123'),
                        const Padding(padding: EdgeInsets.only(left: 10)),
                        IconButton(
                          icon: const Icon(
                            Icons.share,
                            size: 15,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ]),
              const Divider(),
              Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        const Padding(padding: EdgeInsets.only(left: 5)),
                        IconButton(
                          icon: const Icon(
                            Icons.perm_identity,
                            size: 50,
                          ),
                          onPressed: () {
                            Scaffold.of(context).openDrawer();
                          },
                        ),
                        const Padding(padding: EdgeInsets.only(left: 32)),
                        const Text(
                          'Bocaj',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Padding(padding: EdgeInsets.only(left: 5)),
                        const Text(
                          '@jjj',
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.grey,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        const Padding(padding: EdgeInsets.only(left: 10)),
                        const Text(
                          '·',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Padding(padding: EdgeInsets.only(left: 5)),
                        const Text(
                          '16h',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const <Widget>[
                        Padding(padding: EdgeInsets.only(left: 77)),
                        Text(
                          'hello this is tweet 5',
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        const Padding(padding: EdgeInsets.only(left: 65)),
                        IconButton(
                          icon: const Icon(
                            Icons.chat_bubble_outline,
                            size: 15,
                          ),
                          onPressed: () {},
                        ),
                        const Text('123'),
                        const Padding(padding: EdgeInsets.only(left: 10)),
                        IconButton(
                          icon: const Icon(
                            Icons.repeat,
                            size: 15,
                          ),
                          onPressed: () {},
                        ),
                        const Text('123'),
                        const Padding(padding: EdgeInsets.only(left: 10)),
                        IconButton(
                          icon: const Icon(
                            Icons.favorite_border,
                            size: 15,
                          ),
                          onPressed: () {},
                        ),
                        const Text('123'),
                        const Padding(padding: EdgeInsets.only(left: 10)),
                        IconButton(
                          icon: const Icon(
                            Icons.share,
                            size: 15,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ]),
              const Divider(),
              Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        const Padding(padding: EdgeInsets.only(left: 5)),
                        IconButton(
                          icon: const Icon(
                            Icons.perm_identity,
                            size: 50,
                          ),
                          onPressed: () {
                            Scaffold.of(context).openDrawer();
                          },
                        ),
                        const Padding(padding: EdgeInsets.only(left: 32)),
                        const Text(
                          'Bocaj',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Padding(padding: EdgeInsets.only(left: 5)),
                        const Text(
                          '@jjj',
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.grey,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        const Padding(padding: EdgeInsets.only(left: 10)),
                        const Text(
                          '·',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Padding(padding: EdgeInsets.only(left: 5)),
                        const Text(
                          '16h',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const <Widget>[
                        Padding(padding: EdgeInsets.only(left: 77)),
                        Text(
                          'hello this is tweet 6',
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        const Padding(padding: EdgeInsets.only(left: 65)),
                        IconButton(
                          icon: const Icon(
                            Icons.chat_bubble_outline,
                            size: 15,
                          ),
                          onPressed: () {},
                        ),
                        const Text('123'),
                        const Padding(padding: EdgeInsets.only(left: 10)),
                        IconButton(
                          icon: const Icon(
                            Icons.repeat,
                            size: 15,
                          ),
                          onPressed: () {},
                        ),
                        const Text('123'),
                        const Padding(padding: EdgeInsets.only(left: 10)),
                        IconButton(
                          icon: const Icon(
                            Icons.favorite_border,
                            size: 15,
                          ),
                          onPressed: () {},
                        ),
                        const Text('123'),
                        const Padding(padding: EdgeInsets.only(left: 10)),
                        IconButton(
                          icon: const Icon(
                            Icons.share,
                            size: 15,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ]),
              const Divider(),
              Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        const Padding(padding: EdgeInsets.only(left: 5)),
                        IconButton(
                          icon: const Icon(
                            Icons.perm_identity,
                            size: 50,
                          ),
                          onPressed: () {
                            Scaffold.of(context).openDrawer();
                          },
                        ),
                        const Padding(padding: EdgeInsets.only(left: 32)),
                        const Text(
                          'Bocaj',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Padding(padding: EdgeInsets.only(left: 5)),
                        const Text(
                          '@jjj',
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.grey,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        const Padding(padding: EdgeInsets.only(left: 10)),
                        const Text(
                          '·',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Padding(padding: EdgeInsets.only(left: 5)),
                        const Text(
                          '16h',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const <Widget>[
                        Padding(padding: EdgeInsets.only(left: 77)),
                        Text(
                          'hello this is tweet 7',
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        const Padding(padding: EdgeInsets.only(left: 65)),
                        IconButton(
                          icon: const Icon(
                            Icons.chat_bubble_outline,
                            size: 15,
                          ),
                          onPressed: () {},
                        ),
                        const Text('123'),
                        const Padding(padding: EdgeInsets.only(left: 10)),
                        IconButton(
                          icon: const Icon(
                            Icons.repeat,
                            size: 15,
                          ),
                          onPressed: () {},
                        ),
                        const Text('123'),
                        const Padding(padding: EdgeInsets.only(left: 10)),
                        IconButton(
                          icon: const Icon(
                            Icons.favorite_border,
                            size: 15,
                          ),
                          onPressed: () {},
                        ),
                        const Text('123'),
                        const Padding(padding: EdgeInsets.only(left: 10)),
                        IconButton(
                          icon: const Icon(
                            Icons.share,
                            size: 15,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ]),
            ],
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            SizedBox(
              height: 170,
              child: DrawerHeader(
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Padding(padding: EdgeInsets.only(left: 10)),
                        Icon(
                          Icons.perm_identity,
                          color: Colors.black,
                          size: 45,
                        ),
                        Padding(padding: EdgeInsets.only(right: 135)),
                        Icon(
                          Icons.perm_identity,
                          color: Colors.black,
                          size: 30,
                        ),
                        Padding(padding: EdgeInsets.only(right: 10)),
                        Icon(
                          Icons.perm_identity,
                          color: Colors.black,
                          size: 30,
                        ),
                      ],
                    ),
                    Row(
                      children: const [
                        Padding(padding: EdgeInsets.only(left: 10)),
                        Text(
                          ' Jacob ',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 17),
                        ),
                        Icon(
                          Icons.lock,
                          color: Colors.black,
                          size: 17,
                        ),
                        Padding(padding: EdgeInsets.only(right: 160)),
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.black,
                          size: 17,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Padding(padding: EdgeInsets.only(left: 10)),
                        Text(
                          ' @bocyej',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Padding(padding: EdgeInsets.only(left: 10)),
                        Text(
                          ' 177',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                        ),
                        Text(
                          ' Following',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                            fontSize: 12,
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(right: 30)),
                        Text(
                          '484',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                        ),
                        Text(
                          ' Followers',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              contentPadding: const EdgeInsets.only(left: 27),
              title: RichText(
                text: const TextSpan(
                  children: [
                    WidgetSpan(
                      child: Icon(
                        Icons.perm_identity,
                        size: 20,
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: "   Profile",
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              contentPadding: const EdgeInsets.only(left: 27),
              title: RichText(
                text: const TextSpan(
                  children: [
                    WidgetSpan(
                      child: Icon(
                        Icons.list_alt,
                        size: 20,
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: "   Lists",
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              contentPadding: const EdgeInsets.only(left: 27),
              title: RichText(
                text: const TextSpan(
                  children: [
                    WidgetSpan(
                      child: Icon(
                        Icons.chat_outlined,
                        size: 20,
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: "   Topics",
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              contentPadding: const EdgeInsets.only(left: 27),
              title: RichText(
                text: const TextSpan(
                  children: [
                    WidgetSpan(
                      child: Icon(
                        Icons.bookmark_outline,
                        size: 20,
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: "   Bookmarks",
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              contentPadding: const EdgeInsets.only(left: 27),
              title: RichText(
                text: const TextSpan(
                  children: [
                    WidgetSpan(
                      child: Icon(
                        Icons.flash_on_outlined,
                        size: 20,
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: "   Moments",
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              contentPadding: const EdgeInsets.only(left: 27),
              title: RichText(
                text: const TextSpan(
                  children: [
                    WidgetSpan(
                      child: Icon(
                        Icons.money,
                        size: 20,
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: "   Monetization",
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              contentPadding: const EdgeInsets.only(left: 27),
              title: RichText(
                text: const TextSpan(
                  children: [
                    WidgetSpan(
                      child: Icon(
                        Icons.person_add_alt,
                        size: 20,
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: "   Follower Requests",
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const Divider(),
            ListTile(
              contentPadding: const EdgeInsets.only(left: 27),
              title: const Text(
                'Settings and Privacy',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              contentPadding: const EdgeInsets.only(left: 27),
              title: const Text(
                'Help Center',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: const Icon(Icons.lightbulb_outlined),
                  tooltip: 'Themes',
                  onPressed: () {},
                  padding: const EdgeInsets.only(left: 22),
                ),
                IconButton(
                  icon: const Icon(Icons.qr_code),
                  tooltip: 'QR Code',
                  onPressed: () {},
                  padding: const EdgeInsets.only(right: 22),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Create Tweet',
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.email_outlined),
            label: 'Chats',
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex, //New
        onTap: _onNavTapped,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}
