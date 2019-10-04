# Usp-Sl-Ruby-Blog

### How to generate controllers in ruby

``
rails generate controller Welcome index

``

### Routing File
In the **config/routes.br** we define how to connect incoming requests to controllers and actions.


### Resource
A resource is the term used for a collection of similar objects, such as articles, people, or animals.

Rails provides a resources method which can be used to declare a standard REST resource.

``
Rails.application.routes.draw do

 resources :articles

end

``