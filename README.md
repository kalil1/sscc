# README# SSCC 


## Technologies & RubyGems
- Ruby
- MongoDB
- Faker
- Rspec
- FactoryBot Rails
- Active Model Serializers

## Steps
### Step 1: Install MongoDB
1. Install and setup [mongosh(linux)](https://www.cherryservers.com/blog/how-to-install-and-start-using-mongodb-on-ubuntu-20-04)
    1. If you use macOS/Windows [mongosh](https://www.mongodb.com/docs/mongodb-shell/install/#install-mongosh)
    <!-- 2. Which is numbered -->
    
2. Use the MongoDB Shell and connect to MongoDB 
```sh
mongosh
```
3. Create the database
```
use sscc_development 
```
### Step 2: Start the api
1. In a separate terminal or command prompt clone the repository to your local machine using Git:
```sh
git clone https://github.com/kalil1/sscc.git
```
2. Navigate to the application directory:
```sh
cd sscc
```
3. Install the required gems:
```sh
bundle 
# or
bundle install
```
4. Crails server
```sh
rails server
#or
rails s
```
5. Visit http://localhost:3000 in your browser to see the application running.

## Data
* We'll be using a rake task to load data from a .json file
```sh
rake product:import
```

## Testing
* We'll be using a rspec to run our test
```sh
# this will run all test
rspec 
# you can also specify a test file
rspec spec/models/product_spec.rb 
```

# Start Frontend
1. In a separate terminal or command prompt clone the repository to your local machine using Git:
```sh
git clone https://github.com/kalil1/sscc_frontend.git
```
2. Navigate to the application directory in your browser:
```sh
cd sscc_frontend

pwd # Copy and paste output into url bar

```
