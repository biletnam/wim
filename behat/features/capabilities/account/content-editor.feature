@content-editor @security @roles @stability @api
Feature: Content editor role
  Benefit: In order to have permissions manage website
  Role: CONTENT EDITOR
  Goal/desire: Get permissions

  Scenario: Check if content editor has permissions
    Given I am logged in as a "content editor"
    And I am on "admin/people"
    Then I should see "No access (403)"
    When I am on "admin/content/blocks"
    Then I should see "No access (403)"
    When I am on "admin/structure/features"
    Then I should see "No access (403)"
    When I am on "admin/people/permissions"
    Then I should see "No access (403)"
    When I am on "admin/modules"
    Then I should see "No access (403)"
    When I am on "admin/config"
    Then I should see "Redirect users from one URL to another."
