pkg install openjdk-17
pkg install zlib
termux-setup-storage
cd /sdcard
mkdir minecraft-server
cd minecraft-server
wget https://api.papermc.io/v2/projects/paper/versions/1.18.2/builds/379/downloads/paper-1.18.2-379.jar
java -jar paper-1.18.2-379.jar
echo eula=true > /sdcard/minecraft-server/eula.txt
touch /sdcard/start.sh 
echo "cd /sdcard/minecraft-server && java -Xmx2G -Xms2G -jar /sdcard/minecraft-server/paper-1.18.2-379.jar" > /sdcard/start.sh
echo "you can now go to /sdcard and then start the start.sh script using bash."
read -n 1 -s -r -p "Press any key to continue"
