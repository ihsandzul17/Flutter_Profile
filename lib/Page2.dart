import 'package:flutter/material.dart';
import 'LoginPage.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Profile'),
        backgroundColor: Colors.orange[200],
    actions: [
    // Tambahkan tombol Logout di AppBar
    IconButton(
    icon: Icon(Icons.logout),
    onPressed: () {
      // Navigasi ke halaman login dan gantikan halaman ini
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()),
      );
    },
    ),
    ],
    ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('images/halal.jpg'),
              ),
            ),
            SizedBox(height: 16),
            Center(
              child: Text(
                'Muhammad Ihsan Dzultivano A.',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 24),
            Card(
              color: Colors.orange[100],
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'About',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'I am a student at the Wikrama Bogor Vocational High School and I am studying the PPLG field.',
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),
            Card(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'History',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'My journey in web development started last 2022 as a student. Since then, I have worked on a variety of projects, while honing my skills in HTML, CSS, PHP, etc. Each experience has helped me grow, allowing me to collaborate with great clients and teams to create innovative and functional solutions. I remain committed to producing impactful work, combining creativity with user-centered design.',
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),  // Rounded corners
              ),
              elevation: 4,  // Optional: for shadow
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(12.0),
                    decoration: BoxDecoration(
                      color: Colors.orange[200],  // Matching the header color
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0),
                      ),
                    ),
                    child: Text(
                      'Skill',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,  // Adjust text color if needed
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('HTML & CSS', style: TextStyle(fontSize: 16)),
                        SizedBox(height: 8),
                        Text('C++', style: TextStyle(fontSize: 16)),
                        SizedBox(height: 8),
                        Text('PHP', style: TextStyle(fontSize: 16)),
                        SizedBox(height: 8),
                        Text('MySQL', style: TextStyle(fontSize: 16)),
                        SizedBox(height: 8),
                        Text('.NET', style: TextStyle(fontSize: 16)),
                      ],
                    ),
                  ),
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}