#Author: Hamza MARZOUK
Feature: Cocktail Ordering
  
  As Romeo, I want to offer a drink to Juliette so that we can discuss together (and maybe more).

  #Scenario: Creating an empty order
  #Given Romeo who wants to buy a drink
  #When an order is declared for Juliette
  #Then there is 0 cocktails in the order
  #Scenario: Sending a message with an order
  #Given Romeo who wants to buy a drink
  #When an order is declared for Juliette
  #And a message saying "Wanna chat?" is added
  #Then the ticket must say "From Romeo to Juliette: Wanna chat?"
  #
  #Scenario Outline: Creating an empty order
  #Given <from> who wants to buy a drink
  #When an order is declared for <to>
  #Then there is <nbCocktails> cocktails in the order
  #
  #Examples:
  #| from  | to       | nbCocktails |
  #| Romeo | Juliette |           0 |
  #| Tom   | Jerry    |           0 |
  #
  #
  #Scenario Outline: Sending a message with an order
  #Given <from> who wants to buy a drink
  #When an order is declared for <to>
  #And a message saying "<message>" is added
  #Then the ticket must say "<expected>"
  #
  #Examples:
  #| from  | to       | message     | expected                            |
  #| Romeo | Juliette | Wanna chat? | From Romeo to Juliette: Wanna chat? |
  #| Tom   | Jerry    | Hei!        | From Tom to Jerry: Hei!             |
  
  Background:
    Given Romeo who wants to buy a drink 
  
  Scenario: Creating an empty order
  
    When an order is declared for Juliette
    Then there is 0 cocktails in the order

  Scenario Outline: Sending a message with an order
  
    When an order is declared for <to>
    And a message saying "<message>" is added
    Then the ticket must say "<expected>"

    Examples: 
      | to       | message     | expected                            |
      | Juliette | Wanna chat? | From Romeo to Juliette: Wanna chat? |
      | Jerry    | Hei!        | From Romeo to Jerry: Hei!           |
