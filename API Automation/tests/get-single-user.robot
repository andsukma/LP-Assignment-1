*** Settings ***
Resource  ../resource/keywords.robot

*** Test Cases ***
Scenario: Get Single User
    Given I set up the reqres API
    When I send a GET request to retrieve a single user with id 2
    Then I should receive a 200 response
    And the user's first name should be "Janet"
