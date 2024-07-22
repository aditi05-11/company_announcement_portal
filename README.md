# Company Announcement Portal

## Project Setup

### Prerequisites

- Ruby 3.2.1
- Bundler
- Rails

### Installation Instructions


2. **Open the folder in terminal:**
   - Navigate to the unzipped project folder using your terminal.

    cd path/to/unzipped-folder

3. **Set the Ruby version:**
   - Ensure you are using Ruby 3.2.1. You can use a version manager like `rbenv` or `rvm` to install and switch to the correct Ruby version.

    rbenv install 3.2.1
    rbenv local 3.2.1
    or
    rvm install 3.2.1
    rvm use 3.2.1

4. **Install dependencies:**
   - Run `bundle install` to install all the required gems.
    bundle install

5. **Set up the database:**
   - Run the database migrations.

   
    rails db:migrate

   - Seed the database with initial data.


    rails db:seed

6. **Start the Rails server:**
   - Run the Rails server.


    rails server or rails s 

7. **Access the application:**
   - Open your browser and navigate to `http://localhost:3000` to view the application.


Feel free to contact me if you encounter any issues or have any questions.