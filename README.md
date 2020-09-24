# README

onboarding exercise, simulate a very simple ecommorce site

hosted on: https://fast-ocean-02111.herokuapp.com/

supplier show template inspired on: https://dribbble.com/shots/5465599-Order-Management/

# Main files

db/shcema
db/seeds

app/controllers/suppliers_controller
app/controllers/orders_controller

app/views/suppliers/show
app/views/suppliers/_orderdetail

app/javascript/packs/supplier

app/assets/stylesheets/suppliers
app/assets/stylesheets/application

config/routes

db/migrate/20200921155824_change

# Resources:
* ruby guide: https://www.codecademy.com/learn/learn-ruby
* rails guide: https://guides.rubyonrails.org/
* flexbox(css): https://css-tricks.com/snippets/css/a-guide-to-flexbox/ https://www.w3schools.com/css/css3_flexbox.asp
* rspec :https://github.com/rspec/rspec-rails 
https://semaphoreci.com/community/tutorials/how-to-test-rails-models-with-rspec 
https://semaphoreci.com/community/tutorials/getting-started-with-rspec

# cli:
| Command | Desc |
| ------ | ------ |
| rails s | start local server |
| rails c | start console(good to check records) |
| rails db:migrate| runs db migrations, populates db schema|
| rails db:seed| populates db data |
| rails db:drop| delete db |
| rails db:create| creates empty db |
| rails db:reset| drop;create;migrate;seed |
| bin/webpack-dev-server| (useful for js) |
| bundle exec rspec spec/models/| runs respec models |
| heroku login| logins |
| git push heroku master| deploy changes to heroku |

# Tools
browser(perfect pixel,colorzilla)
sublime (color highlight for css, Sass for scss,babel for es6 js)
dbeaver

tools to check:
sourceTress
insomnia
iterm