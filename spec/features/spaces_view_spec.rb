feature 'Spaces' do

  scenario 'Can run app and check page content' do
    visit('/spaces')
    expect(page).to have_content 'Bork BnB'
  end

  scenario 'Shows form to list your Bork' do
    visit ('/spaces')
    expect(page).to have_content 'List your Bork!'
  end

  scenario 'Can click List your Bork! to takes you to spaces/new' do
    visit ('/spaces')
    click_on 'List your Bork!'
    expect(page).to have_current_path('/spaces/new')
  end

  scenario 'Submit listing and only title and description to appear on page' do
    visit ('/spaces/new')
    fill_in 'title', with: "5* Hotel"
    fill_in 'description', with: "A lovely quiet place"
    fill_in 'price', with: 91234
    click_button 'List your Bork'
    expect(page).to have_content "5* Hotel"
    expect(page).to have_content "A lovely quiet place"
    expect(page).not_to have_content 91234
  end

end
