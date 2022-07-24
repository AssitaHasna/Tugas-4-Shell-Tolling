#!/bin/bash

# MENGGABUNGKAN 2 FILE DATA ECOMMERCE OCT-NOV 2019
csvstack 2019-Oct-sample.csv 2019-Nov-sample.csv > data_sample.csv

# MENYELEKSI KOLOM YANG RELEVAN UNTUK ANALISIS PRODUK
csvcut -c 2,3,4,5,6,7,8 data_sample.csv > sliced_data_sample.csv

# MELAKUKAN FILTERING UNTUK MENDAPATKAN AKTIVITAS PEMBELIAN SAJA
csvgrep -c "event_type" -m "purchase" sliced_data_sample.csv > data_clean.csv
