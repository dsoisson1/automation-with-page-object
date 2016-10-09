require 'page-object'
include PageObject::PageFactory


Then(/^every result title should include the word I searched for$/) do
  on_page(GoogleSearchResults) do |page|
    #call the method titles
    #will return an array of strings
    #loop over the array of strings
    #confirm all strings have the word kittens

    titles = page.titles
 # expect results to be greater than 0
    titles.each do |title|

      expect(title.downcase).to include 'cat'

    end
  end
end

When(/^I search for a common phrase$/) do
  visit_page(GoogleHome) do |page|
    page.search_for 'cat'

  end
end



