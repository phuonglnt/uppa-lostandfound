🌐 **Languages / Langues:** [🇫🇷 Français](README-fr.md)

# uppa-lostandfound
This is Devops final project

# Lost & Found UPPA
A small application to help UPPA students find their lost items on campus.

A student who loses an item can declare it. A student who finds an item can also declare it.
The administrator checks the declarations and puts the two students concerned in contact.

Project carried out as part of the DevOps module (M1 SIGLIS, UPPA).

-------------------------------------------------

📄 **Specifications:** [User Stories (EN)](user-stories.md) | [User Stories (FR)](user-stories-fr.md)

## 📌 Project Overview

This project is developed as part of the **DevOps (A3)** module of the Master’s Degree in Computer Science (M1 SIGLIS) at the **University of Pau and Adour Region (UPPA)**

**UPPA Lost & Found** is a full-stack web application designed to help UPPA students report, search for, and claim lost or found items across the campus.

---

## 🛠️ Tech Stack

* **Backend:** Nest.js (REST API)
* **Frontend:** Vue.js
* **Database:** MySQL (with migrations & seeds)
* **Containerization:** Docker & Docker Compose
* **CI/CD:** GitLab CI
* **Testing:** Jest (unit/integration), Vitest, Cypress (e2e)
* **Observability:** Prometheus + Grafana

---

## 🏗️ Project Architecture

```text
uppa-lostandfound/
├── frontend/       # Vue.js application
├── backend/        # Nest.js application
├── db/             # MySQL migrations & seeds
├── docker/         # Docker configuration files
├── docker-compose.yml
└── README.md
```

---