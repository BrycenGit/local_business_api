# _Local Business Api_

_Version 1, 10/30/2020_

#### _An API application for local businesses ._

### By: _**Brycen Bartolome**_

## Description

This project connects to a postgreSQL database. It stores information for business name, address, phone, and zipcode. It authenticates api keys to use the api.


## Setup & Installation

- Clone project to desktop <code>\$ git clone https://github.com/BrycenGit/local_business_api.git</code>
- Move to project directory <code>\$ cd local_business_api</code>
- Open project in vscode <code>\$ code .</code>
- In terminal run <code>\$ bundle</code>
- In terminal run <code>\$ rake db:create</code>
- In terminal run <code>\$ rake db:migrate</code>
- In terminal run <code>\$ rake db:test:prepare</code>
- In terminal run <code>\$ rake db:seed</code>
- In terminal run <code>\$ rspec</code> to see all the passing tests.
- In terminal run <code>\$ rails c</code>
- In IRB terminal run <code>\irb(main):001:0> ApiKey.create.access_token</code>. Save the returned token you will need it to access the api.
- In terminal run <code>\$ rails s</code>

## Routes

- I hoped you saved your api key you will need it for all route.
- append <code>?api_key={YOUR_API_KEY_YOU_SAVED}</code> without the brackets to the end or each api call. If there are other parameters in your api call already, seperate them with an <code>&</code> i.e. <code>&?api_key=</code>
- <code>GET /businesses</code> will return all businesses in the API 
- <code>GET /businesses/random</code> will return a random business from the API 
- <code>GET /businesses?name_search={NAME_SEARCH_QUERY}</code> will return a list of businesses that are are similar to your search queary. Remove the brackets.
- <code>POST /businesses?name={NAME}&?address={ADDRESS}&?zipcode={ZIPCODE}&?phone={PHONE}</code> will add a business to the api. dont forget to append the api key like the examples before.
- <code>GET /businesses/{BUSINESS_ID}</code> will show business information for business with matching id.
- <code>PUT /businesses/{BUSINESS_ID}?name={NAME_TO_CHANGE}</code> will change the business with the matching id's name.
- These are the ther endpoints a user can change:
    - <code>?address={ADDRESS_TO_CHANGE}</code>
    - <code>?phone={PHONE_TO_CHANGE}</code>
    - <code>?zipcode={ZIPCODE_TO_CHANGE}</code>
- <code>DELETE /businesses/{BUSINESS_ID}</code> will delete business with the mathcing id.

## Known Bugs

- None yet.

## Technologies Used

- Ruby
- Rails API
- Gems: rspec, dotenv, rails, factory_bot_rails, active_model_serializers


### License

Copyright (c) 2020 **Brycen Bartolome**

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the 'Software'), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.