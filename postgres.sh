echo "Installation of POSTGRES SQL"
sudo pacman -Sy postgresql
exit

echo "Update Postgresql Data binding"
sudo su postgres -l
initdb --locale $LANG -E UTF8 -D '/var/lib/postgres/data'
exit

echo "Start Postgresql Server"
sudo systemctl start postgresql
sudo systemctl enable postgresql

echo "Install Pgadmin4"
sudo pacman -Sy pgadmin4
