# DevOps Assignment — Project Files

This folder contains the static site used for the assignment and helper files for building and pushing a Docker image.

What I added/changed

- Polished `index.html`, `about.html`, and `contact.html` to include submission guidance, screenshot placeholders, and contact placeholders.
- Added this `README.md`, a `Dockerfile` that serves the static site via nginx, and a `.dockerignore` file.
- Created `images/` directory for placing screenshots.

How to preview locally (no Docker)

1. Open `index.html` in your browser (double-click or from a local file URL), or
2. Serve with Python HTTP server:

```bash
python -m http.server 8080
# open http://localhost:8080/
```

Docker (build, run, push)

1. Build the Docker image (example using your Docker Hub username `etrama0`):

```bash
docker build -t etrama0/simple-web:1.0 .
```

2. Run locally (map port 80 in container to 8080 on host):

```bash
docker run --rm -d -p 8080:80 --name my-simple-web etrama0/simple-web:1.0
# open http://localhost:8080
```

3. Push to Docker Hub:

```bash
docker login
docker tag etrama0/simple-web:1.0 etrama0/simple-web:1.0
docker push etrama0/simple-web:1.0
```

Submission checklist

- DevOps_Assignment_Report.pdf (screenshots + captions)
- Source files: `index.html`, `about.html`, `contact.html`, `Dockerfile`
- Zip the folder: `devops-assignment_<yourname>.zip` and submit

Replace any remaining placeholders (for example your GitHub repository URL) before zipping. The Docker Hub username in the examples has been set to `etrama0` and the author name should be updated to your preferred display name if different.

---
Generated: small polish for submission. Good luck!
