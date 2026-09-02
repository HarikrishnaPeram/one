<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <title>NexusShop — Premium Dark UI</title>

    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;500;600;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous">

    <style>
        :root {
            --bg: #0b0f17;
            --surface: #111827;
            --card: #1f2937;
            --card-hover: #2d3748;
            --primary: #6366f1;
            --primary-hover: #4f46e5;
            --accent: #10b981;
            --accent-pink: #ec4899;
            --text: #f9fafb;
            --muted: #9ca3af;
            --border: rgba(255, 255, 255, 0.08);
            --radius-lg: 16px;
            --radius-md: 10px;
            --shadow: 0 12px 30px -10px rgba(0, 0, 0, 0.6);
            --glow: 0 0 25px rgba(99, 102, 241, 0.25);
            --container: 1200px;
        }

        * {
            box-sizing: border-box;
            transition: background-color 0.2s ease, border-color 0.2s ease, transform 0.2s ease;
        }

        html, body {
            height: 100%;
        }

        body {
            margin: 0;
            font-family: 'Plus Jakarta Sans', system-ui, -apple-system, sans-serif;
            color: var(--text);
            background: var(--bg);
            -webkit-font-smoothing: antialiased;
            line-height: 1.5;
        }

        a {
            color: inherit;
            text-decoration: none;
        }

        .container {
            width: 100%;
            max-width: var(--container);
            margin: 0 auto;
            padding: 0 20px;
        }

        /* Header */
        header {
            position: sticky;
            top: 0;
            z-index: 50;
            background: rgba(11, 15, 23, 0.75);
            border-bottom: 1px solid var(--border);
            backdrop-filter: blur(16px);
        }

        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 20px;
            padding: 16px 0;
        }

        .brand {
            display: flex;
            align-items: center;
            gap: 10px;
            font-weight: 800;
            font-size: 22px;
            letter-spacing: -0.02em;
        }

        .brand .accent {
            background: linear-gradient(135deg, var(--primary), var(--accent-pink));
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        nav.main-nav ul {
            display: flex;
            gap: 12px;
            list-style: none;
            margin: 0;
            padding: 0;
        }

        nav.main-nav li a {
            display: flex;
            gap: 8px;
            align-items: center;
            padding: 8px 14px;
            border-radius: 99px;
            color: var(--muted);
            font-weight: 500;
            font-size: 14px;
        }

        nav.main-nav li a:hover {
            color: var(--text);
            background: rgba(255, 255, 255, 0.05);
        }

        .search {
            display: flex;
            align-items: center;
            gap: 10px;
            background: rgba(255, 255, 255, 0.05);
            border: 1px solid var(--border);
            padding: 8px 16px;
            border-radius: 999px;
            min-width: 260px;
        }

        .search:focus-within {
            border-color: var(--primary);
            box-shadow: var(--glow);
        }

        .search input {
            border: 0;
            background: transparent;
            outline: none;
            width: 100%;
            font-size: 14px;
            color: var(--text);
        }

        .icon-btn {
            background: rgba(255, 255, 255, 0.05);
            color: var(--text);
            border: 1px solid var(--border);
            border-radius: 50%;
            width: 40px;
            height: 40px;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            cursor: pointer;
            font-size: 15px;
        }

        .icon-btn:hover {
            background: var(--primary);
            border-color: var(--primary);
            color: white;
            box-shadow: var(--glow);
        }

        .header-actions {
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .cart {
            position: relative;
        }

        .cart-count {
            position: absolute;
            top: -4px;
            right: -4px;
            background: var(--accent-pink);
            color: white;
            font-size: 11px;
            font-weight: 700;
            width: 18px;
            height: 18px;
            border-radius: 50%;
            display: inline-grid;
            place-items: center;
        }

        .mobile-toggle {
            display: none;
            border: 0;
            background: transparent;
            color: var(--text);
            font-size: 22px;
            cursor: pointer;
        }

        /* Hero */
        .hero {
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
            background: linear-gradient(180deg, rgba(11, 15, 23, 0.4) 0%, var(--bg) 100%),
                        url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1400&q=80') center/cover no-repeat;
            color: white;
            min-height: 480px;
            padding: 80px 20px;
            border-bottom: 1px solid var(--border);
            position: relative;
        }

        .hero h1 {
            font-size: 48px;
            font-weight: 800;
            margin: 0 0 16px;
            letter-spacing: -0.03em;
            background: linear-gradient(135deg, #ffffff 0%, #cbd5e1 100%);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        .hero p {
            margin: 0 auto 32px;
            color: var(--muted);
            max-width: 640px;
            font-size: 18px;
        }

        .btn {
            display: inline-flex;
            align-items: center;
            gap: 10px;
            padding: 12px 26px;
            border-radius: 999px;
            font-weight: 600;
            cursor: pointer;
            border: 0;
            font-size: 15px;
        }

        .btn-primary {
            background: var(--primary);
            color: white;
            box-shadow: var(--glow);
        }

        .btn-primary:hover {
            background: var(--primary-hover);
            transform: translateY(-2px);
        }

        .btn-ghost {
            background: rgba(255, 255, 255, 0.05);
            border: 1px solid var(--border);
            color: white;
            margin-left: 10px;
        }

        .btn-ghost:hover {
            background: rgba(255, 255, 255, 0.1);
        }

        /* Sections */
        .section {
            padding: 64px 0;
        }

        .section .title {
            text-align: center;
            margin-bottom: 36px;
        }

        .section .title h2 {
            font-size: 30px;
            margin: 0 0 8px;
            font-weight: 700;
            letter-spacing: -0.02em;
        }

        .grid {
            display: grid;
            gap: 24px;
        }

        /* Categories */
        .categories {
            grid-template-columns: repeat(6, 1fr);
        }

        .cat-card {
            background: var(--surface);
            border: 1px solid var(--border);
            border-radius: var(--radius-lg);
            padding: 24px 16px;
            text-align: center;
            cursor: pointer;
        }

        .cat-card:hover {
            transform: translateY(-6px);
            border-color: var(--primary);
            box-shadow: var(--shadow);
            background: var(--card-hover);
        }

        .cat-card .icon {
            font-size: 28px;
            color: var(--primary);
            margin-bottom: 12px;
        }

        .cat-card h4 {
            margin: 0;
            font-size: 15px;
            font-weight: 600;
        }

        /* Products */
        .products {
            grid-template-columns: repeat(4, 1fr);
        }

        .product {
            background: var(--surface);
            border: 1px solid var(--border);
            border-radius: var(--radius-lg);
            overflow: hidden;
            display: flex;
            flex-direction: column;
            position: relative;
        }

        .product:hover {
            transform: translateY(-6px);
            box-shadow: var(--shadow);
            border-color: rgba(255, 255, 255, 0.15);
        }

        .product-img-wrapper {
            position: relative;
            overflow: hidden;
            height: 220px;
        }

        .product img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform 0.4s ease;
        }

        .product:hover img {
            transform: scale(1.08);
        }

        .product-body {
            padding: 16px;
            display: flex;
            flex-direction: column;
            gap: 8px;
            flex: 1;
        }

        .product h5 {
            margin: 0;
            font-size: 16px;
            font-weight: 600;
        }

        .price-row {
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin-top: auto;
            padding-top: 8px;
        }

        .price {
            font-weight: 700;
            font-size: 18px;
            color: var(--text);
        }

        .old-price {
            color: var(--muted);
            text-decoration: line-through;
            font-size: 13px;
            margin-left: 6px;
        }

        .rating {
            color: #f59e0b;
            font-size: 13px;
        }

        .product-footer {
            padding: 16px;
            padding-top: 0;
            display: flex;
            gap: 10px;
        }

        .add-btn {
            flex: 1;
            background: var(--primary);
            color: white;
            border: 0;
            padding: 10px;
            border-radius: var(--radius-md);
            cursor: pointer;
            font-weight: 600;
            font-size: 14px;
        }

        .add-btn:hover {
            background: var(--primary-hover);
        }

        .wish-btn {
            background: rgba(255, 255, 255, 0.05);
            border: 1px solid var(--border);
            color: var(--text);
            padding: 10px;
            border-radius: var(--radius-md);
            cursor: pointer;
        }

        .wish-btn:hover {
            color: var(--accent-pink);
            border-color: var(--accent-pink);
        }

        /* Deal */
        .deal {
            display: flex;
            background: var(--surface);
            border: 1px solid var(--border);
            border-radius: var(--radius-lg);
            overflow: hidden;
            align-items: center;
        }

        .deal img {
            width: 50%;
            height: 380px;
            object-fit: cover;
        }

        .deal .content {
            padding: 36px;
            flex: 1;
        }

        .timer {
            display: flex;
            gap: 12px;
            margin: 20px 0;
        }

        .time-box {
            background: var(--card);
            border: 1px solid var(--border);
            color: var(--text);
            padding: 12px 16px;
            border-radius: var(--radius-md);
            min-width: 70px;
            text-align: center;
        }

        .time-box div:first-child {
            font-size: 20px;
            font-weight: 700;
            color: var(--primary);
        }

        /* Testimonials */
        .testimonials {
            display: flex;
            gap: 16px;
            overflow-x: auto;
            padding-bottom: 12px;
        }

        .testimonial {
            min-width: 300px;
            flex: 1;
            background: var(--surface);
            border: 1px solid var(--border);
            padding: 20px;
            border-radius: var(--radius-lg);
        }

        /* Newsletter */
        .newsletter {
            background: linear-gradient(135deg, rgba(99, 102, 241, 0.15) 0%, rgba(236, 72, 153, 0.15) 100%);
            border: 1px solid var(--border);
            border-radius: var(--radius-lg);
            padding: 48px;
            text-align: center;
        }

        .newsletter input {
            padding: 12px 20px;
            border-radius: 999px;
            border: 1px solid var(--border);
            background: rgba(0, 0, 0, 0.4);
            color: white;
            width: 320px;
            max-width: 100%;
            outline: none;
        }

        .newsletter input:focus {
            border-color: var(--primary);
        }

        /* Footer */
        footer {
            margin-top: 40px;
            padding: 48px 0 24px;
            border-top: 1px solid var(--border);
            color: var(--muted);
            font-size: 14px;
        }

        /* Responsive */
        @media (max-width:1200px) {
            .categories { grid-template-columns: repeat(3, 1fr); }
            .products { grid-template-columns: repeat(3, 1fr); }
        }

        @media (max-width:900px) {
            nav.main-nav { display: none; }
            .mobile-toggle { display: block; }
            .products { grid-template-columns: repeat(2, 1fr); }
            .categories { grid-template-columns: repeat(2, 1fr); }
            .deal { flex-direction: column; }
            .deal img { width: 100%; height: 240px; }
        }

        @media (max-width:600px) {
            .hero h1 { font-size: 32px; }
            .products { grid-template-columns: 1fr; }
            .categories { grid-template-columns: 1fr; }
        }

        .muted { color: var(--muted); }
    </style>
</head>

<body>
    <header>
        <div class="container header-inner">
            <div style="display:flex;align-items:center;gap:18px;">
                <button class="mobile-toggle" id="mobileToggle" aria-label="Open menu"><i class="fas fa-bars"></i></button>
                <a class="brand" href="#">
                    <span>Nexus<span class="accent">Shop</span></span>
                </a>
            </div>

            <nav class="main-nav" id="mainNav">
                <ul>
                    <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
                    <li><a href="#categoriesGrid"><i class="fas fa-th-large"></i> Categories</a></li>
                    <li><a href="#productsGrid"><i class="fas fa-fire"></i> Trending</a></li>
                    <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
                </ul>
            </nav>

            <div style="display:flex;align-items:center;gap:14px;">
                <div class="search">
                    <input type="search" id="searchInput" placeholder="Search products..." aria-label="Search products" />
                    <button class="icon-btn" id="searchBtn" style="border:0;background:transparent;" aria-label="Search"><i class="fas fa-search"></i></button>
                </div>

                <div class="header-actions">
                    <a class="icon-btn" title="Account" href="#"><i class="far fa-user"></i></a>
                    <a class="icon-btn cart" href="#" id="cartBtn" title="View cart">
                        <i class="fas fa-shopping-cart"></i>
                        <span class="cart-count" id="cartCount">0</span>
                    </a>
                </div>
            </div>
        </div>

        <div id="mobileMenu" style="display:none; background:var(--surface); border-bottom:1px solid var(--border);">
            <div class="container" style="padding:16px;">
                <nav>
                    <ul style="list-style:none;padding:0;margin:0;display:flex;flex-direction:column;gap:12px;">
                        <li><a href="#">Home</a></li>
                        <li><a href="#categoriesGrid">Categories</a></li>
                        <li><a href="#productsGrid">Trending</a></li>
                        <li><a href="#deals">Deals</a></li>
                    </ul>
                </nav>
            </div>
        </div>
    </header>

    <main>
        <section class="hero">
            <div class="container">
                <h1>New Winter Collection Premium Picks</h1>
                <p>Discover the latest trends in fashion, technology, and luxury accessories — curated specifically for you.</p>
                <div>
                    <button class="btn btn-primary" id="shopNow">Shop Now <i class="fas fa-arrow-right"></i></button>
                    <button class="btn btn-ghost" id="exploreDeals">Explore Deals</button>
                </div>
            </div>
        </section>

        <section class="section container" id="categoriesSection">
            <div class="title">
                <h2>Shop by Category</h2>
                <p class="muted">Browse through our curated collection</p>
            </div>
            <div class="grid categories" id="categoriesGrid"></div>
        </section>

        <section class="section container" id="productsSection">
            <div class="title" id="prod-title">
                <h2>Trending Products</h2>
                <p class="muted">Popular picks based on customer activity</p>
            </div>
            <div class="grid products" id="productsGrid"></div>
        </section>

        <section id="deals" class="section container">
            <div class="title">
                <h2>Flash Sale</h2>
                <p class="muted">Limited-time offers — don't miss out!</p>
            </div>

            <div class="deal">
                <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1200&q=80" alt="Deal product">
                <div class="content">
                    <h3 style="font-size:24px;margin:0 0 8px;">MacBook Air M2</h3>
                    <p class="muted">Thin, light, and powerful — now with M2 performance.</p>

                    <div class="timer">
                        <div class="time-box"><div id="dealDays">02</div><div style="font-size:11px;" class="muted">Days</div></div>
                        <div class="time-box"><div id="dealHours">14</div><div style="font-size:11px;" class="muted">Hours</div></div>
                        <div class="time-box"><div id="dealMinutes">35</div><div style="font-size:11px;" class="muted">Mins</div></div>
                        <div class="time-box"><div id="dealSeconds">50</div><div style="font-size:11px;" class="muted">Secs</div></div>
                    </div>

                    <div style="display:flex;align-items:center;gap:12px;margin-bottom:16px;">
                        <div class="price" style="font-size:24px;">$999 <span class="old-price">$1,199</span></div>
                        <div style="background:var(--accent-pink);color:white;padding:4px 8px;border-radius:6px;font-weight:700;font-size:12px;">-17%</div>
                    </div>

                    <button class="btn btn-primary" id="buyDeal">Buy Now</button>
                </div>
            </div>
        </section>

        <section class="section container">
            <div class="title">
                <h2>Customer Reviews</h2>
                <p class="muted">Real feedback from verified buyers</p>
            </div>

            <div class="testimonials">
                <div class="testimonial">
                    <div class="rating">★★★★★</div>
                    <p>"Fast shipping and excellent product quality. Definitely ordering again!"</p>
                    <div style="display:flex;align-items:center;gap:10px;margin-top:12px;">
                        <img src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80" alt="avatar" style="width:36px;height:36px;border-radius:50%;object-fit:cover;">
                        <div>
                            <div style="font-weight:600;font-size:14px;">Ava Martin</div>
                            <div class="muted" style="font-size:12px;">Verified Buyer</div>
                        </div>
                    </div>
                </div>

                <div class="testimonial">
                    <div class="rating">★★★★☆</div>
                    <p>"Great selection of products and smooth checkout experience."</p>
                    <div style="display:flex;align-items:center;gap:10px;margin-top:12px;">
                        <img src="https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80" alt="avatar" style="width:36px;height:36px;border-radius:50%;object-fit:cover;">
                        <div>
                            <div style="font-weight:600;font-size:14px;">Michael Lee</div>
                            <div class="muted" style="font-size:12px;">Frequent Buyer</div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="section container">
            <div class="newsletter">
                <h3 style="font-size:24px;margin:0 0 8px;">Stay in the Loop</h3>
                <p class="muted" style="margin-bottom:20px;">Subscribe to receive exclusive deals and updates directly in your inbox.</p>
                <form id="newsletterForm" style="display:flex;justify-content:center;gap:10px;flex-wrap:wrap;" onsubmit="return false;">
                    <input id="newsletterEmail" type="email" placeholder="Enter your email address" required>
                    <button class="btn btn-primary" id="subscribeBtn">Subscribe</button>
                </form>
            </div>
        </section>
    </main>

    <footer>
        <div class="container" style="display:flex;flex-wrap:wrap;gap:28px;justify-content:space-between">
            <div style="max-width:320px">
                <div class="brand">Nexus<span class="accent">Shop</span></div>
                <p class="muted" style="margin-top:12px">Elevated e-commerce experience built for modern web applications.</p>
            </div>

            <div style="display:flex;gap:40px;">
                <div>
                    <div style="font-weight:600;margin-bottom:12px;color:var(--text);">Company</div>
                    <div class="muted" style="line-height:2">About<br>Careers<br>Press</div>
                </div>
                <div>
                    <div style="font-weight:600;margin-bottom:12px;color:var(--text);">Support</div>
                    <div class="muted" style="line-height:2">Help Center<br>Shipping<br>Contact</div>
                </div>
            </div>
        </div>

        <div style="text-align:center;margin-top:36px;" class="muted">© <span id="year"></span> NexusShop. All rights reserved.</div>
    </footer>

    <script>
        const CATEGORIES = [
            { id: 'phones', name: 'Smartphones', icon: 'fa-mobile-alt' },
            { id: 'laptops', name: 'Laptops', icon: 'fa-laptop' },
            { id: 'clothing', name: 'Clothing', icon: 'fa-tshirt' },
            { id: 'gadgets', name: 'Gadgets', icon: 'fa-headphones' },
            { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints' },
            { id: 'accessories', name: 'Accessories', icon: 'fa-clock' }
        ];

        const PRODUCTS = [
            { id: 1, title: 'iPhone 14 Pro Max', price: 1099, oldPrice: 1199, rating: 5, reviews: 128, badge: 'New', img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80', category: 'phones' },
            { id: 2, title: 'MacBook Pro 14"', price: 1999, rating: 4, reviews: 86, img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80', category: 'laptops' },
            { id: 3, title: 'Apple Watch Series 8', price: 349, oldPrice: 399, rating: 5, reviews: 214, badge: '-25%', img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80', category: 'accessories' },
            { id: 4, title: 'Nike Air Max 270', price: 150, rating: 4, reviews: 53, img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80', category: 'footwear' },
            { id: 5, title: 'Sony A7 IV Camera', price: 2499, rating: 5, reviews: 42, img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80', category: 'gadgets' },
            { id: 6, title: 'Luxury Perfume', price: 120, rating: 5, reviews: 189, img: 'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80', category: 'accessories' },
            { id: 7, title: 'Travel Backpack', price: 79, oldPrice: 99, rating: 4, reviews: 67, img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80', category: 'accessories' },
            { id: 8, title: 'Sony WH-1000XM5', price: 399, rating: 5, reviews: 156, img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80', category: 'gadgets' }
        ];

        const categoriesGrid = document.getElementById('categoriesGrid');
        const productsGrid = document.getElementById('productsGrid');
        const cartCountEl = document.getElementById('cartCount');
        const searchInput = document.getElementById('searchInput');

        let cartCount = 0;

        function renderCategories() {
            categoriesGrid.innerHTML = '';
            CATEGORIES.forEach(cat => {
                const el = document.createElement('div');
                el.className = 'cat-card';
                el.innerHTML = `
                    <div class="icon"><i class="fas ${cat.icon}"></i></div>
                    <h4>${cat.name}</h4>
                `;
                el.addEventListener('click', () => filterProducts(cat.name));
                categoriesGrid.appendChild(el);
            });
        }

        function renderProducts(list) {
            productsGrid.innerHTML = '';
            list.forEach(p => {
                const el = document.createElement('article');
                el.className = 'product';
                el.innerHTML = `
                    ${p.badge ? `<div style="position:absolute;top:12px;left:12px;z-index:2"><span style="background:var(--accent-pink);color:white;padding:4px 8px;border-radius:6px;font-weight:700;font-size:11px">${p.badge}</span></div>` : ''}
                    <div class="product-img-wrapper">
                        <img src="${p.img}" alt="${p.title}">
                    </div>
                    <div class="product-body">
                        <h5>${p.title}</h5>
                        <div class="muted" style="font-size:13px;text-transform:capitalize;">${p.category}</div>
                        <div class="price-row">
                            <div class="price">$${p.price.toLocaleString()}${p.oldPrice ? `<span class="old-price">$${p.oldPrice}</span>` : ''}</div>
                            <div class="rating">★ ${p.rating}</div>
                        </div>
                    </div>
                    <div class="product-footer">
                        <button class="add-btn" data-id="${p.id}"><i class="fas fa-cart-plus"></i> Add to Cart</button>
                        <button class="wish-btn" aria-label="Add to wishlist"><i class="far fa-heart"></i></button>
                    </div>
                `;
                productsGrid.appendChild(el);
            });

            productsGrid.querySelectorAll('.add-btn').forEach(btn => {
                btn.addEventListener('click', () => {
                    cartCount++;
                    cartCountEl.textContent = cartCount;
                    btn.textContent = 'Added ✓';
                    setTimeout(() => { btn.innerHTML = '<i class="fas fa-cart-plus"></i> Add to Cart'; }, 1200);
                });
            });
        }

        function filterProducts(query) {
            const q = String(query || '').trim().toLowerCase();
            const filtered = PRODUCTS.filter(p => p.title.toLowerCase().includes(q) || p.category.toLowerCase().includes(q));
            renderProducts(filtered);
        }

        // Search Handlers
        document.getElementById('searchBtn').addEventListener('click', () => filterProducts(searchInput.value));
        searchInput.addEventListener('keyup', (e) => filterProducts(e.target.value));

        // Mobile Toggle
        document.getElementById('mobileToggle').addEventListener('click', () => {
            const menu = document.getElementById('mobileMenu');
            menu.style.display = menu.style.display === 'none' ? 'block' : 'none';
        });

        // Set Year
        document.getElementById('year').textContent = new Date().getFullYear();

        // Initial Render
        renderCategories();
        renderProducts(PRODUCTS);
    </script>
</body>
</html>
