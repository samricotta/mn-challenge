# Mumsnet challenge

This application displays a number of categories with products attached. Each product can have multiple categories and each category can have multiple products. The user can create both a category and product themselves.

There isnt much design implemented but I thought it was important to have a bit, so that it is clearer for the user what to do. I have separated the components such as buttons and forms to the main styling for each page.

The styling can be found in app/assets/stylesheets

## Instructions

I have used a Rails (5.2) app for this challenge so to launch the app you need to run:

```
bundle install
```
```
rails db:create
```
```
rails db:migrate
```
```
rails db:seed
```
then

```
rails s
```

and go to:

```
http://localhost:3000/
```

## Automated tests

The tests are located in the 'spec' folder and are sorted into controller and model tests.

Please run the below for testing:

```
rspec or rake
```

## Personal notes

I found the most difficult aspect of the project the rspec as I havent done that much of it before and so I learnt it specifically for this test. There arent a large amount of tests implemented but if I had more time I would have definitely built more. I had quite a few tech tests to complete this week, I only had a couple of days for this test!

