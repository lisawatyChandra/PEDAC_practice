def oddities(array)
    odd_list = []

    index = 0
    until index >= array.size
        odd_list << array[index]
        index += 2
    end

    odd_list
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []