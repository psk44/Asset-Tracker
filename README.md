## Asset Tracker - Semester Project #4

This project builds an asset management system application using Ruby on Rails. It allows users to track devices, software, and their assignments to employees.

**Project Structure:**

* **app:**
    * **controllers:** Contains controllers for handling user interactions and application logic, including:
        * `ApplicationController` - This controller serves as a base controller for other controllers in your application.
        * `DashboardController` - This controller is responsible for managing the dashboard view is data related to devices, software, and employees.
        * `DevicesController` - Manages device-related functionalities.
        * `DevicesCategoriesController` - Manages device-related functionalities.
        * `DevicesManufacturersController` - Manages device-related functionalities.
        * `EmployeesController` - Manages employee-related functionalities (optional relationship with devices).
        * `SoftwaresController` - Manages software package-related functionalities.
        * `SearchController` - Handles search queries for devices (based on the prompt).
    * **models:** Contains models representing data entities:
        * `Device`: Represents a physical device managed by the application, with attributes like name, category, manufacturer, and (optional) an assigned employee.
        * `Employee` - Represents an employee with attributes like name (optional relationship with devices).
        * `Software` - Represents a software package with attributes like name and license count.
        * `ApplicationRecord` - Serves as the base model for other models in the application, potentially inheriting common attributes or functionalities.
        * `DeviceCategory` - Represents a category of devices, such as "Laptop," "Smartphone," or "Desktop."
        * `DeviceManufacturer` - Represents a manufacturer of devices, such as "Apple," "Dell," or "Lenovo."
        * `Search` - This model is used to hold search parameters, filter devices, and return results.
    * **views:** Contains views for rendering user interfaces, including:
        * `dashboard`: Renders the application's dashboard interface.
        * `device_categories`: Renders views related to managing device categories.
        * `device_manufacturers`: Renders views related to managing device manufacturers.
        * `layouts`: Defines the overall page structure for the application.
        * `search`: Renders views related to the search functionality.
        * `shared`: Contains reusable components used across different parts of the application.
        * `devices`: Views related to displaying, creating, and editing devices.
        * `employees`: Views related to displaying, creating, and editing employees (if applicable).
        * `softwares`: Views related to displaying, creating, and editing software.
    * **assets:** Contains static assets like stylesheets and JavaScript files.
* **config:** Contains configuration files for the application, including:
    * `routes.rb` - Defines routes for mapping URLs to controller actions.
    * `environments/development.rb`, `environments/test.rb`, and `environments/production.rb` - Configure the application for different environments.
* **db:** Contains database-related files, including:
    * `migrate` - Stores database migration files for creating and modifying the database schema.
    * `seeds.rb` - Contains sample data for populating the database (based on the prompt).
* **Gemfile:** Specifies the Ruby gems used in the project.
* **README.md:** This file (you are reading it now!).

**Navigation:**

* **Main functionalities:**
    * Manage devices: Add, view, edit, and delete devices.
    * Manage employees (optional): Add, view, edit, and delete employees.
    * Manage software packages: Add, view, edit, and delete software packages.
    * Assign devices and software to employees (optional).
* **(Optional) Search functionality:** Search for devices by name using the search form.

**Getting Started:**

1. **Prerequisites:**
    * Ensure you have Ruby and Rails installed on your system.
2. **Clone the repository:**
    ```
    git clone https://github.com/psk44/asset-tracker.git
    ```
3. **Navigate to the project directory:**
    ```
    cd asset-tracker
    ```
4. **Install dependencies:**
    ```
    bundle install
    ```
5. **Set up the database:**
    * Create a database (e.g., `asset_tracker_dev`).
    * Run the database migrations:
        ```
        rails db:migrate
        ```
6. **Seed the database (optional):**
    * Run the seed file to populate the database with sample data:
        ```
        rails db:seed
        ```
7. **Start the development server:**
    ```
    rails server
    ```
8. **Open http://localhost:3000 in your web browser to access the application.**

**Additional Notes:**

* This README provides a general overview of the project structure and navigation.
* Refer to the specific controller, model, and view files for detailed information on their functionalities.
