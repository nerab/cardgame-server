require 'rubygems'
require 'bundler'

Bundler.require

require 'cardgame-server'
run CardGame::Server::API
