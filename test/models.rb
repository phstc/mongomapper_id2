File.expand_path("../lib/mongomapper_id2.rb", __FILE__)

class Movie
  include MongoMapper::Document
  key :title, ObjectId
  
  auto_increment!
  
end