
feature 'Testing entry and display of players names' do
    scenario 'Can run app and check page content' do
      visit('/')
      expect(page).to have_content 'Enter Player 1:'
      expect(page).to have_content 'Enter Player 2:'
    end
  end