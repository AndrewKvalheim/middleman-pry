Feature: Console

  Scenario: The console is unaffected when the extension is inactive.
  Given a fixture app "inactive"
  When I run `middleman console` interactively
  And I type "puts %{We're using #{ defined?(_pry_) ? 'Pry' : 'IRB' }.}"
  And I type "exit"
  Then it should pass with:
    """
    We're using IRB.
    """

  Scenario: The console is a Pry console.
  Given a fixture app "typical"
  When I run `middleman console` interactively
  And I type "puts %{We're using #{ defined?(_pry_) ? 'Pry' : 'IRB' }.}"
  And I type "exit"
  Then it should pass with:
    """
    We're using Pry.
    """
