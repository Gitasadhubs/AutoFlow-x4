# AutoFlow FYP Demo Checklist

This checklist will guide you through a smooth and interactive demo presentation of AutoFlow.

---

## 1. Open AutoFlow in Browser

- Open your default browser and navigate to: [http://localhost:8000](http://localhost:8000)
- Verify the AutoFlow dashboard loads successfully.

## 2. Dashboard Overview

- Show the dashboard page.
- Explain the project overview: list of projects, deployment statuses.
- Highlight the rebranded AutoFlow logo and name on the page.

## 3. Deployments Page

- Navigate to the Deployments section.
- Demonstrate viewing deployment logs.
- Show real-time updates of deployment status.
- Explain deployment actions available.

## 4. Settings Page

- Open the Settings page.
- Demonstrate changing environment variables.
- Show how settings affect the application.

## 5. About / Help / Contact Pages

- Navigate to the About page and explain the project documentation.
- Visit the Help page to show available resources.
- Check the Contact page for support information.

## 6. Optional: Trigger a Test Deployment

- If GitHub/CI tokens are configured, demonstrate triggering a deployment.
- Show the deployment process in real-time.

---

## Demo Tips

- **Preparation**: Run the setup script beforehand to ensure all services are running.
- **Pacing**: Take your time explaining each feature, don't rush.
- **Interaction**: Ask the audience questions to keep them engaged.
- **Technical Notes**: Be prepared to explain the tech stack (Laravel, PostgreSQL, Redis, Docker).
- **Troubleshooting**: Have the README_LOCAL_SETUP.md ready for any issues.

---

## Services Running

- AutoFlow: http://localhost:8000
- PostgreSQL: localhost:5432
- Redis: localhost:6379
- Soketi (WebSocket): localhost:6001
- Vite (Dev Server): localhost:5173
- Mailpit: localhost:8025
- MinIO: localhost:9000

---

## Stop Services After Demo

Run: `docker-compose down`

This will stop and remove all containers.
