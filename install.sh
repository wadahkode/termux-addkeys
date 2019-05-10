#!/data/data/com.termux/files/bin/bash
#Cek package git sudah terinstall
#
urlAddKeys="https://raw.githubusercontent.com/kumpulanremaja/termuxtbb/master/kumpulanremaja.py";
output=termuxtbb.py
#
if ! [ type wget >/dev/null 2>&1 && type python >/dev/null 2>&1]
then
	echo -ne "Tunggu sebentar\n";
	echo -ne ".\r";
	sleep 1
	echo -ne "..\r";
	sleep 1
	echo -ne "...\n";

	wget -O $output $urlAddKeys;
	python $output;
else
	echo >&2 "Paket wget dan python belum terinstall.";
	echo -ne "Tunggu sebentar\n";
	echo -ne ".\r";
	sleep 1
	echo -ne "..\r";
	sleep 1
	echo -ne "...\n";
	apt install wget python -y
	wget -O $output $urlAddKeys;
	python $output;
fi
