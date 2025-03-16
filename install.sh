#!/bin/bash

# Bersihkan terminal
clear

echo "====================================="
echo "  Installing & Running Gemini AI Tools"
echo "====================================="

# Periksa dan instal Node.js jika belum ada
if ! command -v node &> /dev/null
then
    echo "Node.js tidak ditemukan! Menginstal Node.js..."
    curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
    sudo apt install -y nodejs
else
    echo "✓ Node.js sudah terinstal."
fi

# Pastikan `server.js` ada
if [ ! -f "server.js" ]; then
    echo "❌ File server.js tidak ditemukan!"
    exit 1
fi

# Install dependensi
echo "Menginstal dependensi..."
npm install express

# Jalankan server
echo "Menjalankan server..."
node server.js
