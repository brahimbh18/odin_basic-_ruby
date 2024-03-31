def bubble_sort(array)
    sorted = false
    n = array.length
    until sorted == true do
        sorted = true
        (0...n - 1).each do |i|
            if array[i] > array[i+1]
                sorted = false
                array[i], array[i+1] = array[i+1], array[i]
            end
        end
        n -= 1
    end
    
    array
end


array = [4,3,78,2,0,2]
p bubble_sort(array)