<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Nehitha Eats — Food & Grocery Delivery</title>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;500;600;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous">

    <style>
        :root {
            --uber-black: #000000;
            --uber-dark: #141414;
            --uber-green: #06C167;
            --uber-green-hover: #04A254;
            --uber-white: #ffffff;
            --uber-gray-50: #f6f6f6;
            --uber-gray-100: #e8e8e8;
            --uber-gray-200: #cccccc;
            --uber-gray-600: #757575;
            --uber-gray-900: #1d1d1d;
            --radius-pill: 500px;
            --radius-lg: 12px;
            --radius-md: 8px;
            --shadow-subtle: 0 4px 16px rgba(0, 0, 0, 0.06);
            --shadow-hover: 0 8px 24px rgba(0, 0, 0, 0.12);
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
            color: var(--uber-dark);
            background: var(--uber-white);
            -webkit-font-smoothing: antialiased;
            line-height: 1.5;
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

        /* Top Bar */
        .top-bar {
            background: var(--uber-black);
            color: var(--uber-white);
            text-align: center;
            padding: 10px 16px;
            font-size: 13px;
            font-weight: 500;
            border-bottom: 1px solid rgba(255, 255, 255, 0.1);
        }

        .top-bar span {
            background: var(--uber-green);
            color: var(--uber-white);
            padding: 3px 10px;
            border-radius: var(--radius-pill);
            margin-left: 8px;
            font-size: 11px;
            font-weight: 700;
            text-transform: uppercase;
            letter-spacing: 0.5px;
        }

        /* Header */
        header {
            position: sticky;
            top: 0;
            z-index: 100;
            background: var(--uber-white);
            border-bottom: 1px solid var(--uber-gray-100);
        }

        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 20px;
            height: 72px;
        }

        .brand {
            display: flex;
            align-items: center;
            gap: 6px;
            font-weight: 800;
            font-size: 26px;
            letter-spacing: -0.03em;
            color: var(--uber-black);
        }

        .brand .accent {
            color: var(--uber-green);
            font-weight: 600;
        }

        /* Location Picker Pill */
        .location-pill {
            display: flex;
            align-items: center;
            gap: 10px;
            background: var(--uber-gray-50);
            padding: 10px 16px;
            border-radius: var(--radius-pill);
            font-size: 14px;
            font-weight: 600;
            cursor: pointer;
            transition: background 0.2s;
            border: 1px solid transparent;
        }

        .location-pill:hover {
            background: var(--uber-gray-100);
        }

        /* Uber Search Bar */
        .search-box {
            position: relative;
            display: flex;
            align-items: center;
            background: var(--uber-gray-50);
            border-radius: var(--radius-pill);
            flex: 1;
            max-width: 480px;
            padding: 0 16px;
            transition: all 0.2s ease;
            border: 1px solid transparent;
        }

        .search-box:focus-within {
            background: var(--uber-white);
            border-color: var(--uber-black);
            box-shadow: 0 0 0 2px var(--uber-black);
        }

        .search-box i.fa-search {
            color: var(--uber-dark);
            font-size: 15px;
        }

        .search-box input {
            border: 0;
            background: transparent;
            outline: none;
            padding: 12px 12px;
            width: 100%;
            font-size: 14px;
            color: var(--uber-black);
            font-weight: 500;
        }

        .search-box input::placeholder {
            color: var(--uber-gray-600);
        }

        .search-box button {
            background: transparent;
            border: none;
            cursor: pointer;
            color: var(--uber-black);
            font-size: 14px;
            display: flex;
            align-items: center;
        }

        /* Navigation Links */
        nav.main-nav ul {
            display: flex;
            gap: 4px;
            list-style: none;
        }

        nav.main-nav li a {
            display: flex;
            gap: 8px;
            align-items: center;
            padding: 10px 16px;
            border-radius: var(--radius-pill);
            color: var(--uber-dark);
            font-weight: 600;
            font-size: 14px;
            transition: all 0.2s;
        }

        nav.main-nav li a:hover, nav.main-nav li a.active {
            background: var(--uber-black);
            color: var(--uber-white);
        }

        .header-right {
            display: flex;
            align-items: center;
            gap: 12px;
        }

        .icon-btn {
            background: var(--uber-gray-50);
            color: var(--uber-black);
            border: none;
            border-radius: var(--radius-pill);
            padding: 10px 16px;
            display: inline-flex;
            align-items: center;
            gap: 8px;
            cursor: pointer;
            font-size: 14px;
            font-weight: 600;
            position: relative;
            transition: background 0.2s;
        }

        .icon-btn:hover {
            background: var(--uber-gray-100);
        }

        .icon-btn-cart {
            background: var(--uber-black);
            color: var(--uber-white);
        }

        .icon-btn-cart:hover {
            background: #333333;
        }

        .badge-count {
            background: var(--uber-green);
            color: var(--uber-white);
            font-size: 11px;
            font-weight: 800;
            padding: 2px 7px;
            border-radius: var(--radius-pill);
        }

        /* Hero Section */
        .hero {
            background: var(--uber-gray-50);
            padding: 56px 0;
            border-bottom: 1px solid var(--uber-gray-100);
        }

        .hero-grid {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 48px;
            align-items: center;
        }

        .hero-badge {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            padding: 6px 12px;
            background: var(--uber-white);
            border-radius: var(--radius-pill);
            color: var(--uber-black);
            font-size: 13px;
            font-weight: 700;
            margin-bottom: 20px;
            box-shadow: var(--shadow-subtle);
        }

        .hero-badge i {
            color: var(--uber-green);
        }

        .hero h1 {
            font-size: 52px;
            font-weight: 800;
            line-height: 1.08;
            margin-bottom: 16px;
            letter-spacing: -0.03em;
            color: var(--uber-black);
        }

        .hero p {
            color: var(--uber-gray-600);
            font-size: 18px;
            margin-bottom: 32px;
            max-width: 480px;
            font-weight: 400;
        }

        .btn {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
            padding: 14px 28px;
            border-radius: var(--radius-pill);
            font-weight: 700;
            font-size: 15px;
            cursor: pointer;
            border: 0;
            transition: all 0.2s;
        }

        .btn-primary {
            background: var(--uber-black);
            color: var(--uber-white);
        }

        .btn-primary:hover {
            background: #2a2a2a;
            transform: translateY(-1px);
        }

        .btn-secondary {
            background: var(--uber-white);
            border: 1px solid var(--uber-gray-200);
            color: var(--uber-black);
        }

        .btn-secondary:hover {
            background: var(--uber-gray-50);
            border-color: var(--uber-black);
        }

        .hero-card {
            border-radius: var(--radius-lg);
            overflow: hidden;
            box-shadow: var(--shadow-hover);
            position: relative;
            height: 380px;
        }

        .hero-card img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            display: block;
        }

        /* Section Layouts */
        .section {
            padding: 56px 0;
        }

        .section-header {
            display: flex;
            justify-content: space-between;
            align-items: flex-end;
            margin-bottom: 28px;
        }

        .section-title h2 {
            font-size: 32px;
            font-weight: 800;
            letter-spacing: -0.02em;
            color: var(--uber-black);
        }

        .section-title p {
            color: var(--uber-gray-600);
            font-size: 15px;
            margin-top: 4px;
        }

        /* Filter Pills */
        .filter-pills {
            display: flex;
            gap: 8px;
        }

        .pill {
            background: var(--uber-gray-50);
            border: 1px solid transparent;
            color: var(--uber-black);
            padding: 10px 20px;
            border-radius: var(--radius-pill);
            font-size: 14px;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.2s;
        }

        .pill.active, .pill:hover {
            background: var(--uber-black);
            color: var(--uber-white);
        }

        /* Category Grid */
        .categories-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(160px, 1fr));
            gap: 16px;
        }

        .cat-card {
            background: var(--uber-gray-50);
            border-radius: var(--radius-lg);
            padding: 24px 16px;
            text-align: center;
            cursor: pointer;
            transition: all 0.2s ease;
            border: 2px solid transparent;
        }

        .cat-card:hover {
            background: var(--uber-white);
            border-color: var(--uber-black);
            box-shadow: var(--shadow-subtle);
            transform: translateY(-2px);
        }

        .cat-icon {
            width: 56px;
            height: 56px;
            background: var(--uber-white);
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 22px;
            color: var(--uber-black);
            margin: 0 auto 12px;
            box-shadow: var(--shadow-subtle);
            transition: all 0.2s;
        }

        .cat-card:hover .cat-icon {
            background: var(--uber-green);
            color: var(--uber-white);
        }

        .cat-card h4 {
            font-size: 14px;
            font-weight: 700;
            color: var(--uber-black);
        }

        /* Uber Eats Style Product Grid */
        .products-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
            gap: 28px;
        }

        .product-card {
            background: var(--uber-white);
            border-radius: var(--radius-lg);
            overflow: hidden;
            display: flex;
            flex-direction: column;
            cursor: pointer;
            transition: all 0.2s ease;
        }

        .product-card:hover {
            transform: translateY(-4px);
        }

        .product-img-wrapper {
            position: relative;
            height: 200px;
            border-radius: var(--radius-lg);
            overflow: hidden;
            background: var(--uber-gray-100);
        }

        .product-card img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform 0.3s ease;
        }

        .product-card:hover img {
            transform: scale(1.04);
        }

        .service-badge {
            position: absolute;
            top: 12px;
            left: 12px;
            background: var(--uber-black);
            color: var(--uber-white);
            font-size: 11px;
            font-weight: 700;
            padding: 4px 10px;
            border-radius: var(--radius-pill);
            letter-spacing: 0.3px;
            z-index: 2;
        }

        .favorite-btn {
            position: absolute;
            top: 12px;
            right: 12px;
            background: var(--uber-white);
            width: 36px;
            height: 36px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 16px;
            color: var(--uber-black);
            box-shadow: var(--shadow-subtle);
            border: none;
            cursor: pointer;
            z-index: 2;
            transition: transform 0.2s;
        }

        .favorite-btn:hover {
            transform: scale(1.1);
        }

        .product-content {
            padding: 14px 4px 0;
            display: flex;
            flex-direction: column;
            flex: 1;
        }

        .product-header-row {
            display: flex;
            justify-content: space-between;
            align-items: flex-start;
            gap: 8px;
            margin-bottom: 4px;
        }

        .product-title {
            font-size: 17px;
            font-weight: 700;
            color: var(--uber-black);
            line-height: 1.3;
        }

        .product-rating {
            background: var(--uber-gray-50);
            color: var(--uber-black);
            font-size: 12px;
            font-weight: 700;
            padding: 2px 8px;
            border-radius: var(--radius-pill);
            display: inline-flex;
            align-items: center;
            gap: 4px;
            white-space: nowrap;
        }

        .product-meta {
            color: var(--uber-gray-600);
            font-size: 13px;
            font-weight: 500;
            margin-bottom: 12px;
        }

        .product-bottom {
            margin-top: auto;
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding-top: 8px;
        }

        .current-price {
            font-size: 18px;
            font-weight: 800;
            color: var(--uber-black);
        }

        .add-cart-btn {
            background: var(--uber-black);
            color: var(--uber-white);
            border: none;
            padding: 8px 18px;
            border-radius: var(--radius-pill);
            font-weight: 700;
            font-size: 13px;
            cursor: pointer;
            transition: all 0.2s;
            display: flex;
            align-items: center;
            gap: 6px;
        }

        .add-cart-btn:hover {
            background: var(--uber-green);
        }

        /* Footer */
        footer {
            background: var(--uber-black);
            color: var(--uber-white);
            padding: 60px 0 40px;
            margin-top: 80px;
        }

        .footer-brand {
            font-size: 28px;
            font-weight: 800;
            margin-bottom: 24px;
        }

        .footer-brand span {
            color: var(--uber-green);
        }

        .footer-bottom {
            border-top: 1px solid rgba(255, 255, 255, 0.1);
            padding-top: 24px;
            text-align: center;
            color: var(--uber-gray-200);
            font-size: 13px;
        }

        @media (max-width: 900px) {
            .hero-grid { grid-template-columns: 1fr; }
            .hero-card { display: none; }
            .location-pill { display: none; }
            nav.main-nav { display: none; }
        }
    </style>
