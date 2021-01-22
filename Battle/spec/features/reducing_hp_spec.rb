feature 'reducing hitpoints' do
  scenario 'expect player 1 to attack p2 and reduce p2 hps' do
    sign_in_and_play
    visit('/play')
    click_button "Attack"
    expect(page).to have_content "P2: 50HP"
  end
end
