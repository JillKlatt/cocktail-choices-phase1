## CLI- Shows inputs or data in terminal
## API- Gets the data
## Stores data in objects - DRINKS

# Requirements:
1. Provide a CLI (Links to an external site.)
# We need a CLI

2. Your CLI application (Links to an external site.) must provide access to data from a web page.
# We need an API
https://www.thecocktaildb.com/api.php
https://www.thecocktaildb.com/api/json/v1/1/search.php?s=#{"drink"}

3. The data provided must go at least one level deep. A "level" is where a user can make a choice and then get detailed information about their choice. Some examples are below:
-Movies opening soon - Enter your zip code and receive a list of movies and their details.
-Libraries near you - Enter your zip code and receive a list of libraries and their details.
-Programming meetups near you - Choose from an events list and receive details.
-News reader - List articles and read an article of your choosing.

4. Your CLI application should not be too similar to the Ruby final projects (Music Library CLI, Tic-Tac-Toe with AI, Student Scraper). Also, please refrain from using Kickstarter (Links to an external site.) as that was used for the scraping 'code along'.

5. Use good OO design patterns. You should be creating a collection of objects, not hashes, to store your data. Pro Tip: Avoid scraping data more than once per web page - utilize objects you have already created. It will speed up your program! -->
# Good OO design

## ERI ADVICE:
Find data first:
Base: https://www.thecocktaildb.com/api.php
https://www.thecocktaildb.com/api/json/v1/1/search.php?s=#{drink}
    Drinks that work:
    margarita, whiskey%sour, (search drinks by ingredient)
Drinks by ingredient

Can't decide? Random cocktail API



CURRENT TO DO:

X Finish changing all CLI to OO
X Remove unnecessary bindings
X Bring commented text to the bottom
X Bring input to downcase
X Reconfig API to remove puts
Add exit options
X If response isn't valid, need return message
Double check formatting and indentations
Make sure all inputs are @