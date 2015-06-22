class Rot13
  def cypher(string)
    alphabet = ('a'..'z').map{|char| char}
    string.chars.map{ |char|
      index = alphabet.index(char) - 13
      alphabet[index]
    }.join
  end
end
