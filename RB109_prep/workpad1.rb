# workpad1.rb
# rubocop:disable Metrics/MethodLength, Style/ConditionalAssignment
def encode(str)
  encoded = ''
  str.each_char do |char|
    case char
    when 'a'
      encoded << '1'
    when 'e'
      encoded << '2'
    when 'i'
      encoded << '3'
    when 'o'
      encoded << '4'
    when 'u'
      encoded << '5'
    else
      encoded << char
    end
  end

  encoded
end

def decode(str)
  decoded = ''
  str.each_char do |char|
    case char
    when '1'
      decoded << 'a'
    when '2'
      decoded << 'e'
    when '3'
      decoded << 'i'
    when '4'
      decoded << 'o'
    when '5'
      decoded << 'u'
    else
      decoded << char
    end
  end

  decoded
end
# rubocop:enable Metrics/MethodLength, Style/ConditionalAssignment

p encode('hello') == 'h2ll4'
p encode('How are you today?') == 'H4w 1r2 y45 t4d1y?'
p encode('This is an encoding test.') == 'Th3s 3s 1n 2nc4d3ng t2st.'
p decode('h2ll4') == 'hello'
