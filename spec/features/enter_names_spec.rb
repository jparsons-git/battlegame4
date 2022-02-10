
feature 'Testing entry and display of players names' do
    scenario 'Test basic content when loading screen' do
      visit('/')
      expect(page).to have_content 'Enter Player 1:'
      expect(page).to have_content 'Enter Player 2:'
    end

    scenario 'Test basic content when loading screen' do
      sign_in_and_play
      expect(page).to have_content 'Player 1 is Trushna'
      expect(page).to have_content 'Jane'
    end
  end
