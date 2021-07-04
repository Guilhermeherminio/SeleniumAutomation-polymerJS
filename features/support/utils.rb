# frozen_string_literal: true

include RSpec::Matchers
include Capybara::DSL

module Utils
  # utils to help extra functionalities
  class PageUtils
    def self.find_form_element(element)
      shadow_host = page.find('edi-travel-inbound-form')
      evaluate_script("arguments[0].shadowRoot.#{element}", shadow_host)
    end

    def self.find_card_element(element)
      shadow_host = page.find('edi-card-vertical')
      evaluate_script("arguments[0].shadowRoot.#{element}", shadow_host)
    end
  end
end

World(Utils)
