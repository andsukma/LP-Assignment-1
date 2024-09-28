*** Settings ***
Library           RequestsLibrary
Library           OperatingSystem
Library           Collections

*** Variables ***
${BASE_URL}       https://reqres.in/api
${response}

*** Keywords ***
Given I set up the reqres API
    Create Session    reqres    ${BASE_URL}

When I send a GET request to retrieve a single user with id ${id}
    ${response}=    GET On Session    reqres    /users/${id}
    Set Suite Variable    ${response}

Then I should receive a ${status_code} response
     Status Should Be    response=${response}    expected_status=${status_code}

And the user's first name should be "${expected_first_name}"
    ${response_json}=    To Json    ${response.content}    
    Should Be Equal As Strings    ${response_json['data']['first_name']}    ${expected_first_name}

When I send a POST request to create a new user with name ${name} and job ${job}
    ${body}=    Create Dictionary    name=${name}    job=${job}
    ${response}=    POST On Session    reqres    /users    json=${body}
    Set Suite Variable    ${response}

And the user should have a valid id and creation timestamp
    ${response_json}=    To Json   ${response.content}
    Should Not Be Empty    ${response_json['id']}
    Should Not Be Empty    ${response_json['createdAt']}
