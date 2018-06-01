# NestedRoutesInRails

This is a simple rails application in which I have implemented the concept of nested routes and also created forms in the development process of nested routes.

It is based on the real world example of school :

* Ruby version: 2.5.1

* Root entitiy: principal

* principal has a school and school belongs to a principal

* school has many teachers, teachers belongs to school

In this way resourse teachers is nested in resource school, refer config/routes.rb for more details.
