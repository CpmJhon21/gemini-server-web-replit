#!/bin/bash

# Bersihkan terminal
clear

echo "====================================="
echo "   Instalasi & Menjalankan Server"
echo "====================================="

# Periksa apakah file server.js ada
if [ ! -f "server.js" ]; then
    echo "❌ File server.js tidak ditemukan!"
    exit 1
fi

# Instal Node.js dan npm (Replit biasanya sudah memiliki Node.js)
echo "✓ Memastikan Node.js dan npm tersedia..."
command -v node >/dev/null 2>&1 || { curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt install -y nodejs npm; }

# Inisialisasi proyek jika belum ada package.json
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
