# Making a portfolio and a blog app

> I wanted to create a portfolio app and document it along the way. This will show up in the blog.  

Working [demo app]()

## Acknowledgments

* For a full stack app tutorial see [Creating an app with Rails API backend VueJS frontend.](https://medium.com/@sfcooper/creating-an-app-with-rails-api-backend-vuejs-frontend-403d2df61dab) on Medium. 
* For deployment: [Michael Meli Blog](https://michaelmeli.com/deployment/2017/09/11/deploying-rails-and-vue-to-heroku.html)  
* For creating a Rails Blog with images, see [Rails Girls Blog](http://railsgirls.com/files/vienna/tutorial_1.html). Portfolio is also a type of blog.


## Installation

- clone the repo and and navigate to the project directory
- go to the backend directory and run `rails s`
- visit http://localhost:3000/articles to see the json object
- go to the frontend directory and run `npm run dev`
- visit http://ocalhost:8080/#/articles to see the vue app

## Authors

Eliza Khachatryan

## Project Roadmap

#### Features:

* Vue.js Material Component Framework — Vuetify.js.
* Rails API to handle articles, design portfolio items, and code portfolio items.
* Carrierwave for uploading images.
* Landing Page in Vue with a Toolbar routed to respective pages.
* Preliminary pages
* Add a New Blog Post form that posts to the backend.

#### Things I want to accomplish:

* Build and portfolio and blog site.
* Document the process so I can post it on the blog as a tutorial for others to use.
* This is going to be a very long blog, so post the blog in sections and have a table of contents linking to all articles.
* The blog should have a code editor for me to use: a rich editor for text such as Quill.
* Authentication with JWT, to allow me access to my portfolio and allow others to use the blog.
* Both the blog and the portfolio should have a comments section for logged in users and guests.
* Nested comments for discussions, look at Disqus.
* Both the blog and the portfolio should make possible to upload images.
* Both sections should allow for social media posts.
* A nice landing page design. 
* Articles page to have a navbar with 'new post' and search bar from Vuetify.
* Form validations.
* Carrierwave upload an image from vue front to rails api.

