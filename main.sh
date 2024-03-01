#!/bin/bash

urls=(
    "http://quran.ksu.edu.sa/ayat/download/Minshawy_Murattal_128kbps/Minshawy_Murattal_128kbps_1-3.ayt"
    "http://quran.ksu.edu.sa/ayat/download/Minshawy_Murattal_128kbps/Minshawy_Murattal_128kbps_4-6.ayt"
    "http://quran.ksu.edu.sa/ayat/download/Minshawy_Murattal_128kbps/Minshawy_Murattal_128kbps_7-9.ayt"
    "http://quran.ksu.edu.sa/ayat/download/Minshawy_Murattal_128kbps/Minshawy_Murattal_128kbps_10-12.ayt"
    "http://quran.ksu.edu.sa/ayat/download/Minshawy_Murattal_128kbps/Minshawy_Murattal_128kbps_13-15.ayt"
    "http://quran.ksu.edu.sa/ayat/download/Minshawy_Murattal_128kbps/Minshawy_Murattal_128kbps_16-18.ayt"
    "http://quran.ksu.edu.sa/ayat/download/Minshawy_Murattal_128kbps/Minshawy_Murattal_128kbps_19-21.ayt"
    "http://quran.ksu.edu.sa/ayat/download/Minshawy_Murattal_128kbps/Minshawy_Murattal_128kbps_22-24.ayt"
    "http://quran.ksu.edu.sa/ayat/download/Minshawy_Murattal_128kbps/Minshawy_Murattal_128kbps_25-27.ayt"
    "http://quran.ksu.edu.sa/ayat/download/Minshawy_Murattal_128kbps/Minshawy_Murattal_128kbps_28-30.ayt"
)

for url in "${urls[@]}"; do
    wget "$url"
    
    file_name=$(basename "$url")
    
    unzip "$file_name"
    rm "$file_name"
done
