# 📝 CIS API Swagger Skeleton

This project provides a **Swagger UI skeleton** for the **CIS API**, allowing the team to define and document future endpoints and operations (Topics, Ideas, Votes, etc.) before implementation.

The project follows an **API-First approach**, ensuring that **the API specification serves as the official contract** and as a reference for all future implementation work.

---

## 🛠 Technologies Used

- OpenAPI 3.0
- Swagger UI
- Docker

---

## 📂 Project Structure

```text
cis-api-swagger
│
├── src
│   └── swagger.yaml
├── Dockerfile
└── README.md
```

- `src/swagger.yaml` → Initial OpenAPI 3.0 specification file (empty, ready for endpoint definitions)
- `Dockerfile` → Container with Swagger UI configured to load the `swagger.yaml`
- `README.md` → This instruction guide

---

## ⚙️ Prerequisites

- Docker installed on your machine
- Web browser

---

## 🏗 Build Instructions

From the terminal, inside the project folder:

```bash
docker build -t cis-api-swagger .
```

This command builds the Docker image with Swagger UI configured to load the local `swagger.yaml`.

---

## ▶️ Running Locally

Run the container:

```bash
docker run --name cis-api-swagger -p 8082:80 cis-api-swagger
```

- Port 8082 on your machine maps to port 80 in the container
- Open your browser at: [http://localhost:8082](http://localhost:8082/) to access the Swagger UI

---

## 💡 Notes

- This project is **only a skeleton/template**; no backend logic is implemented yet.
- The initial `swagger.yaml` is empty and ready for future definitions.
- Any changes to the `swagger.yaml` require rebuilding the Docker image to reflect in the container.
- Follows API-First best practices, ensuring **consistency between documentation and future implementations**.