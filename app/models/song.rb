class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    # Return the name of the genre this song belongs to
    genre.name
  end

  def drake_made_this
    # Find or create the artist Drake
    drake = Artist.find_or_create_by(name: 'Drake')

    # Assign the song's artist to Drake
    self.artist = drake

    # Save the song record
    save
  end
end
