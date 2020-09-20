# frozen_string_literal: true

def likes(names)
  size = names.length

  phrases = [
    'no one likes this',
    "#{names.first} likes this",
    "#{names[0]} and #{names[1]} like this",
    "#{names[0]}, #{names[1]} and #{names[2]} like this",
    "#{names[0]}, #{names[1]} and #{size - 2} others like this"
  ]

  size < 4 ? phrases[size] : phrases[4]
end

if defined? RSpec
  RSpec.describe '::likes' do
    it "Returns string 'no one likes this' with empty array" do
      names = []
      expected = 'no one likes this'
      expect(likes(names)).to match(expected)
    end

    it "Returns string 'Julio like this'" do
      names = %w[Julio]
      expected = 'Julio likes this'
      expect(likes(names)).to match(expected)
    end

    it "Returns string 'Julio and Felipe like this'" do
      names = %w[Julio Felipe]
      expected = 'Julio and Felipe like this'
      expect(likes(names)).to match(expected)
    end

    it "Returns string 'Julio, Felipe and Octavio likes this'" do
      names = %w[Julio Felipe Octavio]
      expected = 'Julio, Felipe and Octavio like this'
      expect(likes(names)).to match(expected)
    end

    it "Returns string 'Julio, Felipe and 2 others like this'" do
      names = %w[Julio Felipe Octavio Mario]
      expected = 'Julio, Felipe and 2 others like this'
      expect(likes(names)).to match(expected)
    end
  end
end
