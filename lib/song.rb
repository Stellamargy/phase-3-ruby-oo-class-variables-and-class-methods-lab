class Song
    attr_reader:name ,:artist,:genre
    @@count=0
    @@artists=[]
    @@genres=[]
    def initialize (name,artist,genre)
        @name=name
        @artists=artist
        @genres=genre
        @@count+=1
        @@artists<<artist
        @@genres<<genre

    end
    
    def self.count
        @@count
    end
    def self.artists
        @@artists.uniq
    end
    def self.genres
        @@genres.uniq
    end
    def self.genre_count
   #Tally counts each element's occurrences and returns a hash where the key is the element, and the value is the count.
        @@genres.tally
    end
    def self.artist_count
        @@artists.tally
    end
    
end
song1=Song.new("Lucifer", "Jay-Z", "rap")
song2=Song.new("99 Problems", "Jay-Z", "rap")
song3=Song.new("hit me baby one more time", "Brittany Spears", "pop")

 p Song.artists
 