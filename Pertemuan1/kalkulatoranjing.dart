import 'dart:io';

void main() {
  print("=== Kalkulator Usia Anjing ===");

  // Meminta input dari pengguna untuk usia manusia
  stdout.write("Masukkan usia anjing dalam tahun manusia: ");
  String? input = stdin.readLineSync();
  
  // Validasi input dan konversi ke tipe integer
  if (input != null && int.tryParse(input) != null) {
    int usiaManusia = int.parse(input);
    
    // Menghitung usia anjing dalam "tahun anjing"
    double usiaAnjing = hitungUsiaAnjing(usiaManusia);
    
    // Output hasil perhitungan
    print("Usia anjing dalam 'tahun anjing' adalah: $usiaAnjing tahun.");
  } else {
    print("Input tidak valid. Harap masukkan angka.");
  }
}

// Fungsi untuk menghitung usia anjing
double hitungUsiaAnjing(int usiaManusia) {
  if (usiaManusia <= 0) {
    return 0;
  } else if (usiaManusia <= 2) {
    return usiaManusia * 10.5; // 2 tahun pertama dianggap 10.5 tahun anjing per tahun
  } else {
    return (2 * 10.5) + ((usiaManusia - 2) * 4); // Setelah 2 tahun, 4 tahun anjing per tahun manusia
  }
}
