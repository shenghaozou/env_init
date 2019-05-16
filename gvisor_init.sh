ssh-keygen -t rsa -b 4096 -C "shenghaozou@yahoo.com"
eval "$(ssh-agent -s)"
ssh-add  ~/.ssh/id_rsa
echo "Please paste the following ssh pub key to github. LINK: https://github.com/settings/ssh/new"
cat ~/.ssh/id_rsa.pub
read -p "Press enter to continue"
cd
git clone git@github.com:shenghaozou/gvisor.git
git clone git@github.com:shenghaozou/zar.git



