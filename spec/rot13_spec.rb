require 'rot13'

describe Rot13 do
  context 'cyphering a lowercase string' do
    let!(:string) { 'hello' }
    let!(:rot13) { Rot13.new }

    it 'cyphers the string' do
      result = rot13.cypher(string)
      expect(result).to eq 'uryyb'
    end

    it 'can decypher a cyphered string' do
      cyphered_string = rot13.cypher(string)
      result = rot13.cypher(cyphered_string)
      expect(result).to eq 'hello'
    end
  end

  context 'cyphering an uppercase string' do
    let!(:string) { 'HeLlo' }
    let!(:rot13) { Rot13.new }

    it 'cyphers the string' do
      result = rot13.cypher(string)
      expect(result).to eq 'UrYyb'
    end

    it 'can decypher a cyphered string' do
      cyphered_string = rot13.cypher(string)
      result = rot13.cypher(cyphered_string)
      expect(result).to eq 'HeLlo'
    end
  end
end
