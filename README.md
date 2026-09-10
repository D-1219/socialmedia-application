# 📱 Social Media Application

A modern **Social Media Application** developed using **Flutter and Dart** in Visual Studio Code. The application allows users to create accounts, log in, view posts, create posts, interact with other users, and manage their profiles.

## 🚀 Project Overview

This project demonstrates how to build a cross-platform social media application using the **Flutter framework** and **Dart programming language**.

The application provides a simple and user-friendly interface where users can:

* Register and log in
* Create and view posts
* Like and comment on posts
* View user profiles
* Follow other users
* Update profile information
* Navigate between different application screens
* Interact with social media content

The project is mainly designed for learning and demonstrating **Flutter UI development, Dart programming, widgets, navigation, state management, and application architecture**.

---

## 🎯 Objectives

The main objectives of this project are:

1. To understand the fundamentals of Flutter development.
2. To learn Dart programming concepts.
3. To design responsive mobile application interfaces.
4. To implement navigation between multiple screens.
5. To understand Stateful and Stateless widgets.
6. To create reusable Flutter widgets.
7. To implement user interaction such as likes, comments, and posts.
8. To understand basic application state management.
9. To develop a complete social media application prototype.

---

## 🛠️ Technologies Used

| Technology         | Purpose                                |
| ------------------ | -------------------------------------- |
| Flutter            | Cross-platform application development |
| Dart               | Programming language                   |
| Visual Studio Code | Development environment                |
| Android Studio     | Android SDK and emulator               |
| Material Design    | User interface components              |
| Git                | Version control                        |
| GitHub             | Source code repository                 |

---

## ✨ Features

### 👤 User Registration

Users can create a new account by providing details such as:

* Name
* Email
* Password
* Username

### 🔐 User Login

Registered users can log in to the application using their credentials.

### 🏠 Home Feed

The home screen displays posts created by users.

A post can contain:

* User profile
* Username
* Text content
* Image
* Like button
* Comment button
* Share button

### ❤️ Like Posts

Users can interact with posts by clicking the Like button.

The application updates the like count when the user interacts with the post.

### 💬 Comments

Users can add comments to posts and view existing comments.

### ➕ Create Post

Users can create new posts by entering text and optionally adding an image.

### 👤 User Profile

The profile screen displays:

* Profile picture
* Username
* Bio
* Number of followers
* Number of following
* User posts

### 👥 Follow / Unfollow

Users can follow or unfollow other users.

### 🔔 Notifications

The application can display notifications for activities such as:

* New followers
* Likes
* Comments
* Other user interactions

### ⚙️ Settings

Users can manage application settings and profile-related options.

---

## 📂 Project Structure

A typical project structure is:

```text
social_media_app/
│
├── android/
├── ios/
├── web/
├── windows/
│
├── lib/
│   │
│   ├── main.dart
│   │
│   ├── screens/
│   │   ├── splash_screen.dart
│   │   ├── login_screen.dart
│   │   ├── register_screen.dart
│   │   ├── home_screen.dart
│   │   ├── create_post_screen.dart
│   │   ├── profile_screen.dart
│   │   ├── notifications_screen.dart
│   │   └── settings_screen.dart
│   │
│   ├── widgets/
│   │   ├── post_card.dart
│   │   ├── custom_button.dart
│   │   ├── custom_text_field.dart
│   │   └── profile_header.dart
│   │
│   ├── models/
│   │   ├── user_model.dart
│   │   └── post_model.dart
│   │
│   ├── services/
│   │   ├── auth_service.dart
│   │   └── post_service.dart
│   │
│   └── utils/
│       ├── constants.dart
│       └── app_theme.dart
│
├── assets/
│   ├── images/
│   └── icons/
│
├── pubspec.yaml
└── README.md
```

---

## 🖥️ Development Environment

The application is developed using:

* **Visual Studio Code**
* **Flutter SDK**
* **Dart SDK**
* **Android Studio**
* Android Emulator or physical Android device

---

## 📋 Prerequisites

Before running the project, install:

### 1. Flutter SDK

Install Flutter SDK and configure it in the system PATH.

### 2. Visual Studio Code

Install Visual Studio Code and add the following extensions:

* Flutter
* Dart

### 3. Android Studio

Android Studio is required for:

* Android SDK
* Android Emulator
* SDK Platform Tools

Check the Flutter installation using:

```bash
flutter doctor
```

Resolve any issues reported by Flutter Doctor before running the application.

---

## 📥 Installation

### Step 1: Clone the Repository

```bash
git clone https://github.com/your-username/social-media-app.git
```

### Step 2: Open the Project

Open the project folder in Visual Studio Code.

```bash
cd social-media-app
code .
```

### Step 3: Install Dependencies

Run:

```bash
flutter pub get
```

### Step 4: Check Connected Devices

