import 'package:flutter/material.dart';
import 'search_screen.dart'; // Import the SearchScreen


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Spotify',
          style: TextStyle(color: Colors.green, fontSize: 34),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  '',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.pink),
                ),
              ),
              SizedBox(height: 10),
              Image.asset(
                'assets/welcome_image.png',
                height: 240,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 20),
              Text(
                'Suggested Songs:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildSuggestedItem(context, 'Tare zameen par', 'assets/song1.png'),
                  _buildSuggestedItem(context, 'Ram siya ram', 'assets/song2.png'),
                  _buildSuggestedItem(context, 'Rapgod', 'assets/song3.png'),
                ],
              ),
              SizedBox(height: 20),
              Text(
                'Suggested Artists:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildSuggestedItem(context, 'Harry Styles', 'assets/harrystyles.png'),
                  _buildSuggestedItem(context, 'divine', 'assets/divine.png'),
                  _buildSuggestedItem(context, 'Kishor kumar', 'assets/kishorkumar.png'),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                // Navigate to HomeScreen (Optional)
              },
              child: Image.asset('assets/home.png', height: 24, width: 24, color: Colors.white),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SearchScreen()));
              },
              child: Image.asset('assets/search.png', height: 24, width: 24, color: Colors.grey),
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/playlist.png', height: 24, width: 24, color: Colors.grey),
            label: 'Library',
          ),
        ],
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
      ),
    );
  }

  Widget _buildSuggestedItem(BuildContext context, String name, String imagePath) {
    return GestureDetector(
        onTap: () {
          // Navigate to SongDetailsScreen when the image is tapped
          //  Navigator.push(
          //    context,
          //    MaterialPageRoute(
          //      builder: (context) => SongDetailsScreen(songTitle: name, songImagePath: imagePath),
          //    ),
          //  );
        },
        child: Column(
            children: [
              Image.asset(
                imagePath,
                height: 80,
                width: 80,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 5),
              Text(
                name,
                style: TextStyle(color: Colors.white),
              ),
            ],
            ),
        );
    }
}