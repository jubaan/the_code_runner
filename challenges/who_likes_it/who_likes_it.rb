Phrases = {
  0 => 'no one likes this',
  1 => '%s likes this',
  2 => '%s and %s like this',
  3 => '%s, %s and %s like this',
  group: '%s, %s and %d others like this'
}

def likes(*names)

  names = [names].flatten
  size = names.length

  case size
  when (0..3)
    Phrases[size] % names
  else
    Phrases[:group] % [names.take(2), size - 2].flatten
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
