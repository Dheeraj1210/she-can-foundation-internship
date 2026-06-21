# 💻 She Can Foundation - Full Stack Tech Internship Application

Thank you for reviewing my application! I have built a complete full-stack web application tailored to the **Full Stack / Web Development Internship Task** requirements. 

To demonstrate my foundational backend engineering skills, I opted to bypass automated frameworks like Spring Boot and instead built a native, low-level architecture using **Java, Jersey RESTful Web Services, and Maven**.

---

## 🛠️ Technology Stack Used

### 🌐 Frontend (Presentation Layer)
* **HTML5 & CSS3:** Semantic markup layout built completely from scratch without external UI frameworks (Bootstrap/Tailwind). Fully responsive for mobile devices.
* **Vanilla JavaScript (ES6+):** Utilizes asynchronous programming (`Async/Await` and the native `Fetch API`) to transmit data securely over the wire via JSON payloads.

### ⚙️ Backend (Application Layer)
* **Java 11:** The core application logic processing engine.
* **Jersey REST Framework (JAX-RS):** Handles HTTP routing, request parsing, and exposes clean REST endpoints.
* **Jackson Provider Engine:** Facilitates automatic serialization and deserialization of JSON objects into native Java POJOs (Plain Old Java Objects).
* **Maven Archetype:** Used for project dependency management, build lifecycles, and directory standardization.

### 🗄️ Database (Storage Layer)
* **In-Memory Data Store Simulation:** For ease of initial local deployment and testing, application entries are caught, validated, and managed dynamically inside a thread-safe `static ArrayList` database simulation. 

---

## 📁 Project Architecture & Layout
```text
src/
└── main/
    ├── java/
    │   └── com/
    │       └── shecan/
    │           ├── model/
    │           │   └── Application.java            <- Java POJO (Data Model)
    │           ├── database/
    │           │   └── ApplicationDatabase.java    <- Mock DB (ArrayList Logic)
    │           └── resource/
    │               ├── ApplicationResource.java    <- REST POST Controller
    │               └── CorsFilter.java             <- Cross-Origin Security Handling
    └── webapp/
        ├── WEB-INF/
        │   └── web.xml                             <- Web Context Mapping Descriptor
        └── index.html                              <- Responsive Frontend UI Form
