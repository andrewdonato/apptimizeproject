*** Settings ***
Documentation  This signs up for a 30 Day Trial at Apptimize
Library  Selenium2Library


*** Variables ***

${BROWSER}  chrome

*** Test Cases ***

Existing User fills out and submits form
    [Documentation]  This is where a User completes the sign up form for a 30 day trial.
    [Tags]  Smoke

    open browser  https://apptimize.com/  ${BROWSER}
    wait until page contains  A/B
#    click link  xpath=//*[@id="nav-main"]/ul[2]/li[1]/a
    click link  css=#nav-main > ul.nav.navbar-nav.navbar-right > li:nth-child(1) > a

    wait until page contains  Start Your 30 Day Trial
    input text  id=fname  Andrew
    input text  id=lname  Donato
    input text  id=email  andrew.donato91@gmail.com
    input text  id=company  Apptimize Candidate
    input text  id=phone  (123) 555-1234
    input text  id=jobtitle  QA Engineer
    input text  id=password  chocolatemoose1

    select radio button  purchased  No
    select checkbox  id=eula
    click button  id=submit

# This is if the email address is already in use
#    wait until page contains element  response
    close browser

