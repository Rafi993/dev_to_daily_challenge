#!/usr/bin/ruby

# Solution for https://dev.to/thepracticaldev/daily-challenge-277-over-the-road-ell

def over_the_road(address, n)
    (n * 2) + 1 - address 
end

print "address=1, n=3, opposite address=", over_the_road(1, 3), "\n"
print "address=3, n=3, opposite address=", over_the_road(3, 3), "\n"
print "address=3, n=5, opposite address=", over_the_road(3, 5), "\n"
print "address=7, n=11, opposite address=", over_the_road(7, 11), "\n"
