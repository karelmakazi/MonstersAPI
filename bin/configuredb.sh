#!/bin/bash

database="Monstersdb"

echo "Status: Configuring $database"

dropdb -U node_user monstersdb
createdb -U node_user monstersdb

psql -U node_user monstersdb < ./bin/sql/monsters.sql

echo "Status: $database configuration complete"