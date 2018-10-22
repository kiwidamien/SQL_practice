#!/bin/sh

# Goes to each subdirectory, and runs 'psql -f install.sh', so that directories install
# script can create the tables in the database
#
find . -maxdepth 1 -type d \( ! -name . \) -exec bash -c "cd '{}' && psql -f install.sql"
