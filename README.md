![](https://img.shields.io/badge/Microverse-blueviolet)

# BookRec

> BookRec is a special app to be in touch with people to suggest and advise books that you find useful and meaningful to each other. You can follow the most liked recommendations.
<table>
<tr><td> <img src="./app/assets/images/login_page.PNG" alt="Example" style="width: 100%;"> </td></tr>
<tr><td> <img src="./app/assets/images/opinion.PNG" alt="Example" style="width: 100%;"> </td></tr>
<tr><td> <img src="./app/assets/images/profile.PNG" alt="Example" style="width: 100%;"> </td></tr>
   
</table>

## Business requirements:
1. The user logs in to the app, only by typing the username (a proper authenticated login is not a requirement).
2. The user is presented with the homepage (see the *Homepage* screenshot above) that includes:
    1. Left-side menu (includes only links to pages that are implemented).
    2. *Tweets* tab in the centre (skip *Photos* and *Videos* for this MVP).
    3. Right-side section with *Who to follow (*skip *Trending for* this MVP).
3. The Tweets section includes:
    1. Simple form for creating a tweet.
    2. List of all tweets (sorted by most recent) that display tweet text and author details.
4. The Who to follow section includes:
    1. List of profiles that are not followed by the logged-in user (ordered by most recently added).
5. List of profiles that are not followed by the logged-in user (ordered by most recently added).
    1. Left-side menu (includes only links to pages that are implemented).
    2. Cover picture and Tweets tab in the centre (skip other tabs and Tweet to user form).
    3. Right-side section with Profile detailed info.
6. The Profile detailed info section includes:
    1. User photo.
    2. Button to follow a user.
    3. Stats: total number of tweets, number of followers and number of following users.
    4. List of people who follow this user.
7. List of people who follow this user.

## Built With

- <code><img height="20" src="https://www.ruby-lang.org/images/header-ruby-logo.png"></code> Ruby Language <br>
-  <code><img height="20" src="https://rubyonrails.org/images/rails-logo.svg"></code> Ruby on Rails <br>
- ![Git](https://img.shields.io/badge/-Git-05122A?style=flat&logo=git)&nbsp; Git<br>
- ![GitHub](https://img.shields.io/badge/-GitHub-05122A?style=flat&logo=github)&nbsp; GitHub<br>
- ![Visual Studio Code](https://img.shields.io/badge/-Visual%20Studio%20Code-05122A?style=flat&logo=visual-studio-code&logoColor=007ACC)&nbsp; VScode

## Getting Started

#### Clone this repository on to your local PC

- Click on the `Code` green button
- By the right end of the read-only input containing the repository link click the clipboard icon to copy the link
- In your local PC, open your terminal in the folder you would like to clone the repository into
- Clone the repository with the command: `git clone (copied link)`; like so: `git clone https://github.com/AbdumurodovaZulfizar/Open_Book`
- After the clone, type in the command `cd Open_Book` to access the directory on the terminal
- Then run `bundle update` to update gem file
- And type `bundle install` to load all gems in this folder.
- After run `rails db:migrate` for migration.
- Type `rails s` on the terminal, and type `localhost:3000` on your browser.
- And then you can Sign In.

## Prerequisites
- Ruby: 2.7.0
- Rails: 5.2.3 
- Postgres: >=9.5
- Node
- Yarn
- Git

## To run test
- cd into ror-social-scaffold
- type `rspec`

## Live Demo


## Authors

👩🏻‍💼 **Zulfizar Abdumurodova**

- GitHub: [Abdumurodova Zulfizar](https://github.com/AbdumurodovaZulfizar)
- Twitter: [Abdumurodova Zulfizar](https://twitter.com/Zulfiza70357085)
- LinkedIn: [Abdumurodova Zulfizar](https://www.linkedin.com/in/zulfizar-abdumurodova-a61527206/)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!


## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- [Microverse](https://www.microverse.org/) for international opportunities.
- Special thanks to all code reviewers.
- AppAcademy and FreeCodeCamp for their open source
- Thanks for project design to [Gregoire Vella on Behance](https://www.behance.net/gregoirevella)

## 📝 License

Copyright 2021 Zulfizar Abdumurodova
- [MIT](https://github.com/AbdumurodovaZulfizar/Open_Book/blob/build_app/LICENSE) for this project.
