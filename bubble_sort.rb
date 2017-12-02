=begin
Implement bubble sort, each element is compared to the one next to it
and they are swapped if the one on the left is larger than the
one on the right. Repeat this process until it is sorted.
=end

def bubble_sort(values)
   isSorted = false
   while(isSorted == false)
      isSorted = true
      values.each_with_index do |value, index|
         if (index + 1) != values.length && value > values[index + 1]
            temp = values[index]
            values[index] = values[index + 1]
            values[index + 1] = temp
            isSorted = false
         end
      end
   end
   puts values
end

arr = [6,5,3,1,8,7,2,4]
bubble_sort(arr)
