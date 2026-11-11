# swing-ds
# Swing Design System Preview

Halaman contoh Flutter untuk melihat token yang tersedia di repository ini.

## Menjalankan preview

1. Install Flutter SDK dari [flutter.dev](https://flutter.dev) dan pastikan
   perintah `flutter` tersedia di terminal.
2. Dari folder repository, jalankan:

   ```sh
   flutter pub get
   flutter run
   ```

3. Pilih emulator atau device ketika diminta. Untuk menjalankan di browser,
   gunakan `flutter run -d chrome` jika Chrome sudah tersedia.

Halaman showcase berada di `lib/main.dart`. Token yang dipreview disalin dari
file sumber Git di root repository; jangan edit salinan token atau katalog
generated secara manual.

## Sinkronisasi token Git

Setelah `git pull`, hook mengambil token gradient terbaru dari branch
`origin/supernova-flutter`, menyalin token ke `lib/`, lalu membuat ulang katalog
preview. Aktifkan hook satu kali untuk clone ini:

```sh
git config core.hooksPath .githooks
dart run tool/sync_tokens.dart
```

Di workspace ini hook sudah aktif. Setelah itu, `git pull` akan memperbarui
katalog yang dipakai halaman preview. Jalankan `flutter run` seperti biasa
untuk melihat hasilnya. Jika hook tidak berjalan atau Git menyatakan sudah up
to date, sinkronkan manual dengan `dart run tool/sync_tokens.dart`.

Sinkronisasi mengikuti branch Git tersebut, bukan perubahan Figma secara
langsung. Perubahan Figma harus lebih dulu diekspor atau diterbitkan ke branch
token di Git. Untuk menjalankan sinkronisasi manual, gunakan
`dart run tool/sync_tokens.dart`.