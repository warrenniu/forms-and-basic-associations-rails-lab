class Song < ActiveRecord::Base
  #has a title attribute (string)
  # add associations here
  belongs_to :artist
  belongs_to :genre
  has_many :notes

  #artist_name setter method
  def artist_name=(name)
    self.artist = Artist.find_or_create_by(name: name)
  end

  #artist_name getter method
  def artist_name
    self.artist ? self.artist.name : nil
  end


  #genre_name setter method
  def genre_name=(name)
  self.genre = Genre.find_or_create_by(name: name)
  end

  #genre_name getter method
  def genre_name
  self.genre ? self.genre.name : nil
  end

  def note_contents=(contents)
    contents.each do |content|
      if content.strip != ""
         self.notes.build(content: content)
      end
    end
  end

  def note_contents
    self.notes.map(&:content)
  end
  
end
