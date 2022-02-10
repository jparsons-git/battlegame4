
feature 'Testing viewing of opponents hit points' do
    scenario 'Test you can also see Player 2 hitpoints' do
      visit('/')
      fill_in 'player1', with: 'Trushna'
      fill_in 'player2', with: 'Jane'
      click_on 'Submit'
      # expect(page).to have_content 'Player 1 is Trushna'
      expect(page).to have_content 'Jane: 60HP'
    end
  end
