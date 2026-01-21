document.addEventListener("DOMContentLoaded", function () {
  // Get the current URL path (normalized)
  const currentPath = window.location.pathname.toLowerCase();

  // Select all links in your navigation
  const navLinks = document.querySelectorAll(".Nav-Items ul li a");

  navLinks.forEach((link) => {
    // Remove any existing active class first
    link.classList.remove("active");

    // Get the href attribute and normalize it
    const linkHref = link.getAttribute("href").toLowerCase();

    // Extract just the filename or folder name for comparison
    const currentPage = currentPath.split("/").pop() || "index.html";
    const currentFolder = currentPath
      .split("/")
      .filter((x) => x)
      .pop();

    // Check various matching scenarios
    const isMatch =
      // Direct match with full path
      currentPath.endsWith(linkHref) ||
      currentPath.endsWith(linkHref.replace(/^\//, "")) ||
      // Match by filename
      (currentPage && linkHref.includes(currentPage)) ||
      // Match by folder name (for about, project, partner, contact)
      (currentFolder && linkHref.toLowerCase().includes(currentFolder)) ||
      // Home page special cases
      ((currentPath === "/" ||
        currentPath.endsWith("/") ||
        currentPath.endsWith("index.html")) &&
        linkHref.includes("index.html"));

    if (isMatch) {
      link.classList.add("active");
    }
  });

  // Mobile Menu Toggle
  const menuToggle = document.getElementById("mobile-menu");
  const navItems = document.querySelector(".Nav-Items");
  const body = document.body;

  if (menuToggle && navItems) {
    menuToggle.addEventListener("click", () => {
      navItems.classList.toggle("open");
      menuToggle.classList.toggle("open");
      body.classList.toggle("menu-open");
    });

    // Close menu when clicking on a link
    const mobileLinks = navItems.querySelectorAll("a");
    mobileLinks.forEach((link) => {
      link.addEventListener("click", () => {
        navItems.classList.remove("open");
        menuToggle.classList.remove("open");
        body.classList.remove("menu-open");
      });
    });

    // Close menu when clicking outside
    document.addEventListener("click", (e) => {
      if (!navItems.contains(e.target) && !menuToggle.contains(e.target)) {
        navItems.classList.remove("open");
        menuToggle.classList.remove("open");
        body.classList.remove("menu-open");
      }
    });
  }

  // Debug log (remove in production if needed)
  console.log("Current path:", window.location.pathname);
  console.log(
    "Active links:",
    document.querySelectorAll(".Nav-Items ul li a.active"),
  );
});
