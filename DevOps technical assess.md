
# Point of work: DevOps technical assessment

Time estimate: 2–3 hours 

We split this test in two parts: 
1. First part: practical exercise 
2. Second part: architecture design proposal

---

## First part: practical exercise

Build a small app that returns “Hello World” and prepare it for basic DevOps.

### Step 1 — app + start script (30–45 min)
- **file**: `app/main.py` (or `app/main.js`, `app/main.go`) 
- **must**:
 1. expose an HTTP endpoint at port 8080 that returns “Hello World” 
 2. add `start.sh` that:
    - checks if port 8080 is free 
    - starts the app (`python app/main.py`, `node app/main.js`, etc.) 
    - redirects stdout and stderr to `logs/app.log` 

> In your README.md explain how to run the app and where to find logs

### Step 2 — docker + docker compose (30–45 min)
- **Dockerfile**: build an image that runs your app on port 8080 
- **docker-compose.yml**:
 - service `web`: your app 
 - service `db`: PostgreSQL or MongoDB 
 - volumes for data persistence 
 - expose port 8080 to the host 

> In your README.md describe how to run `docker-compose up --build` and what happens if you remove containers

### Step 3 — ci/cd with GitHub Actions (30–45 min)
- **`.github/workflows/ci.yml`**:
 1. install dependencies (`pip install -r requirements.txt`, etc.) 
 2. check app responds (`curl localhost:8080` or a simple test) 

> In your README.md detail the workflow steps and how you would add a real production deploy
> You can use a CI/CD tool of your choice


---

## Second part: architecture design proposal

Prepare an idea for a high-availability design based on your app. You do not need to submit files yet. It helps to draw a simple diagram (on your preference) for your presentation:

- a load balancer (ELB, CloudFront, or other) 
- multiple instances (EC2 autoscaling or ECS Fargate) 
- a replicated database (RDS Multi-AZ, DynamoDB, etc.) 
- basic monitoring (CloudWatch, health checks) 

> You will use this diagram to explain key decisions, trade-offs, and next steps

---

## Submission

1. create a Git repo and push your work  
2. document each step in `README.md`
3. share your repo by the end of the week, to be reviewed by Cinarra team

4. TIP: Thinks we love -> see the progress of your work through commits and different branches

We want to see your approach and clarity. Good luck! 🚀

---

## example of expected files structure

- `start.sh` 
- `Dockerfile` 
- `docker-compose.yml` 
- `.github/workflows/ci.yml`
- `app/main.py`

