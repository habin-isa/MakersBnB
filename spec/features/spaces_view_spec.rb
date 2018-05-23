feature 'Spaces' do

  scenario 'Can run app and check page content' do
    visit('/spaces')
    expect(page).to have_content 'Bork BnB'
  end

  scenario 'Shows form to list your Bork' do
    visit ('/spaces')
    expect(page).to have_content 'List your Bork!'
  end

  scenario 'Can submit title and description, shows on page' do
    visit ('/spaces/new')
    fill_in 'title', with: "5* Putney Pug Pit"
    fill_in 'description', with: "A quiet and quaint getaway in South London"
    fill_in 'price', with: 40
    click_button 'List your Bork'
    expect(page).to have_content '5* Putney Pug Pit'
  end

  scenario 'Can click List your Bork! to takes you to spaces/new' do
    visit ('/spaces')
    click_on 'List your Bork!'
    expect(page).to have_current_path('/spaces/new')
  end

end
