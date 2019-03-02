sudo cp .env.example-dev .env
sleep 1
sudo cp .settings-development.example .settings-development
sleep 1
chown task1:task1 .settings-development .env
sleep 1
sudo ./artisan key:generate
sleep 1
sudo chmod -R ugo+rw storage/
sleep 1
sudo chmod -R ugo+rw bootstrap/cache/
sleep 1
sudo touch storage/database.sqlite
sleep 1
sudo ./artisan migrate
sleep 1
sudo ./artisan db:seed
chmod -R 777 storage
