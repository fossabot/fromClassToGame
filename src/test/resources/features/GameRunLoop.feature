Feature: The game is operating normaly by initializing, then looping unti exit is requeted.

  Scenario: The game is started with default values
    Given the Game is instantiated
    Then the Game is running 
    And a window of 320 x 200 is created
    And the title is "test"

  Scenario: The game is started with arguments
    Given the Game is instantiated
    When I prepare the arguments
    And I add argument "width=320"
    And I add argument "height=200"
    And I add argument "title=MyGame"
    Then the Game is running 
    And a window of 320 x 200 is created
    And the title is "MyGame"
    
  Scenario: The game is started with wrong values
    Given the Game is instantiated
    When I prepare the arguments
    And I add argument "arg=unknown"
    Then the Game raises exception

