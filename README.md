# Shortest Path App

## 📌 Overview
This is a simple Ruby on Rails application that finds the shortest path between nodes using **Dijkstra's Algorithm**. The app visualizes the graph and allows users to select start and end nodes to calculate the shortest route.

---

## 🚀 Getting Started

### 📦 Prerequisites
Ensure you have the following installed on your system:
- **Ruby** (version 3.4.2, check with `ruby -v`)
- **Rails** (version 8.0.2, check with `rails -v`)
- **PostgreSQL** (version 15, check with `psql --version`)
- **Node.js** & **Yarn** (for asset management)

### 📥 Installation
1. **Clone the repository**:
   ```sh
   git clone https://github.com/Thomas7899/ShortestPath-App.git
   cd ShortestPath-App
   ```
2. **Install dependencies**:
   ```sh
   bundle install
   yarn install  # If you use Yarn for JS dependencies
   ```

---

## 🛠 Configuration
### 📊 Database Setup
1. **Create & migrate the database**:
   ```sh
   rails db:create
   rails db:migrate
   rails db:seed  # Optional: Populate the database with sample data
   ```
2. **Ensure PostgreSQL is running** before starting the app.

### ▶ Running the App
To start the server, run:
```sh
rails server
```
Then open **http://localhost:3000** in your browser.

---

## 🧪 Running Tests
To run the test suite:
```sh
rails test
```

---

## ⚡ Features
- Find the **shortest path** using **Dijkstra’s Algorithm**
- Interactive **graph visualization**
- Simple **UI for node selection**
- Uses **Rails, PostgreSQL, and JavaScript (Vis.js)**

---

## 📤 Deployment
For deployment on **Heroku**, run:
```sh
git push heroku main  # or `master` if using master branch
heroku run rails db:migrate
```

For other deployment options, check the official [Rails Deployment Guide](https://guides.rubyonrails.org/deployment.html).

---

## 📜 License
This project is licensed under the **MIT License**.

---

## 🤝 Contributing
Feel free to open **issues** or submit **pull requests**.

---

## 📞 Contact
For questions, reach out via [GitHub Issues](https://github.com/Thomas7899/ShortestPath-App/issues).

