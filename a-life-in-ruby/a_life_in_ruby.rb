module Life
  what_i_have = []
  what_i_gave = []

  puts "I had nothing.", ""

  [:money, :love, :mind, :name].shuffle.each do |experience|
    what_i_have << experience

    case experience
    when :money
      puts "I received money."
      what_i_gave << what_i_have.delete(:money)
      puts "I gave money."
    when :love
      puts "I received love."
      love = what_i_have.delete(:love)
      what_i_gave.concat([love] * 3)
      puts "I gave love.", "Love multiplied."
    when :mind
      puts "I gained a mind."
    when :name
      puts "I made a name for myself."
    end

    puts
  end

  puts "I had something.", ""
  what_i_have.clear
  puts "Then it was all gone.", ""

  puts "What remains?"
  puts what_i_gave.select { |gift| gift == :love }.join(", ").capitalize + "."
  puts "", "For how long?", "Nobody knows.", ""
  puts "I have nothing again.", ""
  puts "Only the one who gives is rich.", ""
  puts "I came into this world with nothing."
  puts "And with nothing I shall leave."
end
