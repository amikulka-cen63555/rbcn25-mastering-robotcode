*** Settings ***
Library  Process
Library  OperatingSystem

Library  my_lib

Resource  my_resource.resource
Resource  subfolder/my_other_resource.resource

*** Test Cases ***
First
    Log  Hello World!
    ${var}  Evaluate  1 + 1
    FOR    ${i}  IN RANGE   1  20
        Log  ${1}  
    END
    Log  %{A_ENV_VAR}

Second
    TRY
        Fail  2
    EXCEPT
        Log  2
    END

Third
    ${dir}  OperatingSystem.List Directory  .
    Log  ${dir}
    Do Something  with=and argument

Skip
    This is not a keyword  # robotcode: ignore
    This is not a keyword  ${adawdaadw}  # robotcode: ignore[KeywordNotFound]
    This is not a keyword  ${adawdaadw}  # robotcode: ignore[KeywordNotFound, VariableNotFound]


*** Keywords ***
Do Something
    [Arguments]    ${with}
    # TODO: implement keyword "Do Something".
    Fail    Not Implemented
    