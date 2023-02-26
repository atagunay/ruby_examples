# In this challenge, your task is to write a method convert_temp that helps in temperature conversion. 
# The method will receive a number as an input (temperature), a named parameter input_scale (scale for input temperature), 
# and an optional parameter output_scale (output temperature scale, defaults to Celsius) and return the converted temperature. 
# It should perform interconversion between Celsius, Fahrenheit and Kelvin scale.

# For example,

# > convert_temp(0, input_scale: 'celsius', output_scale: 'kelvin')
# => 273.15 
# > convert_temp(0, input_scale: 'celsius', output_scale: 'fahrenheit')
# => 32.0
# Note that the input values are lowercase version of corresponding scales.

# Your code here
def convert_temp(temp, **ops)
  result = if ops.has_key?(:output_scale)
             if (ops[:input_scale] == 'celsiues' && ops[:output_scale] == 'fahrenheit')
               celsiues_to_fahrenheit(temp)
             elsif (ops[:input_scale] == 'celsiues' && ops[:output_scale] == 'kelvin')
               celsius_to_kelvin(temp)
             elsif (ops[:input_scale] == 'fahrenheit' && ops[:output_scale] == 'celsius')
               fahrenheit_to_celsius(temp)
             elsif (ops[:input_scale] == 'fahrenheit' && ops[:output_scale] == 'kelvin')
               fahrenheit_to_kelvin(temp)
             elsif (ops[:input_scale] == 'kelvin' && ops[:output_scale] == 'fahrenheit')
               kelvin_to_fahrenheit(temp)
             elsif (ops[:input_scale] == 'kelvin' && ops[:output_scale] == 'celsius')
               kelvin_to_celsius(temp)
             end
           else
             if (ops[:output_scale] == 'fahrenheit')
               fahrenheit_to_celsius(temp)
             elsif (ops[:output_scale] == 'kelvin')
               kelvin_to_celsius(temp)
             end
           end
  result
end


def celsius_to_kelvin(c)
  c + 273.15
end


def celsiues_to_fahrenheit(c)
  c * 1.8 + 32
end


def fahrenheit_to_celsius(f)
  (f - 32) / 1.8
end


def fahrenheit_to_kelvin(f)
  ( f + 459.67 ) * (5.0 / 9.0)
end


def kelvin_to_fahrenheit(k)
  k * (9 / 5) - 459.67
end


def kelvin_to_celsius(k)
  k - 273.15
end
