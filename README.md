# DevOps Assignment Report — Harshwardhan Patil

This repository contains the static web pages and files submitted for the DevOps assignment in the course "Software Development Practices".

Contents

- `index.html` — Full DevOps Assignment Report (Version Control & Containerization)
- `about.html` — Short about page pointing to the report
- `contact.html` — Student identification (name and BITS ID)
- `Dockerfile` — Dockerfile to build an image that serves the static site (uses Python http.server)
- `images/` — (optional) place screenshots referenced in the report

Preview locally (no Docker)

1. Open `index.html` in your browser, or
2. Serve with Python's simple HTTP server:

```bash
python -m http.server 8080
# open http://localhost:8080/
```

Docker (build, run, push) — commands from the report

1. Build the Docker image (replace `<dockerhub-username>` with your Docker Hub username):

```bash
docker build -t etrama0/simple-web:1.0 .
```

2. Run locally (maps container port 8080 to host 8080):

```bash
docker run --rm -d -p 8080:8080 --name my-simple-web etrama0/simple-web:1.0
# open http://localhost:8080
```

3. Push to Docker Hub:

```bash
docker login
docker push etrama0/simple-web:1.0
```

Repository and Submission

GitHub repository used in the report:
https://github.com/Etrama0/SGA2-software-development-practices-2023ebcs561