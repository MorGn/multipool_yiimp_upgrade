#####################################################
# Source code https://github.com/end222/pacmenu
# Updated by cryptopool.builders for crypto use...
#####################################################

source /etc/functions.sh
cd $HOME/multipool/yiimp_upgrade

RESULT=$(dialog --stdout --nocancel --default-item 1 --title "Ultimate Crypto-Server YiiMP Updater v1.08" --menu "Choose one" -1 65 7 \
' ' "- Upgrade Stratum and YiiMP Single Server Installation -" \
1 "Upgrade YiiMP Single Server Installation" \
' ' "- Upgrade Stratum Servers Multi Server Installation -" \
2 "Upgrade Stratum server(s) - Run on each stratum server" \
' ' "- Upgrade YiiMP Web Server Multi Server Installation -" \
3 "Upgrade Web Server - Run on web server" \
4 Exit)
if [ $RESULT = ]
then
bash $(basename $0) && exit;
fi

if [ $RESULT = 1 ]
then
clear;
cd $HOME/multipool/yiimp_upgrade
source single.sh;
fi

if [ $RESULT = 2 ]
then
clear;
cd $HOME/multipool/yiimp_upgrade
source up_stratum.sh;
fi

if [ $RESULT = 3 ]
then
clear;
cd $HOME/multipool/yiimp_upgrade
source up_web.sh;
fi

if [ $RESULT = 4 ]
then
clear;
exit;
fi
