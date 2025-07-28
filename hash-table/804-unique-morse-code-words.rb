# frozen_string_literal: true

def unique_morse_representations(words)
  code = ['.-', '-...', '-.-.', '-..', '.', '..-.', '--.', '....', '..', '.---', '-.-', '.-..', '--', '-.', '---', '.--.', '--.-', '.-.',
          '...', '-', '..-', '...-', '.--', '-..-', '-.--', '--..']

  morse = ('a'..'z').zip(code).to_h
  memo = []

  words.each { |word| memo << word.chars.map { |chr| morse[chr] }.join('') }
  memo.uniq.size
end

words = %w[gin zen gig msg]
puts unique_morse_representations(words)
