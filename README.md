# Flutter Riverpod Skeleton

This project is a robust Flutter skeleton built with a modern, scalable architecture. It uses **Riverpod** for state management and **`go_router`** for declarative navigation, ensuring a clean separation of concerns. The codebase is designed to be easily extended and maintained.

### Dependencies

These are the primary packages that power the application's functionality:

-   **`flutter_riverpod` & `riverpod_annotation`**: A powerful and flexible state management library that provides a reliable way to manage and share application state.
    
-   **`go_router`**: A declarative routing package that centralizes all navigation logic, making screen transitions predictable and easy to manage.
    
-   **`dio` & `pretty_dio_logger`**: A robust HTTP client used for network requests, paired with a logger to easily inspect request and response data.
    
-   **`retrofit`**: A code generator that simplifies API client creation, reducing boilerplate for network calls.
    
-   **`shared_preferences`**: A package for storing simple key-value data on the user's device, commonly used for storing a user's session token.
    
-   **`flutter_dotenv`**: Manages environment variables, keeping sensitive data like API URLs separate from your code.
    
-   **`flutter_form_builder` & `form_builder_validators`**: Simplifies the process of building and validating complex forms.
    
-   **`flutter_svg`**: A library for displaying SVG (Scalable Vector Graphics) images.
    
-   **`intl`**: Provides internationalization and localization support for the app.
    
-   **`permission_handler`**: A utility for requesting and handling platform permissions.
    

### Dev Dependencies

These packages are used during development and do not get included in the final app bundle:

-   **`build_runner`**: A command-line tool that enables code generation, a key part of packages like Riverpod and Retrofit.
    
-   **`flutter_lints`**: A set of recommended static analysis rules to help maintain code quality and consistency.
    
-   **`retrofit_generator`**: The generator that works with `build_runner` to create the API client code for `retrofit`.
    
-   **`riverpod_generator`**: The code generator that simplifies Riverpod setup by generating provider and notifier boilerplate code.
    
-   **`json_serializable`**: A code generator that automatically creates serialization and deserialization methods for your data models.
    
-   **`pubspec_dependency_sorter`**: A simple tool to keep your `pubspec.yaml` file alphabetized and tidy.