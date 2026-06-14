def caesar_ciper(text, shift)
  text.chars.map do |character|
    if character.ord.between?(65, 90)
      (((character.ord - 65 + shift) % 26) + 65).chr
    elsif character.ord.between?(97, 122)
      (((character.ord - 97 + shift) % 26) + 97).chr
    else
      character
    end
  end.join
end