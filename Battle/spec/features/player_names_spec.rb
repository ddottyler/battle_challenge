feature 'filling in names in a form' do
  scenario 'expects players to fill in their names, submit that form and see those names on-screen' do
    sign_in_and_play
    expect(page).to have_content "P1 vs P2"
  end
end
