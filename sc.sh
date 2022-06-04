echo $token
export token=$token
ssh-keyscan -H github.com > /etc/ssh/ssh_known_hosts
wget https://raw.githubusercontent.com/ganssjr/tumbal/main/build.sh && 
bash build.sh
