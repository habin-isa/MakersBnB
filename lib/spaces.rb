require 'pg'

class Spaces

  @@spaces = ['Bork 1', 'Bork 2']



  def self.all
    connect_to_database
    list = @@con_db.exec "SELECT * FROM borks"
    list.map { |item| result["title"] }
  end


  def self.add(space)
    connect_to_database
    connection.exec("INSERT INTO borks (title) VALUES('#{title}')")
    @@spaces << space
  end

  # def self.add(space)
  #   @@spaces << space
  # end

  private

  def self.connect_to_database
    if ENV['RACK-ENV'] = 'test'
      @@con_db = PG.connect :dbname => 'bork_bnb'
    else
      @@con_db = PG.connect :dbname => 'bork_bnb_test'
    end
  end

end
