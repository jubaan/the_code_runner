# frozen_string_literal: true

def likes(names)
  size = names.length

  case size
  when 0
    'no one likes this'
  when 1
    "#{names.first} likes this"
  when 2
    "#{names.fetch(0)} and #{names.fetch(1)} like this"
  when 3
    "#{names.fetch(0)}, #{names.fetch(1)} and #{names.fetch(2)} like this"
  else
    rest_of_people = size - 2
    "#{names.fetch(0)}, #{names.fetch(1)} and #{rest_of_people} others like this"
  end
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
