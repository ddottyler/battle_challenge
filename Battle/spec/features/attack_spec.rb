feature 'one player attacks the other' do
  scenario 'expect player 1 to attack and receive confirmation of the attack' do
    sign_in_and_play
    visit('/play')
    click_button "Attack"
    expect(page).to have_content "P1 attacked P2"
  end

  scenario 'be attacked by player 2' do 
    sign_in_and_play
    attack_and_confirm
    click_button 'Attack'
    expect(page).to have_content "P2 attacked P1"
  end

end
