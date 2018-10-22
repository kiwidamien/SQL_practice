#!/bin/sh

# Goes to each subdirectory, and runs 'psql -f clean.sh', which removes the database installed 
# for that directory.
#
find . -maxdepth 1 -type d \( ! -name . \) -exec bash -c "cd '{}' && psql -f clean.sql"
