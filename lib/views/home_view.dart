import 'package:fease/Widget/destination_carousel_widegt.dart';
import 'package:fease/Widget/hotel_carousel.dart';
import 'package:fease/model/darkprovider.dart';
import 'package:fease/model/destination_model.dart';
import 'package:fease/view_model/darkmode_model.dart';
import 'package:fease/view_model/slideMenu_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _currentTab = 0;
  int _selectedIndex = 0;
  List<IconData> _icon = [
    FontAwesomeIcons.plane,
    FontAwesomeIcons.bed,
    FontAwesomeIcons.personWalking,
    FontAwesomeIcons.personBiking,
  ];

  Widget _buildIcon(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
        print(_selectedIndex);
      },
      child: Container(
        height: 50.0,
        width: 50.0,
        decoration: BoxDecoration(
          color: Theme.of(context).secondaryHeaderColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Icon(
          _icon[index],
          size: 25,
          color: _selectedIndex == index ? Colors.black : Colors.blueGrey,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 120),
              child: Text(
                "What would you like to Find?",
                style: GoogleFonts.openSans(
                  fontSize: 30,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildIcon(0),
                _buildIcon(1),
                _buildIcon(2),
                _buildIcon(3),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const DestinationCarousel(),
            const SizedBox(
              height: 20,
            ),
            const HotelCarousel(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentTab,
        onTap: (value) {
          setState(() {
            _currentTab = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              size: 30,
            ),
            label: String.fromEnvironment("name"),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.local_pizza,
              size: 30,
            ),
            label: String.fromEnvironment("name"),
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 15,
              backgroundImage: NetworkImage(
                  "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/c98ec19e-aae2-4d4c-a71f-77b215bd93ec/ddrzwsu-2e2b0726-def8-4817-91c0-d8c16b244273.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2M5OGVjMTllLWFhZTItNGQ0Yy1hNzFmLTc3YjIxNWJkOTNlY1wvZGRyendzdS0yZTJiMDcyNi1kZWY4LTQ4MTctOTFjMC1kOGMxNmIyNDQyNzMucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.-AgnfteHKfj6qNKqfxt0K2aEtRdMm-IHKNM7hX3pvqY"),
            ),
            label: String.fromEnvironment("name"),
          ),
        ],
      ),
    );
  }
}
