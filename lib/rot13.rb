class Rot13
  def cypher(string)
    string.chars.map{ |char|
      is_space?(char) ? char : encoded_string(char)
    }.join
  end

  private

  def generate_method(char)
    method = is_uppercase?(char) ? 'uppercase' : 'lowercase'
    method += '_alphabet'
  end

  def encoded_string(char)
    method = generate_method(char)
    index = self.send(method).index(char) - 13
    self.send(method)[index]
  end

  def is_space?(char)
    char == ' '
  end

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
