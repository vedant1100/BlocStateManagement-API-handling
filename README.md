# blocstatemanagement

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## What is bloc state management
Bloc State Management is an efficient way to handle routing and communication in a Model-View-Controller (MVC) model. It separates business logic from user interface (ui). It increases code readability.

## Bloc State Management flow
<img src="https://github.com/user-attachments/assets/f0e2319a-1ba7-4717-9c1a-fe283115b8a7" alt="Bloc State Management" width="500" height="600">

## Working
It contains 3 sections
### 1. Events:
It contain function declarations for occurance of an event.
eg: A user likes a post .i.e. like button is clicked!

### 2. Bloc Logic:
It contains function logic for the event occured.
eg: The like button turns red and user credentials of the user who liked are stored in database.

### 3. States:
Bloc produces a state after the action has been performed. It indicates that the state of the particular object has been changed.
eg: The like button turns red and like count increases by 1.
