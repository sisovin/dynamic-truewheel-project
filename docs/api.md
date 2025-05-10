# API Documentation

## Overview

This document provides details on the API endpoints and their usage for the Dynamic Truewheel Project. The API is built using Django REST framework and follows RESTful principles.

## Base URL

The base URL for the API is:

```
http://localhost:8000/api/
```

## Endpoints

### Example Model

#### List Example Models

- **URL:** `/example-models/`
- **Method:** `GET`
- **Description:** Retrieve a list of all example models.
- **Response:**
  - `200 OK`: Returns a list of example models.

#### Create Example Model

- **URL:** `/example-models/`
- **Method:** `POST`
- **Description:** Create a new example model.
- **Request Body:**
  - `name` (string): The name of the example model.
  - `description` (string): The description of the example model.
- **Response:**
  - `201 Created`: Returns the created example model.
  - `400 Bad Request`: Returns validation errors.

#### Retrieve Example Model

- **URL:** `/example-models/<int:pk>/`
- **Method:** `GET`
- **Description:** Retrieve a specific example model by its ID.
- **Response:**
  - `200 OK`: Returns the example model.
  - `404 Not Found`: Example model not found.

#### Update Example Model

- **URL:** `/example-models/<int:pk>/`
- **Method:** `PUT`
- **Description:** Update a specific example model by its ID.
- **Request Body:**
  - `name` (string): The name of the example model.
  - `description` (string): The description of the example model.
- **Response:**
  - `200 OK`: Returns the updated example model.
  - `400 Bad Request`: Returns validation errors.
  - `404 Not Found`: Example model not found.

#### Delete Example Model

- **URL:** `/example-models/<int:pk>/`
- **Method:** `DELETE`
- **Description:** Delete a specific example model by its ID.
- **Response:**
  - `204 No Content`: Example model deleted successfully.
  - `404 Not Found`: Example model not found.

### Vehicle

#### List Vehicles

- **URL:** `/vehicles/`
- **Method:** `GET`
- **Description:** Retrieve a list of all vehicles.
- **Response:**
  - `200 OK`: Returns a list of vehicles.

#### Create Vehicle

- **URL:** `/vehicles/`
- **Method:** `POST`
- **Description:** Create a new vehicle.
- **Request Body:**
  - `make` (string): The make of the vehicle.
  - `model` (string): The model of the vehicle.
  - `year` (integer): The year of the vehicle.
  - `price` (decimal): The price of the vehicle.
  - `description` (string): The description of the vehicle.
  - `dealer` (integer): The ID of the dealer associated with the vehicle.
- **Response:**
  - `201 Created`: Returns the created vehicle.
  - `400 Bad Request`: Returns validation errors.

#### Retrieve Vehicle

- **URL:** `/vehicles/<int:pk>/`
- **Method:** `GET`
- **Description:** Retrieve a specific vehicle by its ID.
- **Response:**
  - `200 OK`: Returns the vehicle.
  - `404 Not Found`: Vehicle not found.

#### Update Vehicle

- **URL:** `/vehicles/<int:pk>/`
- **Method:** `PUT`
- **Description:** Update a specific vehicle by its ID.
- **Request Body:**
  - `make` (string): The make of the vehicle.
  - `model` (string): The model of the vehicle.
  - `year` (integer): The year of the vehicle.
  - `price` (decimal): The price of the vehicle.
  - `description` (string): The description of the vehicle.
  - `dealer` (integer): The ID of the dealer associated with the vehicle.
- **Response:**
  - `200 OK`: Returns the updated vehicle.
  - `400 Bad Request`: Returns validation errors.
  - `404 Not Found`: Vehicle not found.

#### Delete Vehicle

- **URL:** `/vehicles/<int:pk>/`
- **Method:** `DELETE`
- **Description:** Delete a specific vehicle by its ID.
- **Response:**
  - `204 No Content`: Vehicle deleted successfully.
  - `404 Not Found`: Vehicle not found.

