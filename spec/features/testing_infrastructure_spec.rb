require 'capybara/rspec'


feature 'Testing infrastructure' do
  scenario 'Can run app and check page content' do
    visit('/')
    fill_in :player1_name, with: 'Agnes'
    fill_in :player2_name, with: 'Reena'
    click_button 'Submit'
    expect(page).to have_content 'Agnes vs Reena'
  end

  scenario 'Displays Player 2 hitpoints' do
    visit('/')
    fill_in :player1_name, with: 'Agnes'
    fill_in :player2_name, with: 'Reena'
    click_button 'Submit'
    expect(page).to have_content 'Reena: 60 hit points'
  end
end
