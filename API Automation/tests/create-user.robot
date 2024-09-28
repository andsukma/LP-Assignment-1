*** Settings ***
Resource  ../resource/keywords.robot

*** Test Cases ***
Scenario: Create a New User
    Given I set up the reqres API
    When I send a POST request to create a new user with name "John" and job "Leader"
    Then I should receive a 201 response
    And the user should have a valid id and creation timestamp