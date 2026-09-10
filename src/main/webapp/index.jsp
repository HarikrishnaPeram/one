<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Nehitha Eats — Gourmet & Food Delivery</title>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;500;600;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous">

    <style>
        :root {
            --gourmet-primary: #FF385C;
            --gourmet-primary-hover: #E00B3D;
            --gourmet-dark: #1F1F1F;
            --gourmet-light: #FAFAFA;
            --gourmet-cream: #F4F1EA;
            --gourmet-white: #FFFFFF;
            --gourmet-gray-100: #EFEFEF;
            --gourmet-gray-500: #717171;
            --gourmet-gray-900: #222222;
            --radius-pill: 9999px;
            --radius-lg: 16px;
            --radius-md: 10px;
            --shadow-card: 0 6px 20px rgba(0, 0, 0, 0.05);
            --shadow-hover: 0 12px 32px rgba(0, 0, 0, 0.1);
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
            color: var(--gourmet-gray-900);
            background: var(--gourmet-light);
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
            background: linear-gradient(135deg, #FF385C, #FF6B4A);
            color: var(--gourmet-white);
            text-align: center;
            padding: 10px 16px;
            font-size: 13px;
            font-weight: 600;
            letter-spacing: -0.01em;
        }

        .top-bar span {
            background: rgba(255, 255, 255, 0.25);
            padding: 2px 10px;
            border-radius: var(--radius-pill);
            margin-left: 6px;
            font-weight: 700;
        }

        /* Header */
        header {
            position: sticky;
            top: 0;
            z-index: 100;
            background: rgba(255, 255, 255, 0.95);
            backdrop-filter: blur(12px);
            border-bottom: 1px solid var(--gourmet-gray-100);
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
            gap: 4px;
            font-weight: 800;
            font-size: 26px;
            letter-spacing: -0.04em;
            color: var(--gourmet-gray-900);
        }

        .brand .accent {
            color: var(--gourmet-primary);
        }

        /* Location Picker */
        .location-pill {
            display: flex;
            align-items: center;
            gap: 8px;
            background: var(--gourmet-cream);
            padding: 10px 18px;
            border-radius: var(--radius-pill);
            font-size: 14px;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.2s;
            border: 1px solid rgba(0,0,0,0.04);
        }

        .location-pill:hover {
            background: #EBE6DC;
        }

        .location-pill i {
            color: var(--gourmet-primary);
        }

        /* Search Bar */
        .search-box {
            position: relative;
            display: flex;
            align-items: center;
            background: var(--gourmet-cream);
            border-radius: var(--radius-pill);
            flex: 1;
            max-width: 440px;
            padding: 0 18px;
            transition: all 0.2s ease;
            border: 1px solid transparent;
        }

        .search-box:focus-within {
            background: var(--gourmet-white);
            border-color: var(--gourmet-primary);
            box-shadow: 0 0 0 3px rgba(255, 56, 92, 0.15);
        }

        .search-box i.fa-search {
            color: var(--gourmet-gray-500);
            font-size: 14px;
        }

        .search-box input {
            border: 0;
            background: transparent;
            outline: none;
            padding: 12px 10px;
            width: 100%;
            font-size: 14px;
            color: var(--gourmet-gray-900);
            font-weight: 500;
        }

        .search-box input::placeholder {
            color: var(--gourmet-gray-500);
        }

        /* Nav */
        nav.main-nav ul {
            display: flex;
            gap: 6px;
            list-style: none;
        }

        nav.main-nav li a {
            display: flex;
            gap: 8px;
            align-items: center;
            padding: 10px 18px;
            border-radius: var(--radius-pill);
            color: var(--gourmet-gray-900);
            font-weight: 600;
            font-size: 14px;
            transition: all 0.2s;
        }

        nav.main-nav li a:hover, nav.main-nav li a.active {
            background: var(--gourmet-dark);
            color: var(--gourmet-white);
        }

        .header-right {
            display: flex;
            align-items: center;
            gap: 12px;
        }

        .icon-btn {
            background: var(--gourmet-cream);
            color: var(--gourmet-gray-900);
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
            transition: all 0.2s;
        }

        .icon-btn:hover {
            background: #EBE6DC;
        }

        .icon-btn-cart {
            background: var(--gourmet-primary);
            color: var(--gourmet-white);
        }

        .icon-btn-cart:hover {
            background: var(--gourmet-primary-hover);
        }

        .badge-count {
            background: var(--gourmet-dark);
            color: var(--gourmet-white);
            font-size: 11px;
            font-weight: 800;
            padding: 2px 7px;
            border-radius: var(--radius-pill);
        }

        /* Hero Section */
        .hero {
            background: linear-gradient(to bottom, var(--gourmet-cream), var(--gourmet-light));
            padding: 64px 0 80px;
            border-bottom: 1px solid var(--gourmet-gray-100);
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
            padding: 8px 16px;
            background: var(--gourmet-white);
            border-radius: var(--radius-pill);
            color: var(--gourmet-gray-900);
            font-size: 13px;
            font-weight: 700;
            margin-bottom: 24px;
            box-shadow: var(--shadow-card);
            border: 1px solid rgba(0,0,0,0.03);
        }

        .hero-badge i {
            color: var(--gourmet-primary);
        }

        .hero h1 {
            font-size: 56px;
            font-weight: 800;
            line-height: 1.1;
            margin-bottom: 20px;
            letter-spacing: -0.03em;
            color: var(--gourmet-gray-900);
        }

        .hero p {
            color: var(--gourmet-gray-500);
            font-size: 18px;
            margin-bottom: 36px;
            max-width: 500px;
            font-weight: 400;
        }

        .btn {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 10px;
            padding: 16px 32px;
            border-radius: var(--radius-pill);
            font-weight: 700;
            font-size: 15px;
            cursor: pointer;
            border: 0;
            transition: all 0.2s cubic-bezier(0.16, 1, 0.3, 1);
        }

        .btn-primary {
            background: var(--gourmet-primary);
            color: var(--gourmet-white);
            box-shadow: 0 4px 14px rgba(255, 56, 92, 0.35);
        }

        .btn-primary:hover {
            background: var(--gourmet-primary-hover);
            transform: translateY(-2px);
            box-shadow: 0 6px 20px rgba(255, 56, 92, 0.45);
        }

        .btn-secondary {
            background: var(--gourmet-white);
            border: 1px solid #D1CCD2;
            color: var(--gourmet-gray-900);
        }

        .btn-secondary:hover {
            background: var(--gourmet-cream);
            border-color: var(--gourmet-gray-900);
        }

        .hero-card {
            border-radius: var(--radius-lg);
            overflow: hidden;
            box-shadow: var(--shadow-hover);
            position: relative;
            height: 400px;
            border: 4px solid var(--gourmet-white);
        }

        .hero-card img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            display: block;
        }

        /* Section Layouts */
        .section {
            padding: 64px 0;
        }

        .section-header {
            display: flex;
            justify-content: space-between;
            align-items: flex-end;
            margin-bottom: 32px;
        }

        .section-title h2 {
            font-size: 32px;
            font-weight: 800;
            letter-spacing: -0.02em;
            color: var(--gourmet-gray-900);
        }

        .section-title p {
            color: var(--gourmet-gray-500);
            font-size: 15px;
            margin-top: 4px;
        }

        /* Filter Pills */
        .filter-pills {
            display: flex;
            gap: 10px;
        }

        .pill {
            background: var(--gourmet-white);
            border: 1px solid var(--gourmet-gray-100);
            color: var(--gourmet-gray-900);
            padding: 10px 20px;
            border-radius: var(--radius-pill);
            font-size: 14px;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.2s;
            box-shadow: 0 2px 8px rgba(0,0,0,0.02);
        }

        .pill.active, .pill:hover {
            background: var(--gourmet-dark);
            color: var(--gourmet-white);
            border-color: var(--gourmet-dark);
        }

        /* Category Grid */
        .categories-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(180px, 1fr));
            gap: 20px;
        }

        .cat-card {
            background: var(--gourmet-white);
            border-radius: var(--radius-lg);
            padding: 28px 20px;
            text-align: center;
            cursor: pointer;
            transition: all 0.25s ease;
            border: 1px solid var(--gourmet-gray-100);
            box-shadow: var(--shadow-card);
        }

        .cat-card:hover {
            border-color: var(--gourmet-primary);
            box-shadow: var(--shadow-hover);
            transform: translateY(-4px);
        }

        .cat-icon {
            width: 64px;
            height: 64px;
            background: var(--gourmet-cream);
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 24px;
            color: var(--gourmet-primary);
            margin: 0 auto 16px;
            transition: all 0.2s;
        }

        .cat-card:hover .cat-icon {
            background: var(--gourmet-primary);
            color: var(--gourmet-white);
        }

        .cat-card h4 {
            font-size: 15px;
            font-weight: 700;
            color: var(--gourmet-gray-900);
        }

        /* Product Grid */
        .products-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
            gap: 32px;
        }

        .product-card {
            background: var(--gourmet-white);
            border-radius: var(--radius-lg);
            overflow: hidden;
            display: flex;
            flex-direction: column;
            cursor: pointer;
            transition: all 0.3s cubic-bezier(0.16, 1, 0.3, 1);
            border: 1px solid var(--gourmet-gray-100);
            box-shadow: var(--shadow-card);
            padding: 12px;
        }

        .product-card:hover {
            transform: translateY(-6px);
            box-shadow: var(--shadow-hover);
            border-color: rgba(0,0,0,0.08);
        }

        .product-img-wrapper {
            position: relative;
            height: 210px;
            border-radius: 12px;
            overflow: hidden;
            background: var(--gourmet-cream);
        }

        .product-card img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform 0.4s ease;
        }

        .product-card:hover img {
            transform: scale(1.06);
        }

        .service-badge {
            position: absolute;
            top: 12px;
            left: 12px;
            background: rgba(0, 0, 0, 0.75);
            backdrop-filter: blur(4px);
            color: var(--gourmet-white);
            font-size: 11px;
            font-weight: 700;
            padding: 5px 12px;
            border-radius: var(--radius-pill);
            letter-spacing: 0.3px;
            z-index: 2;
        }

        .favorite-btn {
            position: absolute;
            top: 12px;
            right: 12px;
            background: var(--gourmet-white);
            width: 38px;
            height: 38px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 16px;
            color: var(--gourmet-gray-900);
            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
            border: none;
            cursor: pointer;
            z-index: 2;
            transition: transform 0.2s, color 0.2s;
        }

        .favorite-btn:hover {
            transform: scale(1.1);
            color: var(--gourmet-primary);
        }

        .product-content {
            padding: 16px 8px 4px;
            display: flex;
            flex-direction: column;
            flex: 1;
        }

        .product-header-row {
            display: flex;
            justify-content: space-between;
            align-items: flex-start;
            gap: 10px;
            margin-bottom: 6px;
        }

        .product-title {
            font-size: 17px;
            font-weight: 700;
            color: var(--gourmet-gray-900);
            line-height: 1.35;
        }

        .product-rating {
            background: #FFF0F2;
            color: var(--gourmet-primary);
            font-size: 12px;
            font-weight: 800;
            padding: 4px 10px;
            border-radius: var(--radius-pill);
            display: inline-flex;
            align-items: center;
            gap: 4px;
            white-space: nowrap;
        }

        .product-meta {
            color: var(--gourmet-gray-500);
            font-size: 13px;
            font-weight: 500;
            margin-bottom: 16px;
        }

        .product-bottom {
            margin-top: auto;
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding-top: 12px;
            border-top: 1px solid var(--gourmet-gray-100);
        }

        .current-price {
            font-size: 19px;
            font-weight: 800;
            color: var(--gourmet-gray-900);
        }

        .add-cart-btn {
            background: var(--gourmet-cream);
            color: var(--gourmet-gray-900);
            border: none;
            padding: 10px 20px;
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
            background: var(--gourmet-primary);
            color: var(--gourmet-white);
        }

        /* Footer */
        footer {
            background: var(--gourmet-dark);
            color: var(--gourmet-white);
            padding: 72px 0 48px;
            margin-top: 100px;
        }

        .footer-brand {
            font-size: 30px;
            font-weight: 800;
            margin-bottom: 24px;
            letter-spacing: -0.03em;
        }

        .footer-brand span {
            color: var(--gourmet-primary);
        }

        .footer-bottom {
            border-top: 1px solid rgba(255, 255, 255, 0.1);
            padding-top: 32px;
            text-align: center;
            color: #999999;
            font-size: 13px;
        }

        @media (max-width: 900px) {
            .hero-grid { grid-template-columns: 1fr; }
            .hero-card { display: none; }
            .location-pill { display: none; }
            nav.main-nav { display: none; }
            .hero h1 { font-size: 40px; }
        }
    </style>
