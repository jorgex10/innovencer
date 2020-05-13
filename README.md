# Bulk dates assignments

```
Ruby version: 2.6.5
Rails version: 6.0.3
RDBMS: PostgreSQL
Front-end compoment library: Bootstrap 4
```

## Local

To run the application locally do the following steps:

1. Make sure Ruby and Bundler are both correctly installed.
1. Run `bundle install`.
1. Make sure postgres is running in your machine.
1. Start the server process.
  ```
  $ rails s
  ```

## System dependencies

- Install RVM (https://rvm.io/rvm/install)

Install GPG keys

```
gpg --keyserver hkp://pool.sks-keyservers.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
```

Install RVM stable with ruby

```
\curl -sSL https://get.rvm.io | bash -s stable --ruby
```

To start using RVM you need to run source

```
/home/<user>/.rvm/scripts/rvm
```

- Install Ruby version 2.6.5 by RVM

Run from server:

```
rvm install ruby-2.6.5
```

## Configuration

- Gemset and bundler

From server, go to the directory app and run:

```
rvm --ruby-version --create 2.6.5@innovencer
```

then:

```
gem install bundler
```

Use bundler to install gems

```
bundle install
```

## Database creation & initialization

```
rails db:create
rails db:migrate
```

---
Jorge Calvo G.
---
