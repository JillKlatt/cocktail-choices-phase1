#!/usr/bin/env ruby


require_relative "../config/environment.rb"

CLI.new.run("margarita")
# test_drink = API.new("margarita")
# marg = test_drink.get_data
# binding.pry
# puts marg.name
# binding.pry
# test_drink
# test_drink = API.new("gimlet")
# test_drink.get_data
# binding.pry

#might need some way to replace spaces with %