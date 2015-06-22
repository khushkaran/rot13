class Rot13
  def cypher(string)
    string.chars.map{ |char|
      method = is_uppercase?(char) ? 'uppercase' : 'lowercase'
      method += '_alphabet'
      index = self.send(method).index(char) - 13
      self.send(method)[index]
    }.join
  end

  private

  def is_uppercase?(char)
    uppercase_alphabet.include?(char)
  end

  def lowercase_alphabet
    ('a'..'z').map{|char| char}
  end

  def uppercase_alphabet
    ('A'..'Z').map{|char| char}
  end
end
