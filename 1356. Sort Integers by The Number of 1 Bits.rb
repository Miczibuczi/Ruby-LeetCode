# @param {Integer[]} arr
# @return {Integer[]}
def sort_by_bits(arr)
    arr = arr.sort
    ans = Array.new(14) { [] }
    arr.each do |num|
        index = num.to_s(2).count("1")
        ans[index].push(num)
    end
return ans.flatten
end

arr = [0,1,2,3,4,5,6,7,8]
puts sort_by_bits(arr)