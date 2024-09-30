Feature: Hotel Search Functionality in PHP Travels Application
 
  Scenario Outline: Verify hotel search functionality with various inputs
    Given the user is on the PHP Travels hotels page
    When the user enters "<Location Name>" as the location
      And selects Check-In Date "<CheckIn Date>"
      And selects Check-Out Date "<CheckOut Date>"
      And selects Number of Rooms "<No. of Rooms>"
      And selects Number of Adults "<No. of Adults>"
      And selects Number of Children "<No. of Children>"
      And selects Child Age "<Child Age>"
      And clicks on Nationality
      And selects Nationality "<Nationality>"
      And clicks the search button
    Then the user should see "<Expected Result>" in the search box
 
  Examples:
    | Location Name   | CheckIn Date | CheckOut Date | No. of Rooms | No. of Adults | No. of Children | Child Age | Nationality | Expected Result                                 |
    | Dubai           | 1/10/2024    | 4/10/2024     | 1            | 2             | 1               | 4         | UAE         | Hotel results related to the location provided  |
    | yydsdsvdff      | 29/09/2024   | 1/10/2024     | 1            | 3             | 0               | (null)    | UAE         | Error message in the search box                 |
    | (null)          | 28/09/2024   | 29/09/2024    | (null)       | (null)        | (null)          | (null)    | (null)      | "Please select an item in the list"             |
 
  Scenario: Verify filtering hotels by valid details
    Given the user is on the PHP Travels hotels page
    When the user clicks on Star Rating
      And clicks on Price Range
      And clicks on Price Sort by
    Then the user should see hotel details by valid filters
 
  Scenario: Verify filtering hotels by null and default values
    Given the user is on the PHP Travels hotels page
    When the user clicks on Star Rating
      And clicks on Price Range
      And clicks on Price Sort by
    Then the user should see all hotel details by default values