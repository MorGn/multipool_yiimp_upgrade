#####################################################
# Created by cryptopool.builders for crypto use...
#####################################################

source /etc/functions.sh
source /etc/multipool.conf
source $STORAGE_ROOT/yiimp/.yiimp.conf

if [[ ! -e '$STORAGE_ROOT/yiimp/yiimp_setup/yiimp' ]]; then
sudo rm -r $STORAGE_ROOT/yiimp/yiimp_setup/yiimp
hide_output sudo git clone ${YiiMPRepo} $STORAGE_ROOT/yiimp/yiimp_setup/yiimp
else
hide_output sudo git clone ${YiiMPRepo} $STORAGE_ROOT/yiimp/yiimp_setup/yiimp
fi

echo Upgrading stratum...
cd $STORAGE_ROOT/yiimp/yiimp_setup/yiimp
cd $STORAGE_ROOT/yiimp/yiimp_setup/yiimp/stratum/iniparser
hide_output sudo make
cd $STORAGE_ROOT/yiimp/yiimp_setup/yiimp/stratum
if [[ ("$AutoExchange" == "y" || "$AutoExchange" == "Y" || "$AutoExchange" == "yes" || "$AutoExchange" == "Yes" || "$AutoExchange" == "YES") ]]; then
sudo sed -i 's/CFLAGS += -DNO_EXCHANGE/#CFLAGS += -DNO_EXCHANGE/' $STORAGE_ROOT/yiimp/yiimp_setup/yiimp/stratum/Makefile
fi
hide_output sudo make
cd $STORAGE_ROOT/yiimp/yiimp_setup/yiimp/stratum
sudo mv stratum $STORAGE_ROOT/yiimp/site/stratum

cd $STORAGE_ROOT/yiimp/yiimp_setup/yiimp/web/yaamp/core/functions/
cp -r yaamp.php $STORAGE_ROOT/yiimp/site/web/yaamp/core/functions

echo Stratum build complete...
cd $HOME/multipool/yiimp_upgrade
