
APP_ROOT = File.dirname(__FILE__)

$:.unshift(File.join(APP_ROOT, 'lib'))
require 'guide'

food = Guide.new('restaturent.txt')
food.launch