### User

#### List Users

- **URL:** `/users/`
- **Method:** `GET`
- **Description:** Retrieve a list of all users.
- **Response:**
  - `200 OK`: Returns a list of users.

#### Create User

- **URL:** `/users/`
- **Method:** `POST`
- **Description:** Create a new user.
- **Request Body:**
  - `email` (string): The email of the user.
  - `username` (string): The username of the user.
  - `password` (string): The password of the user.
  - `first_name` (string): The first name of the user.
  - `last_name` (string): The last name of the user.
- **Response:**
  - `201 Created`: Returns the created user.
  - `400 Bad Request`: Returns validation errors.

#### Retrieve User

- **URL:** `/users/<int:pk>/`
- **Method:** `GET`
- **Description:** Retrieve a specific user by their ID.
- **Response:**
  - `200 OK`: Returns the user.
  - `404 Not Found`: User not found.

#### Update User

- **URL:** `/users/<int:pk>/`
- **Method:** `PUT`
- **Description:** Update a specific user by their ID.
- **Request Body:**
  - `email` (string): The email of the user.
  - `username` (string): The username of the user.
  - `password` (string): The password of the user.
  - `first_name` (string): The first name of the user.
  - `last_name` (string): The last name of the user.
- **Response:**
  - `200 OK`: Returns the updated user.
  - `400 Bad Request`: Returns validation errors.
  - `404 Not Found`: User not found.

#### Delete User

- **URL:** `/users/<int:pk>/`
- **Method:** `DELETE`
- **Description:** Delete a specific user by their ID.
- **Response:**
  - `204 No Content`: User deleted successfully.
  - `404 Not Found`: User not found.

### Dealer

#### List Dealers

- **URL:** `/dealers/`
- **Method:** `GET`
- **Description:** Retrieve a list of all dealers.
- **Response:**
  - `200 OK`: Returns a list of dealers.

#### Create Dealer

- **URL:** `/dealers/`
- **Method:** `POST`
- **Description:** Create a new dealer.
- **Request Body:**
  - `name` (string): The name of the dealer.
  - `address` (string): The address of the dealer.
  - `phone_number` (string): The phone number of the dealer.
  - `email` (string): The email of the dealer.
- **Response:**
  - `201 Created`: Returns the created dealer.
  - `400 Bad Request`: Returns validation errors.

#### Retrieve Dealer

- **URL:** `/dealers/<int:pk>/`
- **Method:** `GET`
- **Description:** Retrieve a specific dealer by their ID.
- **Response:**
  - `200 OK`: Returns the dealer.
  - `404 Not Found`: Dealer not found.

#### Update Dealer

- **URL:** `/dealers/<int:pk>/`
- **Method:** `PUT`
- **Description:** Update a specific dealer by their ID.
- **Request Body:**
  - `name` (string): The name of the dealer.
  - `address` (string): The address of the dealer.
  - `phone_number` (string): The phone number of the dealer.
  - `email` (string): The email of the dealer.
- **Response:**
  - `200 OK`: Returns the updated dealer.
  - `400 Bad Request`: Returns validation errors.
  - `404 Not Found`: Dealer not found.

#### Delete Dealer

- **URL:** `/dealers/<int:pk>/`
- **Method:** `DELETE`
- **Description:** Delete a specific dealer by their ID.
- **Response:**
  - `204 No Content`: Dealer deleted successfully.
  - `404 Not Found`: Dealer not found.

### Testimonial

#### List Testimonials

- **URL:** `/testimonials/`
- **Method:** `GET`
- **Description:** Retrieve a list of all testimonials.
- **Response:**
  - `200 OK`: Returns a list of testimonials.

#### Create Testimonial

- **URL:** `/testimonials/`
- **Method:** `POST`
- **Description:** Create a new testimonial.
- **Request Body:**
  - `user` (integer): The ID of the user associated with the testimonial.
  - `vehicle` (integer): The ID of the vehicle associated with the testimonial.
  - `content` (string): The content of the testimonial.
  - `rating` (integer): The rating of the testimonial.
