import 'package:flutter/material.dart';
import 'package:home_bite/Constants/ColorConstants.dart';
import 'package:home_bite/Constants/FontConstants.dart';
import 'package:home_bite/Home/homepage.dart';
import 'package:home_bite/Home/profile/profilescreen.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    HomePage(),
    const Center(child: Text("Subscription Screen")),
    const Center(child: Text("Search Screen")),
    const Center(child: Text("Orders Screen")),
    Profilescreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        height: 85,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 10,
              offset: const Offset(0, -5),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildNavItem(0, Icons.home_outlined, "Home"),
            _buildNavItem(1, Icons.currency_exchange, "Subscription"),
            _buildSearchButton(),
            _buildNavItem(3, Icons.assignment_outlined, "Orders"),
            _buildNavItem(4, Icons.account_circle_outlined, "Profile"),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchButton() {
    return GestureDetector(
      onTap: () => _onItemTapped(2),
      child: Transform.translate(
        offset: const Offset(0, -20),
        child: Container(
          width: 55,
          height: 75,
          decoration: BoxDecoration(
            color: Colorconstants.PrimaryColor,
            borderRadius: BorderRadius.circular(25),
            boxShadow: [
              BoxShadow(
                color: Colorconstants.PrimaryColor.withOpacity(0.3),
                blurRadius: 10,
                offset: const Offset(0, 5),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.search, color: Colors.white, size: 28),
              const SizedBox(height: 4),
              Text(
                "Search",
                style: FontConstants.inter(
                  color: Colors.white,
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem(int index, IconData icon, String label) {
    final isSelected = _selectedIndex == index;
    return GestureDetector(
      onTap: () => _onItemTapped(index),
      behavior: HitTestBehavior.opaque,
      child: SizedBox(
        width: 80,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: isSelected ? Colorconstants.PrimaryColor : Colors.black,
              size: 24,
            ),
            const SizedBox(height: 6),
            Text(
              label,
              style: FontConstants.inter(
                color: isSelected ? Colorconstants.PrimaryColor : Colors.black,
                fontSize: 13,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
