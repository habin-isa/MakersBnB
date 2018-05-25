require_relative './spaces.rb'
require 'bcrypt'

class User
  attr_reader :id, :email, :psasword

  def initialize(id, email, password)
    @id = id
    @email = email
    @password = password
  end

  def self.all
    connection = connect_to_database
    users = connection.exec "SELECT * FROM users"
    users_list = users.map { |item| { id: item['id'] } }
    end

    def self.add(user)
      connection = connect_to_database
      connection.exec("INSERT INTO users (email, password) VALUES('#{user[:email]}', '#{user[:passwowrd]}')")
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
