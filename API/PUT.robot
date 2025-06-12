*** Settings ***
Library     RequestsLibrary

*** Variables ***
${BASE_URL}     https://reqres.in/
${Servicename}      api/users/2
${sample_json}      {"name": "morpheus", "job": "carpenter"}
&{response}

*** Test Cases ***
Verify Put request
    Create Session    baseURI    ${BASE_URL}    verify=True
    &{body}=        Create Dictionary   name=srujan     job=developer
    &{headers}=     Create Dictionary   content-type=application/json       x-api-key=reqres-free-v1
    ${response}=    PUT On Session      baseURI     ${Servicename}      json=${body}    headers=${headers}
    Log    ${response.text}
    Log    ${response.status_code}
