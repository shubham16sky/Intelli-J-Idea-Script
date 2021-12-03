#!/bin/bash
if [ ! command -v curl ]; then
	sudo apt install curl -y
fi

echo "downloading Intelli J idea"
curl -LO https://download-cdn.jetbrains.com/idea/ideaIC-2021.3.tar.gz -o intellij.tar.gz
echo "Extracting files"
tar xvf ideaIC-2021.3.tar.gz
mv idea-IC-213.5744.223 ~/Documents
echo 'export PATH=${PATH}:/home/$USER/Documents/idea-IC-213.5744.223/bin' >> /home/$USER/.bashrc
echo "Making icon"

mkdir -p /home/$USER/.local/share/applications/
cp ./idea.desktop /home/$USER/.local/share/applications/
echo "Installation Successfull"

