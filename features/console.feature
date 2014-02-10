Feature: Console

  Scenario: The Middleman console command should open a Pry console.
  Given a fixture app "empty-app"
  When I run `middleman console` interactively
  And I type "puts _pry_.class"
  And I type "exit"
  Then it should pass with:
    """
    Pry
    """
