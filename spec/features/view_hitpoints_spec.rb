
feature 'Testing viewing of opponents hit points' do
    scenario 'Test you can also see Player 2 hitpoints' do
      sign_in_and_play
      # expect(page).to have_content 'Player 1 is Trushna'
      expect(page).to have_content 'Jane: 60HP'
    end
  end
