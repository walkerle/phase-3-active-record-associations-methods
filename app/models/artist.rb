class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def get_genre_of_first_song
    # return the genre of the artist's first saved song
    self.songs.first.genre
    # SQL Statement: 
    # SELECT genres.* FROM genres 
    # INNER JOIN songs 
    #   ON genres.id = songs.genre_id
    # INNER JOIN artists
    #   ON songs.artist_id = artists.id
    # WHERE artists.id = 1;
  end

  def song_count
    # return the number of songs associated with the artist
    self.songs.count
    # SQL: Statement
    # SELECT COUNT(*) FROM songs
    # INNER JOIN artists
    #   ON songs.artist_id = artists.id
    # WHERE artists.id = 1
  end

  def genre_count
    # return the number of genres associated with the artist
    self.genres.count
  end
end
