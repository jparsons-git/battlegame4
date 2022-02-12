feature 'Testing player 1 attacking player 2' do
  scenario 'atacking player 2 and getting confirmation' do
    sign_in_and_play
    find_button('attack').click
    expect(page).to have_content('Trushna attacked Jane')
  end
end 
