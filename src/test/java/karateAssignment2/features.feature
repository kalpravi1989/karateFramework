
Feature: get content from webpage
  
 
  Scenario: get hobbies and print from webpage
    
    Given url  'https://coderbyte.com/api/challenges/json/rest-get-simple'
    And method get
    Then status 200
    And print response
    When def hob = response.hobbies
    Then print "ITEM:", hob[0]+"\n"+"ITEM:",hob[1]+"\n"+"ITEM:",hob[2]
