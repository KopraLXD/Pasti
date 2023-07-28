q="-e"
e="echo"
s="sleep 1"
ss="sleep 2"
sss="sleep 3"
m="\033[1;31m"
h="\033[1;32m"
k="\033[1;33m"
b="\033[1;34m"
bl="\033[1;36m"
p="\033[1;37m"
clear
echo $q $k " APAKAH ANDA SEBELUMNYA SUDAH MELOGINKAN AKUN?"
echo
echo $q $k " KETIK$h [$m S$h ]$k JIKA SUDAH"
echo $q $k " KETIK$h [$m B$h ]$k JIKA BELUM"
echo
read -p "  PILIH > " no
if [ "$no" = "B" ]
then
  sleep 2
  echo $q $k "MENGINSTALL SCRIP"
  echo $q $h
  pkg update && pkg upgrade
  apt update && apt upgrade
  pip install rich
  pip install requests
  cd $HOME
  cd
  rm -rf Mencoba
  git clone https://github.com/KopraLXD/Mencoba
  cd Mencoba
  echo $q $k
  echo "SELESAI MENGINSTALL"
  python igv2_Enc.py
elif [ "$no" = "S" ]
then
  sleep 2
  echo $q $h "MOHON MENUNGGU"
  git clone https://github.com/KopraLXD/Mencoba
  cd Mencoba
  python igv2_Enc.py
fi
