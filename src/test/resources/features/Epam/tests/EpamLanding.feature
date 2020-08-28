Feature: Get into Epam Landing Page

  Background:
    * configure driver = {type: 'chrome'}
    * driver epamUrl
    * driver maximize()
    * waitUntil("document.readyState == 'complete'")

  @landingPage
  Scenario: Get into Epam Landing Page

    Given waitFor(epamLogo)
