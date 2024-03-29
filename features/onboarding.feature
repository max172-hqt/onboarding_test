@fixture.clean.screenshot_dir
@fixture.setup.question_pool
Feature: ExcelChat expert onboarding flow
  """
  Precondition
  - Set up mocking pre-exist pool using API requests to Admin Panel
  """
  Background:
    Given I am on Expert Landing page
    When I open login modal
    And I sign up
    And I click send Email verification
    And I verify my email
    And I accept Terms and Conditions
    Then I should see Welcome page
    When I start Onboarding test

  @fixture.setup.browser
  @fixture.setup.email
  Scenario Outline: User Signup and onboarding
    When I "pass" Policy Test
    Then I should see Subject Test page
    When I start Core Excel Test
    And I "<action>" Core Excel Test
    Then I should see "<result>" page

    Examples:
      | action | result   |
      | pass   | Success  |
      | fail   | Failed   |
