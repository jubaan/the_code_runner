def picking_numbers(numbers)

end

if __FILE__ == $PROGRAM_NAME # rubocop:disable Style/IfUnlessModifier
  p picking_numbers([4, 6, 5, 3, 3, 1])
end

if defined? Minitest
  describe 'picking numbers' do
    it 'must return 3 for %s' % (data1 = [4, 6, 5, 3, 3, 1]).join(', ') do
      _(picking_numbers(data1)).must_equal 3
    end
    it 'must return 3 for %s' % (data2 = [4, 5, 6, 3, 3, 1]).join(', ') do
      _(picking_numbers(data2)).must_equal 3
    end
    it 'must return 6 for %s' % (data3 = [3, 2, 1, 4, 5, 6, 7, 8]).join(', ') do
      _(picking_numbers(data3)).must_equal 6
    end
  end
  # require 'pry'
  # binding.pry # rubocop:disable Lint/Debugger
end
