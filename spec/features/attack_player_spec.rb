feature 'Testing player 1 attacking player 2' do
    scenario 'atacking player 2 and getting confirmation' do
      sign_in_and_play
      find_button('attack').click
      expect(page).to have_content('Trushna attacked Jane')
    end

    scenario 'reducing player 2 hit points' do

      # let(:player2 Player.new('Jane', 60)
      # let(:max_card_balance) {Oystercard::MAX_CARD_BALANCE}
      # let(:entry_station) {double :station}

      sign_in_and_play
      find_button('attack').click
      # expect(page).to have_content('Trushna attacked Jane')
      # expect(page).to evaluate_script(player2.hp - 10);
      expect(page).to have_content('Player 2 is Jane: 50HP')
    end
  end



  # result = expect(page).to evaluate_script(player2.hp - 10);
