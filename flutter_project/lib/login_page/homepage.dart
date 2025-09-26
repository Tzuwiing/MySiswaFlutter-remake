import 'package:flutter/material.dart';
import 'package:flutter_project/login_page/profile.dart';
import 'package:google_fonts/google_fonts.dart';
import 'kalender.dart'; // Pastikan file ini ada di direktori yang benar
import 'sekolah.dart'; // Pastikan file ini ada di direktori yang benar
import 'inbox.dart'; // Pastikan file ini ada di direktori yang benar

// ===================================================================
// DEFINISI HALAMAN-HALAMAN SEDERHANA (Tetap sama)
// ===================================================================

class ProfilPage extends StatelessWidget {
  const ProfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Halaman Profil"),
        backgroundColor: Colors.blue[800],
      ),
      body: const Center(
        child: Text(
          "Ini adalah Halaman Profil",
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}

// ===================================================================
// HALAMAN UTAMA (HOMEPAGE) - VERSI MANUAL TANPA REUSABLE WIDGET
// ===================================================================

class Homepage extends StatefulWidget {
  final String username;
  const Homepage({super.key, required this.username});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    // Logika navigasi tidak berubah, hanya cara widgetnya dibuat
    setState(() {
      _selectedIndex = index;
    });

    switch (index) {
      case 0:
        // Tetap di halaman home
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Sekolah()),
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Kalender()),
        );
        break;
      case 3:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Profile()),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        elevation: 0,
        title: Text(
          "MySiswa",
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Inbox()),
              );
            },
            icon: const Icon(Icons.notifications_outlined, color: Colors.white),
          ),
        ],
      ),
      // ===================================================================
      // AWAL DARI BODY (SEBELUMNYA WIDGET _buildWelcomeBody)
      // ===================================================================
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Card(
            color: Colors.white,
            elevation: 4,
            shadowColor: Colors.grey.withOpacity(0.2),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Assalamualaikum, ${widget.username}!",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    "Selamat Datang di Aplikasi MySiswa",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: Colors.black54,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "Semoga harimu menyenangkan 💙 ",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      // ===================================================================
      // AKHIR DARI BODY
      // ===================================================================
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Aksi untuk kamera
        },
        backgroundColor: Colors.blueAccent,
        shape: const CircleBorder(),
        child: const Icon(Icons.camera_alt, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 8.0,
        color: Colors.blue[800],
        child: SizedBox(
          height: 60.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // ===================================================================
              // AWAL DARI ITEM NAVIGASI
              // ===================================================================

              // 1. Tombol Home (index 0)
              GestureDetector(
                onTap: () => _onItemTapped(0),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.home,
                        color: _selectedIndex == 0
                            ? Colors.white
                            : Colors.white.withOpacity(0.7),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        "Home",
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          color: _selectedIndex == 0
                              ? Colors.white
                              : Colors.white.withOpacity(0.7),
                          fontWeight: _selectedIndex == 0
                              ? FontWeight.bold
                              : FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // 2. Tombol Kelas (index 1)
              GestureDetector(
                onTap: () => _onItemTapped(1),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.school,
                        color: _selectedIndex == 1
                            ? Colors.white
                            : Colors.white.withOpacity(0.7),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        "Sekolah",
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          color: _selectedIndex == 1
                              ? Colors.white
                              : Colors.white.withOpacity(0.7),
                          fontWeight: _selectedIndex == 1
                              ? FontWeight.bold
                              : FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(width: 40), // Ruang untuk FAB
              // 3. Tombol Kalender (index 2)
              GestureDetector(
                onTap: () => _onItemTapped(2),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.calendar_month,
                        color: _selectedIndex == 2
                            ? Colors.white
                            : Colors.white.withOpacity(0.7),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        "Kalender",
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          color: _selectedIndex == 2
                              ? Colors.white
                              : Colors.white.withOpacity(0.7),
                          fontWeight: _selectedIndex == 2
                              ? FontWeight.bold
                              : FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // 4. Tombol Profil (index 3)
              GestureDetector(
                onTap: () => _onItemTapped(3),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.person,
                        color: _selectedIndex == 3
                            ? Colors.white
                            : Colors.white.withOpacity(0.7),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        "Profil",
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          color: _selectedIndex == 3
                              ? Colors.white
                              : Colors.white.withOpacity(0.7),
                          fontWeight: _selectedIndex == 3
                              ? FontWeight.bold
                              : FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // ===================================================================
              // AKHIR DARI ITEM NAVIGASI
              // ===================================================================
            ],
          ),
        ),
      ),
    );
  }
}
