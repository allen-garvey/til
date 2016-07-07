# Updating Postgres

When updating Postgres minor versions, make sure to do a complete SQL dump first, as the old databases will not be automatically migrated to the new version.

When using the Mac postgres.app with Ruby on Rails or Django, you might have to change the connection to localhost if you were using a socket, since the socket might break.