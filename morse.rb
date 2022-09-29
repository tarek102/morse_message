def decode(decode_char)
  alphabets = { '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E', '..-.' => 'F', '--.' => 'G',
                '....' => 'H', '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N',
                '---' => 'O', '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T', '..-' => 'U',
                '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y', '--..' => 'Z' }
  array = []
  words = decode_char.split('   ')
  words.each do |i|
    array.push(i.split.map { |letter| alphabets[letter] }.join)
  end
  array.join(' ')
end

decode('.-. ..- -... .. . ...')
