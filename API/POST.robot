*** Settings ***
Library     RequestsLibrary

*** Variables ***
${BASE_URL}     https://reqres.in/
${Servicename}      api/users
${sample_json}      {"name": "morpheus", "job": "carpenter"}

*** Test Cases ***
Post request example
        Create Session    baseURI    ${BASE_URL}    verify=True
        &{body}=        Create Dictionary   name=morpheus   job=carpenter
        &{headers}=     Create Dictionary   content-type=application/json       x-api-key=reqres-free-v1
        ${response}=    POST On Session     baseURI     ${Servicename}      json=${body}       headers=${headers}
        Log    ${response}
        Log    ${response.status_code}


