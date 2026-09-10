<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Nehith — Food Delivery & More</title>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;500;600;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous">

    <style>
        :root {
            --swiggy-orange: #FC8019;
            --swiggy-orange-hover: #E8710D;
            --swiggy-dark: #282C3F;
            --swiggy-light: #F4F5F7;
            --swiggy-white: #FFFFFF;
            --swiggy-gray-100: #E9E9EB;
            --swiggy-gray-500: #686B78;
            --swiggy-gray-900: #1C1C1C;
            --radius-pill: 9999px;
            --radius-lg: 16px;
            --radius-md: 12px;
            --shadow-card: 0 4px 15px rgba(40, 44, 63, 0.08);
            --shadow-hover: 0 8px 25px rgba(40, 44, 63, 0.15);
            --container: 1200px;
        }

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            scroll-behavior: smooth;
        }

        body {
            font-family: 'Plus Jakarta Sans', system-ui, -apple-system, sans-serif;
            color: var(--swiggy-dark);
            background: var(--swiggy-white);
            -webkit-font-smoothing: antialiased;
            line-height: 1.6;
            overflow-x: hidden;
        }

        a {
            color: inherit;
            text-decoration: none;
        }

        button {
            font-family: inherit;
        }

        .container {
            width: 100%;
            max-width: var(--container);
            margin: 0 auto;
            padding: 0 20px;
        }

        /* Top Announcement Bar */
        .top-bar {
            background: linear-gradient(135deg, var(--swiggy-orange), #FF5200);
            color: var(--swiggy-white);
            text-align: center;
            padding: 10px 16px;
            font-size: 13px;
            font-weight: 700;
        }

        .top-bar span {
            background: rgba(255, 255, 255, 0.25);
            padding: 2px 10px;
            border-radius: var(--radius-pill);
            margin-left: 6px;
        }

        /* Header */
        header {
            position: sticky;
            top: 0;
            z-index: 100;
            background: var(--swiggy-white);
            box-shadow: 0 15px 40px -20px rgba(40, 44, 63, 0.1);
        }

        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 24px;
            height: 80px;
        }

        .brand {
            display: flex;
            align-items: center;
            gap: 8px;
            font-weight: 800;
            font-size: 28px;
            letter-spacing: -0.03em;
            color: var(--swiggy-dark);
        }

        .brand-logo {
            background: var(--swiggy-orange);
            color: var(--swiggy-white);
            width: 42px;
            height: 42px;
            border-radius: 12px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 20px;
        }

        /* Location Picker */
        .location-pill {
            display: flex;
            align-items: center;
            gap: 8px;
            background: var(--swiggy-light);
            padding: 10px 16px;
            border-radius: var(--radius-pill);
            font-size: 14px;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.2s;
            border: 1px solid var(--swiggy-gray-100);
        }

        .location-pill:hover {
            border-color: var(--swiggy-orange);
        }

        .location-pill i {
            color: var(--swiggy-orange);
        }

        /* Nav */
        nav.main-nav ul {
            display: flex;
            gap: 16px;
            list-style: none;
            align-items: center;
        }

        nav.main-nav li a {
            display: flex;
            gap: 8px;
            align-items: center;
            padding: 8px 14px;
            border-radius: var(--radius-pill);
            color: var(--swiggy-dark);
            font-weight: 600;
            font-size: 14px;
            transition: all 0.2s;
        }

        nav.main-nav li a:hover, nav.main-nav li a.active {
            color: var(--swiggy-orange);
            background: #FFF0E6;
        }

        .header-right {
            display: flex;
            align-items: center;
            gap: 12px;
        }

        .nav-btn {
            background: transparent;
            border: none;
            cursor: pointer;
            font-size: 15px;
            font-weight: 600;
            color: var(--swiggy-dark);
            display: flex;
            align-items: center;
            gap: 8px;
            padding: 8px 14px;
            border-radius: var(--radius-pill);
            transition: background 0.2s;
        }

        .nav-btn:hover {
            background: var(--swiggy-light);
        }

        .nav-btn-cart {
            background: var(--swiggy-orange);
            color: var(--swiggy-white);
        }

        .nav-btn-cart:hover {
            background: var(--swiggy-orange-hover);
        }

        .badge-count {
            background: var(--swiggy-dark);
            color: var(--swiggy-white);
            font-size: 11px;
            font-weight: 800;
            padding: 2px 7px;
            border-radius: var(--radius-pill);
        }

        /* Sub-Service Banner */
        .services-bar {
            background: var(--swiggy-light);
            padding: 16px 0;
            border-bottom: 1px solid var(--swiggy-gray-100);
        }

        .services-scroll {
            display: flex;
            gap: 16px;
            overflow-x: auto;
            scrollbar-width: none;
        }

        .services-scroll::-webkit-scrollbar {
            display: none;
        }

        .service-pill {
            background: var(--swiggy-white);
            padding: 10px 20px;
            border-radius: var(--radius-pill);
            font-size: 14px;
            font-weight: 700;
            white-space: nowrap;
            display: flex;
            align-items: center;
            gap: 8px;
            box-shadow: 0 2px 8px rgba(0,0,0,0.03);
            cursor: pointer;
            transition: all 0.2s;
        }

        .service-pill.active, .service-pill:hover {
            background: var(--swiggy-orange);
            color: var(--swiggy-white);
        }

        /* Main Section */
        .section {
            padding: 48px 0;
        }

        .section-header {
            display: flex;
            justify-content: space-between;
            align-items: flex-end;
            margin-bottom: 28px;
        }

        .section-title h2 {
            font-size: 26px;
            font-weight: 800;
            letter-spacing: -0.02em;
            color: var(--swiggy-dark);
        }

        /* What's on your mind (Categories) */
        .categories-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(130px, 1fr));
            gap: 20px;
        }

        .cat-item {
            text-align: center;
            cursor: pointer;
            transition: transform 0.2s;
        }

        .cat-item:hover {
            transform: scale(1.05);
        }

        .cat-img {
            width: 120px;
            height: 120px;
            border-radius: 50%;
            overflow: hidden;
            margin: 0 auto 10px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.08);
        }

        .cat-img img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .cat-item h4 {
            font-size: 15px;
            font-weight: 700;
            color: var(--swiggy-dark);
        }

        /* Restaurant / Food Cards Grid */
        .restaurants-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(270px, 1fr));
            gap: 32px;
        }

        .restaurant-card {
            background: var(--swiggy-white);
            border-radius: var(--radius-lg);
            overflow: hidden;
            display: flex;
            flex-direction: column;
            cursor: pointer;
            transition: transform 0.25s ease, box-shadow 0.25s ease;
        }

        .restaurant-card:hover {
            transform: translateY(-6px);
            box-shadow: var(--shadow-hover);
        }

        .res-img-wrapper {
            position: relative;
            height: 180px;
            border-radius: var(--radius-lg);
            overflow: hidden;
            background: var(--swiggy-light);
        }

        .restaurant-card img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .discount-badge {
            position: absolute;
            bottom: 0;
            left: 0;
            right: 0;
            background: linear-gradient(180deg, rgba(0,0,0,0) 0%, rgba(0,0,0,0.75) 100%);
            color: var(--swiggy-white);
            padding: 16px 12px 10px;
            font-size: 14px;
            font-weight: 800;
            letter-spacing: -0.01em;
        }

        .res-content {
            padding: 14px 6px;
            display: flex;
            flex-direction: column;
            gap: 6px;
        }

        .res-name {
            font-size: 18px;
            font-weight: 700;
            color: var(--swiggy-dark);
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
        }

        .res-meta {
            display: flex;
            align-items: center;
            gap: 8px;
            font-size: 14px;
            font-weight: 700;
        }

        .rating-box {
            background: #48C479;
            color: var(--swiggy-white);
            padding: 2px 6px;
            border-radius: 6px;
            font-size: 12px;
            display: inline-flex;
            align-items: center;
            gap: 3px;
        }

        .res-cuisines {
            font-size: 14px;
            color: var(--swiggy-gray-500);
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
            font-weight: 500;
        }

        .res-location {
            font-size: 13px;
            color: var(--swiggy-gray-500);
            font-weight: 500;
        }

        /* Footer */
        footer {
            background: var(--swiggy-dark);
            color: var(--swiggy-white);
            padding: 64px 0 36px;
            margin-top: 80px;
        }

        .footer-brand {
            font-size: 26px;
            font-weight: 800;
            margin-bottom: 16px;
            display: flex;
            align-items: center;
            gap: 8px;
        }

        .footer-bottom {
            border-top: 1px solid rgba(255, 255, 255, 0.1);
            padding-top: 24px;
            margin-top: 40px;
            text-align: center;
            color: #93959F;
            font-size: 13px;
        }

        @media (max-width: 900px) {
            .location-pill { display: none; }
            nav.main-nav { display: none; }
        }
    </style>
