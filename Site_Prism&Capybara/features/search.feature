Feature: Search on Youtube 
	Scenario Outline: Search videos on Youtube for provided searchkeywords.
		Given We are on YouTube search page
		When We enter the search_keyword "<text>"
		Then Play the first video
Examples:
  |text|
	|Cricket|
	|Rocketry|
	|Messi|