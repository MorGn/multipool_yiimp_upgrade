#####################################################
# Source https://mailinabox.email/ https://github.com/mail-in-a-box/mailinabox
# Updated by cryptopool.builders for crypto use...
#####################################################

message_box "Ultimate Crypto-Server Setup Installer" \
"You have choosen to upgrade your YiiMP server(s)!
\n\nWith so many custom YiiMP installations out there, this installer will ONLY upgrade the required stratum files.
\n\nIf your pool has coins that require modifiaction to coinbase.cpp, please submit a request on our github at
\n\nhttps://github.com/MorGn/yiimp with the required code and we will add it to the stratum build.
\n\n
\n\nThis upgrade also will NOT copy any example.stratum.conf files to /home/crypto-data/yiimp/site/stratum/config.
\n\nThis is done to prevent any overwrites of dedicated port configs you may have.
\n\nIf you need a config file for a new Algo, please visit our github for the example.
\n\n
\n\nThis updater has two parts that needs to be ran, the first is on your stratum server(s) and the second on your web server.
\n\nThe web server portion will only update the file web/yaamp/core/functions/yaamp.php."
