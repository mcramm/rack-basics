require 'rack'
require_relative 'my_rack_app'
require_relative 'hello_translator'

use HelloTranslator
run MyRackApp.new
