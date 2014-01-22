
Feature: View details of Charges
 As a user
 I want to able to view details of different kind of charges

    Background: 
      Given I have list of charges    
   #@javascript
    Scenario: list all charges
      When I am at charges page
      Then I should see list of "10" successful charges 
      Then I should see list of "5" failed charges 
      Then I should see list of "5" dispute charges 

    #@javascript  
    Scenario: create a new charge
      When I am at charge creation page
      And fill all the required data and submit page
      Then I should see success message on screen







