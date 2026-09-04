<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Nehitha Eats — Superfast Food & Grocery Delivery</title>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;500;600;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous">

    <style>
        :root {
            --bg: #0b0f17;
            --surface: #161c28;
            --surface-card: #1e2638;
            --surface-hover: #273146;
            --primary: #f97316; /* Fresh Food Orange */
            --primary-hover: #ea580c;
            --primary-light: rgba(249, 115, 22, 0.15);
            --accent: #ec4899; 
            --accent-green: #10b981;
            --text: #f8fafc;
            --muted: #94a3b8;
            --border: rgba(255, 255, 255, 0.08);
            --border-hover: rgba(249, 115, 22, 0.4);
            --radius-xl: 20px;
            --radius-lg: 14px;
            --radius-md: 10px;
            --shadow: 0 20px 25px -5px rgba(0, 0, 0, 0.5), 0 8px 10px -6px rgba(0, 0, 0, 0.3);
            --glow: 0 0 25px rgba(249, 115, 22, 0.35);
            --container: 1280px;
        }

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            scroll-behavior: smooth;
        }

        body {
            font-family: 'Plus Jakarta Sans', system-ui, -apple-system, sans-serif;
            color: var(--text);
            background: var(--bg);
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
            padding: 0 24px;
        }

        /* Top Announcement Bar */
        .top-bar {
            background: linear-gradient(90deg, #ea580c 0%, #ec4899 100%);
            color: #ffffff;
            text-align: center;
            padding: 9px 16px;
            font-size: 13.5px;
            font-weight: 600;
            letter-spacing: 0.2px;
        }

        .top-bar span {
            background: rgba(255, 255, 255, 0.2);
            padding: 2px 10px;
            border-radius: 99px;
            margin-left: 6px;
            font-size: 12px;
        }

        /* Header */
        header {
            position: sticky;
            top: 0;
            z-index: 100;
            background: rgba(11, 15, 23, 0.85);
            backdrop-filter: blur(16px);
            border-bottom: 1px solid var(--border);
        }

        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 24px;
            height: 76px;
        }

        .brand {
            display: flex;
            align-items: center;
            gap: 10px;
            font-weight: 800;
            font-size: 24px;
            letter-spacing: -0.02em;
            color: #fff;
        }

        .brand-icon {
            width: 38px;
            height: 38px;
            background: linear-gradient(135deg, var(--primary), var(--accent));
            border-radius: 10px;
            display: flex;
            align-items: center;
            justify-content: center;
            color: #fff;
            font-size: 18px;
            box-shadow: var(--glow);
        }

        .brand .accent {
            color: var(--primary);
        }

        /* Search Bar */
        .search-box {
            position: relative;
            display: flex;
            align-items: center;
            background: var(--surface);
            border: 1px solid var(--border);
            border-radius: var(--radius-lg);
            flex: 1;
            max-width: 540px;
            overflow: hidden;
            transition: all 0.2s;
        }

        .search-box:focus-within {
            border-color: var(--primary);
            box-shadow: 0 0 0 3px rgba(249, 115, 22, 0.2);
        }

        .search-box input {
            border: 0;
            background: transparent;
            outline: none;
            padding: 12px 18px;
            width: 100%;
            font-size: 14px;
            color: #fff;
        }

        .search-box input::placeholder {
            color: var(--muted);
        }

        .search-box button {
            background: var(--primary);
            border: none;
            padding: 0 22px;
            height: 46px;
            cursor: pointer;
            color: #fff;
            font-size: 15px;
            transition: background 0.2s;
        }

        .search-box button:hover {
            background: var(--primary-hover);
        }

        /* Navigation Links */
        nav.main-nav ul {
            display: flex;
            gap: 8px;
            list-style: none;
        }

        nav.main-nav li a {
            display: flex;
            gap: 8px;
            align-items: center;
            padding: 8px 14px;
            border-radius: var(--radius-md);
            color: var(--muted);
            font-weight: 600;
            font-size: 14px;
            transition: all 0.2s;
        }

        nav.main-nav li a:hover, nav.main-nav li a.active {
            color: #fff;
            background: var(--primary-light);
        }

        .header-right {
            display: flex;
            align-items: center;
            gap: 12px;
        }

        .icon-btn {
            background: var(--surface);
            color: var(--text);
            border: 1px solid var(--border);
            border-radius: 12px;
            width: 44px;
            height: 44px;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            cursor: pointer;
            font-size: 16px;
            position: relative;
            transition: all 0.2s;
        }

        .icon-btn:hover {
            background: var(--surface-hover);
            border-color: var(--primary);
            transform: translateY(-2px);
        }

        .badge-count {
            position: absolute;
            top: -5px;
            right: -5px;
            background: var(--accent);
            color: #fff;
            font-size: 11px;
            font-weight: 800;
            width: 20px;
            height: 20px;
            border-radius: 50%;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            border: 2px solid var(--bg);
        }

        /* Hero Banner */
        .hero {
            position: relative;
            padding: 80px 0;
            background: radial-gradient(circle at 80% 20%, rgba(249, 115, 22, 0.15) 0%, rgba(11, 15, 23, 1) 70%);
            border-bottom: 1px solid var(--border);
        }

        .hero-grid {
            display: grid;
            grid-template-columns: 1.1fr 0.9fr;
            gap: 48px;
            align-items: center;
        }

        .hero-badge {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            padding: 6px 14px;
            background: var(--primary-light);
            border: 1px solid rgba(249, 115, 22, 0.3);
            border-radius: 99px;
            color: #fdba74;
            font-size: 13px;
            font-weight: 700;
            margin-bottom: 20px;
        }

        .hero h1 {
            font-size: 48px;
            font-weight: 800;
            line-height: 1.15;
            margin-bottom: 18px;
            letter-spacing: -0.02em;
        }

        .hero h1 span {
            background: linear-gradient(135deg, #fdba74 0%, var(--accent) 100%);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        .hero p {
            color: var(--muted);
            font-size: 18px;
            margin-bottom: 32px;
            max-width: 520px;
        }

        .btn {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 10px;
            padding: 14px 28px;
            border-radius: 99px;
            font-weight: 700;
            font-size: 15px;
            cursor: pointer;
            border: 0;
            transition: all 0.25s;
        }

        .btn-primary {
            background: linear-gradient(135deg, var(--primary), var(--primary-hover));
            color: #fff;
            box-shadow: var(--glow);
        }

        .btn-primary:hover {
            transform: translateY(-2px);
            box-shadow: 0 0 30px rgba(249, 115, 22, 0.5);
        }

        .btn-secondary {
            background: var(--surface);
            border: 1px solid var(--border);
            color: var(--text);
        }

        .btn-secondary:hover {
            background: var(--surface-hover);
            border-color: var(--border-hover);
            transform: translateY(-2px);
        }

        .hero-card {
            border-radius: var(--radius-xl);
            overflow: hidden;
            border: 1px solid var(--border);
            box-shadow: var(--shadow);
            background: var(--surface-card);
            position: relative;
            transition: transform 0.3s;
        }

        .hero-card:hover {
            transform: scale(1.02);
        }

        .hero-card img {
            width: 100%;
            height: 360px;
            object-fit: cover;
            display: block;
        }

        /* Section Layouts */
        .section {
            padding: 70px 0;
        }

        .section-header {
            display: flex;
            justify-content: space-between;
            align-items: flex-end;
            margin-bottom: 36px;
        }

        .section-title h2 {
            font-size: 30px;
            font-weight: 800;
            letter-spacing: -0.01em;
        }

        .section-title p {
            color: var(--muted);
            font-size: 15px;
            margin-top: 4px;
        }

        /* Filter Pills */
        .filter-pills {
            display: flex;
            gap: 10px;
        }

        .pill {
            background: var(--surface);
            border: 1px solid var(--border);
            color: var(--muted);
            padding: 8px 18px;
            border-radius: 99px;
            font-size: 13px;
            font-weight: 700;
            cursor: pointer;
            transition: all 0.2s;
        }

        .pill.active, .pill:hover {
            background: var(--primary);
            color: #fff;
            border-color: var(--primary);
            box-shadow: 0 4px 12px rgba(249, 115, 22, 0.3);
        }

        /* Category Grid */
        .categories-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(180px, 1fr));
            gap: 20px;
        }

        .cat-card {
            background: var(--surface-card);
            border: 1px solid var(--border);
            border-radius: var(--radius-lg);
            padding: 24px;
            text-align: center;
            cursor: pointer;
            transition: all 0.25s;
        }

        .cat-card:hover {
            border-color: var(--primary);
            background: var(--surface-hover);
            transform: translateY(-6px);
            box-shadow: var(--shadow);
        }

        .cat-icon {
            width: 52px;
            height: 52px;
            background: var(--primary-light);
            border-radius: 14px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 22px;
            color: var(--primary);
            margin: 0 auto 14px;
            transition: all 0.25s;
        }

        .cat-card:hover .cat-icon {
            background: var(--primary);
            color: #fff;
        }

        .cat-card h4 {
            font-size: 15px;
            font-weight: 700;
        }

        /* Products Grid */
        .products-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(260px, 1fr));
            gap: 24px;
        }

        .product-card {
            background: var(--surface-card);
            border: 1px solid var(--border);
            border-radius: var(--radius-lg);
            overflow: hidden;
            display: flex;
            flex-direction: column;
            transition: all 0.25s;
        }

        .product-card:hover {
            border-color: var(--border-hover);
            transform: translateY(-6px);
            box-shadow: var(--shadow);
        }

        .product-img-wrapper {
            position: relative;
            height: 220px;
            background: #ffffff;
            padding: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            overflow: hidden;
        }

        .product-card img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform 0.3s;
        }

        .product-card:hover img {
            transform: scale(1.05);
        }

        .service-badge {
            position: absolute;
            top: 12px;
            left: 12px;
            background: linear-gradient(135deg, var(--primary), var(--accent));
            color: #fff;
            font-size: 11px;
            font-weight: 800;
            padding: 4px 10px;
            border-radius: 99px;
            text-transform: uppercase;
            letter-spacing: 0.5px;
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.2);
            z-index: 2;
        }

        .delivery-time {
            position: absolute;
            bottom: 12px;
            right: 12px;
            background: rgba(11, 15, 23, 0.85);
            backdrop-filter: blur(8px);
            color: #fff;
            font-size: 11px;
            font-weight: 700;
            padding: 4px 10px;
            border-radius: 99px;
            z-index: 2;
        }

        .product-content {
            padding: 20px;
            display: flex;
            flex-direction: column;
            flex: 1;
        }

        .product-title {
            font-size: 16px;
            font-weight: 700;
            margin-bottom: 8px;
            color: #fff;
            line-height: 1.4;
        }

        .product-rating {
            color: #f59e0b;
            font-size: 13px;
            margin-bottom: 16px;
            font-weight: 600;
        }

        .product-bottom {
            margin-top: auto;
            display: flex;
            align-items: center;
            justify-content: space-between;
        }

        .current-price {
            font-size: 20px;
            font-weight: 800;
            color: #fff;
        }

        .add-cart-btn {
            background: var(--primary);
            color: #fff;
            border: none;
            padding: 10px 18px;
            border-radius: var(--radius-md);
            font-weight: 700;
            font-size: 13px;
            cursor: pointer;
            transition: all 0.2s;
            display: flex;
            align-items: center;
            gap: 6px;
        }

        .add-cart-btn:hover {
            background: var(--primary-hover);
            transform: scale(1.03);
        }

        /* Footer */
        footer {
            background: var(--surface);
            border-top: 1px solid var(--border);
            padding: 50px 0 30px;
            margin-top: 60px;
        }

        .footer-bottom {
            text-align: center;
            color: var(--muted);
            font-size: 14px;
        }

        @media (max-width: 768px) {
            .hero-grid { grid-template-columns: 1fr; }
            .hero-card { display: none; }
            nav.main-nav { display: none; }
            .search-box { max-width: 100%; }
        }
    </style>
