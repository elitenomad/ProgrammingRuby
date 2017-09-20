class BinarySearch
  def initialize
  end

  def binary_search(list, item)
    # Initialize with low, high
    low = 0
    high = list.length - 1

    # calculate mid value of the array
    mid = (low + high) / 2
    guess = list[mid]

    while low <= high
      if guess < item
        low = mid + 1
      elsif guess > item
        high = mid - 1
      else
         break
      end

      mid = (low + high)/2
      guess = list[mid]
    end
    if guess == item
      [mid, guess]
    else
      [nil,nil]
    end
  end
end


if __FILE__ == $0
  bs = BinarySearch.new
  p bs.binary_search([4,5,6,10,12,13,14,16,19,24,45,49,25,67,86], 24)
end