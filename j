[1mdiff --git a/About/about.css b/About/about.css[m
[1mindex 2265af2..e2f0401 100644[m
[1m--- a/About/about.css[m
[1m+++ b/About/about.css[m
[36m@@ -78,7 +78,7 @@[m [mnav {[m
   height: 50vh;[m
   background:[m
     linear-gradient(rgba(0, 0, 0, 0.6), rgba(0, 0, 0, 0.6)),[m
[31m-    url("../assets/about/bg3.png");[m
[32m+[m[32m    url("../assets/about/bg3.webp");[m
   background-size: cover;[m
   background-position: center;[m
   display: flex;[m
[36m@@ -137,40 +137,60 @@[m [mnav {[m
   justify-content: center;[m
 }[m
 [m
[31m-.mission-vision .card {[m
[31m-  background: #ffffff;[m
[31m-  padding: 40px;[m
[32m+[m[32m/* --- FIXED SELECTOR HERE --- */[m
[32m+[m[32m.mission-vision {[m
[32m+[m[32m  display: flex;[m
[32m+[m[32m  gap: 2.5rem;[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32m.card {[m
   flex: 1;[m
[31m-  max-width: 500px;[m
[31m-  border-top: 3px solid #a15f07;[m
[31m-  border-radius:top 2px ;[m
[31m-  box-shadow: 0 10px 30px rgba(0, 0, 0, 0.05);[m
[32m+[m[32m  padding: 2rem;[m
[32m+[m[32m  border: 1px solid #eee;[m
[32m+[m[32m  text-align: center;[m
[32m+[m[32m  transition:[m
[32m+[m[32m    transform 0.3s ease,[m
[32m+[m[32m    box-shadow 0.3s ease;[m
 }[m
 [m
[31m-/* --- FIXED SELECTOR HERE --- */[m
[31m-.mission-vision .card .icon {[m
[31m-  width: 70px;[m
[31m-  height: 70px;[m
[31m-  background: #1a1a1a;[m
[32m+[m[32m.card:hover {[m
[32m+[m[32m  transform: translateY(-6px);[m
[32m+[m[32m  box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32m.icon {[m
[32m+[m[32m  width: 64px;[m
[32m+[m[32m  height: 64px;[m
[32m+[m[32m  margin: 0 auto 1rem;[m
   border-radius: 50%;[m
[32m+[m[32m  border: 1px solid #000;[m
[32m+[m
   display: flex;[m
   align-items: center;[m
   justify-content: center;[m
[31m-  margin-bottom: 20px;[m
[31m-  border: 1px solid gray;[m
 }[m
 [m
[31m-.mission-vision .card .icon img {[m
[31m-  width: 100%;[m
[31m-  height: 100%;[m
[31m-  object-fit: cover;[m
[31m-  border-radius: 50%;[m
[32m+[m[32m.icon-svg {[m
[32m+[m[32m  width: 28px;[m
[32m+[m[32m  height: 28px;[m
[32m+[m[32m  color: #83acb9;[m
[32m+[m[32m  transition:[m
[32m+[m[32m    transform 0.3s ease,[m
[32m+[m[32m    color 0.3s ease;[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32m.card:hover .icon-svg {[m
[32m+[m[32m  transform: scale(1.15);[m
[32m+[m[32m  color: #000;[m
 }[m
 [m
 /* --- Core Values --- */[m
 .core-values {[m
   padding: 100px 4.5%;[m
   text-align: center;[m
[32m+[m[32m  h2 {[m
[32m+[m[32m    font-size: 40px;[m
[32m+[m[32m  }[m
 }[m
 [m
 .values-grid {[m
[1mdiff --git a/About/about.html b/About/about.html[m
[1mindex 72122eb..0031423 100644[m
[1m--- a/About/about.html[m
[1m+++ b/About/about.html[m
[36m@@ -11,7 +11,7 @@[m
 <body>[m
     <nav>[m
         <div id="Logo">[m
[31m-            <img src="../assets/logo/Logo.png" alt="Achitec Logo">[m
[32m+[m[32m            <img src="../assets/logo/Logo.webp" alt="Achitec Logo">[m
         </div>[m
         <div class="Nav-Items">[m
             <ul>[m
[36m@@ -41,39 +41,69 @@[m
                     of local culture, we transform ideas into inspiring, functional, and sustainable spaces.</p>[m
             </div>[m
             <div class="image-block">[m
[31m-                <img src="../assets/about/studio.png" alt="Our Studio">[m
[32m+[m[32m                <img src="../assets/about/studio.webp" alt="Our Studio">[m
             </div>[m
         </div>[m
     </section>[m
 [m
     <section class="mission-vision">[m
[32m+[m
[32m+[m[32m        <!-- Mission -->[m
         <div class="card">[m
             <div class="icon">[m
[31m-                <img src="../assets/about/Mission.png" alt="Mission Icon">[m
[32m+[m[32m                <!-- Target / Mission -->[m
[32m+[m[32m                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"[m
[32m+[m[32m                    stroke="currentColor" class="icon-svg">[m
[32m+[m[32m                    <path stroke-linecap="round" stroke-linejoin="round" d="M12 3v18m9-9H3" />[m
[32m+[m[32m                </svg>[m
             </div>[m
             <h3>Our Mission</h3>[m
[31m-            <p>To create innovative, sustainable, and culturally meaningful architecture that enhances the quality of[m
[31m-                life for our communities.</p>[m
[32m+[m[32m            <p>[m
[32m+[m[32m                To create innovative, sustainable, and culturally meaningful architecture[m
[32m+[m[32m                that enhances the quality of life for our communities.[m
[32m+[m[32m            </p>[m
         </div>[m
 [m
[32m+[m[32m        <!-- Our Power -->[m
         <div class="card">[m
             <div class="icon">[m
[31m-                <img src="../assets/about/image.png" alt="Vision Icon">[m
[32m+[m[32m                <!-- Lightning / Power -->[m
[32m+[m[32m                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"[m
[32m+[m[32m                    stroke="currentColor" class="icon-svg">[m
[32m+[m[32m                    <path stroke-linecap="round" stroke-linejoin="round" d="M13 2L3 14h7l-1 8 10-12h-7l1-8Z" />[m
[32m+[m[32m                </svg>[m
             </div>[m
             <h3>Our Power</h3>[m
[31m-            <p>We transform ideas into inspiring spaces by combining innovative design, cultural heritage, and[m
[31m-                sustainable solutions, creating architecture that truly stands out in Laos.</p>[m
[32m+[m[32m            <p>[m
[32m+[m[32m                We transform ideas into inspiring spaces by combining innovative design,[m
[32m+[m[32m                cultural heritage, and sustainable solutions, creating architecture that[m
[32m+[m[32m                truly stands out in Laos.[m
[32m+[m[32m            </p>[m
         </div>[m
 [m
[32m+[m[32m        <!-- Vision -->[m
         <div class="card">[m
             <div class="icon">[m
[31m-                <img src="../assets/about/Vission.png" alt="Vision Icon">[m
[32m+[m[32m                <!-- Eye / Vision -->[m
[32m+[m[32m                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"[m
[32m+[m[32m                    stroke="currentColor" class="icon-svg">[m
[32m+[m[32m                    <path stroke-linecap="round" stroke-linejoin="round" d="M2.25 12s3.75-6.75 9.75-6.75[m
[32m+[m[32m          S21.75 12 21.75 12s-3.75 6.75-9.75 6.75[m
[32m+[m[32m          S2.25 12 2.25 12Z" />[m
[32m+[m[32m                    <path stroke-linecap="round" stroke-linejoin="round" d="M12 15.75a3.75 3.75 0 1 0 0-7.5[m
[32m+[m[32m          a3.75 3.75 0 0 0 0 7.5Z" />[m
[32m+[m[32m                </svg>[m
             </div>[m
             <h3>Our Vision</h3>[m
[31m-            <p>To blend modern design principles with Laos’ rich heritage, creating spaces that tell a unique story.</p>[m
[32m+[m[32m            <p>[m
[32m+[m[32m                To blend modern design principles with Laos’ rich heritage, creating spaces[m
[32m+[m[32m                that tell a unique story.[m
[32m+[m[32m            </p>[m
         </div>[m
[32m+[m
     </section>[m
 [m
[32m+[m
     <section class="core-values">[m
         <div class="section-title">[m
             <h2>Our Core Values</h2>[m
[36m@@ -103,7 +133,7 @@[m
         <p>Whether it's a modern home or a public landmark, we are ready to turn your vision into reality.</p>[m
         <button class="btn-journey">Start Your Journey</button>[m
     </section>[m
[31m-     <script src="../script.js"></script>[m
[32m+[m[32m    <script src="../script.js"></script>[m
 </body>[m
 [m
 </html>[m
\ No newline at end of file[m
[1mdiff --git a/Contact/Contact.html b/Contact/Contact.html[m
[1mindex 411ae98..8968e92 100644[m
[1m--- a/Contact/Contact.html[m
[1m+++ b/Contact/Contact.html[m
[36m@@ -11,7 +11,7 @@[m
 <body>[m
     <nav>[m
         <div id="Logo">[m
[31m-            <img src="../assets/logo/Logo.png" alt="Architect Logo">[m
[32m+[m[32m            <img src="../assets/logo/Logo.webp" alt="Architect Logo">[m
         </div>[m
         <div class="Nav-Items">[m
             <ul>[m
[1mdiff --git a/Contact/contact.css b/Contact/contact.css[m
[1mindex 19324f3..a097d4c 100644[m
[1m--- a/Contact/contact.css[m
[1m+++ b/Contact/contact.css[m
[36m@@ -77,7 +77,7 @@[m [mnav {[m
   height: 40vh;[m
   background:[m
     linear-gradient(rgba(0, 0, 0, 0.7), rgba(0, 0, 0, 0.7)),[m
[31m-    url("../assets/contact/contact2.png");[m
[32m+[m[32m    url("../assets/contact/contact2.webp");[m
   background-size: cover;[m
   background-position: center;[m
   display: flex;[m
[1mdiff --git a/Partner/partners.css b/Partner/partners.css[m
[1mindex 679a608..a95201c 100644[m
[1m--- a/Partner/partners.css[m
[1m+++ b/Partner/partners.css[m
[36m@@ -77,7 +77,7 @@[m [mnav {[m
   height: 40vh;[m
   background:[m
     linear-gradient(rgba(0, 0, 0, 0.7), rgba(0, 0, 0, 0.7)),[m
[31m-    url("../assets/partner/studio.png");[m
[32m+[m[32m    url("../assets/partner/studio.webp");[m
   background-size: cover;[m
   background-position: center;[m
   display: flex;[m
[36m@@ -138,16 +138,16 @@[m [mnav {[m
 [m
 /* --- Individual Background Images --- */[m
 .logo-xyz {[m
[31m-  background-image: url("../assets/partner/csc.png");[m
[32m+[m[32m  background-image: url("../assets/partner/csc.webp");[m
 }[m
 .logo-timber {[m
[31m-  background-image: url("../assets/partner/souksakhoun.png");[m
[32m+[m[32m  background-image: url("../assets/partner/souksakhoun.webp");[m
 }[m
 .logo-eco {[m
[31m-  background-image: url("../assets/partner/Als.png");[m
[32m+[m[32m  background-image: url("../assets/partner/Als.webp");[m
 }[m
 .logo-council {[m
[31m-  background-image: url("../assets/partner/kao.png");[m
[32m+[m[32m  background-image: url("../assets/partner/kao.webp");[m
 }[m
 [m
 /* --- Hover States --- */[m
[1mdiff --git a/Partner/partners.html b/Partner/partners.html[m
[1mindex c6a1524..1604eb2 100644[m
[1m--- a/Partner/partners.html[m
[1m+++ b/Partner/partners.html[m
[36m@@ -11,7 +11,7 @@[m
 <body>[m
     <nav>[m
         <div id="Logo">[m
[31m-            <img src="../assets/logo/Logo.png" alt="Achitec Logo">[m
[32m+[m[32m            <img src="../assets/logo/Logo.webp" alt="Achitec Logo">[m
         </div>[m
         <div class="Nav-Items">[m
             <ul>[m
[1mdiff --git a/Project/project.css b/Project/project.css[m
[1mindex 4613c38..1a645f0 100644[m
[1m--- a/Project/project.css[m
[1m+++ b/Project/project.css[m
[36m@@ -77,7 +77,7 @@[m [mnav {[m
 /* --- Project Hero --- */[m
 .project-hero {[m
     height: 40vh;[m
[31m-    background: linear-gradient(rgba(73, 72, 72, 0.29), rgba(0,0,0,0.6)), url('../assets/project/image.png');[m
[32m+[m[32m    background: linear-gradient(rgba(73, 72, 72, 0.29), rgba(0,0,0,0.6)), url('../assets/project/image.webp');[m
     background-size: cover;[m
     background-position: bottom;[m
     display: flex;[m
[1mdiff --git a/Project/project.html b/Project/project.html[m
[1mindex 98327c9..437695b 100644[m
[1m--- a/Project/project.html[m
[1m+++ b/Project/project.html[m
[36m@@ -11,7 +11,7 @@[m
 <body>[m
     <nav>[m
         <div id="Logo">[m
[31m-            <img src="../assets/logo/Logo.png" alt="Achitec Logo">[m
[32m+[m[32m            <img src="../assets/logo/Logo.webp" alt="Achitec Logo">[m
         </div>[m
         <div class="Nav-Items">[m
             <ul>[m
[36m@@ -39,7 +39,7 @@[m
     <main class="project-gallery">[m
         <div class="project-card">[m
             <div class="project-image">[m
[31m-                <img src="../assets/project/villa.png" alt="Mekong Riverside Villa">[m
[32m+[m[32m                <img src="../assets/project/villa.webp" alt="Mekong Riverside Villa">[m
                 <div class="overlay">[m
                     <span>View Details</span>[m
                 </div>[m
[36m@@ -55,7 +55,7 @@[m
 [m
         <div class="project-card">[m
             <div class="project-image">[m
[31m-                <img src="../assets/project/culture.png" alt="Laos Cultural Center">[m
[32m+[m[32m                <img src="../assets/project/culture.webp" alt="Laos Cultural Center">[m
                 <div class="overlay">[m
                     <span>View Details</span>[m
                 </div>[m
[36m@@ -71,7 +71,7 @@[m
 [m
         <div class="project-card">[m
             <div class="project-image">[m
[31m-                <img src="../assets/homeGroup/3nd.png" alt="Modern Office Complex">[m
[32m+[m[32m                <img src="../assets/homeGroup/3nd.webp" alt="Modern Office Complex">[m
                 <div class="overlay">[m
                     <span>View Details</span>[m
                 </div>[m
[1mdiff --git a/assets/about/bg.png b/assets/about/bg.png[m
[1mdeleted file mode 100644[m
[1mindex c7f07ab..0000000[m
Binary files a/assets/about/bg.png and /dev/null differ
[1mdiff --git a/assets/about/bg1.png b/assets/about/bg1.png[m
[1mdeleted file mode 100644[m
[1mindex 0f8a464..0000000[m
Binary files a/assets/about/bg1.png and /dev/null differ
[1mdiff --git a/assets/about/bg3.png b/assets/about/bg3.png[m
[1mdeleted file mode 100644[m
[1mindex 696bcaa..0000000[m
Binary files a/assets/about/bg3.png and /dev/null differ
[1mdiff --git a/assets/about/image.png b/assets/about/image.png[m
[1mdeleted file mode 100644[m
[1mindex 5f4e098..0000000[m
Binary files a/assets/about/image.png and /dev/null differ
[1mdiff --git a/assets/about/mission.png b/assets/about/mission.png[m
[1mdeleted file mode 100644[m
[1mindex 8d249bd..0000000[m
Binary files a/assets/about/mission.png and /dev/null differ
[1mdiff --git a/assets/about/studio.png b/assets/about/studio.png[m
[1mdeleted file mode 100644[m
[1mindex 3d6000b..0000000[m
Binary files a/assets/about/studio.png and /dev/null differ
[1mdiff --git a/assets/about/vission.png b/assets/about/vission.png[m
[1mdeleted file mode 100644[m
[1mindex d13d770..0000000[m
Binary files a/assets/about/vission.png and /dev/null differ
[1mdiff --git a/assets/contact/contact.png b/assets/contact/contact.png[m
[1mdeleted file mode 100644[m
[1mindex 077baa8..0000000[m
Binary files a/assets/contact/contact.png and /dev/null differ
[1mdiff --git a/assets/contact/contact1.png b/assets/contact/contact1.png[m
[1mdeleted file mode 100644[m
[1mindex 3830a60..0000000[m
Binary files a/assets/contact/contact1.png and /dev/null differ
[1mdiff --git a/assets/contact/contact2.png b/assets/contact/contact2.png[m
[1mdeleted file mode 100644[m
[1mindex e561fcc..0000000[m
Binary files a/assets/contact/contact2.png and /dev/null differ
[1mdiff --git a/assets/heroMain.png b/assets/heroMain.png[m
[1mdeleted file mode 100644[m
[1mindex c633042..0000000[m
Binary files a/assets/heroMain.png and /dev/null differ
[1mdiff --git a/assets/homeGroup/1st.png b/assets/homeGroup/1st.png[m
[1mdeleted file mode 100644[m
[1mindex d87af59..0000000[m
Binary files a/assets/homeGroup/1st.png and /dev/null differ
[1mdiff --git a/assets/homeGroup/2nd.png b/assets/homeGroup/2nd.png[m
[1mdeleted file mode 100644[m
[1mindex 15cfa91..0000000[m
Binary files a/assets/homeGroup/2nd.png and /dev/null differ
[1mdiff --git a/assets/homeGroup/3nd.png b/assets/homeGroup/3nd.png[m
[1mdeleted file mode 100644[m
[1mindex 42c7244..0000000[m
Binary files a/assets/homeGroup/3nd.png and /dev/null differ
[1mdiff --git a/assets/homeGroup/first.png b/assets/homeGroup/first.png[m
[1mdeleted file mode 100644[m
[1mindex 499b2aa..0000000[m
Binary files a/assets/homeGroup/first.png and /dev/null differ
[1mdiff --git a/assets/homeGroup/second.png b/assets/homeGroup/second.png[m
[1mdeleted file mode 100644[m
[1mindex 3083ed9..0000000[m
Binary files a/assets/homeGroup/second.png and /dev/null differ
[1mdiff --git a/assets/homeGroup/third.png b/assets/homeGroup/third.png[m
[1mdeleted file mode 100644[m
[1mindex a2e2d2a..0000000[m
Binary files a/assets/homeGroup/third.png and /dev/null differ
[1mdiff --git a/assets/homeSecond.png b/assets/homeSecond.png[m
[1mdeleted file mode 100644[m
[1mindex ff9505e..0000000[m
Binary files a/assets/homeSecond.png and /dev/null differ
[1mdiff --git a/assets/logo/Logo.png b/assets/logo/Logo.png[m
[1mdeleted file mode 100644[m
[1mindex 5659399..0000000[m
Binary files a/assets/logo/Logo.png and /dev/null differ
[1mdiff --git a/assets/logo/icon/achitect.png b/assets/logo/icon/achitect.png[m
[1mdeleted file mode 100644[m
[1mindex 951fb8c..0000000[m
Binary files a/assets/logo/icon/achitect.png and /dev/null differ
[1mdiff --git a/assets/logo/icon/box.png b/assets/logo/icon/box.png[m
[1mdeleted file mode 100644[m
[1mindex 63c1812..0000000[m
Binary files a/assets/logo/icon/box.png and /dev/null differ
[1mdiff --git a/assets/logo/icon/chat.png b/assets/logo/icon/chat.png[m
[1mdeleted file mode 100644[m
[1mindex 6383ef5..0000000[m
Binary files a/assets/logo/icon/chat.png and /dev/null differ
[1mdiff --git a/assets/logo/icon/document.png b/assets/logo/icon/document.png[m
[1mdeleted file mode 100644[m
[1mindex 244113f..0000000[m
Binary files a/assets/logo/icon/document.png and /dev/null differ
[1mdiff --git a/assets/logo/icon/dragon.png b/assets/logo/icon/dragon.png[m
[1mdeleted file mode 100644[m
[1mindex a4abc75..0000000[m
Binary files a/assets/logo/icon/dragon.png and /dev/null differ
[1mdiff --git a/assets/logo/icon/handshake.png b/assets/logo/icon/handshake.png[m
[1mdeleted file mode 100644[m
[1mindex 86fbd0f..0000000[m
Binary files a/assets/logo/icon/handshake.png and /dev/null differ
[1mdiff --git a/assets/logo/icon/search.png b/assets/logo/icon/search.png[m
[1mdeleted file mode 100644[m
[1mindex fcf3859..0000000[m
Binary files a/assets/logo/icon/search.png and /dev/null differ
[1mdiff --git a/assets/partner/Als.png b/assets/partner/Als.png[m
[1mdeleted file mode 100644[m
[1mindex 82c217b..0000000[m
Binary files a/assets/partner/Als.png and /dev/null differ
[1mdiff --git a/assets/partner/csc.png b/assets/partner/csc.png[m
[1mdeleted file mode 100644[m
[1mindex 1a7942c..0000000[m
Binary files a/assets/partner/csc.png and /dev/null differ
[1mdiff --git a/assets/partner/kao.png b/assets/partner/kao.png[m
[1mdeleted file mode 100644[m
[1mindex 1d0c807..0000000[m
Binary files a/assets/partner/kao.png and /dev/null differ
[1mdiff --git a/assets/partner/souksakhoun.png b/assets/partner/souksakhoun.png[m
[1mdeleted file mode 100644[m
[1mindex 635f9cd..0000000[m
Binary files a/assets/partner/souksakhoun.png and /dev/null differ
[1mdiff --git a/assets/partner/studio.png b/assets/partner/studio.png[m
[1mdeleted file mode 100644[m
[1mindex d407a41..0000000[m
Binary files a/assets/partner/studio.png and /dev/null differ
[1mdiff --git a/assets/project/bg.png b/assets/project/bg.png[m
[1mdeleted file mode 100644[m
[1mindex 634edf5..0000000[m
Binary files a/assets/project/bg.png and /dev/null differ
[1mdiff --git a/assets/project/culture.png b/assets/project/culture.png[m
[1mdeleted file mode 100644[m
[1mindex 8d213ad..0000000[m
Binary files a/assets/project/culture.png and /dev/null differ
[1mdiff --git a/assets/project/image.png b/assets/project/image.png[m
[1mdeleted file mode 100644[m
[1mindex d3dcc48..0000000[m
Binary files a/assets/project/image.png and /dev/null differ
[1mdiff --git a/assets/project/villa.png b/assets/project/villa.png[m
[1mdeleted file mode 100644[m
[1mindex b7b447d..0000000[m
Binary files a/assets/project/villa.png and /dev/null differ
[1mdiff --git a/image.png b/image.png[m
[1mdeleted file mode 100644[m
[1mindex fd2f385..0000000[m
Binary files a/image.png and /dev/null differ
[1mdiff --git a/index.css b/index.css[m
[1mindex 67569e6..56fabfb 100644[m
[1m--- a/index.css[m
[1m+++ b/index.css[m
[36m@@ -77,7 +77,7 @@[m [mmain {[m
   height: calc(95vh - 7.5rem);[m
   display: flex;[m
   align-items: center;[m
[31m-  background-