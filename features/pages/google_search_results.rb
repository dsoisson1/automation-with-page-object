require 'page-object'
class GoogleSearchResults
  include PageObject


  def titles #in this code figure out how to add the title of each result

    @browser.divs(class: 'rc').collect do |div|
      div.h3.a.text

    end

    #use WATIR to get the titles from the browser
  end
end