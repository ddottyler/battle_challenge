feature 'filling in names in a form' do
  scenario 'expects players to fill in their names, submit that form and see those names on-screen' do
    visit('/')
    fill_in :name_1, with: "Tom"
    fill_in :name_2, with: "Dan"
    click_button "Create players"
    #visit('/names')
    expect(page).to have_content "Tom vs Dan"
  end
end
