#!/usr/bin/ruby

# https://dev.to/thepracticaldev/daily-challenge-278-find-all-non-consecutive-numbers-1eal

def nconsecutive(array)
 prev = array[0]
 output = []
 array.drop(1).each_with_index do | i, index |
    if prev + 1 != i
        output.push({ i: i, n: index + 1 })
    end
    prev = i
 end

 return output
end


print "[1,2,3,4,6,7,8,10]", "\t\t", nconsecutive([1,2,3,4,6,7,8,10]),"\n"
print "[6,7,8,9,11,12]", "\t\t\t", nconsecutive([6,7,8,9,11,12]),"\n"
print "[100,101,102,112,113,114,129]", "\t", nconsecutive( [100,101,102,112,113,114,129]),"\n"

