class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    d_man = Artist.find_or_create_by(name: "Drake")
    self.artist = d_man

  end
end