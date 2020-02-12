# Update and upgrade

pkg up -y && pkg upgrade -y

# Switch permissive

su -c 'setenforce 0'

# Install dependencies

time apt install rsync aapt neofetch toilet ncurses-utils tsu openssl-tool ruby wget ccrypt dialog -y


#Install python & essential package 
pkg install python git


#Install lolcat via ruby manager
gem install lolcat


#Install TQDM module
pip install tqdm


#Remove Previous version file
tsu -c rm -rf /data/data/com.termux/files/home/Viper


#Cloning project files
git clone https://github.com/shaansmarty-rdx/Viper.git

#Copy files to Home directory
tsu -c cp /data/data/com.termux/files/home/Viper/Driver /data/data/com.termux/files/home
tsu -c cp /data/data/com.termux/files/home/Viper/progress /data/data/com.termux/files/home
tsu -c cp /data/data/com.termux/files/home/Viper/Header /data/data/com.termux/files/home
tsu -c cp /data/data/com.termux/files/home/Viper/vn /data/data/com.termux/files/home

#changing permission
tsu -c chmod -R 755 /data/data/com.termux/files/home/*

#copy host to sdcard 
tsu -c cp /data/data/com.termux/files/home/Viper/host.txt /sdcard
