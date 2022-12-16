module MyEnumerable
  def all?
    new_arr = []
    @list.each { |item| new_arr.push(item) if yield item }
    puts new_arr.length == @list.length
  end

  # any? method
  def any?
    @list.each { |item| return true if yield item }
  end

  # filter method
  def filter
    arr = []
    @list.each do |item|
      arr.push(item) if yield item
    end
    print arr
  end
end
