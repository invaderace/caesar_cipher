require './lib/caesar_cipher'

describe ".caesar" do
  it "shifts a word a certain number of alphabets" do
    expect(caesar('word', 3)).to eql('zrug')
  end

  it "holds uppercase letters" do
    expect(caesar('Word', 3)).to eql('Zrug')
  end
end
