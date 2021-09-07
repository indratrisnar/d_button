import 'package:d_button/d_button.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('D\'Button')),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(title: Text('Circle', style: TextStyle(fontSize: 18))),
              DButton.circle(
                mainColor: Colors.blue,
                onClick: () {},
                diameter: 40,
                child: Icon(
                  Icons.favorite,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 16),
              FittedBox(
                child: DButton.circle(
                  mainColor: Colors.white,
                  onClick: () {},
                  padding: EdgeInsets.all(8),
                  shadowColor: Colors.cyan,
                  child: Icon(
                    Icons.bookmark,
                    color: Colors.blue,
                    size: 15,
                  ),
                ),
              ),
              SizedBox(height: 16),
              DButton.circle(
                mainColor: Colors.amber,
                onClick: () {},
                diameter: 30,
                child: Text('1'),
              ),
              SizedBox(height: 16),
              ListTile(title: Text('Shadow', style: TextStyle(fontSize: 18))),
              DButton.shadow(
                mainColor: Colors.blue,
                splashColor: Colors.cyan,
                onClick: () => {},
                radius: 30,
                height: 50,
                child: Text(
                  "D'Button Shadow 1",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: 16),
              FittedBox(
                child: DButton.shadow(
                  mainColor: Colors.white,
                  shadowColor: Colors.blue,
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  onClick: () => print('asasasasas'),
                  radius: 8,
                  child: Text("D'Button Shadow 2"),
                ),
              ),
              SizedBox(height: 16),
              DButton.shadow(
                mainColor: Colors.amber,
                shadowColor: Colors.blue,
                splashColor: Colors.yellow,
                onClick: () => print('asasasasas'),
                radius: 30,
                height: 30,
                width: 150,
                child: Text("D'Button Shadow 3"),
              ),
              SizedBox(height: 16),
              DButton.shadow(
                mainColor: Colors.amber,
                shadowColor: Colors.grey,
                splashColor: Colors.yellow,
                onClick: null,
                disableColor: Colors.grey[300]!,
                radius: 30,
                height: 30,
                width: 150,
                child: Text("D'Button Shadow 4"),
              ),
              SizedBox(height: 16),
              DButton.shadow(
                mainColor: Colors.white,
                shadowColor: Colors.blue,
                splashColor: Colors.yellow,
                onClick: () => {},
                radius: 30,
                height: 30,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("D'Button Shadow 5"),
                    SizedBox(width: 16),
                    Icon(Icons.arrow_forward),
                  ],
                ),
              ),
              SizedBox(height: 16),
              FittedBox(
                child: DButton.shadow(
                  mainColor: Colors.blue,
                  splashColor: Colors.yellow,
                  onClick: () => {},
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  radius: 30,
                  height: 30,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("D'Button Shadow 6"),
                      SizedBox(width: 16),
                      Icon(Icons.arrow_forward),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16),
              DButton.shadow(
                mainColor: Colors.amber,
                splashColor: Colors.amberAccent,
                onClick: () => {},
                padding: EdgeInsets.symmetric(horizontal: 16),
                radius: 4,
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("D'Button Shadow 7"),
                    Icon(Icons.arrow_forward),
                  ],
                ),
              ),
              SizedBox(height: 16),
              DButton.shadow(
                mainColor: Colors.cyan,
                splashColor: Colors.blue,
                onClick: () => {},
                radius: 4,
                height: 40,
                width: 40,
                child: Icon(Icons.filter),
              ),
              SizedBox(height: 10),
              Divider(),
              ListTile(title: Text('Flat', style: TextStyle(fontSize: 18))),
              DButton.flat(
                mainColor: Colors.blue,
                onClick: () {},
                child: Text(
                  "D'Button Flat 1",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: 16),
              DButton.flat(
                width: 150,
                radius: 150,
                mainColor: Colors.amber,
                onClick: () {},
                child: Text("D'Button Flat 2"),
              ),
              SizedBox(height: 16),
              FittedBox(
                child: DButton.flat(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                  mainColor: Colors.white,
                  onClick: () {},
                  child: Text("D'Button Flat 3"),
                ),
              ),
              SizedBox(height: 16),
              FittedBox(
                child: DButton.flat(
                  mainColor: Colors.blue,
                  onClick: null,
                  child: Text("D'Button Flat 4"),
                ),
              ),
              SizedBox(height: 16),
              DButton.flat(
                mainColor: Colors.amber,
                onClick: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("D'Button Flat 5"),
                    Icon(Icons.arrow_forward),
                  ],
                ),
              ),
              SizedBox(height: 16),
              FittedBox(
                child: DButton.flat(
                  radius: 150,
                  height: 50,
                  mainColor: Colors.blue,
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  onClick: () {},
                  child: Row(
                    children: [
                      Text("D'Button Flat 6"),
                      SizedBox(width: 16),
                      Icon(Icons.arrow_forward),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16),
              DButton.flat(
                mainColor: Colors.cyan,
                onClick: () => {},
                radius: 4,
                height: 30,
                width: 30,
                child: Icon(Icons.search),
              ),
              SizedBox(height: 10),
              Divider(),
              ListTile(
                  title: Text('Elevation', style: TextStyle(fontSize: 18))),
              DButton.elevation(
                mainColor: Colors.blue,
                onClick: () {},
                child: Text(
                  "D'Button Elevation 1",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: 16),
              DButton.elevation(
                elevation: 8,
                width: 150,
                radius: 150,
                mainColor: Colors.amber,
                onClick: () {},
                child: Text("D'Button Elevation 2"),
              ),
              SizedBox(height: 16),
              FittedBox(
                child: DButton.elevation(
                  elevation: 20,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                  mainColor: Colors.white,
                  onClick: () {},
                  child: Text("D'Button Elevation 3"),
                ),
              ),
              SizedBox(height: 16),
              FittedBox(
                child: DButton.elevation(
                  mainColor: Colors.blue,
                  onClick: null,
                  child: Text("D'Button Elevation 4"),
                ),
              ),
              SizedBox(height: 16),
              DButton.elevation(
                mainColor: Colors.amber,
                onClick: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("D'Button Elevation 5"),
                    Icon(Icons.arrow_forward),
                  ],
                ),
              ),
              SizedBox(height: 16),
              FittedBox(
                child: DButton.elevation(
                  radius: 150,
                  height: 50,
                  elevation: 30,
                  mainColor: Colors.blue,
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  onClick: () {},
                  child: Row(
                    children: [
                      Text("D'Button Elevation 6"),
                      SizedBox(width: 16),
                      Icon(Icons.arrow_forward),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16),
              DButton.elevation(
                mainColor: Colors.white,
                shadowColor: Colors.blue,
                onClick: () => {},
                elevation: 40,
                radius: 16,
                height: 50,
                width: 50,
                child: Icon(Icons.menu),
              ),
              SizedBox(height: 10),
              Divider(),
              ListTile(title: Text('Border', style: TextStyle(fontSize: 18))),
              DButton.border(
                borderColor: Colors.pink,
                mainColor: Colors.blue,
                radius: 0,
                onClick: () {},
                child: Text(
                  "D'Button Border 1",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: 16),
              DButton.border(
                borderColor: Colors.blue,
                width: 150,
                radius: 150,
                mainColor: Colors.amber,
                onClick: () {},
                child: Text("D'Button Border 2"),
              ),
              SizedBox(height: 16),
              FittedBox(
                child: DButton.border(
                  borderColor: Colors.blue,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                  mainColor: Colors.white,
                  onClick: () {},
                  radius: 0,
                  child: Text("D'Button Border 3"),
                ),
              ),
              SizedBox(height: 16),
              FittedBox(
                child: DButton.border(
                  borderColor: Colors.amber,
                  mainColor: Colors.blue,
                  onClick: null,
                  child: Text("D'Button Border 4"),
                ),
              ),
              SizedBox(height: 16),
              DButton.elevation(
                mainColor: Colors.amber,
                onClick: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("D'Button Border 5"),
                    Icon(Icons.arrow_forward),
                  ],
                ),
              ),
              SizedBox(height: 16),
              FittedBox(
                child: DButton.border(
                  borderColor: Colors.blue,
                  radius: 150,
                  height: 50,
                  mainColor: Colors.blue,
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  onClick: () {},
                  child: Row(
                    children: [
                      Text("D'Button Border 6"),
                      SizedBox(width: 16),
                      Icon(Icons.arrow_forward),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16),
              DButton.border(
                borderColor: Colors.blue,
                mainColor: Colors.white,
                onClick: () => {},
                radius: 16,
                height: 50,
                width: 50,
                child: Icon(Icons.filter),
              ),
              SizedBox(height: 10),
              Divider(),
              ListTile(
                  title: Text('Custom Child', style: TextStyle(fontSize: 18))),
              DButton.shadow(
                radius: 8,
                padding: EdgeInsets.only(right: 8),
                shadowColor: Colors.grey,
                onClick: () {},
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        bottomLeft: Radius.circular(8),
                      ),
                      child: Image.network(
                        'https://images.unsplash.com/photo-1590829197118-b0609523669d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=80',
                        width: 80,
                        height: 80,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Title',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
