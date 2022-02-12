feature 'test the functionality and features of Game' do

  scenario 'reducing player 2 hit points' do
    sign_in_and_play
    find_button('attack').click
    expect(page).to have_content('Player 2 is Jane: 50HP')
  end
  scenario 'change turns' do
    sign_in_and_play
    expect(page).to have_content("Trushna's turn")
    find_button('attack').click
    expect(page).to have_content("Jane's turn")
  end
end
