class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    # Return the number of songs in the genre
    songs.count
  end

  def artist_count
    # Return the number of artists associated with the genre
    artists.count
  end

  def all_artist_names
    # Return an array of strings containing every musician's name
    artists.pluck(:name)
  end
end
