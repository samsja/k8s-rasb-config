sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install -y git zsh
sudo chsh -s /bin/zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

cd /home/pi/.oh-my-zsh/custom/themes
curl -fsSL https://raw.githubusercontent.com/halfo/lambda-mod-zsh-theme/master/lambda-mod.zsh-theme > lambda-mod.zsh-theme
cd /home/pi
