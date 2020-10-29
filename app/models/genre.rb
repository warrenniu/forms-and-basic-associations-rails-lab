class Genre < ActiveRecord::Base
  #has a name attribute (string)
  # add associations
  has_many :songs
end
