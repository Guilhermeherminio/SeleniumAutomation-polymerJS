Given(/^the user go to inbound traveller page$/) do
  visit('https://www.bolttech.co.th/en/inbound-travel-insurance')
end

When(/^the user fills the form in traveller page with (.*) days period$/) do |period_days|
  TravelInsurancePage.travel_period_box_click.click
  TravelInsurancePage.travel_period_box_item_click(period_days.to_i).click
  TravelInsurancePage.start_date_cover_click.click
  TravelInsurancePage.close_calendar_button_click.click
  sleep 2
end

When(/^the user fills the country of departure in traveller page with (.*) selected$/) do |place|
  TravelInsurancePage.country_departure_item_input.click
  TravelInsurancePage.country_departure_item_input.set(place)
  TravelInsurancePage.country_departure_item_click.click
end

When(/^the user fills the country visited in traveller page with (.*) selected$/) do |place|
  TravelInsurancePage.country_visited_item_input.click
  TravelInsurancePage.country_visited_item_input.set(place)
  TravelInsurancePage.country_visited_item_click.click
end

Then(/^the user validates that the (.*) value is matching$/) do |period_days|
  sleep 3
  expect(TravelInsurancePage.label_value.text).to eq period_days
end

And(/^the user clicks in the button yes to travel inside the past 30 days$/) do
  TravelInsurancePage.travelled_last_month_button_yes.click
end
