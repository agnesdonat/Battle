require 'capybara/rspec'

feature 'Testing infrastructure' do
  scenario 'Can run app and check page content' do
    sign_in_and_play
    expect(page).to have_content 'Agnes vs Reena'
  end

  scenario 'Displays Player 2 hitpoints' do
    sign_in_and_play
    expect(page).to have_content 'Reena: 60 hit points'
  end
end
