feature 'deducts hit points' do
  scenario 'reducing player 2 hit points' do
    sign_in_and_play
    find_button('attack').click
    expect(page).to have_content('Player 2 is Jane: 50HP')
  end
end