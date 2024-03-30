def shift_char(char, shift)
    return char unless char.match?(/[A-Za-z]/)
    base = char.upcase == char ? 'A'.ord : 'a'.ord
    ((char.ord - base + shift) % 26 + base).chr
end

def caesar_cipher(string, shift)
    string.chars.map { |char| shift_char(char, shift)}.join
end