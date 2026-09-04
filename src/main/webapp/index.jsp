<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Amazon — Online Shopping for Electronics, Fashion & More</title>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;500;600;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous">

    <style>
        :root {
            --bg: #0f1111;
            --surface: #191e26;
            --surface-hover: #232f3e;
            --card: #232f3e;
            --primary: #ff9900;
            --primary-hover: #e68a00;
            --primary-light: rgba(255, 153, 0, 0.15);
            --accent-prime: #00a8e1;
            --accent-pink: #ec4899;
            --text: #ffffff;
            --muted: #9ca3af;
            --border: rgba(255, 255, 255, 0.12);
            --border-hover: rgba(255, 255, 255, 0.3);
            --radius-xl: 16px;
            --radius-lg: 12px;
            --radius-md: 8px;
            --shadow: 0 10px 25px -5px rgba(0, 0, 0, 0.6);
            --glow: 0 0 20px rgba(255, 153, 0, 0.25);
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
            background: #131921;
            color: #ccc;
            text-align: center;
            padding: 8px 16px;
            font-size: 13px;
            font-weight: 500;
            border-bottom: 1px solid var(--border);
        }

        .top-bar span {
            color: var(--primary);
            font-weight: 700;
        }

        /* Header */
        header {
            position: sticky;
            top: 0;
            z-index: 100;
            background: #131921;
            border-bottom: 1px solid var(--border);
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
            gap: 8px;
            font-weight: 800;
            font-size: 26px;
            letter-spacing: -0.03em;
            color: #fff;
        }

        .brand i {
            color: var(--primary);
        }

        .brand .accent {
            color: var(--primary);
        }

        /* Search Bar */
        .search-box {
            position: relative;
            display: flex;
            align-items: center;
            background: #ffffff;
            border-radius: var(--radius-md);
            flex: 1;
            max-width: 600px;
            overflow: hidden;
        }

        .search-box input {
            border: 0;
            background: transparent;
            outline: none;
            padding: 10px 16px;
            width: 100%;
            font-size: 14px;
            color: #0f1111;
        }

        .search-box button {
            background: var(--primary);
            border: none;
            padding: 0 20px;
            height: 42px;
            cursor: pointer;
            color: #0f1111;
            font-size: 16px;
            transition: background 0.2s;
        }

        .search-box button:hover {
            background: var(--primary-hover);
        }

        /* Navigation Links */
        nav.main-nav ul {
            display: flex;
            gap: 12px;
            list-style: none;
        }

        nav.main-nav li a {
            display: flex;
            gap: 6px;
            align-items: center;
            padding: 8px 12px;
            border-radius: var(--radius-md);
            color: #ddd;
            font-weight: 600;
            font-size: 14px;
            transition: all 0.2s;
        }

        nav.main-nav li a:hover, nav.main-nav li a.active {
            color: var(--primary);
            background: rgba(255, 255, 255, 0.05);
        }

        .header-right {
            display: flex;
            align-items: center;
            gap: 16px;
        }

        .icon-btn {
            background: rgba(255, 255, 255, 0.08);
            color: var(--text);
            border: 1px solid var(--border);
            border-radius: 50%;
            width: 42px;
            height: 42px;
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
        }

        .badge-count {
            position: absolute;
            top: -4px;
            right: -4px;
            background: var(--primary);
            color: #0f1111;
            font-size: 11px;
            font-weight: 800;
            width: 18px;
            height: 18px;
            border-radius: 50%;
            display: inline-flex;
            align-items: center;
            justify-content: center;
        }

        /* Hero Banner */
        .hero {
            position: relative;
            padding: 60px 0;
            background: linear-gradient(180deg, #1f2937 0%, var(--bg) 100%);
            border-bottom: 1px solid var(--border);
        }

        .hero-grid {
            display: grid;
            grid-template-columns: 1.1fr 0.9fr;
            gap: 40px;
            align-items: center;
        }

        .hero h1 {
            font-size: 46px;
            font-weight: 800;
            line-height: 1.2;
            margin-bottom: 16px;
        }

        .hero p {
            color: var(--muted);
            font-size: 17px;
            margin-bottom: 28px;
        }

        .btn {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 10px;
            padding: 12px 24px;
            border-radius: 99px;
            font-weight: 700;
            font-size: 14px;
            cursor: pointer;
            border: 0;
            transition: all 0.2s;
        }

        .btn-primary {
            background: var(--primary);
            color: #0f1111;
        }

        .btn-primary:hover {
            background: var(--primary-hover);
            box-shadow: var(--glow);
        }

        .btn-secondary {
            background: rgba(255, 255, 255, 0.08);
            border: 1px solid var(--border);
            color: var(--text);
        }

        .btn-secondary:hover {
            background: rgba(255, 255, 255, 0.15);
        }

        .hero-card {
            border-radius: var(--radius-xl);
            overflow: hidden;
            border: 1px solid var(--border);
            box-shadow: var(--shadow);
            background: var(--surface);
            position: relative;
        }

        .hero-card img {
            width: 100%;
            height: 340px;
            object-fit: cover;
            display: block;
        }

        /* Section Layouts */
        .section {
            padding: 60px 0;
        }

        .section-header {
            display: flex;
            justify-content: space-between;
            align-items: flex-end;
            margin-bottom: 30px;
        }

        .section-title h2 {
            font-size: 28px;
            font-weight: 800;
        }

        .section-title p {
            color: var(--muted);
            font-size: 14px;
        }

        /* Filter Pills */
        .filter-pills {
            display: flex;
            gap: 8px;
        }

        .pill {
            background: var(--surface);
            border: 1px solid var(--border);
            color: var(--muted);
            padding: 6px 16px;
            border-radius: 99px;
            font-size: 13px;
            font-weight: 600;
            cursor: pointer;
        }

        .pill.active, .pill:hover {
            background: var(--primary);
            color: #0f1111;
            border-color: var(--primary);
        }

        /* Category Grid */
        .categories-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(160px, 1fr));
            gap: 16px;
        }

        .cat-card {
            background: var(--surface);
            border: 1px solid var(--border);
            border-radius: var(--radius-lg);
            padding: 20px;
            text-align: center;
            cursor: pointer;
            transition: all 0.2s;
        }

        .cat-card:hover {
            border-color: var(--primary);
            transform: translateY(-4px);
        }

        .cat-icon {
            font-size: 24px;
            color: var(--primary);
            margin-bottom: 10px;
        }

        /* Products Grid */
        .products-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
            gap: 20px;
        }

        .product-card {
            background: var(--surface);
            border: 1px solid var(--border);
            border-radius: var(--radius-lg);
            overflow: hidden;
            display: flex;
            flex-direction: column;
            transition: all 0.2s;
        }

        .product-card:hover {
            border-color: var(--border-hover);
            transform: translateY(-4px);
            box-shadow: var(--shadow);
        }

        .product-img-wrapper {
            position: relative;
            height: 220px;
            background: #fff;
            padding: 10px;
        }

        .product-card img {
            width: 100%;
            height: 100%;
            object-fit: contain;
        }

        .prime-badge {
            position: absolute;
            top: 10px;
            left: 10px;
            background: var(--accent-prime);
            color: #fff;
            font-size: 10px;
            font-weight: 800;
            padding: 2px 8px;
            border-radius: 4px;
            text-transform: uppercase;
        }

        .product-content {
            padding: 16px;
            display: flex;
            flex-direction: column;
            flex: 1;
        }

        .product-title {
            font-size: 15px;
            font-weight: 700;
            margin-bottom: 6px;
            color: #fff;
        }

        .product-rating {
            color: var(--primary);
            font-size: 12px;
            margin-bottom: 12px;
        }

        .product-bottom {
            margin-top: auto;
            display: flex;
            align-items: center;
            justify-content: space-between;
        }

        .current-price {
            font-size: 18px;
            font-weight: 800;
        }

        .add-cart-btn {
            background: var(--primary);
            color: #0f1111;
            border: none;
            padding: 8px 14px;
            border-radius: var(--radius-md);
            font-weight: 700;
            font-size: 12px;
            cursor: pointer;
        }

        .add-cart-btn:hover {
            background: var(--primary-hover);
        }

        /* Footer */
        footer {
            background: #131921;
            border-top: 1px solid var(--border);
            padding: 40px 0 20px;
            margin-top: 40px;
        }

        .footer-bottom {
            text-align: center;
            color: var(--muted);
            font-size: 13px;
            margin-top: 20px;
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
        📦 Free Express Shipping for <span>Amazon Prime</span> members.
    </div>

    <header>
        <div class="container header-inner">
            <a class="brand" href="#">
                <i class="fab fa-amazon"></i>
                <span>amazon<span class="accent">.shop</span></span>
            </a>

            <div class="search-box">
                <input type="search" id="searchInput" placeholder="Search Amazon products..." aria-label="Search">
                <button aria-label="Search Submit"><i class="fas fa-search"></i></button>
            </div>

            <nav class="main-nav">
                <ul>
                    <li><a href="#" class="active"><i class="fas fa-home"></i> Home</a></li>
                    <li><a href="#categoriesSection"><i class="fas fa-th-large"></i> Categories</a></li>
                    <li><a href="#productsSection"><i class="fas fa-fire"></i> Trending</a></li>
                </ul>
            </nav>

            <div class="header-right">
                <a href="#" class="icon-btn" title="Wishlist">
                    <i class="far fa-heart"></i>
                    <span class="badge-count" id="wishlistCount">0</span>
                </a>

                <a href="#" class="icon-btn" title="Cart">
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
                    <h1>Delivered Fast, Priced Everyday Low</h1>
                    <p>Explore millions of tech gadgets, everyday essentials, and fashion items with seamless one-day delivery options.</p>
                    <div style="display: flex; gap: 12px;">
                        <a href="#productsSection" class="btn btn-primary">Shop Todays Deals</a>
                        <a href="#categoriesSection" class="btn btn-secondary">Explore Categories</a>
                    </div>
                </div>

                <div class="hero-card">
                    <img src="https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=800&q=80" alt="Featured Product">
                </div>
            </div>
        </section>

        <section class="section container" id="categoriesSection">
            <div class="section-header">
                <div class="section-title">
                    <h2>Shop by Category</h2>
                    <p>Select a category to filter items</p>
                </div>
            </div>
            <div class="categories-grid" id="categoriesGrid"></div>
        </section>

        <section class="section container" id="productsSection">
            <div class="section-header">
                <div class="section-title">
                    <h2>Featured Products</h2>
                    <p>Top selections based on customer reviews</p>
                </div>
                <div class="filter-pills">
                    <button class="pill active">All Products</button>
                    <button class="pill">Electronics</button>
                    <button class="pill">Accessories</button>
                </div>
            </div>
            <div class="products-grid" id="productsGrid"></div>
        </section>
    </main>

    <footer>
        <div class="container footer-bottom">
            <p>&copy; 2026 Amazon Clone, Inc. or its affiliates. Built for enhanced performance and accessibility.</p>
        </div>
    </footer>

    <script>
        const categories = [
            { name: "Electronics", icon: "fa-laptop" },
            { name: "Fashion", icon: "fa-tshirt" },
            { name: "Home & Kitchen", icon: "fa-home" },
            { name: "Books", icon: "fa-book" },
            { name: "Beauty", icon: "fa-magic" }
        ];

        const products = [
            { id: 1, title: "Wireless Noise Cancelling Headphones", price: "$299.99", rating: "★★★★★ (4.8)", img: "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=500&q=80" },
            { id: 2, title: "Smartwatch Series 9 - Dark Grey", price: "$399.00", rating: "★★★★☆ (4.6)", img: "https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=500&q=80" },
            { id: 3, title: "Ergonomic Mechanical Keyboard", price: "$129.50", rating: "★★★★★ (4.9)", img: "https://images.unsplash.com/photo-1587829741301-dc798b83add3?auto=format&fit=crop&w=500&q=80" },
            { id: 4, title: "Ultra HD 4K Camera Lens", price: "$899.00", rating: "★★★★★ (5.0)", img: "https://images.unsplash.com/photo-1617005082133-548c4dd27f35?auto=format&fit=crop&w=500&q=80" }
        ];

        // Render Categories
        document.getElementById('categoriesGrid').innerHTML = categories.map(c => `
            <div class="cat-card">
                <i class="fas ${c.icon} cat-icon"></i>
                <h4>${c.name}</h4>
            </div>
        `).join('');

        // Render Products
        document.getElementById('productsGrid').innerHTML = products.map(p => `
            <div class="product-card">
                <div class="product-img-wrapper">
                    <span class="prime-badge">Prime</span>
                    <img src="${p.img}" alt="${p.title}">
                </div>
                <div class="product-content">
                    <div class="product-title">${p.title}</div>
                    <div class="product-rating">${p.rating}</div>
                    <div class="product-bottom">
                        <span class="current-price">${p.price}</span>
                        <button class="add-cart-btn" onclick="addToCart()">Add to Cart</button>
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
