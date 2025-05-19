def can_construct(ransom_note, magazine)
  magazine_count = Hash.new(0)
  magazine.each_char { |el| magazine_count[el] += 1 }

  ransom_note.each_char do |el|
    return false if magazine_count[el] == 0
    magazine_count[el] -= 1
  end
  true
end

ransom_note = "aa"
magazine = "ab"
puts can_construct(ransom_note, magazine)