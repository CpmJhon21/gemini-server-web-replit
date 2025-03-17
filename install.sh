#!/bin/bash

# Bersihkan terminal
clear

echo "====================================="
echo "  Menginstal & Menjalankan Server Node.js"
echo "====================================="

# Periksa dan instal Node.js jika belum ada
if ! command -v node &> /dev/null; then
    echo "Node.js tidak ditemukan! Menginstal Node.js..."
    pkg install -y nodejs || sudo apt install -y nodejs npm
else
    echo "✓ Node.js sudah terinstal."
fi

# Inisialisasi proyek Node.js
echo "Inisialisasi proyek..."
npm init -y

# Instal dependensi
echo "Menginstal dependensi..."
npm install express
npm install node-fetch@2

# Pastikan `server.js` ada sebelum menjalankan server
if [ ! -f "server.js" ]; then
    echo "❌ File server.js tidak ditemukan!"
    exit 1
fi

# Jalankan server
echo "Menjalankan server..."
node server.js
