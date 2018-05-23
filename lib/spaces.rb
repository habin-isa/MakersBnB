require 'pg'

class Spaces

  def self.all
    connection = connect_to_database
    list = connection.exec "SELECT * FROM borks"
    spaces = list.map { |item| { title: item['title'], description: item['description'], price: item['price'] } }
  end

  def self.add(space)
    connection = connect_to_database
    connection.exec("INSERT INTO borks (title, description, price) VALUES('#{space[:title]}', '#{space[:description]}', '#{space[:price]}')")
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
