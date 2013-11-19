Feature: Opening logs file
  In order to read log files
  As a user
  I want to be able to watch log files
  
Scenario: Opening development log
  Given I open the app file "app/models/user.rb"
  And I turn on projectile-mode
  When I run command "projectile-rails-find-log" selecting "development.log"
  Then I am in file "log/development.log"
  And the buffer is auto reverting