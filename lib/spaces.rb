class Spaces

  @@spaces = ['flat 1', 'flat 2', 'flat 3']

  def self.all
    @@spaces
  end

  def self.add(space)
    @@spaces << space
  end

end
