# Solar Crowns Website

A professional web development service website built with HTML5, CSS3, and vanilla JavaScript. Features a stunning gold and burgundy color scheme with a custom SVG logo.

## Project Overview

Solar Crowns is a web development service targeting small businesses with flexible pricing packages. This website showcases the services, pricing, company information, and provides contact options.

## Features

- **Responsive Design** - Works perfectly on all devices (mobile, tablet, desktop)
- **Custom SVG Logo** - Animated sun and crown logo created entirely with code
- **Modern UI/UX** - Clean, professional design with smooth animations
- **3 Pages:**
  - Services/Home (index.html) - Showcases services and pricing packages
  - About (about.html) - Company information and development process
  - Contact (contact.html) - Email contact and inquiry form
- **Color Scheme:** Gold (#D4AF37) and Burgundy (#8B1538) with black and white accents
- **SEO Optimized** - Semantic HTML5 markup
- **Fast Loading** - Lightweight, no external dependencies

## Local Preview (Multi-Browser Support)

The Solar Crowns website supports launching in multiple browsers with dedicated scripts.

### Quick Launch (Universal Launcher)

The easiest way to open the website - automatically detects all installed browsers:

```bash
./launch.sh
```

This will show you an interactive menu with all available browsers on your system and let you choose which one to use.

**Command-line options:**
```bash
./launch.sh brave       # Open directly in Brave
./launch.sh edge        # Open directly in Edge
./launch.sh firefox     # Open directly in Firefox
./launch.sh chrome      # Open directly in Chrome
```

### Individual Browser Scripts

Launch directly in your preferred browser:

**Brave Browser:**
```bash
./open-in-brave.sh
```

**Microsoft Edge:**
```bash
./open-in-edge.sh
```

**Firefox:**
```bash
./open-in-firefox.sh
```

**Google Chrome:**
```bash
./open-in-chrome.sh
```

### Manual Launch

You can also open the website manually with any browser:
```bash
brave index.html
microsoft-edge index.html
firefox index.html
google-chrome index.html
```

Or simply double-click `index.html` and select your preferred browser.

## File Structure

```
solar-crowns-website/
├── index.html              # Home/Services page
├── about.html              # About page
├── contact.html            # Contact page
├── launch.sh               # Universal browser launcher (recommended)
├── open-in-brave.sh        # Launch script for Brave browser
├── open-in-edge.sh         # Launch script for Microsoft Edge
├── open-in-firefox.sh      # Launch script for Firefox
├── open-in-chrome.sh       # Launch script for Google Chrome
├── assets/
│   ├── css/
│   │   └── styles.css      # Main stylesheet
│   ├── js/
│   │   └── script.js       # Interactive functionality
│   └── images/             # (placeholder for future images)
└── README.md               # This file
```

## Deployment Instructions

### Option 1: Deploy to GitHub Pages (Free)

1. Create a new repository on GitHub named "solarcrowns.com" or similar
2. Push the website files:
   ```bash
   cd solar-crowns-website
   git init
   git add .
   git commit -m "Initial commit: Solar Crowns website"
   git branch -M main
   git remote add origin https://github.com/YOUR-USERNAME/REPO-NAME.git
   git push -u origin main
   ```
3. Go to repository Settings > Pages
4. Select "main" branch as source
5. Your site will be available at: `https://YOUR-USERNAME.github.io/REPO-NAME/`

### Option 2: Deploy to Netlify (Free, Custom Domain Supported)

1. Sign up at [netlify.com](https://netlify.com)
2. Drag and drop the `solar-crowns-website` folder into Netlify
3. Netlify will provide a URL like: `https://random-name.netlify.app`
4. To use custom domain (solarcrowns.com):
   - Go to Site Settings > Domain Management
   - Add custom domain: solarcrowns.com
   - Follow DNS configuration instructions

### Option 3: Deploy to Vercel (Free, Custom Domain Supported)

1. Sign up at [vercel.com](https://vercel.com)
2. Install Vercel CLI: `npm install -g vercel`
3. Navigate to the website folder and deploy:
   ```bash
   cd solar-crowns-website
   vercel
   ```
4. Follow prompts to deploy
5. Add custom domain in Vercel dashboard

### Option 4: Traditional Web Hosting

1. Purchase hosting from providers like:
   - Bluehost
   - SiteGround
   - HostGator
   - GoDaddy
2. Use FTP/SFTP or hosting control panel to upload all files
3. Point your domain (solarcrowns.com) to the hosting

## Domain Setup (solarcrowns.com)

1. Purchase domain at:
   - Namecheap
   - Google Domains
   - GoDaddy
   - Domain.com

2. Configure DNS records to point to your hosting:
   - For Netlify/Vercel: Follow their custom domain instructions
   - For GitHub Pages: Add CNAME file with domain name
   - For traditional hosting: Set A record to hosting IP

## Contact Configuration

The contact form uses the `mailto:` protocol to open the user's email client with pre-filled information. Emails are sent to:

**solar.crownsllc@gmail.com**

For production use, consider implementing:
- [Formspree](https://formspree.io) - Easy form backend
- [EmailJS](https://www.emailjs.com) - Send emails via JavaScript
- Custom backend with Node.js/PHP

## Customization

### Changing Colors

Edit `assets/css/styles.css` and modify the CSS variables in the `:root` section:

```css
:root {
    --gold: #D4AF37;
    --burgundy: #8B1538;
    /* ... other colors */
}
```

### Updating Content

- **Services:** Edit `index.html` in the services section
- **Pricing:** Modify the pricing cards in `index.html`
- **About Information:** Update `about.html`
- **Contact Details:** Change email in `contact.html` and `assets/js/script.js`

### Adding Images

Place images in `assets/images/` and reference them in HTML:
```html
<img src="assets/images/your-image.jpg" alt="Description">
```

## Browser Support

- Chrome (latest)
- Firefox (latest)
- Safari (latest)
- Edge (latest)
- Mobile browsers (iOS Safari, Chrome Mobile)

## Technologies Used

- **HTML5** - Semantic markup
- **CSS3** - Flexbox, Grid, animations, gradients
- **JavaScript (ES6+)** - Form handling, smooth scrolling, animations
- **SVG** - Custom logo graphics

## Performance

- No external dependencies or frameworks
- Optimized CSS and JavaScript
- Fast loading times
- Mobile-first responsive design

## Built With

This website was built using **Claude Code**, Anthropic's official CLI for Claude AI. The entire development process - from structure to styling to interactivity - was created through AI-assisted coding, demonstrating the power of modern development tools.

## License

Copyright 2025 Solar Crowns LLC. All rights reserved.

## Support

For questions or support regarding the website:
- Email: solar.crownsllc@gmail.com
- Website: solarcrowns.com (once deployed)

---

Built with precision and powered by innovation.
