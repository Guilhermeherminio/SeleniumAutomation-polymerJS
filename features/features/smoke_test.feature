@travel_insurance_price_smoke_test
Feature: In-bound traveller Smoke
  Validating the insurance flow to guarantee if the travel period is matching with travel insurance price

  @matching_travel_insurance_price_without_30_days
  Scenario Outline: get each travel period without 30 days prior to the policy effective date and verify if the travel duration, value and zone is matching with success
    Given the user go to inbound traveller page
    When the user fills the form in traveller page with <travel_period> days period
    And the user fills the country of departure in traveller page with <place> selected
    Then the user validates that the <travel_inbound_insurance> value is matching
    Examples:
      | travel_period | place       | travel_inbound_insurance |
      | 30            | Australia   | ฿2,700.00                |
      | 30            | Afghanistan | ฿2,970.00                |
      | 30            | Argentina   | ฿4,320.00                |
      | 60            | Australia   | ฿4,860.00                |
      | 60            | Afghanistan | ฿5,346.00                |
      | 60            | Argentina   | ฿7,776.00                |
      | 90            | Australia   | ฿7,020.00                |
      | 90            | Afghanistan | ฿7,722.00                |
      | 90            | Argentina   | ฿11,232.00               |

  @matching_travel_insurance_price_with_30_days
  Scenario Outline: get each travel period with get each travel period without 30 days prior to the policy effective date and verify if the travel duration, value and zone is matching with success
    Given the user go to inbound traveller page
    When the user fills the form in traveller page with <travel_period> days period
    And the user fills the country of departure in traveller page with <first_place> selected
    Then the user validates that the <travel_inbound_insurance_1> value is matching
    When the user clicks in the button yes to travel inside the past 30 days
    And the user fills the country visited in traveller page with <second_place> selected
    Then the user validates that the <travel_inbound_insurance_2> value is matching
    Examples:
      | travel_period | first_place  | second_place | travel_inbound_insurance_1 | travel_inbound_insurance_2 |
      | 30            | Australia   | Brazil       | ฿2,700.00                  | ฿4,320.00                  |
      | 30            | Afghanistan | Estonia      | ฿2,970.00                  | ฿2,700.00                  |
      | 30            | Argentina   | Angola       | ฿4,320.00                  | ฿2,970.00                  |
      | 60            | Australia   | Brazil       | ฿4,860.00                  | ฿7,776.00                  |
      | 60            | Afghanistan | Estonia      | ฿5,346.00                  | ฿4,860.00                  |
      | 60            | Argentina   | Angola       | ฿7,776.00                  | ฿5,346.00                  |
      | 90            | Australia   | Brazil       | ฿7,020.00                  | ฿11,232.00                 |
      | 90            | Afghanistan | Estonia      | ฿7,722.00                  | ฿7,020.00                  |
      | 90            | Argentina   | Angola       | ฿11,232.00                 | ฿7,722.00                  |