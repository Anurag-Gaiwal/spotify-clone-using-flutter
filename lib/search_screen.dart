import 'package:flutter/material.dart';
import 'home_screen.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Search',
          style: TextStyle(color: Colors.white, fontSize: 24),
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
              // Add your search bar here
              _buildSearchBar(),

              // Add the top trending songs title
              Text(
                'Top Trending Songs',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.red),
              ),

              // Add the three images with their song names
              _buildSuggestedItem('Song 1', 'assets/song1.png'),
              _buildSuggestedItem('Song 2', 'assets/song2.png'),
              _buildSuggestedItem('Song 3', 'assets/song3.png'),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                // Navigate to HomeScreen when Home icon is tapped
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
              child: Image.asset('assets/home.png', height: 24, width: 24, color: Colors.grey),
            ),
            label: 'Home',
          ),

          BottomNavigationBarItem(
            icon: Image.asset('assets/search.png', height: 24, width: 24, color: Colors.white),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/playlist.png', height: 24, width: 24, color: Colors.grey),
            label: 'Library',
          ),
        ],
        backgroundColor: Colors.black,
        selectedItemColor: Colors.grey,
        unselectedItemColor: Colors.blueGrey
        ,
      ),
    );
  }

  Widget _buildSearchBar() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16),
      padding: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.grey[900],
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextField(
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          hintText: 'Search for songs...',
          hintStyle: TextStyle(color: Colors.grey),
          suffixIcon: Icon(Icons.search, color: Colors.white),
          border: InputBorder.none,
        ),
      ),
    );
  }

  Widget _buildSuggestedItem(String name, String imagePath) {
    return Column(
      children: [
      Image.asset(
      imagePath,
      height: 80, // Set the desired height
      width: 80, // Set the desired width
      fit: BoxFit.cover, // Adjust the image size
    ),
    SizedBox(height: 5),
    Text(
    name,
    style: TextStyle(color: Colors.white),
    ),
    ],
    );
    }
}