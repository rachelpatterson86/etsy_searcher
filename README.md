== README

Re-Create An Etsy Page - https://www.etsy.com/search?q=whiskey

> Focus on the sidebar and the main content of items.
> The sidebar should be there but its contents can be whatever you like.
> i.e. You don't have to have the various parameters for the search box.

## Installation
1. Create a new rails project named "etsy_searcher" with `rails new etsy_searcher`.
2. Put the project under version control with git by doing the following:
   * cd into the project
   * run `git init`
   * run `git add .` to stage all the files
   * run `git commit -m 'Initial commit.'`
3. Get the project on github by doing the following:
   * Click the green "New" button from your Github profile's repository tab (e.g. [https://github.com/redline6561?tab=repositories])
   * Fill in *just* the name and click "Create repository"
   * Copy paste the two lines from the "Push an existing repository from the command line" section, run them in the terminal
4. Get an API token by registering as an [Etsy developer](https://www.etsy.com/developers/).

*Note*: You should add the [etsy gem][etsy-gem] to your project's Gemfile and run bundle!
Read the docs on this, you don't need to write your own API wrapper! Just sticking to "Public Mode" API calls should be fine.

[etsy-gem]: https://github.com/kytrinyx/etsy

## Requirements

1. There should be just one route for your app. `get '/etsy_search', to: 'etsy#search` would be acceptable.
2. You should usually make requests to this controller with query params, like `localhost:3000/etsy_search?q=whiskey`.
3. The controller method should use the Etsy gem to get matching listings from Etsy and then render a view that uses that data.
4. The view should mirror the Etsy page layout and styling **as closely as possible**, including the header/footer.
5. Each item should link to its Etsy page.

**NOTES**:
  * Do **NOT** use a CSS Framework such as Twitter Bootstrap.
  * Worry about the *structure* and *layout* first, then the fine **styling**.
  * You are free to use whatever search term you like in testing. `whiskey` just has some nice results.
  * **The Controller side is NOT the important part of this assignment. Get that done first and just focus on the views.**

### BONUS 1

Make the search form actually link back to *our* etsy_search page with a new query param.
This way you don't have to manually construct the URL every time. :)

If you do this your controller method shouldn't try to make an API call if no query param is provided.

### BONUS 2

Try to implement `hover` events for the items as on the Etsy page.

## RAILS BONUS

If you finish the etsy page Saturday night and want to do more Rails hacking rather than the "styling bonuses",
look into deploying the Etsy app to Heroku *OR* grab the betterblog app and ...

1. Add some comments!
   Hmm, blogs aren't very interesting without comments. Let's add comments!
   * rails g resource Comment post:references body:text
   * `rake db:migrate`
   * Add associations
   * Fix routes to make comments under posts. Also, only need create, delete.

## Resources

1. [Tim's Lecture Notes](https://gist.github.com/twhitacre/4eca6690470cd20225e8#file-today-md)
2. [Etsy Gem Documentation][etsy-gem]
3. [Etsy API Documentation](https://www.etsy.com/developers/documentation/reference/listing)
4. [Rails Views Guide](http://guides.rubyonrails.org/action_view_overview.html)
5. [Rails Form Helpers Guide](http://guides.rubyonrails.org/form_helpers.html)
4. [Etsy JSON Response Example](https://api.etsy.com/v2/listings/active?api_key=h9oq2yf3twf4ziejn10b717i&keywords=whiskey&includes=Images,Shop)
5. [Etsy Page Example](https://www.etsy.com/search?q=whiskey)
