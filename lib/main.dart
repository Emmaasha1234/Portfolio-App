import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Resume App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ResumePage(),
      debugShowCheckedModeBanner: false, // Remove the debug banne
    );
  }
}

class ResumePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Resume App'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 213, 132, 40),
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back), // Change icon color
          onPressed: () {},
        ),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ImageSection(image: 'images/dp.jpeg'),            
            // Icon(
            //   Icons.account_circle,
            //   size: 100.0,
            //   // add your image here 
            //   color: Colors.blue,
              
            // ),
            SizedBox(height: 10),
            Text(
              'Emmaculate Asha',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Data Scientist',
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 10),
            Text(
              'Email: emma.asha.kay@gmal.com',
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 10),
            Text(
              'Phone: +254795683524',
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 10),
            Text(
              'Address: 80108 Mombasa, Kenya',
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 10),
            Text(
              // make linked in clickable,
              'Linked In: https://www.linkedin.com/in/emmaculate-asha/',
              style: TextStyle(fontSize: 18.0), 
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class ImageSection extends StatelessWidget {
  const ImageSection({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      width: 500,
      height: 240,
      fit: BoxFit.cover,
    );
  }
}