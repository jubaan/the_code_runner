def workbook(chapters_index, problems, problems_per_chapter)
  (1..chapter_index).each do |chapter|
  end
end

if defined? RSpec
  RSpec.describe '#workbook' do
    it 'Prints 4 as the number of special problems' do
      actual = workbook(5, 3, [4, 2, 6, 1, 10])
      expected = 4
      expect(actual).to eq(expected)
    end

    it 'Prints 8 as the number of special problems' do
      actual = workbook(10, 5, [3, 8, 15, 11, 14, 1, 9, 2, 24, 31])
      expected = 8
      expect(actual).to eq(expected)
    end
  end
end