</head>

<body>

    <div class="top-bar">
        ✨ Free delivery on your first gourmet order with <strong>Nehitha Pass</strong> <span>Use code: TASTY2026</span>
    </div>

    <header>
        <div class="container header-inner">
            <a class="brand" href="#">
                <span>Nehitha<span class="accent">Eats</span></span>
            </a>

            <div class="location-pill">
                <i class="fas fa-map-marker-alt"></i>
                <span>Deliver to • San Francisco</span>
                <i class="fas fa-chevron-down" style="font-size: 10px; margin-left: 4px;"></i>
            </div>

            <div class="search-box">
                <i class="fas fa-search"></i>
                <input type="search" id="searchInput" placeholder="Search curated dishes, bakeries, cafes..." aria-label="Search">
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
                        <i class="fas fa-award"></i> Handcrafted & Curated Daily
                    </div>
                    <h1>Exceptional food, delivered to your door</h1>
                    <p>Savor culinary masterpieces crafted by top local artisans, delivered fresh and hot in minutes.</p>
                    <div style="display: flex; gap: 14px; flex-wrap: wrap;">
                        <a href="#productsSection" class="btn btn-primary"><i class="fas fa-utensils"></i> Order Now</a>
                        <a href="#categoriesSection" class="btn btn-secondary">Explore Menu</a>
                    </div>
                </div>

                <div class="hero-card">
                    <img src="https://images.unsplash.com/photo-1568901346375-23c9450c58cd?auto=format&fit=crop&w=800&q=80" alt="Gourmet Burger">
                </div>
            </div>
        </section>

        <section class="section container" id="categoriesSection">
            <div class="section-header">
                <div class="section-title">
                    <h2>Explore Categories</h2>
                    <p>Discover dishes tailored to your cravings</p>
                </div>
            </div>
            <div class="categories-grid" id="categoriesGrid"></div>
        </section>

        <section class="section container" id="productsSection">
            <div class="section-header">
                <div class="section-title">
                    <h2>Curated Specials Near You</h2>
                    <p>Top-rated culinary selections ready for fast delivery</p>
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
                <p>&copy; 2026 Nehitha Eats, Inc. Designed with Warm Gourmet Aesthetics.</p>
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
            { id: 1, title: "Artisan Pepperoni Supreme Pizza", price: "$18.99", time: "25-30 min", rating: "4.9", img: "https://images.unsplash.com/photo-1513104890138-7c749659a591?auto=format&fit=crop&w=500&q=80" },
            { id: 2, title: "Double Loaded Cheeseburger Meal", price: "$14.50", time: "15-20 min", rating: "4.7", img: "https://images.unsplash.com/photo-1568901346375-23c9450c58cd?auto=format&fit=crop&w=500&q=80" },
            { id: 3, title: "Hyderabadi Chicken Dum Biryani", price: "$16.00", time: "20-25 min", rating: "4.9", img: "https://images.unsplash.com/photo-1563379091339-03b21ab4a4f8?auto=format&fit=crop&w=500&q=80" },
            { id: 4, title: "Fresh Salmon & Avocado Sushi Roll", price: "$22.00", time: "30-35 min", rating: "5.0", img: "https://images.unsplash.com/photo-1579871494447-9811cf80d66c?auto=format&fit=crop&w=500&q=80" }
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
                    <span class="service-badge">Chef's Choice</span>
                    <button class="favorite-btn" aria-label="Favorite"><i class="far fa-heart"></i></button>
                    <img src="${p.img}" alt="${p.title}">
                </div>
                <div class="product-content">
                    <div class="product-header-row">
                        <div class="product-title">${p.title}</div>
                        <div class="product-rating"><i class="fas fa-star" style="font-size: 10px;"></i> ${p.rating}</div>
                    </div>
                    <div class="product-meta">${p.time} • $0 Delivery Fee</div>
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
