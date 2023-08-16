class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    # return the number of songs in a genre
    self.songs.count
  end

  def artist_count
    # return the number of artists associated with the genre
    self.artists.count
    # SQL Statement:
    # SELECT COUNT(*) FROM artists
    # INNER JOIN songs
    #   ON artists.id = songs.artist_id
    # INNER JOIN genres
    #   ON songs.genre_id = genres.id
    # WHERE genres.id = 1;
  end

  def all_artist_names
    # return an array of strings containing every musician's name
    self.artists.map do |artist|
      artist.name
    end
  end
end