```bash
flutter devices
```

### Step 5: Run the Application

```bash
flutter run
```

You can also select a device from the device selector in Visual Studio Code and press:

```text
F5
```

---

## 🧩 Main Application Screens

The application contains the following screens:

### 1. Splash Screen

Displays the application logo when the application starts.

### 2. Login Screen

Allows existing users to log in.

### 3. Registration Screen

Allows new users to create an account.

### 4. Home Screen

Displays the social media feed.

### 5. Create Post Screen

Allows users to create new posts.

### 6. Notifications Screen

Displays user activity notifications.

### 7. Profile Screen

Displays the user's profile and posts.

### 8. Settings Screen

Allows users to manage application preferences.

---

## 🧱 Flutter Concepts Demonstrated

This project demonstrates several important Flutter concepts.

### StatelessWidget

Used when the UI does not change dynamically.

Example:

```dart
class WelcomeText extends StatelessWidget {
  const WelcomeText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Welcome to Social Media",
    );
  }
}
```

### StatefulWidget

Used when the UI changes based on user interaction.

For example:

* Like button
* Follow button
* Counter
* Form fields

### Widgets

The project uses commonly used Flutter widgets such as:

```text
Scaffold
AppBar
Container
Column
Row
ListView
Card
Text
Image
TextField
ElevatedButton
IconButton
BottomNavigationBar
```

### Navigation

Flutter navigation is used to move between screens.

Example:

```dart
Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => const ProfileScreen(),
  ),
);
```

---

## 🧭 Application Navigation

The basic navigation flow is:

```text
Splash Screen
      ↓
Login / Register
      ↓
Home Screen
      ↓
 ┌───────────────┐
 │               │
Home          Search
 │               │
Create Post   Notifications
 │               │
Profile ←──── Settings
```

---

## 📱 Sample User Flow

A typical user interaction is:

```text
Open Application
       ↓
Splash Screen
       ↓
Login
       ↓
Home Feed
       ↓
View Posts
       ↓
Like / Comment
       ↓
Create New Post
       ↓
View Profile
       ↓
Follow Other Users
```

---

## 📊 Future Enhancements

The following features can be added in future versions:

* Firebase Authentication
* Firebase Cloud Firestore
* Firebase Storage
* Real-time chat
* Image and video upload
* Push notifications
* Stories
* Reels
* Search functionality
* Hashtags
* Dark mode
* User blocking
* Report functionality
* Advanced state management
* REST API integration
* Cloud backend
* AI-powered content recommendations

---

## 🔒 Security Considerations

For a production application:

* Passwords should not be stored directly in the application.
* Authentication should be handled using a secure authentication service.
* User data should be protected using appropriate database security rules.
* API keys and secrets should not be committed to GitHub.
* Sensitive configuration should be stored securely.

---

## 🧪 Testing

The application can be tested using:

* Android Emulator
* Physical Android device
* Flutter unit tests
* Widget tests
* Integration tests

Run Flutter tests using:

```bash
flutter test
```

---

## 🔧 Useful Flutter Commands

Check Flutter installation:

```bash
flutter doctor
```

Create a Flutter project:

```bash
flutter create social_media_app
```

Install dependencies:

```bash
flutter pub get
```

Run the application:

```bash
flutter run
```

Check connected devices:

```bash
flutter devices
```

Clean the project:

```bash
flutter clean
```

Build an Android APK:

```bash
flutter build apk
```

---

## 📸 Application Screenshots

Add screenshots of your application here.

Example:

```text
screenshots/
├── login.png
├── register.png
├── home.png
├── create_post.png
├── profile.png
└── notifications.png
```

You can add them to the README using:

```markdown
![Login Screen](screenshots/login.png)

![Home Screen](screenshots/home.png)

![Profile Screen](screenshots/profile.png)
```

---

## 📚 Learning Outcomes

After completing this project, learners will be able to:

* Understand Flutter architecture.
* Write Dart programs.
* Create responsive mobile interfaces.
* Work with Flutter widgets.
* Use StatefulWidget and StatelessWidget.
* Implement screen navigation.
* Handle user interactions.
* Create reusable widgets.
* Organize Flutter projects.
* Use Git and GitHub for source-code management.
* Build a basic real-world mobile application.

---

## 👩‍💻 Author

**Divyadharshini**

Flutter & Dart Mobile Application Development Project

---

## 📄 License

This project is created for **educational and learning purposes**.

---

## ⭐ Acknowledgement

This project was developed as part of learning and practicing **Mobile Application Development using Flutter and Dart**.

If you find this project useful, consider giving the repository a ⭐ on GitHub.

---

## 🚀 Future Version

```text
Version 1.0
Basic UI and Navigation

Version 2.0
Authentication and Database

Version 3.0
Real-time Chat and Notifications

Version 4.0
Advanced Social Media Features
```
