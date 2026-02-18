#📚 Bookly

Bookly is a Flutter application that allows users to search and explore free books using a public books API.
The app follows clean architecture principles and professional project structure standards.

🚀 Features

🔎 Search for free books

📖 View book details (title, author, image, rating, etc.)

🌐 API integration

⚡ Smooth and responsive UI

🧠 Clean Architecture structure

🔄 State management

❌ Proper error handling

🛠 Tech Stack

Flutter

Dart

Dio (API requests)

Provider / Cubit (Bloc) – State Management

Clean Architecture

MVVM Pattern

Repository Pattern

🏗 Architecture

The project follows Clean Architecture principles:

lib/
│
├── core/
│ ├── errors/
│ ├── utils/
│
├── features/
│ ├── home/
│ │ ├── data/
│ │ ├── domain/
│ │ └── presentation/
│ │
│ └── search/
│ ├── data/
│ ├── domain/
│ └── presentation/
│
└── main.dart

Architecture Layers:

Presentation Layer → UI & State Management

Domain Layer → Business Logic & Entities

Data Layer → API & Repository Implementation

📦 Installation
git clone https://github.com/your-username/bookly.git
cd bookly
flutter pub get
flutter run
📸 Screenshots

(Add your app screenshots here)

📌 API Used

Example:

Google Books API
or

Any Free Books Public API

👨‍💻 Author

Developed by Ali Magdy
Flutter Developer

⭐ Contribution

Contributions are welcome!
Feel free to fork the repository and submit a pull request.
