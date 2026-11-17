🌐 **Languages / Langues:** [🇬🇧 English](README.md)

# uppa-lostandfound
This is Devops final project

# Objet Trouvé UPPA

Une petite application pour aider les étudiants de l'UPPA à retrouver leurs objets perdus sur le campus.

Un étudiant qui perd un objet peut le déclarer. Un étudiant qui trouve un objet peut aussi le déclarer. 
L'administrateur vérifie les déclarations et met en relation les deux étudiants concernés.

Projet réalisé dans le cadre du module DevOps (M1 SIGLIS, UPPA).

-------------------------------------------------

📄 **Spécifications:** [User Stories (EN)](user-stories.md) | [User Stories (FR)](user-stories-fr.md)

## 📌 À propos du projet

Ce projet est réalisé dans le cadre du module **DevOps (A3)** du Master Informatique (M1 SIGLIS) à l'**Université de Pau et des Pays de l'Adour (UPPA)**, sous la direction de Johann Bourcier.

**Objet Trouvé UPPA** est une application web permettant aux étudiants de l'UPPA de déclarer, rechercher et récupérer des objets perdus ou trouvés sur le campus.

---

## 🛠️ Stack Technique

* **Backend :** Nest.js (REST API)
* **Frontend :** Vue.js
* **Base de données :** MySQL (avec migrations et seeds)
* **Conteneurisation :** Docker & Docker Compose
* **CI/CD :** GitLab CI
* **Tests :** Jest (unit/integration), Vitest, Cypress (e2e)
* **Observabilité :** Prometheus + Grafana

---

## 🏗️ Architecture du projet

```text
uppa-lostandfound/
├── frontend/       # Application Vue.js
├── backend/        # Application Nest.js
├── db/             # Migrations & Seeds MySQL
├── docker/         # Fichiers de configuration Docker
├── docker-compose.yml
└── README.md
```

---