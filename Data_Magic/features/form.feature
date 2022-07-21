Feature: Test a form
	Scenario Outline: Search videos on Youtube for provided searchkeywords.
		Given We are on Form page
		When We enter the form details for <detail_no>
		Then Press the submit button

    Examples:
    | detail_no |
    | "Detail1" |
    | "Detail2" |