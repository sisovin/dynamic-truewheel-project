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
