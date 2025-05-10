# Dynamic Truewheel Project

## Overview

This project is a web application that consists of a Django REST API backend and a Flutter web app frontend. The project is structured as follows:

```
├── apps/
│   ├── backend/                  # Django REST API
│   │   ├── my_api/               # Main Django app
│   │   │   ├── __init__.py
│   │   │   ├── admin.py
│   │   │   ├── apps.py
│   │   │   ├── migrations/
│   │   │   ├── models.py
│   │   │   ├── serializers.py
│   │   │   ├── tests.py
│   │   │   ├── urls.py
│   │   │   ├── views.py
│   │   │   └── middleware.py
│   └── frontend/                 # Flutter Web App
│       ├── lib/
│       │   ├── main.dart         # App entry point
│       │   ├── app/              # App configuration
│       │   │   ├── app.dart
│       │   │   ├── router.dart
│       │   │   └── theme.dart
│       ├── pubspec.yaml          # Dependencies
│       └── README.md             # Project documentation
├── .gitignore
├── README.md                     # Main project documentation
├── docker-compose.yml            # Docker configuration
└── docs/                         # Additional documentation
    ├── api.md                    # API documentation
    └── styleguide.md             # UI style guide
```

## Backend

The backend is a Django REST API that handles the server-side logic and data storage. It is located in the `apps/backend` directory.

### Models

Models are defined in `apps/backend/my_api/models.py`. They represent the data structure and relationships.

### Serializers

Serializers are created in `apps/backend/my_api/serializers.py`. They convert model instances to JSON format.

### Views

Views are implemented in `apps/backend/my_api/views.py`. They handle API requests and perform CRUD operations.

### URLs

URL patterns are defined in `apps/backend/my_api/urls.py`. They route requests to the appropriate views.

### Middleware

Middleware is added in `apps/backend/my_api/middleware.py`. It processes requests and responses.

## Frontend

The frontend is a Flutter web app that provides the user interface. It is located in the `apps/frontend` directory.

### App Entry Point

The app entry point is defined in `apps/frontend/lib/main.dart`. It initializes the Flutter app.

### App Configuration

The app is configured in the `apps/frontend/lib/app` directory. This includes settings and routing.

### Routing

Routing is set up in `apps/frontend/lib/app/router.dart`. It defines the routes and navigation.

### Theme

The app theme is defined in `apps/frontend/lib/app/theme.dart`. It includes styles and themes.

### Dependencies

Dependencies are listed in `apps/frontend/pubspec.yaml`. This file includes necessary packages and plugins.

## Documentation

### Main Project Documentation

The main project documentation is provided in this `README.md` file. It gives an overview of the project.

### API Documentation

API documentation is available in `docs/api.md`. It provides details on endpoints and usage.

### UI Style Guide

A UI style guide is created in `docs/styleguide.md`. It defines design principles and guidelines.

## Deployment

### Docker Configuration

Docker configuration is set up in `docker-compose.yml`. It defines services and dependencies for containerized deployment.

### Gitignore

A `.gitignore` file is added to exclude unnecessary files from version control. It includes common patterns for Python and Flutter projects.