- **Response:**
  - `201 Created`: Returns the created testimonial.
  - `400 Bad Request`: Returns validation errors.

#### Retrieve Testimonial

- **URL:** `/testimonials/<int:pk>/`
- **Method:** `GET`
- **Description:** Retrieve a specific testimonial by its ID.
- **Response:**
  - `200 OK`: Returns the testimonial.
  - `404 Not Found`: Testimonial not found.

#### Update Testimonial

- **URL:** `/testimonials/<int:pk>/`
- **Method:** `PUT`
- **Description:** Update a specific testimonial by its ID.
- **Request Body:**
  - `user` (integer): The ID of the user associated with the testimonial.
  - `vehicle` (integer): The ID of the vehicle associated with the testimonial.
  - `content` (string): The content of the testimonial.
  - `rating` (integer): The rating of the testimonial.
- **Response:**
  - `200 OK`: Returns the updated testimonial.
  - `400 Bad Request`: Returns validation errors.
  - `404 Not Found`: Testimonial not found.

#### Delete Testimonial

- **URL:** `/testimonials/<int:pk>/`
- **Method:** `DELETE`
- **Description:** Delete a specific testimonial by its ID.
- **Response:**
  - `204 No Content`: Testimonial deleted successfully.
  - `404 Not Found`: Testimonial not found.

### Authentication

#### Login

- **URL:** `/auth/login/`
- **Method:** `POST`
- **Description:** Authenticate a user and return a token.
- **Request Body:**
  - `email` (string): The email of the user.
  - `password` (string): The password of the user.
- **Response:**
  - `200 OK`: Returns the authentication token.
  - `400 Bad Request`: Returns validation errors.
  - `401 Unauthorized`: Authentication failed.

#### Logout

- **URL:** `/auth/logout/`
- **Method:** `POST`
- **Description:** Logout a user and invalidate the token.
- **Response:**
  - `200 OK`: Logout successful.
  - `401 Unauthorized`: Authentication required.

### Search

#### Search Vehicles

- **URL:** `/search/`
- **Method:** `GET`
- **Description:** Search for vehicles based on query parameters.
- **Query Parameters:**
  - `q` (string): The search query.
- **Response:**
  - `200 OK`: Returns a list of vehicles matching the search query.

## Authentication

The API uses token-based authentication. Include the token in the `Authorization` header of your requests:

```
Authorization: Token <your_token>
```

## Error Handling

The API returns standard HTTP status codes to indicate the success or failure of a request. Common status codes include:

- `200 OK`: The request was successful.
- `201 Created`: The resource was created successfully.
- `400 Bad Request`: The request was invalid or cannot be processed.
- `401 Unauthorized`: Authentication is required or failed.
- `403 Forbidden`: The request is not allowed.
- `404 Not Found`: The requested resource was not found.
- `500 Internal Server Error`: An error occurred on the server.

## Pagination

List endpoints support pagination. Use the following query parameters to control pagination:

- `page`: The page number to retrieve.
- `page_size`: The number of items per page.

Example:

```
GET /example-models/?page=2&page_size=10
```

## Filtering

List endpoints support filtering. Use query parameters to filter the results. The available filters depend on the endpoint.

Example:

```
GET /example-models/?name=example
```

## Sorting

List endpoints support sorting. Use the `ordering` query parameter to specify the sorting order.

Example:

```
GET /example-models/?ordering=name
```

## Rate Limiting

The API enforces rate limiting to prevent abuse. The rate limits are defined per user and per IP address. If you exceed the rate limit, you will receive a `429 Too Many Requests` response.

## Versioning

The API supports versioning. The current version is `v1`. Include the version in the URL:

```
http://localhost:8000/api/v1/example-models/
```

## Contact

For any questions or issues, please contact the API support team at [support@example.com](mailto:support@example.com).
