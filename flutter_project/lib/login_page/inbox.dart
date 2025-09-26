import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Inbox extends StatelessWidget {
  const Inbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 1. Selaraskan background color
      backgroundColor: Colors.grey[50],

      // 2. Selaraskan AppBar dengan warna solid dan font Poppins
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        elevation: 0,
        title: Text(
          "Inbox",
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        // Tombol kembali akan muncul otomatis karena halaman ini di-push
      ),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          // 3. Selaraskan gaya Card
          child: Card(
            color: Colors.white,
            elevation: 4,
            shadowColor: Colors.grey.withOpacity(0.2),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 40),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.notifications_off_outlined, // Ikon versi outlined
                    size: 80,
                    color: Colors.grey[300], // Warna lebih soft
                  ),
                  const SizedBox(height: 20),
                  // 4. Selaraskan semua tipografi menggunakan GoogleFonts
                  Text(
                    "Tidak Ada Notifikasi",
                    style: GoogleFonts.poppins(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Semua pembaruan dan pemberitahuan penting akan muncul di sini.",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      color: Colors.grey[600],
                    ),
                  ),
                  const SizedBox(height: 30),

                  // 5. Tombol "Perbarui" tidak lagi diperlukan untuk halaman kosong
                  // Jika ingin tetap ada, gayanya harus diselaraskan:
                  ElevatedButton.icon(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue[800],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 12,
                      ),
                    ),
                    icon: const Icon(Icons.refresh, color: Colors.white),
                    label: Text(
                      "Perbarui",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      // 6. BottomAppBar dihapus karena tidak diperlukan di halaman sekunder
      // Ini membuat UI lebih bersih dan fokus.
    );
  }
}
