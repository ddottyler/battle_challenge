feature 'filling in names in a form' do
  scenario 'expects players to fill in their names, submit that form and see those names on-screen' do
    sign_in_and_play
    expect(page).to have_content "Tom vs Dan"
  end
end
