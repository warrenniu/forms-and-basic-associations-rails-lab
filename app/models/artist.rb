class Artist < ActiveRecord::Base
  #has a name attribute (string)
  # add associations here
  has_many :songs

  

  
end
