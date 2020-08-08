#!/usr/bin/ruby

# https://dev.to/thepracticaldev/daily-challenge-276-unwanted-dollar-signs-458j

def money_value(money)
  money_str = money.tr("$", "").tr(" ", "")
  # This is to remove trailing zeros
  if money_str.to_f == money_str.to_i
    return money_str.to_i
  end
  return money_str.to_f
end


print "12.34 = ", money_value("12.34"),"\n"
print "-0.89 = ", money_value("-0.89"), "\n"
print " .11 = ", money_value(" .11"), "\n"
print "007 = ", money_value("007"), "\n"
print "-$ 0.1 = ", money_value("-$ 0.1"), "\n"
print "12.34 = ", money_value("12.34"), "\n"
print "$-2.3456 = ", money_value("$-2.3456"), "\n"
print "$.2 = ", money_value("$.2"), "\n"
