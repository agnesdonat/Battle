def sign_in_and_play
  visit('/')
  fill_in :player1_name, with: 'Agnes'
  fill_in :player2_name, with: 'Reena'
  click_button 'Submit'
end
