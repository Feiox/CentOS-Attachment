curl -O https://downloads.rclone.org/rclone-current-linux-amd64.zip
unzip rclone-current-linux-amd64.zip
cd rclone-*-linux-amd64
sudo cp rclone /usr/bin/
sudo chown root:root /usr/bin/rclone
sudo chmod 755 /usr/bin/rclone
sudo mkdir -p /usr/local/share/man/man1
sudo cp rclone.1 /usr/local/share/man/man1/
sudo mandb
yum install -y screen && screen -S rclone 
curl https://raw.githubusercontent.com/yorfir/CentOS-Attachment/master/rclone/config/rclone.conf  -o /root/.config/rclone/rclone.conf --progress