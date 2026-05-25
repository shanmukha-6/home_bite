import 'package:flutter/material.dart';
import 'package:home_bite/ApiServices.dart';

class ApiScreen extends StatefulWidget {
  ApiScreen({Key? key}) : super(key: key);

  @override
  _ApiScreenState createState() => _ApiScreenState();
}

class _ApiScreenState extends State<ApiScreen> {
  dynamic posts;
  @override
  void initState() {
    super.initState();
    ApiServices().getPosts();
    ApiServices().getPoster();
    fetchposts();
  }

  Future<void> fetchposts() async {
    posts = await ApiServices().getPosts();
    print("postsss responsee >>>>>>>>>>>> $posts");
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                foregroundColor: Colors.black,
                minimumSize: Size(90, 40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(10),
                ),
              ),
              onPressed: () {
                ApiServices().getPoster();
              },
              child: Text("REGISTER"),
            ),
          ],
        ),
      ),
    );
  }
}
