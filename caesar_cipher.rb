UPPERCASE = ("A".."Z").to_a
LOWERCASE = ("a".."z").to_a

def cipher(text, num)
  a = text.split("")
  c = ""
  a.each do |e|
    if UPPERCASE.include? e
      c += UPPERCASE[(UPPERCASE.index(e) + num) % 26]
    elsif LOWERCASE.include? e
      c += LOWERCASE[(LOWERCASE.index(e) + num) % 26]
    else
      c+= e
    end
  end
  c
end

loop do
  puts "enter text: "
  text = gets.chomp
  num = 0
  puts "enter number between 0-26 : "
  num = gets.chomp.to_i
  puts cipher(text, num)
  puts "\nenter Y to try another: "
  z = gets.chomp.upcase
  break if !(z == "Y")
end



