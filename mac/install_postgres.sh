brew install postgresql
brew services start postgresql@14
createuser -s postgres
psql -U postgres

# then follow https://www.digitalocean.com/community/tutorials/how-to-install-postgresql-on-ubuntu-20-04-quickstart