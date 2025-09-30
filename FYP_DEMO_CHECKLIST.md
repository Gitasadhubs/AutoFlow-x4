# AutoFlow FYP Demo Checklist

## Pre-Demo Preparation
- [ ] Ensure local setup script has been run and all services are running
- [ ] Verify AutoFlow is accessible at http://localhost:8000
- [ ] Confirm rebranded "AutoFlow" logo and name are displayed consistently
- [ ] Test login with default credentials (test@example.com / password)
- [ ] Prepare any optional demo data (e.g., sample projects/deployments if needed)

## Demo Script

### 1. Introduction & Dashboard
- [ ] Open browser to http://localhost:8000
- [ ] Login with test@example.com / password
- [ ] Navigate to Dashboard
- [ ] Explain AutoFlow's purpose: "AutoFlow is an open-source alternative to Heroku/Netlify/Vercel for self-hosting applications"
- [ ] Highlight key features: project management, deployment tracking, real-time logs
- [ ] Show projects overview and current deployment status

### 2. Deployments Section
- [ ] Click on "Deployments" in the navigation
- [ ] Demonstrate deployment logs display
- [ ] Show real-time updates (if any active deployments)
- [ ] Explain deployment actions available (start, stop, redeploy)
- [ ] Mention integration with GitHub/CI for automated deployments

### 3. Settings & Environment Variables
- [ ] Navigate to Settings
- [ ] Show environment variables management
- [ ] Demonstrate changing a variable (e.g., APP_NAME)
- [ ] Explain how settings affect application behavior
- [ ] Show save/reload functionality

### 4. Additional Pages
- [ ] Visit About page - explain project background and open-source nature
- [ ] Check Help page - show documentation links
- [ ] View Contact page - mention community support options

### 5. Optional: Trigger Test Deployment
- [ ] If GitHub/CI tokens are configured, demonstrate triggering a deployment
- [ ] Show real-time log streaming during deployment
- [ ] Explain monitoring and rollback capabilities

## Demo Tips for Smooth Presentation
- Speak clearly and at a moderate pace
- Pause after each major action to explain what's happening
- Use the mouse pointer to highlight important UI elements
- Prepare 2-3 backup explanations for technical questions
- Have the browser window maximized for better visibility
- Test the demo flow at least once before actual presentation
- If something doesn't work, have a graceful fallback explanation

## Post-Demo
- [ ] Stop all services: `docker-compose -f docker-compose.dev.yml down`
- [ ] Thank the audience and open for questions
- [ ] Mention future development plans or contribution opportunities

## Technical Notes
- Backend: Laravel 11 + PostgreSQL + Redis + Soketi
- Frontend: Blade templates + Livewire + Alpine.js + Tailwind CSS
- Infrastructure: Docker containers with Nginx web server
- Real-time features powered by WebSockets and Redis
