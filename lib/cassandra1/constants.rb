
class Cassandra1
  # A helper module you can include in your own class. Makes it easier 
  # to work with Cassandra subclasses.
  module Constants
    include Cassandra1::Consistency
        
    Long = Cassandra1::Long
    OrderedHash = Cassandra1::OrderedHash
  end
end
