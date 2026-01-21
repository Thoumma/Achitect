document.addEventListener("DOMContentLoaded", function() {
    // Get the current URL path
    const currentPath = window.location.pathname;

    // Select all links in your navigation
    const navLinks = document.querySelectorAll('.Nav-Items ul li a');

    navLinks.forEach(link => {
        // Get the absolute path of the link href
        const linkPath = new URL(link.href).pathname;

        // Check if the current path contains the link path
        // (This works even if you are in subfolders)
        if (currentPath.includes(linkPath) && linkPath !== "/") {
            link.classList.add('active');
        } 
        // Special case for Home page
        else if (currentPath === "/" || currentPath.endsWith("index.html")) {
            if (link.getAttribute("href").includes("index.html")) {
                link.classList.add('active');
            }
        }
    });
});