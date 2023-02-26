# In this challenge, your task is to code a serial_average method which is described below:

# It takes a fixed width string in format: SSS-XX.XX-YY.YY. SSS is a three digit serial number, 
# XX.XX and YY.YY are two digit numbers including up to two decimal digits.

# It returns a string containing the answer in format SSS-ZZ.ZZ where SSS is the serial number of that input string,
# and ZZ.ZZ is the average of XX.XX and YY.YY.

# All numbers are rounded off to two decimal places.
# serial_average('002-10.00-20.00')
# "002-15.00"


def serial_average(number)
  average = (number[4,5].to_f + number[10, 5].to_f) / 2
  "#{number[0,3]}-#{average.round(2)}"
end
