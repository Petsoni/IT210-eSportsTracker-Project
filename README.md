# ***eSprots Tracker***  

Project that is made for the **`IT210 - Systems IT`** course on **University of Metropolitan**

## <ins> *Description*
- The web page is made that the user can easily track their favourite CS:GO team and everything that is going on on the CS:GO esport scene. 
- User has the insight on every player on each team and all the matches that are on going to played.
- User can make his own team with players.

## <ins>*Structure*
The project is divided into packages:
1.	**`db-connection`** – package that has the *database connection*
2.	**`home-page`** – package with the *main/homepage* page
3.	**`login-register`** – package with the *login/register* form
4.	**`teams`** – package with the *teams* page
5.	**`players`** – package with the *players* page
6.	**`messages`** – package with the *messages* page **(only visible for the admin user)**
7.	**`contact`** – package with the *contact* form 
8.	**`resources`** – package for resources

## <ins>*Insight*
The user logs in/registers and is presented with the homepage where he can navigate through all the different pages that the website provides.

- ### ***TEAMS*** 
    Teams page shows all the current teams that are currently in the database. When a user creates his own team, the same one will be shown on the page and be added in the database.
    <br>
    When the user clicks on a chosen team, he is routed to the *PLAYERS* page where he can se the players for the given team.

- ### ***MATHCES***
    Matches page shows the matches that are going to be played in the set time that is set by the admin. The user can only view the matches. Admin can delete the matches.

- ### ***MESSAGES***
    Messages page is only visible for the admin. Admin sees all the messages the users send for feedback. He also has the option to delete them.

- ###    ***CONTACT***
    Contact page has a form that the user can fill in to send a message. On the page user also sees the Google map location, contact email and phone. 





