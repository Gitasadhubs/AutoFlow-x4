# AutoFlow Local Setup and Demo Instructions

## One-Command Local Setup

Run the following command in the root directory of the project to set up the complete local environment:

```bash
./setup_local.sh
```

This script will:
- Configure `.env` for local PostgreSQL, Redis, and Laravel app
- Build and start all Docker containers (`docker-compose.dev.yml`)
- Install Laravel dependencies (`composer install`)
- Run database migrations (`php artisan migrate`)
- Open AutoFlow frontend in your default browser at `http://localhost:8000`

---

## Verifying Frontend

- The frontend uses Blade, Livewire, and Alpine.js.
- Verify the dashboard shows projects and deployment status.
- Check the Deployments page for logs and real-time updates.
- Confirm the Settings page allows changing environment variables.
- Visit About, Help, and Contact pages to verify content.
- Ensure the AutoFlow logo and name are displayed consistently.

---

## Stopping Services After Demo

To stop all running services after your demo, run:

```bash
docker-compose -f docker-compose.dev.yml down
```

---

## FYP Demo Checklist

Please refer to the `FYP_DEMO_CHECKLIST.md` file for a detailed step-by-step guide to presenting AutoFlow smoothly.

---

## Troubleshooting

- If you encounter issues with database migrations, try running:

```bash
docker exec coolify php artisan migrate --force
```

- If services fail to start, try stopping all containers and volumes, then rerun the setup script.

---

## Support

For further assistance, please refer to the project documentation or community support channels.
