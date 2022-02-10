def sign_in_and_play
  visit('/')
  fill_in 'player1', with: 'Trushna'
  fill_in 'player2', with: 'Jane'
  click_on 'Submit'
end