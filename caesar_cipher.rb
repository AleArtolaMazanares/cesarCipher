require 'pry-byebug'

def caesar_cipher(palabra, num)

    if palabra.nil?
        return ""
    end

    alphabet = ("a".."z").to_a

    alphabetUPERCASE = ("A".."Z").to_a
    
    cipher = ""


    palabra.each_char do |index|
        if index =~ /[a-z]/

            old_index = alphabet.find_index(index)
            new_index = ( old_index + num ) % alphabet.count
             cipher += alphabet[new_index]

        elsif index =~ /[A-Z]/
            old_index = alphabetUPERCASE.find_index(index)
            new_index = ( old_index + num ) % alphabetUPERCASE.count
             cipher += alphabetUPERCASE[new_index]

        else
            cipher += index
        end

    end

     p cipher


end
  
 caesar_cipher(nil, 5)

