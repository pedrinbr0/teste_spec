def group_words(input)
  dict = {}

  input.each do |word|
    word_dict = word.chars.tally

    key = word_dict.keys

    key = key.sort

    key = key.join

    if dict.key?(key)
      dict[key] << word
    else
      dict[key] = [word]
    end
  end

  dict.each do |_key, value|
    puts value.join(',')
  end
end

if __FILE__ == $PROGRAM_NAME
  input = ['may', 'student', 'students', 'dog', 'studentssess', 'god', 'cat', 'act', 'tab', 'bat', 'flow', 'wolf', 'lambs', 'amy', 'yam', 'balms', 'looped', 'poodle']
  group_words(input)
end