</head>

<body>

    <div class="top-bar">
        ✨ Powered by <strong>Nehitha Express</strong> — Hot & Fresh Food Delivered in 30 Mins <span>Nehitha Pass</span>
    </div>

    <header>
        <div class="container header-inner">
            <a class="brand" href="#">
                <div class="brand-icon">
                    <i class="fas fa-utensils"></i>
                </div>
                <span>Nehitha<span class="accent">.eats</span></span>
            </a>

            <div class="search-box">
                <input type="search" id="searchInput" placeholder="Search dishes, cuisines, or restaurants..." aria-label="Search">
                <button aria-label="Search Submit"><i class="fas fa-search"></i></button>
            </div>

            <nav class="main-nav">
                <ul>
                    <li><a href="#" class="active"><i class="fas fa-home"></i> Home</a></li>
                    <li><a href="#categoriesSection"><i class="fas fa-list"></i> Cuisines</a></li>
                    <li><a href="#productsSection"><i class="fas fa-fire"></i> Popular</a></li>
                </ul>
            </nav>

            <div class="header-right">
                <a href="#" class="icon-btn" title="Favorites">
                    <i class="far fa-heart"></i>
                    <span class="badge-count" id="wishlistCount">0</span>
                </a>

                <a href="#" class="icon-btn" title="Cart">
                    <i class="fas fa-shopping-bag"></i>
                    <span class="badge-count" id="cartCount">0</span>
                </a>
            </div>
        </div>
    </header>

    <main>
        <section class="hero">
            <div class="container hero-grid">
                <div>
                    <div class="hero-badge">
                        <i class="fas fa-bolt"></i> Superfast Delivery
                    </div>
                    <h1>Delicious Food <span>Delivered To Your Door</span></h1>
                    <p>Satisfy your cravings with top-rated local restaurants, gourmet cloud kitchens, and fresh daily meals near you.</p>
                    <div style="display: flex; gap: 14px; flex-wrap: wrap;">
                        <a href="#productsSection" class="btn btn-primary"><i class="fas fa-hamburger"></i> Order Now</a>
                        <a href="#categoriesSection" class="btn btn-secondary">Explore Cuisines</a>
                    </div>
                </div>

                <div class="hero-card">
                    <img src="https://images.unsplash.com/photo-1568901346375-23c9450c58cd?auto=format&fit=crop&w=800&q=80" alt="Delicious Burger">
                </div>
            </div>
        </section>

        <section class="section container" id="categoriesSection">
            <div class="section-header">
                <div class="section-title">
                    <h2>Explore Cuisines</h2>
                    <p>Browse through your favorite food categories</p>
                </div>
            </div>
            <div class="categories-grid" id="categoriesGrid"></div>
        </section>

        <section class="section container" id="productsSection">
            <div class="section-header">
                <div class="section-title">
                    <h2>Popular Dishes</h2>
                    <p>Hand-crafted meals prepared by top Nehitha verified chefs</p>
                </div>
                <div class="filter-pills">
                    <button class="pill active">All Dishes</button>
                    <button class="pill">Fast Food</button>
                    <button class="pill">Asian</button>
                    <button class="pill">Desserts</button>
                </div>
            </div>
            <div class="products-grid" id="productsGrid"></div>
        </section>
    </main>

    <footer>
        <div class="container footer-bottom">
            <p>&copy; 2026 Nehitha Eats, Inc. All rights reserved. Delighting foodies everywhere.</p>
        </div>
    </footer>

    <script>
        const categories = [
            { name: "Pizza & Pasta", icon: "fa-pizza-slice" },
            { name: "Burgers & Fast Food", icon: "fa-hamburger" },
            { name: "Biryani & Indian", icon: "fa-bowl-rice" },
            { name: "Asian & Sushi", icon: "fa-utensils" },
            { name: "Desserts & Bakery", icon: "fa-ice-cream" }
        ];

        const products = [
            { id: 1, title: "Artisan Pepperoni Supreme Pizza", price: "$18.99", time: "25-30 min", rating: "★★★★★ (4.9)", img: "https://images.unsplash.com/photo-1513104890138-7c749659a591?auto=format&fit=crop&w=500&q=80" },
            { id: 2, title: "Double Loaded Cheeseburger Meal", price: "$14.50", time: "15-20 min", rating: "★★★★☆ (4.7)", img: "https://images.unsplash.com/photo-1568901346375-23c9450c58cd?auto=format&fit=crop&w=500&q=80" },
            { id: 3, title: "Hyderabadi Chicken Dum Biryani", price: "$16.00", time: "20-25 min", rating: "★★★★★ (4.9)", img: "https://images.unsplash.com/photo-1563379091339-03b21ab4a4f8?auto=format&fit=crop&w=500&q=80" },
            { id: 4, title: "Fresh Salmon & Avocado Sushi Roll", price: "$22.00", time: "30-35 min", rating: "★★★★★ (5.0)", img: "https://images.unsplash.com/photo-1579871494447-9811cf80d66c?auto=format&fit=crop&w=500&q=80" }
        ];

        // Render Categories
        document.getElementById('categoriesGrid').innerHTML = categories.map(c => `
            <div class="cat-card">
                <div class="cat-icon">
                    <i class="fas ${c.icon}"></i>
                </div>
                <h4>${c.name}</h4>
            </div>
        `).join('');

        // Render Food Items
        document.getElementById('productsGrid').innerHTML = products.map(p => `
            <div class="product-card">
                <div class="product-img-wrapper">
                    <span class="service-badge">Nehitha Chef</span>
                    <span class="delivery-time"><i class="far fa-clock"></i> ${p.time}</span>
                    <img src="${p.img}" alt="${p.title}">
                </div>
                <div class="product-content">
                    <div class="product-title">${p.title}</div>
                    <div class="product-rating">${p.rating}</div>
                    <div class="product-bottom">
                        <span class="current-price">${p.price}</span>
                        <button class="add-cart-btn" onclick="addToCart()"><i class="fas fa-plus"></i> Add</button>
                    </div>
                </div>
            </div>
        `).join('');

        let cartCount = 0;
        function addToCart() {
            cartCount++;
            document.getElementById('cartCount').innerText = cartCount;
        }
    </script>
</body>
</html>
