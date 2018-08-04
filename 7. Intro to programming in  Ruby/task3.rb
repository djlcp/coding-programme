class Morse

  attr_reader :morse_dict

  def initialize
    @morse_dict = { a: '.-', b: '-...', c: '-.-.', d: '-..', e: '.',
                 f: '..-.', g: '--.', h: '....', i: '..', j: '.---',
                 k: '-.-', l: '.-..', m: '--', n: '-.', o: '---',
                 p: '.--.', q: '--.-', r: '.-.', s: '...', t: '-',
                 u: '..-', v: '...-', w: '.--', x: '-..-', y: '-.--',
                 z: '--..', :' ' => '[sp]' }
    explain
    latin_to_morse
    morse_to_latin
  end

  def explain
    puts "#{'_' * 25}\n\n  Morse Code Dictionary\n#{'_' * 25}\n\n"
    morse_dict.each { |latin, morse| puts "'#{latin}' is #{morse}" }

    puts "\n#{'_' * 25}\n\n  Morse Code Converter\n#{'_' * 25}\n\n"
  end

  def latin_to_morse
    print 'Input a latin phrase to convert to morse code: '
    latin_input = gets.chomp.strip.gsub(/[[:punct:]]/, '').downcase.chars.map(&:to_sym)
    print "\nYour morse code: "
    latin_input.each { |latin| print "#{morse_dict[latin]} " }
  end

  def morse_to_latin
    print "\n\nInput a phrase in morse code to convert to latin text. \nPlease type a space between each whole morse letter and [sp] between each whole morse word: "
    morse_input = gets.chomp.strip.split(' ')
    print "\nYour latin text: "
    morse_input.each { |morse| print morse_dict.key(morse) }
  end

end

Morse.new
