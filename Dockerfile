# Menggunakan image nodejs versi 14
FROM node:14
# Membuat dan menentukan lokasi direktori pada container yang akan digunakan untuk menyimpan semua berkas & file aplikasi
WORKDIR /app
# Menyalin semua berkas & file dari working directory lokal komputer ke working directory containers "/app" yang telah dibuat sebelumnya
COPY . .
# Menentukan environment variabel yang akan digunakan oleh aplikasi
ENV NODE_ENV=production DB_HOST=item-db
# Menjalankan perintah untuk melakukan pemasangan semua dependencies (package.json) yang dibutuhkan dan dilanjutkan proses build
RUN npm install --production --unsafe-perm && npm run build
# Mengekspos port 8080 yang akan digunakan oleh container
EXPOSE 8080
# Mengeksekusi perintah "npm start" untuk menjalankan aplikasi yang telah dibuild sebelumnya
CMD ["npm", "start"]