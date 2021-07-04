# frozen_string_literal: true
class TravelInsurancePage
  TRAVEL_PERIOD_BOX_CLICK = 'querySelector("#durationDays").shadowRoot.querySelector("#selected").valueOf()'
  TRAVEL_PERIOD_BOX_ITEM_30_DAYS = 'querySelector("#durationDays").shadowRoot.querySelector("#list > li:nth-child(2)")'
  TRAVEL_PERIOD_BOX_ITEM_60_DAYS = 'querySelector("#durationDays").shadowRoot.querySelector("#list > li:nth-child(3)")'
  TRAVEL_PERIOD_BOX_ITEM_90_DAYS = 'querySelector("#durationDays").shadowRoot.querySelector("#list > li:nth-child(4)")'
  TRAVEL_PERIOD_BOX_ITEM_180_DAYS = 'querySelector("#durationDays").shadowRoot.querySelector("#list > li:nth-child(5)")'
  TRAVEL_PERIOD_BOX_ITEM_270_DAYS = 'querySelector("#durationDays").shadowRoot.querySelector("#list > li:nth-child(6)")'
  TRAVEL_PERIOD_BOX_ITEM_365_DAYS = 'querySelector("#durationDays").shadowRoot.querySelector("#list > li:nth-child(7)")'
  START_DATE_COVER_CLICK = 'querySelector("#departureDateInput").valueOf()'
  CLOSE_CALENDAR_BUTTON_CLICK = 'querySelector("#departureDatepicker").shadowRoot.querySelector("#datePicker").shadowRoot.querySelector("#datePicker > paper-button > iron-icon").valueOf()'
  COUNTRY_DEPARTURE_ITEM_CLICK = 'querySelector("#countriesVisited").shadowRoot.querySelector("#list > li").valueOf()'
  COUNTRY_DEPARTURE_ITEM_INPUT = 'querySelector("#countriesVisited").shadowRoot.querySelector("#search").valueOf()'
  LABEL_VALUE = 'querySelector("#card > edi-card-vertical-content").shadowRoot.querySelector("div > div.price-container > h3 > edi-counter").shadowRoot.querySelector("#counter").valueOf()'
  TRAVELLED_LAST_MONTH_BUTTON_YES = 'querySelector("#addCountriesOptions").shadowRoot.querySelector("#button-1")'
  COUNTRY_VISITED_ITEM_CLICK = 'querySelector("#list > li").valueOf()'
  COUNTRY_VISITED_ITEM_INPUT = 'querySelectorAll("#\\31 625393300965")'

  def self.travel_period_box_click
    Utils::PageUtils.find_form_element(TRAVEL_PERIOD_BOX_CLICK)
  end

  def self.travel_period_box_item_click(item)
    case item
    when 30
      Utils::PageUtils.find_form_element(TRAVEL_PERIOD_BOX_ITEM_30_DAYS)
    when 60
      Utils::PageUtils.find_form_element(TRAVEL_PERIOD_BOX_ITEM_60_DAYS)
    when 90
      Utils::PageUtils.find_form_element(TRAVEL_PERIOD_BOX_ITEM_90_DAYS)
    when 180
      Utils::PageUtils.find_form_element(TRAVEL_PERIOD_BOX_ITEM_180_DAYS)
    when 270
      Utils::PageUtils.find_form_element(TRAVEL_PERIOD_BOX_ITEM_270_DAYS)
    when 365
      Utils::PageUtils.find_form_element(TRAVEL_PERIOD_BOX_ITEM_365_DAYS)
    end
  end

  def self.start_date_cover_click
    Utils::PageUtils.find_form_element(START_DATE_COVER_CLICK)
  end

  def self.close_calendar_button_click
    Utils::PageUtils.find_form_element(CLOSE_CALENDAR_BUTTON_CLICK)
  end

  def self.country_departure_click
    Utils::PageUtils.find_form_element(COUNTRY_DEPARTURE_CLICK)
  end

  def self.country_departure_item_click
    Utils::PageUtils.find_form_element(COUNTRY_DEPARTURE_ITEM_CLICK)
  end

  def self.country_departure_item_input
    Utils::PageUtils.find_form_element(COUNTRY_DEPARTURE_ITEM_INPUT)
  end

  def self.travelled_last_month_button_yes
    Utils::PageUtils.find_form_element(TRAVELLED_LAST_MONTH_BUTTON_YES)
  end

  def self.country_visited_item_click
    Utils::PageUtils.find_form_element(COUNTRY_VISITED_ITEM_CLICK)
  end

  def self.country_visited_item_input
    Utils::PageUtils.find_form_element(COUNTRY_VISITED_ITEM_INPUT)
  end

  def self.label_value
    Utils::PageUtils.find_card_element(LABEL_VALUE)
  end
end
