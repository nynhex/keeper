# Shopkeeper

## Prerequisites

- PostgreSQL
- Ruby 2.5.1
- Bundler

## Installation and Setup

```
$ bundle install
$ createdb shopkeeper
$ ./setup.sh # This populates your new shopkeeper database with some data.
```

You may see messages like `NOTICE:  table "products" does not exist, skipping` when running `setup.sh`. That's normal and not a problem.
