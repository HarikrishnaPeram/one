<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Nehith — Online Shopping & E-Commerce</title>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;500;600;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous">

    <style>
        :root {
            --ecom-primary: #FF9900;
            --ecom-primary-hover: #E88B00;
            --ecom-dark: #131921;
            --ecom-light: #F4F5F7;
            --ecom-white: #FFFFFF;
            --ecom-gray-100: #E3E6E6;
            --ecom-gray-500: #565959;
            --ecom-gray-900: #0F1111;
            --radius-pill: 9999px;
            --radius-lg: 16px;
            --radius-md: 12px;
            --shadow-card: 0 4px 15px rgba(19, 25, 33, 0.06);
            --shadow-hover: 0 8px 25px rgba(19, 25, 33, 0.12);
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
            color: var(--ecom-gray-900);
            background: var(--ecom-white);
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
            background: linear-gradient(135deg, var(--ecom-dark), #232F3E);
            color: var(--ecom-primary);
            text-align: center;
            padding: 10px 16px;
            font-size: 13px;
            font-weight: 700;
        }

        .top-bar span {
            background: rgba(255, 153, 0, 0.2);
            color: var(--ecom-white);
            padding: 2px 10px;
            border-radius: var(--radius-pill);
            margin-left: 6px;
        }

        /* Header */
        header {
            position: sticky;
            top: 0;
            z-index: 100;
            background: var(--ecom-white);
            box-shadow: 0 15px 40px -20px rgba(19, 25, 33, 0.08);
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
            font-size: 26px;
            letter-spacing: -0.03em;
            color: var(--ecom-dark);
        }

        .brand-logo {
            background: var(--ecom-primary);
            color: var(--ecom-dark);
            width: 42px;
            height: 42px;
            border-radius: 12px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 20px;
        }

        /* Delivery Location Pill */
        .location-pill {
            display: flex;
            align-items: center;
            gap: 8px;
            background: var(--ecom-light);
            padding: 10px 16px;
            border-radius: var(--radius-pill);
            font-size: 14px;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.2s;
            border: 1px solid var(--ecom-gray-100);
        }

        .location-pill:hover {
            border-color: var(--ecom-primary);
        }

        .location-pill i {
            color: var(--ecom-primary);
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
            color: var(--ecom-dark);
            font-weight: 600;
            font-size: 14px;
            transition: all 0.2s;
        }

        nav.main-nav li a:hover, nav.main-nav li a.active {
            color: var(--ecom-primary);
            background: #FFF8E7;
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
            color: var(--ecom-dark);
            display: flex;
            align-items: center;
            gap: 8px;
            padding: 8px 14px;
            border-radius: var(--radius-pill);
            transition: background 0.2s;
        }

        .nav-btn:hover {
            background: var(--ecom-light);
        }

        .nav-btn-cart {
            background: var(--ecom-primary);
            color: var(--ecom-dark);
            font-weight: 700;
        }

        .nav-btn-cart:hover {
            background: var(--ecom-primary-hover);
        }

        .badge-count {
            background: var(--ecom-dark);
            color: var(--ecom-white);
            font-size: 11px;
            font-weight: 800;
            padding: 2px 7px;
            border-radius: var(--radius-pill);
        }

        /* Sub-Service Banner */
        .services-bar {
            background: var(--ecom-light);
            padding: 16px 0;
            border-bottom: 1px solid var(--ecom-gray-100);
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
            background: var(--ecom-white);
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
            background: var(--ecom-primary);
            color: var(--ecom-dark);
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
            color: var(--ecom-dark);
        }

        /* Categories Grid */
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
            border: 3px solid var(--ecom-light);
        }

        .cat-img img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .cat-item h4 {
            font-size: 15px;
            font-weight: 700;
            color: var(--ecom-dark);
        }

        /* Product Cards Grid */
        .products-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(270px, 1fr));
            gap: 32px;
        }

        .product-card {
            background: var(--ecom-white);
            border-radius: var(--radius-lg);
            overflow: hidden;
            display: flex;
            flex-direction: column;
            cursor: pointer;
            transition: transform 0.25s ease, box-shadow 0.25s ease;
            border: 1px solid var(--ecom-gray-100);
        }

        .product-card:hover {
            transform: translateY(-6px);
            box-shadow: var(--shadow-hover);
        }

        .prod-img-wrapper {
            position: relative;
            height: 180px;
            border-radius: var(--radius-lg);
            overflow: hidden;
            background: var(--ecom-light);
        }

        .product-card img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .discount-badge {
            position: absolute;
            bottom: 0;
            left: 0;
            right: 0;
            background: linear-gradient(180deg, rgba(0,0,0,0) 0%, rgba(19,25,33,0.85) 100%);
            color: var(--ecom-primary);
            padding: 16px 12px 10px;
            font-size: 14px;
            font-weight: 800;
            letter-spacing: -0.01em;
        }

        .prod-content {
            padding: 14px 12px;
            display: flex;
            flex-direction: column;
            gap: 6px;
        }

        .prod-name {
            font-size: 18px;
            font-weight: 700;
            color: var(--ecom-dark);
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
        }

        .prod-meta {
            display: flex;
            align-items: center;
            gap: 8px;
            font-size: 14px;
            font-weight: 700;
        }

        .rating-box {
            background: #232F3E;
            color: var(--ecom-white);
            padding: 2px 6px;
            border-radius: 6px;
            font-size: 12px;
            display: inline-flex;
            align-items: center;
            gap: 3px;
        }

        .prod-specs {
            font-size: 14px;
            color: var(--ecom-gray-500);
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
            font-weight: 500;
        }

        .prod-delivery {
            font-size: 13px;
            color: var(--ecom-gray-500);
            font-weight: 500;
        }

        /* Footer */
        footer {
            background: var(--ecom-dark);
            color: var(--ecom-white);
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
        ⚡ Mega Shopping Fest: Up to 70% OFF across all categories for <strong>Nehith Prime</strong> members! <span>Use code: SHOPNOW</span>
    </div>

    <header>
        <div class="container header-inner">
            <a class="brand" href="#">
                <div class="brand-logo"><i class="fas fa-bag-shopping"></i></div>
                Nehith <span style="color: var(--ecom-primary);">Store</span>
            </a>

            <div class="location-pill">
                <i class="fas fa-location-dot"></i>
                <span>Deliver to Nehith - Hyderabad 500081</span>
                <i class="fas fa-chevron-down" style="font-size: 10px; margin-left: 4px;"></i>
            </div>

            <nav class="main-nav">
                <ul>
                    <li><a href="#" class="active"><i class="fas fa-fire"></i> Trending Deals</a></li>
                    <li><a href="#productsSection"><i class="fas fa-search"></i> Browse All</a></li>
                    <li><a href="#productsSection"><i class="fas fa-gift"></i> Gift Cards</a></li>
                </ul>
            </nav>

            <div class="header-right">
                <button class="nav-btn"><i class="far fa-user"></i> Account</button>
                <button class="nav-btn nav-btn-cart" onclick="alert('Opening your shopping cart...')">
                    <i class="fas fa-shopping-cart"></i> Cart <span class="badge-count" id="cartCount">0</span>
                </button>
            </div>
        </div>
    </header>

    <div class="services-bar">
        <div class="container services-scroll">
            <div class="service-pill active"><i class="fas fa-laptop"></i> Electronics</div>
            <div class="service-pill" onclick="alert('Opening Fashion & Apparel...')"><i class="fas fa-shirt"></i> Fashion</div>
            <div class="service-pill" onclick="alert('Opening Home & Kitchen...')"><i class="fas fa-house"></i> Home & Living</div>
            <div class="service-pill" onclick="alert('Opening Groceries & Essentials...')"><i class="fas fa-basket-shopping"></i> Groceries</div>
        </div>
    </div>

    <main>
        <section class="section container">
            <div class="section-header">
                <div class="section-title">
                    <h2>What are you shopping for today, Nehith?</h2>
                </div>
            </div>
            <div class="categories-grid" id="categoriesGrid"></div>
        </section>

        <section class="section container" id="productsSection">
            <div class="section-header">
                <div class="section-title">
                    <h2>Top Best-Sellers & Mega Deals</h2>
                </div>
            </div>
            <div class="products-grid" id="productsGrid"></div>
        </section>
    </main>

    <footer>
        <div class="container">
            <div class="footer-brand">
                <div class="brand-logo" style="width: 32px; height: 32px; font-size: 16px;"><i class="fas fa-bag-shopping"></i></div>
                Nehith Store E-Commerce
            </div>
            <p style="color: #93959F; font-size: 14px; max-width: 400px;">Experience lightning-fast shipping, top-tier global brands, and secure checkout right to your doorstep.</p>
            <div class="footer-bottom">
                <p>&copy; 2026 Nehith E-Commerce Technologies Pvt. Ltd. All rights reserved.</p>
            </div>
        </div>
    </footer>

    <script>
        const categories = [
            { name: "Smartphones", img: "https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?auto=format&fit=crop&w=300&q=80" },
            { name: "Laptops", img: "https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=300&q=80" },
            { name: "Fashion", img: "https://images.unsplash.com/photo-1445205170230-053b83016050?auto=format&fit=crop&w=300&q=80" },
            { name: "Footwear", img: "https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=300&q=80" },
            { name: "Audio", img: "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=300&q=80" },
            { name: "Home Appliances", img: "https://images.unsplash.com/photo-1556911220-e15b29be8c8f?auto=format&fit=crop&w=300&q=80" }
        ];

        const products = [
            { id: 1, name: "Flagship 5G Smartphone", offer: "FLAT ₹5,000 OFF", rating: "4.6", price: "₹49,999", specs: "8GB RAM • 256GB Storage • 108MP Camera", delivery: "Free Delivery Tomorrow", img: "https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?auto=format&fit=crop&w=500&q=80" },
            { id: 2, name: "Wireless Noise-Cancelling Headphones", offer: "40% OFF", rating: "4.8", price: "₹12,499", specs: "Active ANC • 40hr Battery • Bluetooth 5.3", delivery: "Free Delivery by Sunday", img: "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=500&q=80" },
            { id: 3, name: "Ultra-Slim Creator Laptop", offer: "BEST SELLER", rating: "4.7", price: "₹78,999", specs: "Intel Core i7 • 16GB RAM • 512GB SSD", delivery: "Free Delivery Tomorrow", img: "https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=500&q=80" },
            { id: 4, name: "Pro Running Sneakers", offer: "DEAL OF THE DAY", rating: "4.5", price: "₹3,499", specs: "Breathable Mesh • Cushion Sole • Lightweight", delivery: "Free Delivery in 2 Days", img: "https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=500&q=80" }
        ];

        // Render Categories
        document.getElementById('categoriesGrid').innerHTML = categories.map(c => `
            <div class="cat-item" onclick="alert('Exploring ${c.name} category...')">
                <div class="cat-img">
                    <img src="${c.img}" alt="${c.name}">
                </div>
                <h4>${c.name}</h4>
            </div>
        `).join('');

        // Render Products
        document.getElementById('productsGrid').innerHTML = products.map(p => `
            <div class="product-card" onclick="addToCart('${p.name}')">
                <div class="prod-img-wrapper">
                    <img src="${p.img}" alt="${p.name}">
                    <div class="discount-badge">${p.offer} • ${p.price}</div>
                </div>
                <div class="prod-content">
                    <div class="prod-name">${p.name}</div>
                    <div class="prod-meta">
                        <span class="rating-box"><i class="fas fa-star" style="font-size: 10px;"></i> ${p.rating}</span>
                        <span>•</span>
                        <span style="color: #0A8754; font-weight:700;">${p.price}</span>
                    </div>
                    <div class="prod-specs">${p.specs}</div>
                    <div class="prod-delivery">${p.delivery}</div>
                </div>
            </div>
        `).join('');

        let cartCount = 0;
        function addToCart(productName) {
            cartCount++;
            document.getElementById('cartCount').innerText = cartCount;
            alert(`Added "${productName}" to your Nehith Store cart!`);
        }
    </script>
</body>
</html>
