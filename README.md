# MySiswa

MySiswa adalah aplikasi mobile berbasis **Flutter** yang dirancang sebagai media informasi dan pendukung aktivitas siswa di lingkungan sekolah. Aplikasi ini menyediakan tampilan untuk mengakses informasi sekolah, jadwal pelajaran, tugas, catatan perkembangan akademik, kalender, profil, dan notifikasi.

Proyek ini merupakan implementasi antarmuka aplikasi (UI prototype) menggunakan data contoh yang ditulis langsung di dalam kode.

## Fitur Aplikasi

### 1. Splash Screen
- Menampilkan identitas aplikasi MySiswa saat aplikasi dibuka.
- Menggunakan animasi/transisi splash sebelum menuju halaman login.

### 2. Login
- Form input username dan password.
- Fitur untuk menampilkan atau menyembunyikan password.
- Validasi kredensial sederhana.
- Tersedia navigasi menuju halaman registrasi.

**Akun demo:**

| Username | Password |
| --- | --- |
| `admin` | `12345` |

> Login saat ini menggunakan kredensial tetap di dalam source code, bukan autentikasi server.

### 3. Registrasi
- Form username, password, dan konfirmasi password.
- Validasi username agar tidak kosong.
- Validasi kesesuaian password dan konfirmasi password.
- Setelah validasi berhasil, pengguna diarahkan ke halaman utama.

> Data akun registrasi belum disimpan ke database atau penyimpanan lokal. Karena itu, akun yang didaftarkan tidak dapat digunakan untuk login setelah aplikasi dimulai ulang.

### 4. Beranda
- Menampilkan sapaan berdasarkan username.
- Menyediakan navigasi ke menu Sekolah, Kalender, dan Profil.
- Memiliki akses ke halaman Inbox melalui ikon notifikasi.
- Menampilkan tombol kamera pada bagian bawah halaman.

### 5. Menu Sekolah
Menyediakan akses ke beberapa halaman informasi:
- **Catatan Siswa** — menampilkan contoh catatan perkembangan akademik siswa.
- **Jadwal Pelajaran** — menampilkan contoh jadwal kegiatan atau mata pelajaran.
- **Tugas Sekolah** — menampilkan daftar tugas beserta informasi tenggat pengumpulan.

### 6. Kalender
- Menampilkan halaman kalender untuk informasi kegiatan atau tanggal penting.

### 7. Profil
- Menampilkan halaman profil pengguna.

### 8. Inbox
- Menyediakan halaman inbox/notifikasi.

## Teknologi yang Digunakan

| Teknologi / Package | Kegunaan |
| --- | --- |
| Flutter | Framework pengembangan aplikasi lintas platform. |
| Dart | Bahasa pemrograman aplikasi. |
| `cupertino_icons` | Ikon bergaya Cupertino. |
| `animated_splash_screen` | Membuat splash screen dengan transisi. |
| `lottie` | Dukungan animasi Lottie. |
| `page_transition` | Transisi perpindahan halaman. |
| `google_fonts` | Menggunakan Google Fonts, termasuk font Poppins pada antarmuka. |

Versi SDK Dart yang ditetapkan di `pubspec.yaml` adalah **3.8.1 atau lebih baru dalam rentang kompatibilitas yang ditentukan proyek** (`^3.8.1`). Pastikan Flutter SDK yang digunakan mendukung versi Dart tersebut.

## Struktur Folder

Struktur utama proyek Flutter:

```text
flutter_project/
├── lib/
│   ├── main.dart
│   └── login_page/
│       ├── catatan.dart
│       ├── homepage.dart
│       ├── inbox.dart
│       ├── jadwal.dart
│       ├── kalender.dart
│       ├── login.dart
│       ├── profile.dart
│       ├── register.dart
│       ├── sekolah.dart
│       └── tugas.dart
├── images/
│   ├── logo.png
│   ├── style.jpg
│   ├── sementara.jpg
│   └── 3.png
├── test/
│   └── widget_test.dart
├── analysis_options.yaml
├── pubspec.yaml
└── README.md
```

Keterangan:
- `lib/main.dart` merupakan titik awal aplikasi dan mengatur splash screen.
- `lib/login_page/` berisi implementasi halaman login, registrasi, beranda, dan halaman informasi lainnya.
- `images/` berisi aset gambar yang digunakan aplikasi.
- `pubspec.yaml` berisi konfigurasi proyek, versi SDK, dependencies, dan daftar aset.

## Persyaratan

Sebelum menjalankan proyek, siapkan:
- Flutter SDK yang kompatibel dengan Dart SDK `^3.8.1`.
- Dart SDK (disertakan bersama Flutter).
- Android Studio, Visual Studio Code, atau editor lain yang mendukung Flutter.
- Android Emulator, perangkat Android, atau target platform lain yang didukung Flutter.

Periksa instalasi Flutter dengan perintah:

```bash
flutter doctor
```

## Cara Instalasi dan Menjalankan

1. Ekstrak repository atau unduh proyek ke komputer.
2. Buka terminal dan masuk ke direktori aplikasi Flutter:

   ```bash
   cd flutter_project
   ```

3. Unduh dependencies:

   ```bash
   flutter pub get
   ```

4. Pastikan emulator atau perangkat sudah terhubung. Periksa perangkat yang tersedia:

   ```bash
   flutter devices
   ```

5. Jalankan aplikasi:

   ```bash
   flutter run
   ```

## Menjalankan di Platform Tertentu

Contoh menjalankan aplikasi pada Chrome:

```bash
flutter run -d chrome
```

Untuk membuat APK Android:

```bash
flutter build apk --release
```

Hasil build APK umumnya tersedia di:

```text
build/app/outputs/flutter-apk/app-release.apk
```

## Catatan Pengembangan

Beberapa bagian aplikasi pada versi proyek ini masih berupa prototype:

- Data jadwal, tugas, dan catatan siswa merupakan data contoh yang ditulis langsung di dalam kode.
- Login menggunakan username dan password tetap (`admin` / `12345`), belum terhubung ke layanan autentikasi.
- Registrasi hanya melakukan validasi form dan mengarahkan pengguna ke beranda; data akun belum disimpan.
- Belum terdapat integrasi backend atau database yang terlihat pada konfigurasi dan source code proyek.
- Tombol kamera dan beberapa aksi pada halaman inbox belum memiliki implementasi fungsional lengkap.
- Halaman kalender dan profil saat ini berfungsi sebagai halaman informasi/tampilan aplikasi.

Untuk penggunaan produksi, disarankan menambahkan autentikasi yang aman, penyimpanan data, integrasi backend, validasi yang lebih lengkap, serta pengujian pada perangkat target.

## Pengujian

Jalankan pengujian Flutter yang tersedia dengan perintah:

```bash
flutter test
```

## Lisensi

Belum ada informasi lisensi khusus yang dicantumkan pada source code proyek ini. Tambahkan file `LICENSE` apabila proyek akan dibagikan atau digunakan oleh pihak lain dengan ketentuan lisensi tertentu.
