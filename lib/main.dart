import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

MySnackbar(context, msg) {
  return ScaffoldMessenger.of(context)
      .showSnackBar(SnackBar(content: Text(msg)));
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          'Photo Gallery',
          style: TextStyle(fontSize: 25),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 20.0,
                  horizontal: 20,
                ),
                child: Center(
                  child: Text(
                    'Welcome to My Photo Gallery!',
                    style: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 20.0,
                horizontal: 20,
              ),
              child: TextField(
                decoration: InputDecoration(
                  label: Text(
                    'Search',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.grey,
                    ),
                  ),
                  prefixIcon: Icon(
                    Icons.search_rounded,
                    color: Colors.grey,
                  ),
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 3.0),
                  ),
                ),
              ),
            ),
            Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              children: [
                _buildPhotoButton(context, 'photo 1',
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/640px-Image_created_with_a_mobile_phone.png'),
                _buildPhotoButton(context, 'photo 2',
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/640px-Image_created_with_a_mobile_phone.png'),
                _buildPhotoButton(context, 'photo 3',
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/640px-Image_created_with_a_mobile_phone.png'),
                _buildPhotoButton(context, 'photo 4',
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/640px-Image_created_with_a_mobile_phone.png'),
                _buildPhotoButton(context, 'photo 5',
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/640px-Image_created_with_a_mobile_phone.png'),
                _buildPhotoButton(context, 'photo 6',
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/640px-Image_created_with_a_mobile_phone.png'),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 6),
              child: ListView(
                shrinkWrap: true,
                children: [
                  ListTile(
                    leading: Image.network(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/640px-Image_created_with_a_mobile_phone.png',
                      height: 50,
                      width: 50,
                    ),
                    title: Text('Simple photo 1'),
                    subtitle: Text('Category 1'),
                  ),
                  ListTile(
                    leading: Image.network(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/640px-Image_created_with_a_mobile_phone.png',
                      height: 50,
                      width: 50,
                    ),
                    title: Text('Simple photo 2'),
                    subtitle: Text('Category 2'),
                  ),
                  ListTile(
                    leading: Image.network(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/640px-Image_created_with_a_mobile_phone.png',
                      height: 50,
                      width: 50,
                    ),
                    title: Text('Simple photo 3'),
                    subtitle: Text('Category 3'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        backgroundColor: Colors.white,
        onPressed: () {
          MySnackbar(context, 'Floating Action Button Clicked');
        },
        child: Icon(
          Icons.cloud_upload,
          color: Colors.blue,
          size: 50,
        ),
      ),
    );
  }
}

_buildPhotoButton(BuildContext context, String caption, String imageUrl) {
  return Container(
    child: GestureDetector(
      onTap: () {
        MySnackbar(context, 'Photo Clicked');
      },
      child: Stack(
        children: [
          Image.network(
            imageUrl,
            height: 100,
            width: 120,
            fit: BoxFit.fill,
          ),
          Positioned(
            top: 70,
            left: 35,
            right: 10,
            bottom: 10,
            child: Text(
              caption,
              style: TextStyle(
                fontSize: 12,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.0,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
