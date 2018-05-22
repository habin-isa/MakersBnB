require 'pg'

class Spaces

  def self.all
    connection = connect_to_database
    list = connection.exec "SELECT * FROM borks"
    alpha = list.map { |item| item['title']}
  end

  def self.add(space)
    connection = connect_to_database
    connection.exec("INSERT INTO borks (title) VALUES('#{space}')")
  end


  private

  def self.connect_to_database
    if ENV['RACK-ENV'] = 'test'
      PG.connect :dbname => 'bork_bnb_test'
    else
      PG.connect :dbname => 'bork_bnb'
    end
  end

end
