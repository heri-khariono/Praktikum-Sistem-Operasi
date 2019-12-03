#!/bin/sh

lagi='y'
while [ $lagi == 'y' ] || [ $lagi == 'Y' ]
do
clear
echo "+====================================+"
echo "|    FINAL PROJECT SISTEM OPERASI    |"
echo "|------------------------------------|"
echo "|          Toko Ikan Hias            |"
echo "+====================================+"
echo "1. Login User"
echo "2. Pemesanan produk"
echo "3. Searching pemesanan"
echo "4. Jalankan Deadlock"
echo "5. Exit Program"
read -p "Masukkan pilihan menu : " menu

case $menu in
1)
clear
	echo -n "Buat akun baru : "
	read user
	sudo adduser $user
	read -p "Jadikan user $user sebagai Super User [y/t]" su
	if [ $su == 'y' ]
	then
		su $user
		echo "+=================================================================+"
		echo "|       User $user berhasil dijadikan sebagai Super User...       |"
		echo "+=================================================================+"
		echo
	else
		echo "+=================================================================+"
		echo "|   User berhasil ditambahkan, selamat berbelanja di toko kami... |"
		echo "+=================================================================+"
	fi
;;

2)
clear
echo "+========================================+"
echo "| Daftar ikan yang tersedia di toko kami |"
echo "+========================================+"
echo "|1. Ikan Koi         Rp. 80.0000/ekor   |"
echo "|2. Ikan Arwana      Rp. 300.000/ekor   |" 
echo "|3. Ikan Cupang      Rp. 77.000/ekor    |"
echo "|4. Ikan Discus      Rp. 90.000/ekor    |"
echo "|5. Ikan Guppy       Rp. 125.000/ekor   |"
echo "+=======================================+"
read -p "Masukkan pilihan jenis ikan yang akan dibeli (1-5) : " order
echo -n "pesen berapa ?"
read jum
echo "+=====================================================+"
echo "|     wait please !! Pesanan anda akan diproses...    |"
echo "+=====================================================+"
sleep 5s;
clear
echo "+=====================================+"
echo "|           Daftar Pesanan            |"
echo "+=====================================+"
if [ $order == 1 ]
then
	echo "Ikan Koi siap gan.."
	let bayar=$jum*80000;	
	echo "Total Pembayaran $bayar"
elif [ $order == 2 ]
then
	echo "Ikan Arwana siap gan.."
	let bayar=$jum*300000;
	echo "Total Pembayaran $bayar"	
elif [ $order == 3 ]
then
	echo "Ikan Cupang siap gan.."
	let bayar=$jum*77000;
	echo "Total Pembayaran $bayar"
elif [ $order == 4 ]
then
	echo "Ikan Discus siap gan.."
	let bayar=$jum*90000;
	echo "Total Pembayaran $bayar"
elif [ $order == 5 ]
then
	echo "Ikan Guppy siap gan.."
	let bayar=$jum*125000;
	echo "Total Pembayaran $bayar"
else
	echo "+=========================================================+"
	echo "|  Maaf, jenis ikan yang anda masukkan belum tersedia...  |"
	echo "+=========================================================+"
fi

;;
3)
clear
echo "+========================================+"
echo "| Daftar ikan yang tersedia di toko kami |"
echo "+========================================+"
echo "|1. Ikan Koi                             |"
echo "|2. Ikan Arwana                          |" 
echo "|3. Ikan Cupang                          |"
echo "|4. Ikan Discus                          |"
echo "|5. Ikan Guppy                           |"
echo "+========================================+"
echo "Masukkan jenis ikan yang akan dicari [1-5] : "
read cari

if [ $cari == $order ]
then
	if [ $cari == 1 ]
	then
		echo "Nama User : $user"
		echo "+======================+"
		echo "|   Daftar pembelian   |"
		echo "+======================+"
		echo "Ikan koi "
		echo "Total Pembayaran : $bayar"
	elif [ $cari == 2 ]
	then
		echo "Nama User : $user"
		echo "+======================+"
		echo "|   Daftar pembelian   |"
		echo "+======================+"
		echo "Ikan Arwana "
		echo "Total Pembayaran : $bayar"
	elif [ $cari == 3 ]
	then
		echo "Nama User : $user"
		echo "+======================+"
		echo "|   Daftar pembelian   |"
		echo "+======================+"
		echo "Ikan Cupang "
		echo "Total Pembayaran : $bayar"
	elif [ $cari == 4 ]
	then
		echo "Nama User : $user"
		echo "+======================+"
		echo "|   Daftar pembelian   |"
		echo "+======================+"
		echo "Ikan Discus "
		echo "Total Pembayaran : $bayar"
	elif [ $cari == 5 ]
	then
		echo "Nama User : $user"
		echo "+======================+"
		echo "|   Daftar pembelian   |"
		echo "+======================+"
		echo "Ikan Guppy "
		echo "Total Pembayaran : $bayar"		
	fi

elif [ $cari != $order ]
then
	echo "+========================================+"
	echo "| Jenis ikan yang anda cari tidak ada !! |"
	echo "+========================================+"
fi
;;

4)
clear
while :; do
dd if=out.fifo bs=1b count=1 2>/dev/null | grep $1
if [ $? -eq 0 ];
then
echo "$2 > in.fifo"
exit 0
fi
done
;;

5)
clear
echo "+=====================================================+"
echo "|     Terima kasih telah berkunjung di toko kami      |"
echo "+=====================================================+"
exit
;;

*)
clear
echo "+=====================================================+"
echo "|    Maaf, menu yang anda masukkan tidak tersedia     |"
echo "+=====================================================+"
;;
esac
sleep 5s;
echo -n "Apakah anda ingin lanjut ke Program ? [y/n]: ";
read lagi;
while [ $lagi != 'y' ] && [ $lagi != 'Y' ] && [ $lagi != 'n' ] && [ $lagi != 'N' ];
do	
	echo "+=====================================================+"
	echo "|        Maaf, input yang anda masukkan salah !!      |"
	echo "+=====================================================+"
	echo -n "Ingin Lanjut ke Program Yang Lain? [y/n]: ";
	read lagi;
	if [ $lagi == 'n' ]
	then
		echo "+=====================================================+"
		echo "|     Terima kasih telah berkunjung di toko kami      |"
		echo "+=====================================================+"
	fi
	done
done
