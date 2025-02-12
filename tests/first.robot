*** Settings ***
Library  Browser

Metadata  Browser    ${BROWSER}
Metadata  Headless   ${HEADLESS}
Metadata  App URL    ${APP_URL}

*** Variables ***
${BROWSER}      chromium
${HEADLESS}     No
${APP_URL}      localhost:3000

*** Test Cases ***
First
    New Browser  headless=False
    New Page    localhost:3000
    
    Type Text  input[id="todo-input"]  do something
    Click  button[id="add-todo-button"]

    Take Screenshot
