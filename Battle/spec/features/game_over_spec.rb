feature 'Game over' do
  scenario 'Player 2 loses' do
    sign_in_and_play
    10.times { attack_and_confirm }
    click_button "Attack"
    expect(page).to have_content 'P2 loses!'
  end 
end