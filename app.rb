require 'bundler'
Bundler.require

require_relative 'lib/app/Game'
require_relative 'lib/app/Player'
require_relative 'lib/app/Board'
require_relative 'lib/app/BoardCase'
require_relative 'lib/view/Application'


Application.new.perform