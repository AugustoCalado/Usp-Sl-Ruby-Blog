# Usp-Sl-Ruby-Blog

##Sumary
- [How to generate controllers in ruby]()
- [Routing File]()

### Controller

A controller is simply a class that is defined to inherit from ApplicationController. It's inside this class that you'll define methods that will become the actions for this controller.

#### How to generate controllers in ruby

```
rails generate controller Welcome index

```

### Routing File
In the **config/routes.br** we define how to connect incoming requests to controllers and actions.


### Resource
A resource is the term used for a collection of similar objects, such as articles, people, or animals.

Rails provides a resources method which can be used to declare a standard REST resource.

```

Rails.application.routes.draw do

 resources :articles

end

```

### Acessing URL Params

```
 Let's consider an example URL: http://www.example.com/?username=dhh&email=dhh@email.com. In this URL, params[:username] would equal "dhh" and params[:email] would equal "dhh@email.com".
```

### Creating Models 
Rails generate model created a database migration file inside the db/migrate directory.

``rails generate model <name> title:string text:text``

``rails generate model Article title:string text:text``

The above command creates a model with a title attribute of type string, and a text attribute of type text.
Those attributes are automatically added to the Article table in the database and mapped to the Article model.


#### File Create in Migrate file
```
class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :text
 
      t.timestamps
    end
  end
end
```

> Active Record is smart enough to automatically map column names to model attributes.

### Run Migration

Rails will execute this migration command and tell you it created the Articles table.

``rails db:migrate``


### Basic Authentication

Use the Rails **http_basic_authenticate_with** method, which allows access to the requested action if that method allows it.

```ruby
http_basic_authenticate_with name: "dhh", password: "secret", except: [:index, :show]
# The above code tells ruby to just allow user autheticated except for index and show

 http_basic_authenticate_with name: "dhh", password: "secret", only: :destroy
# allow only authenticated users to perform delete action, 

```
