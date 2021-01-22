feature 'seeing player hitpoints' do
  scenario 'expects players to be able to see hitpoints' do
    sign_in_and_play
    visit('/play')
    expect(page).to have_content "P2: 60HP"
  end
end
