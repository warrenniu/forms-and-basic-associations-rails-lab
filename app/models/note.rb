class Note < ActiveRecord::Base
  #has content attribute (string)
  # add associations here
  belongs_to :song

  
end
