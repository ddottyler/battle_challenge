feature 'reducing hitpoints' do
  scenario 'expect player 1 to attack p2 and reduce p2 hps' do
    sign_in_and_play
    visit('/play')
    attack_and_confirm
    expect(page).to have_content "P2: 50HP"
  end

  scenario 'expect player 2 to attack p1 and reduce p1 hps' do
    sign_in_and_play
    visit('/play')
    2.times { attack_and_confirm }
    expect(page).to have_content "P1: 50HP"
  end

end
