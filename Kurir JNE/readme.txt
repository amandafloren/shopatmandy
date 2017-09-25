1. buka phpmyadmin di cpanel tempat hosting anda berada
2. masuk ke DB (Data Base) tempat toko online anda berada
3. Lihat "DB PREFIX", jika bukan oc_......., rubah baris 29 dan 30 ke Prefix toko online anda
4. jika oc_...... biarkan file oc_abcd.sql
5. klik import 
6. pada bagian File to Import: masukkan file oc_abcd.sql lalu klik Go
7. ..................................................................................
8. upload jne_service.zip (Vqmod Autoselect Kecamatan + JNE (REG,OKE,YES) pada file manager cpanel anda dimana toko online anda berada)
9. Login ke Admin toko online anda
10. system/users/users group edit bagian Top administrator.
11. klik select all pada ke dua bagian tsb lalu save (untuk mengaktifkan modul JNE)
12. System/Localisation/Geo zones masukkan 34 Provinsi Indonesia Sesuai dengan file 34 provinsi indonesi.txt
14. extension/shipping masukkan tiap2 geozone sesuai dengan data dalam folder Tariff. format: Kecamatan,tariff
contoh pada JNE REG ACEH, cari file Aceh dalam folder JNE REG ACEH, copy dan paste-kan 
Alafan,87000
Arongan Lambalek,58000
Atu Lintang,58000
Babah Rot,58000
dst.
15. pada status "enable"
16. Donasi welcome  ;D ke BCA  2640351023  A/N: Ali Sudarmanto