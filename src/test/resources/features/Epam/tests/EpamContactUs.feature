Feature: Fill contact form

  Scenario Outline: Fill contact form with different data
#   Calling the Landing feature for get the main page
    * call read('EpamLanding.feature@landingPage')

    Given waitFor(epamContact).click()
    And scroll(mailSubjects)
    And select(mailSubjects, <MailSubject>)
    Then input(userFirstName, <FirstName>,100)
    And input(userLastName, <LastName>,100)
    And input(userEmail, <Email>,100)
    And input(userPhone, <Phone>,100)
    And scroll(hearAboutEpam)
    And select(hearAboutEpam, <HearAboutEpam>)
    Then click(gdprCheckbox)

# I put the data here for show the Outline examples, in the first row, the data is read from the example,and in
#    the second from the data.yml file
    Examples:
      | MailSubject        | FirstName      | LastName           | Email                  | Phone           | HearAboutEpam |
      | "Careers"          | "Alberto"      | "Hernandez"        | "Javierh867@gmail.com" | "625399423"     | "Partner"     |
      | "Website Feedback" | data.userName1 | data.userLastName1 | data.userEmail1        | data.userPhone1 | "Search"      |