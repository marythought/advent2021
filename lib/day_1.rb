require 'pry'
require 'pry-nav'

def sonar_sweep(input)
  increases = 0
  previous = nil

  input.each do |i|
    this = i

    if previous
      increases += 1 if this > previous
    end

    previous = this
  end

  increases
end

def sonar_sweep_sliding_scale(input)
  increases = 0
  last_slice_sum = nil

  input.each_with_index do |item, i|
    next if i + 2 > input.length

    # binding.pry
    this_slice = input[i..i + 2]
    sum = this_slice.sum

    if last_slice_sum && this_slice.length > 2
      increases += 1 if sum > last_slice_sum
    end

    last_slice_sum = this_slice.sum
  end

  increases
end
