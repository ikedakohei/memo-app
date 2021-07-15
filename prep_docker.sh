#!/bin/sh
rm tmp/pids/server.pid
bundle install
yarn install
rails db:create db:migrate
