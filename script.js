document.addEventListener("DOMContentLoaded", function() {
    // Get the current URL path
    const currentPath = window.location.pathname;

    // Select all links in your navigation
    const navLinks = document.querySelectorAll('.Nav-Items ul li a');

    navLinks.forEach(link => {
        // Remove any existing active class first
        link.classList.remove('active');
        
        // Get the href attribute
        const linkHref = link.getAttribute('href');
        
        // Check if current page matches the link
        if (currentPath.endsWith(linkHref) || 
            currentPath.endsWith(linkHref.replace(/^\//, ''))) {
            link.classList.add('active');
        }
        // Special handling for index/home page
        else if ((currentPath === '/' || currentPath.endsWith('/')) && 
                 linkHref.includes('index.html')) {
            link.classList.add('active');
        }
    });

    // Mobile Menu Toggle
    const menuToggle = document.getElementById('mobile-menu');
    const navItems = document.querySelector('.Nav-Items');
    const body = document.body;

    if (menuToggle && navItems) {
        menuToggle.addEventListener('click', () => {
            navItems.classList.toggle('open');
            menuToggle.classList.toggle('open');
            body.classList.toggle('menu-open');
        });

        // Close menu when clicking on a link
        const mobileLinks = navItems.querySelectorAll('a');
        mobileLinks.forEach(link => {
            link.addEventListener('click', () => {
                navItems.classList.remove('open');
                menuToggle.classList.remove('open');
                body.classList.remove('menu-open');
            });
        });

        // Close menu when clicking outside
        document.addEventListener('click', (e) => {
            if (!navItems.contains(e.target) && !menuToggle.contains(e.target)) {
                navItems.classList.remove('open');
                menuToggle.classList.remove('open');
                body.classList.remove('menu-open');
            }
        });
    }
});