#!/bin/bash

# Bersihkan terminal
clear

echo "====================================="
echo "  Memulai Instalasi di Replit..."
echo "====================================="

# Instal Node.js (Replit sudah menyediakannya, hanya pastikan terpasang)
echo "Memeriksa Node.js..."
if ! command -v node &> /dev/null; then
    echo "Node.js tidak ditemukan! Menginstal Node.js..."
    curl -fsSL https://deb.nodesource.com/setup_18.x | bash -
    apt install -y nodejs npm
else
    echo "✓ Node.js sudah terinstal."
fi

# Inisialisasi proyek jika belum ada
if [ ! -f "package.json" ]; then
    echo "Inisialisasi proyek Node.js..."
    npm init -y
fi

# Instal dependensi
echo "Menginstal dependensi..."
npm install express node-fetch@2

# Jalankan server
echo "Menjalankan server..."
node server.js
