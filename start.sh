mkdir -p /opt
rm -rf /opt/* && cd /opt/

mkdir -p ~/.ssh
ssh-keyscan github.com >> ~/.ssh/known_hosts
ssh-keyscan bitbucket.org >> ~/.ssh/known_hosts
echo "$key" > ~/.ssh/id_rsa && chmod 600 ~/.ssh/id_rsa
git clone "$repo" .

npm i --production
npm start
