require 'data_mapper'
require 'dm-postgres-adapter'

DataMapper.setup(:default, "postgres://localhost/chitter")

class Peep
 include DataMapper::Resource

  property :id, Serial
  property :peep, String
  property :timestamp, Date


end

DataMapper.finalize
DataMapper.auto_upgrade!