</head>

<body>

    <div class="top-bar">
        ⚡ Order with <strong>Nehitha Pass</strong> for $0 Delivery Fee & 5% off <span>Uber Eats Style</span>
    </div>

    <header>
        <div class="container header-inner">
            <a class="brand" href="#">
                <span>Nehitha<span class="accent">Eats</span></span>
            </a>

            <div class="location-pill">
                <i class="fas fa-map-marker-alt"></i>
                <span>Deliver now • San Francisco</span>
                <i class="fas fa-chevron-down" style="font-size: 11px;"></i>
            </div>

            <div class="search-box">
                <i class="fas fa-search"></i>
                <input type="search" id="searchInput" placeholder="Search food, groceries, drinks..." aria-label="Search">
            </div>

            <nav class="main-nav">
                <ul>
                    <li><a href="#" class="active"><i class="fas fa-utensils"></i> Delivery</a></li>
                    <li><a href="#categoriesSection"><i class="fas fa-shopping-bag"></i> Pickup</a></li>
                </ul>
            </nav>

            <div class="header-right">
                <a href="#" class="icon-btn" title="Favorites">
                    <i class="far fa-heart"></i>
                    <span id="wishlistCount">0</span>
                </a>

                <a href="#" class="icon-btn icon-btn-cart" title="Cart">
                    <i class="fas fa-shopping-cart"></i>
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
                        <i class="fas fa-bolt"></i> Fast 25-min delivery
                    </div>
                    <h1>Order food you love, delivered fast</h1>
                    <p>Order from your favorite local restaurants and top gourmet chefs in just a few taps.</p>
                    <div style="display: flex; gap: 12px; flex-wrap: wrap;">
                        <a href="#productsSection" class="btn btn-primary"><i class="fas fa-utensils"></i> Find Food</a>
                        <a href="#categoriesSection" class="btn btn-secondary">Explore Categories</a>
                    </div>
                </div>

                <div class="hero-card">
                    <img src="https://images.unsplash.com/photo-1568901346375-23c9450c58cd?auto=format&fit=crop&w=800&q=80" alt="Uber Eats Gourmet Burger">
                </div>
            </div>
        </section>

        <section class="section container" id="categoriesSection">
            <div class="section-header">
                <div class="section-title">
                    <h2>Explore Categories</h2>
                    <p>Browse top cuisines around you</p>
                </div>
            </div>
            <div class="categories-grid" id="categoriesGrid"></div>
        </section>

        <section class="section container" id="productsSection">
            <div class="section-header">
                <div class="section-title">
                    <h2>Popular Near You</h2>
                    <p>Top dishes with high ratings and fast delivery</p>
                </div>
                <div class="filter-pills">
                    <button class="pill active">All</button>
                    <button class="pill">Fast Food</button>
                    <button class="pill">Asian</button>
                    <button class="pill">Desserts</button>
                </div>
            </div>
            <div class="products-grid" id="productsGrid"></div>
        </section>
    </main>

    <footer>
        <div class="container">
            <div class="footer-brand">Nehitha<span>Eats</span></div>
            <div class="footer-bottom">
                <p>&copy; 2026 Nehitha Eats, Inc. Powered by Uber design system architecture.</p>
            </div>
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
            { id: 1, title: "Artisan Pepperoni Supreme Pizza", price: "$18.99", time: "25-30 min", rating: "4.9 ★", img: "https://images.unsplash.com/photo-1513104890138-7c749659a591?auto=format&fit=crop&w=500&q=80" },
            { id: 2, title: "Double Loaded Cheeseburger Meal", price: "$14.50", time: "15-20 min", rating: "4.7 ★", img: "https://images.unsplash.com/photo-1568901346375-23c9450c58cd?auto=format&fit=crop&w=500&q=80" },
            { id: 3, title: "Hyderabadi Chicken Dum Biryani", price: "$16.00", time: "20-25 min", rating: "4.9 ★", img: "https://images.unsplash.com/photo-1563379091339-03b21ab4a4f8?auto=format&fit=crop&w=500&q=80" },
            { id: 4, title: "Fresh Salmon & Avocado Sushi Roll", price: "$22.00", time: "30-35 min", rating: "5.0 ★", img: "https://images.unsplash.com/photo-1579871494447-9811cf80d66c?auto=format&fit=crop&w=500&q=80" }
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

        // Render Food Items in Uber Eats Layout
        document.getElementById('productsGrid').innerHTML = products.map(p => `
            <div class="product-card">
                <div class="product-img-wrapper">
                    <span class="service-badge">Uber Select</span>
                    <button class="favorite-btn" aria-label="Favorite"><i class="far fa-heart"></i></button>
                    <img src="${p.img}" alt="${p.title}">
                </div>
                <div class="product-content">
                    <div class="product-header-row">
                        <div class="product-title">${p.title}</div>
                        <div class="product-rating">${p.rating}</div>
                    </div>
                    <div class="product-meta">${p.time} • $0.99 Delivery Fee</div>
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
