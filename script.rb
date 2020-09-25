
def stock_picker(array)
    min = array.min
    max = array.max

    min_index = array.index(min)
    max_index = array.index(max)
    
    array_order = {}
    # min_index has to come before than max_index

    array.each{|i| array_order.store(array.index(i), i)}


    until min_index < max_index
        array.delete_at(min_index)
        array.delete_at(max_index)

        min = array.min
        max = array.max

        min_index = array.index(array.min)
        max_index = array.index(array.max)
    end

    [array_order.key(min), array_order.key(max)]
end


p stock_picker([17,3,6,9,15,8,6,1,10])
#[1,4]  # for a profit of $15 - $3 == $12