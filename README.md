# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
# turtle_family

Etapes :

Step 1 – Installing PostgreSQL
    $ sudo apt update
    $ sudo apt install postgresql postgresql-contrib libpq-dev

Step 2 – Creating a New Database Role
    $ sudo -u postgres createuser -s rails_dev -P
    $ sudo -u postgres psql
        ''Output
        ''psql (12.12 (Ubuntu 12.12-0ubuntu0.20.04.1))
        ''Type "help" for help.

        ''postgres=#
        postgres=# \password rails_dev  
        postgres=# \q

Step 3 – Creating a New Rails Application

    $ rails new -T --api -d postgresql -J turtle_family

Step 4 – Configuring and Creating Your Database

    $ echo 'export turtle_family_DATABASE_PASSWORD="XXXXXXXXXXXXXXXX"' >> ~/.bashrc
    $ source ~/.bashrc
    $ nano config/database.yml
    
                config/database.yml

            ...
            default: &default
            adapter: postgresql
            encoding: unicode
            # For details on connection pooling, see Rails configuration guide
            # http://guides.rubyonrails.org/configuring.html#database-pooling
            pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
            username: rails_dev
            password: <%= ENV['turtle_family_DATABASE_PASSWORD'] %>

            development:
            <<: *default
            database: turtle_family_development
            ...
    
    $ rails db:create
                Output
            Created database 'appname_development'
            Created database 'appname_test'

Step 5 – Testing Your Configuration


