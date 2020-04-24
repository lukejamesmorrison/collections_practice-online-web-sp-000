
def sort_array_asc(array)
  array.sort! { |a, b| a<=>b }
end

def sort_array_desc(array)
  array.sort! { |a, b| -(a<=>b) }
end

def sort_array_char_count(array)
  array.sort! { |a, b| a.length<=>b.length }
end

def swap_elements(array)
  swap_elements_from_to(array, 1, 2)
end


def swap_elements_from_to(array, from_index, to_index)
  swapped_array = array
  a = array[to_index]
  b = array[from_index]
  swapped_array[from_index] = a
  swapped_array[to_index] = b
  swapped_array
end

def reverse_array(array)
  reversed = []
  array.each do |item|
    reversed.unshift(item)
  end
  reversed
end

def kesha_maker(array)
  output = []
  array.each do |item|
    item[2] = "$"
    output << item
  end
  output
end

def find_a(array)
  array.select! do |string|
    string.start_with?('a')
  end
end

def sum_array(array)
  # Alias for reduce
  array.inject { |sum, item| sum + item}
end

def add_s(array)
  array.each_with_index.collect do |element, index|
    index != 1 ? element << 's' : element
  end
end
