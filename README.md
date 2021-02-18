# Practice sets for SQL

This is a set of practice questions for SQL. The idea is to give you a set of problems that ask you to use 
SQL to find certain results. In most cases, the result from the data set will be given. The queries themselves
will not be given (as there are generally multiple ways to answer any given query).

For each problem set, I have included the following:

* Simple CSVs containing the data 
* A simple script, `install.sql` that can create a database and load the data into a postgres server (this has to be running on your local machine)
* README.md, which includes the queries and result set you should get for that data set.

There may be additional files (such as a schema) but this is not guaranteed.

## Installation

### Mac OSX

If you have already install postgres on your system, you only need to run step 3.
 
1. Install [brew](https://brew.sh/) if you haven't installed it already using the following command:
```bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

2. Install postgres using `brew`:
```bash
# install postgres
brew install postgresql

# install the start/stop/restart services
brew tap homebrew/services

# create your user, so you can open postgres
createdb 

# start postgre running
brew services start postgresql
```

3. Clone this repo and install
```bash
git clone https://github.com/kiwidamien/SQL_Practice.git
cd SQL_Practice
sh install_problems.sh
```

Putting all the commands into one script:
```bash
# install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install postgres
brew install postgresql
createdb 
brew services start postgresql

# get this repo and install it
git clone https://github.com/kiwidamien/SQL_Practice.git
cd SQL_Practice
sh install_problems.sh
```

## Issues?

Please report all issues using Github issues
