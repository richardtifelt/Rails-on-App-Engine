class Book
  include DataMapper::Resource

  property :id, Serial
  property :title, String, :nullable => false
  property :summary, Text
  property :image_url, String
  property :available, Boolean, :nullable => false
  property :pages, Integer
  timestamps :at
  
end
