# frozen_string_literal: true

left = []
right = []

File.readlines('input.txt', chomp: true).each do |line|
  l, r = line.split
  left.append(l.to_i)
  right.append(r.to_i)
end


# part 1
# sum = 0
# len = left.length
# len.times do |i|
#   left_min = left.min
#   right_min = right.min
#   sum += ((left_min - right_min).abs)
#   left.delete_at(left.index(left_min))
#   right.delete_at(right.index(right_min))
# end

# part 2
similarity = 0
left.each do |num|
  similarity += right.count(num) * num
end

puts(similarity)
