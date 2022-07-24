Tujuan Pengerjaan Project : Membersihkan data traffic ecommerce bulan Oktober-November 2019. Data ini akan digunakan untuk analisis produk yang terjual.

1. Membuat syntax untuk menggabungkan dua buah file yaitu file 2019-Oct-sample.csv dan 2019-Nov-sample.csv 
syntaxnya -->   csvstack 2019-Oct-sample.csv 2019-Nov-sample.csv > data_sample.csv
setelah digabung file hasil penggabungan diberi nama data_sample.csv
2. Membuat syntax untuk menyeleksi kolom yang relevan untuk analisis produk
syntaxnya --> csvcut -c 2,3,4,5,6,7,8 data_sample.csv > sliced_data_sample.csv
setelah kolom diseleksi, file diberi nama sliced_data_sample.csv
3. Membuat syntax untuk melakukan filtering untuk mendapatkan aktifitas pembelian saja/purchase
syntaxnya --> csvgrep -c "event_type" -m "purchase" sliced_data_sample.csv > data_clean.csv
setelah dilakukan filtering, file diberi nama data_clean.csv

- Cara Running / Penggunaan Program : jalankan command pada terminal -- > ./script.sh 
- Untuk melihat hasilnya: jalankan command pada terminal --> head data_clean.csv | csvlook
notes: 
1. Pastikan file 2019-Oct-sample.csv dan 2019-Nov-sample.csv berada di directory yang sama sehingga syntax no.1-3 bisa dijalankan sekaligus
2. Waktu running memakan waktu yang lumayan lama karena ukuran file csv yang besar
note: Mohon maaf jika pengerjaan saya kurang sesuai dengan apa yang dimintai
