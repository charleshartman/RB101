# pp14.rb - Practice Problem 14

# Given this data structure write some code to return an array containing
# the colors of the fruits and the sizes of the vegetables. The sizes
# should be uppercase and the colors should be capitalized.

hsh = {
  'grape' => { type: 'fruit', colors: ['red', 'green'], size: 'small' },
  'carrot' => { type: 'vegetable', colors: ['orange'], size: 'medium' },
  'apple' => { type: 'fruit', colors: ['red', 'green'], size: 'medium' },
  'apricot' => { type: 'fruit', colors: ['orange'], size: 'medium' },
  'marrow' => { type: 'vegetable', colors: ['green'], size: 'large' },
}
# The return value should look like this:
# [["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]

# - input: hash
# - ouput: array
# - data structure: return new array that selects colors and .capitalize them 
# - and selects size and .upcase it.
# - algo:
#     - iterate each_value to drill into values of master hash
#     - push each :colors into new array and .capitalize it
#     - push each :size into new array and .upcase it
#     - return new array

def food_filter(foods)
  foods.map do |_key, value|
    if value[:type] == 'fruit'
      value[:colors].map do |color| 
        color.capitalize
      end
    elsif value[:type] == 'vegetable'
      value[:size].upcase
    end
  end
end

p food_filter(hsh)