</head>
<body>

    <div class="top-bar">
        🚀 Free delivery on orders above ₹199 for <strong>Nehith One</strong> members! <span>Use code: SWIGGYNEW</span>
    </div>

    <header>
        <div class="container header-inner">
            <a class="brand" href="#">
                <div class="brand-logo"><i class="fas fa-utensils"></i></div>
                Nehith <span style="color: var(--swiggy-orange);">Swiggy</span>
            </a>

            <div class="location-pill">
                <i class="fas fa-location-dot"></i>
                <span>Madhapur, Hyderabad</span>
                <i class="fas fa-chevron-down" style="font-size: 10px; margin-left: 4px;"></i>
            </div>

            <nav class="main-nav">
                <ul>
                    <li><a href="#" class="active"><i class="fas fa-briefcase"></i> Swiggy Corporate</a></li>
                    <li><a href="#restaurantsSection"><i class="fas fa-search"></i> Search</a></li>
                    <li><a href="#restaurantsSection"><i class="fas fa-percent"></i> Offers</a></li>
                </ul>
            </nav>

            <div class="header-right">
                <button class="nav-btn"><i class="far fa-user"></i> Sign In</button>
                <button class="nav-btn nav-btn-cart">
                    <i class="fas fa-shopping-bag"></i> Cart <span class="badge-count" id="cartCount">0</span>
                </button>
            </div>
        </div>
    </header>

    <div class="services-bar">
        <div class="container services-scroll">
            <div class="service-pill active"><i class="fas fa-burger"></i> Food Delivery</div>
            <div class="service-pill" onclick="alert('Opening Swiggy Instamart...')"><i class="fas fa-basket-shopping"></i> Instamart (Grocery)</div>
            <div class="service-pill" onclick="alert('Opening Swiggy Dineout...')"><i class="fas fa-champagne-glasses"></i> Dineout</div>
            <div class="service-pill" onclick="alert('Opening Swiggy Genie...')"><i class="fas fa-box"></i> Genie (Pickup & Drop)</div>
        </div>
    </div>

    <main>
        <section class="section container">
            <div class="section-header">
                <div class="section-title">
                    <h2>What's on your mind, Nehith?</h2>
                </div>
            </div>
            <div class="categories-grid" id="categoriesGrid"></div>
        </section>

        <section class="section container" id="restaurantsSection">
            <div class="section-header">
                <div class="section-title">
                    <h2>Top restaurant chains in Hyderabad</h2>
                </div>
            </div>
            <div class="restaurants-grid" id="restaurantsGrid"></div>
        </section>
    </main>

    <footer>
        <div class="container">
            <div class="footer-brand">
                <div class="brand-logo" style="width: 32px; height: 32px; font-size: 16px;"><i class="fas fa-utensils"></i></div>
                Nehith Swiggy
            </div>
            <p style="color: #93959F; font-size: 14px; max-width: 400px;">Experience lightning-fast food delivery from top-rated neighborhood restaurants right to your doorstep.</p>
            <div class="footer-bottom">
                <p>&copy; 2026 Nehith Swiggy Technologies Pvt. Ltd. Designed with Swiggy UI Aesthetics.</p>
            </div>
        </div>
    </footer>

    <script>
        const categories = [
            { name: "Biryani", img: "https://images.unsplash.com/photo-1563379091339-03b21ab4a4f8?auto=format&fit=crop&w=300&q=80" },
            { name: "Burgers", img: "https://images.unsplash.com/photo-1568901346375-23c9450c58cd?auto=format&fit=crop&w=300&q=80" },
            { name: "Pizzas", img: "https://images.unsplash.com/photo-1513104890138-7c749659a591?auto=format&fit=crop&w=300&q=80" },
            { name: "Chinese", img: "https://images.unsplash.com/photo-1585032226651-759b368d7246?auto=format&fit=crop&w=300&q=80" },
            { name: "Desserts", img: "https://images.unsplash.com/photo-1551024709-8f23befc6f87?auto=format&fit=crop&w=300&q=80" },
            { name: "South Indian", img: "https://images.unsplash.com/photo-1589301760014-d929f3979dbc?auto=format&fit=crop&w=300&q=80" }
        ];

        const restaurants = [
            { id: 1, name: "Paradise Biryani", offer: "ITEMS AT ₹149", rating: "4.3", time: "25-30 mins", cuisines: "Biryani, North Indian, Kebabs", location: "Hitech City", img: "https://images.unsplash.com/photo-1633964913295-ceb43826e7c9?auto=format&fit=crop&w=500&q=80" },
            { id: 2, name: "McDonald's Gourmet", offer: "FLAT ₹100 OFF", rating: "4.5", time: "20-25 mins", cuisines: "Burgers, Beverages, Fast Food", location: "Jubilee Hills", img: "https://images.unsplash.com/photo-1550547660-d9450f859349?auto=format&fit=crop&w=500&q=80" },
            { id: 3, name: "Pizza Hut", offer: "BUY 1 GET 1 FREE", rating: "4.2", time: "30-35 mins", cuisines: "Pizzas, Fast Food, Desserts", location: "Gachibowli", img: "https://images.unsplash.com/photo-1513104890138-7c749659a591?auto=format&fit=crop&w=500&q=80" },
            { id: 4, name: "Beijing Bites", offer: "60% OFF UPTO ₹120", rating: "4.4", time: "25-30 mins", cuisines: "Chinese, Asian, Tibetan", location: "Madhapur", img: "https://images.unsplash.com/photo-1585032226651-759b368d7246?auto=format&fit=crop&w=500&q=80" }
        ];

        // Render Categories
        document.getElementById('categoriesGrid').innerHTML = categories.map(c => `
            <div class="cat-item" onclick="alert('Exploring ${c.name}...')">
                <div class="cat-img">
                    <img src="${c.img}" alt="${c.name}">
                </div>
                <h4>${c.name}</h4>
            </div>
        `).join('');

        // Render Restaurants
        document.getElementById('restaurantsGrid').innerHTML = restaurants.map(r => `
            <div class="restaurant-card" onclick="addToCart('${r.name}')">
                <div class="res-img-wrapper">
                    <img src="${r.img}" alt="${r.name}">
                    <div class="discount-badge">${r.offer}</div>
                </div>
                <div class="res-content">
                    <div class="res-name">${r.name}</div>
                    <div class="res-meta">
                        <span class="rating-box"><i class="fas fa-star" style="font-size: 10px;"></i> ${r.rating}</span>
                        <span>•</span>
                        <span>${r.time}</span>
                    </div>
                    <div class="res-cuisines">${r.cuisines}</div>
                    <div class="res-location">${r.location}</div>
                </div>
            </div>
        `).join('');

        let cartCount = 0;
        function addToCart(restaurantName) {
            cartCount++;
            document.getElementById('cartCount').innerText = cartCount;
            alert(`Added a delicious item from ${restaurantName} to your Swiggy cart!`);
        }
    </script>
</body>
</html>
