require 'rubygems'
gem 'thrift_client', '~> 0.7'
require 'thrift_client'
gem 'simple_uuid' , '~> 0.3'
require 'simple_uuid'

require 'json' unless defined?(JSON)

here = File.expand_path(File.dirname(__FILE__))

class Cassandra1 ; end
unless Cassandra1.respond_to?(:VERSION)
  require "#{here}/cassandra1/0.8"
end

$LOAD_PATH << "#{here}/../vendor/#{Cassandra1.VERSION}/gen-rb"
require "#{here}/../vendor/#{Cassandra1.VERSION}/gen-rb/cassandra"

$LOAD_PATH << "#{here}"

require 'cassandra1/helpers'
require 'cassandra1/array'
require 'cassandra1/time'
require 'cassandra1/comparable'
require 'cassandra1/long'
require 'cassandra1/composite'
require 'cassandra1/dynamic_composite'
require 'cassandra1/ordered_hash'
require 'cassandra1/columns'
require 'cassandra1/protocol'
require 'cassandra1/batch'
require "cassandra1/#{Cassandra1.VERSION}/columns"
require "cassandra1/#{Cassandra1.VERSION}/protocol"
require "cassandra1/cassandra"
require "cassandra1/#{Cassandra1.VERSION}/cassandra"
unless Cassandra1.VERSION.eql?("0.6")
  require "cassandra1/column_family"
  require "cassandra1/keyspace"
end
require 'cassandra1/constants'
require 'cassandra1/debug' if ENV['DEBUG']

begin
  require "cassandra_native"
rescue LoadError
  puts "Unable to load cassandra_native extension. Defaulting to pure Ruby libraries."
end
