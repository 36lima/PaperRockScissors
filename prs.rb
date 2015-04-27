# Paper Rock Scissors Game
CHOICES = {'p' => 'Paper', 'r' => 'Rock', 's' => 'Scissors'}
puts 'Welcome! Let\'s play Paper! Rock! Scissors!!!'

def show_choices(player_choice, computer_choice)
  puts "You chose #{CHOICES[player_choice]} and the computer chose #{CHOICES[computer_choice]}."
end

def get_choices
  begin
   puts 'Please, enter your selection (p|r|s):'
   player_choice = gets.chomp.downcase
  end until CHOICES.keys.include?(player_choice)

  computer_choice = CHOICES.keys.sample
  return player_choice, computer_choice
end

def decide_winner(player_choice, computer_choice)
  if player_choice == computer_choice
    puts "It's a tie!"
  elsif player_choice == 'r' && computer_choice == 's'
    show_choices(player_choice,computer_choice)
    puts 'Rock dulls Scissors! You win!'
  elsif player_choice == 's' && computer_choice == 'p'
    show_choices(player_choice,computer_choice)
    puts 'Scissors cuts Paper! You win!'
  elsif player_choice == 'p' && computer_choice == 'r'
    show_choices(player_choice,computer_choice)
    puts 'Paper covers Rock! You win'
  else
    show_choices(player_choice,computer_choice)
    puts 'Sorry! The computer won :('
  end
end

loop do
  player_choice, computer_choice = get_choices
  decide_winner(player_choice, computer_choice)
  puts 'Do you want to play again? (Y|N)'
  break if gets.chomp.downcase != 'y'
end