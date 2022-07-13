Feature: YouTube Search Box Test
	Scenario Outline: Text field can be populated
		Given I am on YouTube homepage
		When I enter "<text>" into the text Box
		Then text field is populated with "<text>"
	Examples:
  |text|
	|Cricket|
	|India|
	|Messi|