# @param {Integer[]} nums
# @return {Integer[]}
def smaller_numbers_than_current(nums)
    help_list = nums.sort
    prev = help_list[0]
    nums_map = {help_list[0] => 0}
    count = 0
    help_list.each do |num|
        if num != prev
            nums_map[num] = count
        end
        count+=1
        prev = num
    end
    ans = nums.map { |num| nums_map[num] }
    return ans
end