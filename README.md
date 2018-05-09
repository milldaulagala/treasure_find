# README

# Treasure Find Marketplace
## https://floating-coast-28442.herokuapp.com/

Treasure Find is for fans of antiques and collectables. It is a two-sided marketplace for antiques and collectables enthusiasts. Treasure Find has an Antiques and collectable Appraisals section. This Appraisal system helps users to find how much the item is actually worth. This website will be the place where antique enthusiastic, like minded people get together. They can offer a price to the listed vintage item. The users have to send a buy request if they are interested to buy antique or collectable items. 




## Contents
- **[Problem](#Problem)**
- **[Solution](#Solution)**
- **[Trello Board](#TrelloBoard)**
- **[User Stories](#UserStories)**
- **[Entity Relationship Diagram](#ERD)**
- **[Models](#Models)**
- **[Controllers](#Controllers)**
- **[Mood Board](#Moodboard)**
- **[Inspiration](#Inspiration)**
- **[Figma Wireframes](#Wireframes)**
- **[Features](#Features)**
- **[Ruby Gems](#RubyGem)**
- **[Challenges](#Challenges)**
- **[Coding](#Coding)**
- **[Optimisations](#Optimisations)**
- **[Final Product](#FinalProduct)**
- **[Presentation Slides](#PresentationSlides)**

## <a id="Problem"></a>Problem

There are many antiques and collecables enthusiasts around the world. Most of the times they own valuable collectable pieces. They love to know the value of the item. Unfortunately there aren't many places to get an appraisal for the item.
On the other hand there are many antiques and collecables enthusiasts who has an excellent knowledge about these items. They are willing to share their knowledge. They are looking for a proper platform to share their knowledge and experience.  


## <a id="Solution"></a>Solution

This two-sided marketplace creates the platform for the antiques and collecables enthusiasts to appraise their antiques and collectable items. This website will be the place where antique enthusiastic, like minded people get together.

On the other hand antique enthusiastic who has knowlege about items will be able to make extra income by providing appraisal services with in this market place.


## <a id="TrelloBoard"></a>Trello Board
[Trello Board - Treasure Find](https://trello.com/b/39nCeL7n/mill-antiques)

![](/docs/images/trello.png)
![](/docs/images/trello2.png)

My trello board is one of the main section of this rails project. It helped me to plan the project with User Stories, Models, Controllers, ERD and Wireframes. It helped me to determine the potential APIs and the gems that I need to build my rails project.

## <a id="UserStories"></a>User Stories
My user stories are composed of 3 target markets (Guests, Owner of an antique or collectable item and Appraiser). Guests are the people who have not signed up for the application. Owners and Appraisers are registered users who can use the appraisal system. It is a two-sided marketplace. an antique item owner can be an appraiser and an appraiser can be a item owner.
  
### Guests
- In order to see what the marketplace is all about, as a guest, I want to search items and view antique item listings without   log in to the system.
- In order to List an item or make an appraisal, as a guest, I want to sign in or sign up for the service securely.
- In order to be an appraiser, as a guest, I want to have a profile with relevant knowledge.

### An antique or colllectable item owner
- In order to easily search an antique item,  as an owner, I want to use the search using keywords.
- In order to list an antique item, as an owner, I want to have a user account. 
- In order to list an item by category, as an item owner, I want to have category field to select.
- In order to have an idea of the antique items that i can list, as an item owner, I want to see previous listings such as       featured, recently added.
- In order to know the full details of an antique item, as an owner, I want information on its show page.

- In order to pay for the Appraisal, as an item owner, I want to make use of a payment feature which supports credit card.
- In order to let the Appraiser know my satisfaction with the service, as an item owner, I want to review and rate them.
- In order to see if the Appraiser provides quality service, as an itm owner, I want to see the Appraiser's customer reviews and ratings from other owners.
- In order to see  previous Appraisals, as an antique item owner, I want an appraisal history.
- In order to communicate with the appraiser, as an antique item owner, I want to message him/her directly.

- In order to report an issue, as an antique item owner, I want a feature so I can message the Treasure Find administrator.
- In order to see the most appraised item, as an antique item owner, I want to see the appraisal count.

### An antique or collectable Appraisers
- In order to make a correct appraisal of an antique item , as an antique item owner, I need specific details about the item.    As an  example  clear photos, detailed description about the condition of the item.
- In order to standout , as an appraiser, I want to have good customer reviews and ratings.
- In order to standout , as an appraiser, I need clear space to write my appraisals and valuations.
- In order to get paid for my appraisals, as an appraiser, I want to be paid by credit card or transfer to my bank account.
- In order to appraise an antique item , as an appraiser, I need to know the item type and category.
- In order to standout , as an appraiser, I want to see other appraisals for the perticular product.
- In order to answer inquiries about my appraisal, as an appraiser, I want owner to message me.
- In order to report an issue, as an appraiser, I want a feature that I can message the Treasure Find administrator.


## <a id="ERD"></a>ERD
The ERD is the most important section of this rails project. It took me some time to design the tables i need for this project. After i figured the tables out the next step was the identify relationships among them. This process helped me to understand the Rails models which will be using in the project. 

![](/docs/images/ERD.png)

## <a id="Models"></a>Models
```

Appraisal

     - content : text
     - value  : decimal
     - user_id: bigint
     - item_id: bigint
     - created_at: datetime
     - updated_at: datetime
    
    
  

Category
    - name : string  
    - description : text 
    - item_id : bigint 
    - created_at : datetime
    - updated_at : datetime 
    
  

Item
    - name : string
    - description : text
    - condition : text
    - manufacture : text
    - manufacture_date : text
    - image_data : text
    - dimension : text
    - weight : decimal
    - user_id : bigint
    - created_at : datetime
    - updated_at : datetime
    
  

Photo
     - image_data : text
     - item_id : bigint
     - created_at : datetime
     - updated_at : datetime
    


Profile

     - first_name : string
     - last_name : string
     - address : text
     - image_data : text
     - introduction : text
     - mobile : text
     - category_id : bigint
     - user_id : bigint
     - created_at : datetime
     - updated_at : datetime
    
  

  User

     - email : string
     - encrypted_password : string
     - reset_password_token : string
     - reset_password_sent_at : datetime
     - remember_created_at : datetime
     - sign_in_count : integer
     - current_sign_in_at : datetime
     - last_sign_in_at : datetime
     - current_sign_in_ip : inet
     - last_sign_in_ip : inet
     - created_at : datetime
     - updated_at : datetime

```

## <a id="Controllers"></a>Controllers
```
Profiles Controller
- show
- new
- edit
- create
- update
- destroy

Items Controller
- index
- List
- show
- new
- edit
- create
- update
- destroy
- appraise

Appraisals Controller

- index
- appraise
- show
- new
- edit
- create
- update
- destroy


Pages Controller

- index
- home
```
## <a id="Moodboard"></a>Mood Board

My mood board is consist of rare antiques and collectables. Antique auctions and markets. The places where like minded people get together. Most of the times i focused on the antiques and appraisers who have knowledge related to the antiques and collectable items.

[Mood Board - Treasure Find](https://www.pinterest.com.au/mdaulagala/antiques-and-collectables/sterling-silver/)

![](/docs/images/moodboard.png)







This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
