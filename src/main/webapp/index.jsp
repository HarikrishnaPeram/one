<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <title>NexusShop — Elevated E-Commerce Experience</title>

    <!-- Google Fonts & Font Awesome -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;500;600;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous">

    <style>
        :root {
            --bg: #090d16;
            --surface: #111827;
            --surface-hover: #1f2937;
            --card: #161e2e;
            --primary: #6366f1;
            --primary-hover: #4f46e5;
            --primary-light: rgba(99, 102, 241, 0.15);
            --accent: #10b981;
            --accent-pink: #ec4899;
            --text: #f9fafb;
            --muted: #9ca3af;
            --border: rgba(255, 255, 255, 0.08);
            --border-hover: rgba(255, 255, 255, 0.2);
            --radius-xl: 20px;
            --radius-lg: 14px;
            --radius-md: 10px;
            --shadow: 0 20px 25px -5px rgba(0, 0, 0, 0.5), 0 8px 10px -6px rgba(0, 0, 0, 0.5);
            --glow: 0 0 25px rgba(99, 102, 241, 0.3);
            --container: 1240px;
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

        /* Top Notification Bar */
        .top-bar {
            background: linear-gradient(90deg, var(--primary), var(--accent-pink));
            color: white;
            text-align: center;
            padding: 8px 16px;
            font-size: 13px;
            font-weight: 600;
            letter-spacing: 0.02em;
        }

        /* Header */
        header {
            position: sticky;
            top: 0;
            z-index: 100;
            background: rgba(9, 13, 22, 0.82);
            border-bottom: 1px solid var(--border);
            backdrop-filter: blur(20px);
            -webkit-backdrop-filter: blur(20px);
        }

        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 24px;
            height: 72px;
        }

        .brand {
            display: flex;
            align-items: center;
            gap: 10px;
            font-weight: 800;
            font-size: 24px;
            letter-spacing: -0.03em;
        }

        .brand-icon {
            width: 38px;
            height: 38px;
            background: linear-gradient(135deg, var(--primary), var(--accent-pink));
            border-radius: var(--radius-md);
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            font-size: 18px;
            box-shadow: var(--glow);
        }

        .brand .accent {
            background: linear-gradient(135deg, var(--primary), var(--accent-pink));
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        nav.main-nav ul {
            display: flex;
            gap: 8px;
            list-style: none;
        }

        nav.main-nav li a {
            display: flex;
            gap: 8px;
            align-items: center;
            padding: 8px 16px;
            border-radius: 99px;
            color: var(--muted);
            font-weight: 500;
            font-size: 14px;
            transition: all 0.2s ease;
        }

        nav.main-nav li a:hover, nav.main-nav li a.active {
            color: var(--text);
            background: rgba(255, 255, 255, 0.06);
        }

        .header-right {
            display: flex;
            align-items: center;
            gap: 16px;
        }

        .search-box {
            position: relative;
            display: flex;
            align-items: center;
            background: rgba(255, 255, 255, 0.05);
            border: 1px solid var(--border);
            padding: 0 16px;
            border-radius: 999px;
            width: 260px;
            transition: all 0.3s ease;
        }

        .search-box:focus-within {
            width: 320px;
            border-color: var(--primary);
            box-shadow: var(--glow);
            background: rgba(255, 255, 255, 0.08);
        }

        .search-box i {
            color: var(--muted);
            font-size: 14px;
        }

        .search-box input {
            border: 0;
            background: transparent;
            outline: none;
            padding: 10px 12px;
            width: 100%;
            font-size: 14px;
            color: var(--text);
        }

        .icon-btn {
            background: rgba(255, 255, 255, 0.05);
            color: var(--text);
            border: 1px solid var(--border);
            border-radius: 50%;
            width: 42px;
            height: 42px;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            cursor: pointer;
            font-size: 15px;
            position: relative;
            transition: all 0.2s ease;
        }

        .icon-btn:hover {
            background: var(--surface-hover);
            border-color: var(--border-hover);
            transform: translateY(-2px);
        }

        .badge-count {
            position: absolute;
            top: -2px;
            right: -2px;
            background: var(--accent-pink);
            color: white;
            font-size: 11px;
            font-weight: 800;
            width: 18px;
            height: 18px;
            border-radius: 50%;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            border: 2px solid var(--bg);
        }

        .mobile-toggle {
            display: none;
            background: transparent;
            border: 0;
            color: var(--text);
            font-size: 22px;
            cursor: pointer;
        }

        /* Hero Section */
        .hero {
            position: relative;
            padding: 90px 0 70px;
            overflow: hidden;
            border-bottom: 1px solid var(--border);
        }

        .hero-bg-glow {
            position: absolute;
            top: -20%;
            left: 50%;
            transform: translateX(-50%);
            width: 800px;
            height: 400px;
            background: radial-gradient(circle, rgba(99, 102, 241, 0.25) 0%, rgba(236, 72, 153, 0.1) 50%, rgba(0,0,0,0) 70%);
            filter: blur(60px);
            pointer-events: none;
            z-index: 0;
        }

        .hero-grid {
            display: grid;
            grid-template-columns: 1.1fr 0.9fr;
            gap: 40px;
            align-items: center;
            position: relative;
            z-index: 1;
        }

        .hero-tag {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            background: var(--primary-light);
            border: 1px solid rgba(99, 102, 241, 0.3);
            color: #a5b4fc;
            padding: 6px 14px;
            border-radius: 99px;
            font-size: 13px;
            font-weight: 600;
            margin-bottom: 20px;
        }

        .hero h1 {
            font-size: 54px;
            font-weight: 800;
            line-height: 1.15;
            letter-spacing: -0.03em;
            margin-bottom: 20px;
            background: linear-gradient(135deg, #ffffff 30%, #a5b4fc 100%);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        .hero p {
            color: var(--muted);
            font-size: 18px;
            margin-bottom: 32px;
            max-width: 520px;
        }

        .hero-actions {
            display: flex;
            align-items: center;
            gap: 16px;
            flex-wrap: wrap;
        }

        .btn {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 10px;
            padding: 14px 28px;
            border-radius: 99px;
            font-weight: 600;
            font-size: 15px;
            cursor: pointer;
            border: 0;
            transition: all 0.25 ease;
        }

        .btn-primary {
            background: linear-gradient(135deg, var(--primary), var(--primary-hover));
            color: white;
            box-shadow: var(--glow);
        }

        .btn-primary:hover {
            transform: translateY(-2px);
            box-shadow: 0 0 30px rgba(99, 102, 241, 0.5);
        }

        .btn-secondary {
            background: rgba(255, 255, 255, 0.05);
            border: 1px solid var(--border);
            color: var(--text);
        }

        .btn-secondary:hover {
            background: rgba(255, 255, 255, 0.1);
            border-color: var(--border-hover);
        }

        .hero-card {
            position: relative;
            border-radius: var(--radius-xl);
            overflow: hidden;
            border: 1px solid var(--border);
            box-shadow: var(--shadow);
            background: var(--surface);
        }

        .hero-card img {
            width: 100%;
            height: 380px;
            object-fit: cover;
            display: block;
        }

        .hero-card-overlay {
            position: absolute;
            bottom: 0;
            left: 0;
            right: 0;
            padding: 24px;
            background: linear-gradient(0deg, rgba(9, 13, 22, 0.95) 0%, rgba(9, 13, 22, 0) 100%);
            display: flex;
            justify-content: space-between;
            align-items: flex-end;
        }

        /* Section Global */
        .section {
            padding: 80px 0;
        }

        .section-header {
            display: flex;
            justify-content: space-between;
            align-items: flex-end;
            margin-bottom: 40px;
        }

        .section-title h2 {
            font-size: 32px;
            font-weight: 800;
            letter-spacing: -0.02em;
            margin-bottom: 6px;
        }

        .section-title p {
            color: var(--muted);
            font-size: 15px;
        }

        /* Filter Pills */
        .filter-pills {
            display: flex;
            gap: 10px;
            flex-wrap: wrap;
        }

        .pill {
            background: rgba(255, 255, 255, 0.04);
            border: 1px solid var(--border);
            color: var(--muted);
            padding: 8px 18px;
            border-radius: 99px;
            font-size: 14px;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.2s ease;
        }

        .pill:hover, .pill.active {
            background: var(--primary);
            color: white;
            border-color: var(--primary);
            box-shadow: var(--glow);
        }

        /* Categories Grid */
        .categories-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(170px, 1fr));
            gap: 16px;
        }

        .cat-card {
            background: var(--surface);
            border: 1px solid var(--border);
            border-radius: var(--radius-lg);
            padding: 24px 16px;
            text-align: center;
            cursor: pointer;
            transition: all 0.25s cubic-bezier(0.4, 0, 0.2, 1);
        }

        .cat-card:hover, .cat-card.active {
            transform: translateY(-5px);
            background: var(--surface-hover);
            border-color: var(--primary);
            box-shadow: var(--shadow);
        }

        .cat-icon {
            width: 52px;
            height: 52px;
            background: rgba(255, 255, 255, 0.04);
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto 14px;
            font-size: 22px;
            color: var(--primary);
            transition: all 0.2s ease;
        }

        .cat-card:hover .cat-icon, .cat-card.active .cat-icon {
            background: var(--primary);
            color: white;
            box-shadow: var(--glow);
        }

        .cat-card h4 {
            font-size: 15px;
            font-weight: 600;
        }

        /* Products Grid */
        .products-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(260px, 1fr));
            gap: 24px;
        }

        .product-card {
            background: var(--surface);
            border: 1px solid var(--border);
            border-radius: var(--radius-lg);
            overflow: hidden;
            display: flex;
            flex-direction: column;
            position: relative;
            transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
        }

        .product-card:hover {
            transform: translateY(-6px);
            border-color: var(--border-hover);
            box-shadow: var(--shadow);
        }

        .product-img-wrapper {
            position: relative;
            width: 100%;
            height: 240px;
            background: var(--card);
            overflow: hidden;
        }

        .product-card img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform 0.5s ease;
        }

        .product-card:hover img {
            transform: scale(1.08);
        }

        .product-badge {
            position: absolute;
            top: 14px;
            left: 14px;
            background: var(--accent-pink);
            color: white;
            padding: 4px 10px;
            border-radius: 99px;
            font-size: 11px;
            font-weight: 800;
            letter-spacing: 0.02em;
            z-index: 2;
        }

        .wishlist-btn {
            position: absolute;
            top: 14px;
            right: 14px;
            width: 36px;
            height: 36px;
            border-radius: 50%;
            background: rgba(9, 13, 22, 0.6);
            backdrop-filter: blur(8px);
            border: 1px solid var(--border);
            color: white;
            display: flex;
            align-items: center;
            justify-content: center;
            cursor: pointer;
            z-index: 2;
            transition: all 0.2s ease;
        }

        .wishlist-btn:hover, .wishlist-btn.active {
            color: var(--accent-pink);
            background: rgba(9, 13, 22, 0.9);
            transform: scale(1.1);
        }

        .product-content {
            padding: 20px;
            display: flex;
            flex-direction: column;
            flex: 1;
        }

        .product-category {
            font-size: 12px;
            font-weight: 600;
            text-transform: uppercase;
            color: var(--primary);
            letter-spacing: 0.05em;
            margin-bottom: 6px;
        }

        .product-title {
            font-size: 16px;
            font-weight: 700;
            margin-bottom: 8px;
            line-height: 1.4;
        }

        .product-rating {
            display: flex;
            align-items: center;
            gap: 6px;
            font-size: 13px;
            color: #f59e0b;
            margin-bottom: 16px;
        }

        .product-rating .count {
            color: var(--muted);
            font-size: 12px;
        }

        .product-bottom {
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin-top: auto;
            padding-top: 12px;
            border-top: 1px solid var(--border);
        }

        .price-group {
            display: flex;
            flex-direction: column;
        }

        .current-price {
            font-size: 20px;
            font-weight: 800;
            color: var(--text);
        }

        .original-price {
            font-size: 13px;
            color: var(--muted);
            text-decoration: line-through;
        }

        .add-cart-btn {
            background: var(--primary-light);
            color: #a5b4fc;
            border: 1px solid rgba(99, 102, 241, 0.3);
            padding: 10px 16px;
            border-radius: var(--radius-md);
            font-weight: 600;
            font-size: 13px;
            cursor: pointer;
            display: flex;
            align-items: center;
            gap: 8px;
            transition: all 0.2s ease;
        }

        .add-cart-btn:hover {
            background: var(--primary);
            color: white;
            border-color: var(--primary);
            box-shadow: var(--glow);
        }

        /* Flash Sale Deal Banner */
        .deal-banner {
            background: linear-gradient(135deg, rgba(22, 30, 46, 0.9) 0%, rgba(17, 24, 39, 0.9) 100%);
            border: 1px solid var(--border);
            border-radius: var(--radius-xl);
            overflow: hidden;
            display: grid;
            grid-template-columns: 1fr 1fr;
            box-shadow: var(--shadow);
            position: relative;
        }

        .deal-img-wrapper {
            position: relative;
            min-height: 380px;
        }

        .deal-img-wrapper img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .deal-content {
            padding: 48px;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }

        .deal-tag {
            color: var(--accent-pink);
            font-weight: 800;
            font-size: 13px;
            text-transform: uppercase;
            letter-spacing: 0.08em;
            margin-bottom: 8px;
        }

        .deal-title {
            font-size: 32px;
            font-weight: 800;
            margin-bottom: 12px;
        }

        .timer-grid {
            display: flex;
            gap: 12px;
            margin: 24px 0;
        }

        .timer-card {
            background: rgba(255, 255, 255, 0.05);
            border: 1px solid var(--border);
            border-radius: var(--radius-md);
            padding: 12px 18px;
            text-align: center;
            min-width: 72px;
        }

        .timer-card .num {
            font-size: 22px;
            font-weight: 800;
            color: var(--primary);
            line-height: 1;
            margin-bottom: 4px;
        }

        .timer-card .lbl {
            font-size: 11px;
            color: var(--muted);
            text-transform: uppercase;
            font-weight: 600;
        }

        /* Testimonials */
        .testimonials-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 24px;
        }

        .review-card {
            background: var(--surface);
            border: 1px solid var(--border);
            padding: 28px;
            border-radius: var(--radius-lg);
            display: flex;
            flex-direction: column;
            gap: 16px;
        }

        .review-stars {
            color: #f59e0b;
            font-size: 14px;
        }

        .review-card p {
            color: var(--text);
            font-size: 15px;
            font-style: italic;
        }

        .review-user {
            display: flex;
            align-items: center;
            gap: 12px;
            margin-top: auto;
        }

        .review-user img {
            width: 44px;
            height: 44px;
            border-radius: 50%;
            object-fit: cover;
        }

        .review-user h5 {
            font-size: 14px;
            font-weight: 700;
        }

        .review-user span {
            font-size: 12px;
            color: var(--muted);
        }

        /* Newsletter */
        .newsletter-box {
            background: linear-gradient(135deg, rgba(99, 102, 241, 0.12) 0%, rgba(236, 72, 153, 0.12) 100%);
            border: 1px solid var(--border);
            border-radius: var(--radius-xl);
            padding: 60px 24px;
            text-align: center;
            position: relative;
            overflow: hidden;
        }

        .newsletter-box h3 {
            font-size: 32px;
            font-weight: 800;
            margin-bottom: 12px;
        }

        .newsletter-box p {
            color: var(--muted);
            max-width: 500px;
            margin: 0 auto 28px;
            font-size: 16px;
        }

        .newsletter-form {
            display: flex;
            justify-content: center;
            gap: 12px;
            max-width: 480px;
            margin: 0 auto;
        }

        .newsletter-form input {
            flex: 1;
            padding: 14px 20px;
            border-radius: 99px;
            border: 1px solid var(--border);
            background: rgba(9, 13, 22, 0.7);
            color: white;
            outline: none;
            font-size: 14px;
        }

        .newsletter-form input:focus {
            border-color: var(--primary);
        }

        /* Footer */
        footer {
            border-top: 1px solid var(--border);
            padding: 60px 0 30px;
            background: #060910;
        }

        .footer-grid {
            display: grid;
            grid-template-columns: 2fr repeat(3, 1fr);
            gap: 40px;
            margin-bottom: 40px;
        }

        .footer-brand p {
            color: var(--muted);
            margin-top: 14px;
            font-size: 14px;
            max-width: 300px;
        }

        .footer-col h5 {
            font-size: 15px;
            font-weight: 700;
            margin-bottom: 16px;
            color: var(--text);
        }

        .footer-col ul {
            list-style: none;
            display: flex;
            flex-direction: column;
            gap: 10px;
        }

        .footer-col a {
            color: var(--muted);
            font-size: 14px;
            transition: color 0.2s ease;
        }

        .footer-col a:hover {
            color: var(--text);
        }

        .footer-bottom {
            text-align: center;
            padding-top: 24px;
            border-top: 1px solid var(--border);
            color: var(--muted);
            font-size: 13px;
        }

        /* Toast Notifications */
        .toast-container {
            position: fixed;
            bottom: 24px;
            right: 24px;
            z-index: 1000;
            display: flex;
            flex-direction: column;
            gap: 10px;
        }

        .toast {
            background: var(--surface);
            border: 1px solid var(--primary);
            color: var(--text);
            padding: 14px 20px;
            border-radius: var(--radius-md);
            box-shadow: var(--shadow);
            display: flex;
            align-items: center;
            gap: 12px;
            font-size: 14px;
            font-weight: 600;
            animation: slideIn 0.3s cubic-bezier(0.4, 0, 0.2, 1);
        }

        .toast i {
            color: var(--accent);
            font-size: 16px;
        }

        @keyframes slideIn {
            from { transform: translateX(100%); opacity: 0; }
            to { transform: translateX(0); opacity: 1; }
        }

        /* Responsive UI */
        @media (max-width: 1024px) {
            .hero-grid { grid-template-columns: 1fr; text-align: center; }
            .hero p { margin: 0 auto 32px; }
            .hero-actions { justify-content: center; }
            .hero-card { display: none; }
            .deal-banner { grid-template-columns: 1fr; }
            .deal-img-wrapper { min-height: 260px; }
            .footer-grid { grid-template-columns: 1fr 1fr; }
        }

        @media (max-width: 768px) {
            nav.main-nav { display: none; }
            .mobile-toggle { display: block; }
            .search-box { display: none; }
            .hero h1 { font-size: 38px; }
            .section-header { flex-direction: column; align-items: flex-start; gap: 16px; }
            .footer-grid { grid-template-columns: 1fr; }
        }
    </style>
</head>

<body>

    <!-- Top Announcement -->
    <div class="top-bar">
        ✨ Winter Sale is Live! Get up to 40% OFF on selected tech & fashion items.
    </div>

    <!-- Header -->
    <header>
        <div class="container header-inner">
            <div style="display: flex; align-items: center; gap: 16px;">
                <button class="mobile-toggle" id="mobileToggle" aria-label="Toggle navigation">
                    <i class="fas fa-bars"></i>
                </button>
                <a class="brand" href="#">
                    <div class="brand-icon"><i class="fas fa-bolt"></i></div>
                    <span>Nexus<span class="accent">Shop</span></span>
                </a>
            </div>

            <nav class="main-nav">
                <ul>
                    <li><a href="#" class="active"><i class="fas fa-home"></i> Home</a></li>
                    <li><a href="#categoriesSection"><i class="fas fa-th-large"></i> Categories</a></li>
                    <li><a href="#productsSection"><i class="fas fa-fire"></i> Trending</a></li>
                    <li><a href="#deals"><i class="fas fa-tag"></i> Flash Sale</a></li>
                </ul>
            </nav>

            <div class="header-right">
                <div class="search-box">
                    <i class="fas fa-search"></i>
                    <input type="search" id="searchInput" placeholder="Search products..." aria-label="Search">
                </div>

                <a href="#" class="icon-btn" title="Wishlist">
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
        <!-- Hero Section -->
        <section class="hero">
            <div class="hero-bg-glow"></div>
            <div class="container hero-grid">
                <div>
                    <div class="hero-tag">
                        <i class="fas fa-sparkles"></i> Next-Gen Shopping Experience
                    </div>
                    <h1>Premium Picks for Modern Lifestyles</h1>
                    <p>Discover curated technology, luxury accessories, and iconic footwear designed for high performance and seamless style.</p>
                    <div class="hero-actions">
                        <a href="#productsSection" class="btn btn-primary">
                            Explore Collection <i class="fas fa-arrow-right"></i>
                        </a>
                        <a href="#deals" class="btn btn-secondary">View Flash Sale</a>
                    </div>
                </div>

                <div class="hero-card">
                    <img src="https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=800&q=80" alt="Featured Product">
                    <div class="hero-card-overlay">
                        <div>
                            <span style="color:var(--accent-pink); font-weight:800; font-size:12px; text-transform:uppercase;">Featured Item</span>
                            <h3 style="font-size:20px; font-weight:700;">Studio Wireless Headphones</h3>
                        </div>
                        <span style="font-size:22px; font-weight:800; color:white;">$349</span>
                    </div>
                </div>
            </div>
        </section>

        <!-- Categories Section -->
        <section class="section container" id="categoriesSection">
            <div class="section-header">
                <div class="section-title">
                    <h2>Shop by Category</h2>
                    <p>Browse high quality essentials across popular departments</p>
                </div>
            </div>
            <div class="categories-grid" id="categoriesGrid"></div>
        </section>

        <!-- Products Section -->
        <section class="section container" id="productsSection">
            <div class="section-header">
                <div class="section-title">
                    <h2>Trending Products</h2>
                    <p>Handpicked bestsellers based on verified customer activity</p>
                </div>
                <div class="filter-pills" id="filterPills">
                    <button class="pill active" data-filter="all">All Items</button>
                    <button class="pill" data-filter="tech">Technology</button>
                    <button class="pill" data-filter="lifestyle">Lifestyle</button>
                </div>
            </div>
            <div class="products-grid" id="productsGrid"></div>
        </section>

        <!-- Flash Sale Section -->
        <section class="section container" id="deals">
            <div class="deal-banner">
                <div class="deal-img-wrapper">
                    <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1000&q=80" alt="Flash Sale Deal">
                </div>
                <div class="deal-content">
                    <span class="deal-tag"><i class="fas fa-bolt"></i> Limited Time Offer</span>
                    <h3 class="deal-title">MacBook Air M2 — Midnight Edition</h3>
                    <p style="color:var(--muted); font-size:15px;">Incredibly thin design with lightning-fast M2 chip performance and up to 18 hours of battery life.</p>
                    
                    <div class="timer-grid">
                        <div class="timer-card"><div class="num" id="tHours">12</div><div class="lbl">Hours</div></div>
                        <div class="timer-card"><div class="num" id="tMins">45</div><div class="lbl">Mins</div></div>
                        <div class="timer-card"><div class="num" id="tSecs">30</div><div class="lbl">Secs</div></div>
                    </div>

                    <div style="display:flex; align-items:center; gap:16px; margin-bottom:24px;">
                        <span style="font-size:32px; font-weight:800; color:white;">$999</span>
                        <span style="font-size:18px; color:var(--muted); text-decoration:line-through;">$1,199</span>
                        <span style="background:var(--accent-pink); color:white; padding:4px 10px; border-radius:99px; font-weight:800; font-size:12px;">SAVE $200</span>
                    </div>

                    <div>
                        <button class="btn btn-primary" id="claimDealBtn">Claim Discount Now</button>
                    </div>
                </div>
            </div>
        </section>

        <!-- Testimonials -->
        <section class="section container">
            <div class="section-header">
                <div class="section-title">
                    <h2>Loved by Shoppers</h2>
                    <p>Read real experiences from our global customer community</p>
                </div>
            </div>
            <div class="testimonials-grid">
                <div class="review-card">
                    <div class="review-stars">★★★★★</div>
                    <p>"The shipping speed blew me away. The build quality of the wireless headphones was even better than expected!"</p>
                    <div class="review-user">
                        <img src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=100&q=80" alt="Ava Martin">
                        <div>
                            <h5>Ava Martin</h5>
                            <span>Verified Purchaser</span>
                        </div>
                    </div>
                </div>

                <div class="review-card">
                    <div class="review-stars">★★★★★</div>
                    <p>"Sleek visual checkout process and responsive customer support when updating my shipping address."</p>
                    <div class="review-user">
                        <img src="https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=100&q=80" alt="Marcus Vance">
                        <div>
                            <h5>Marcus Vance</h5>
                            <span>Verified Purchaser</span>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Newsletter -->
        <section class="section container">
            <div class="newsletter-box">
                <h3>Stay Ahead of the Curve</h3>
                <p>Join our VIP subscriber list to receive early access drops and member-only promotions.</p>
                <form class="newsletter-form" onsubmit="event.preventDefault(); showToast('Subscribed successfully!');">
                    <input type="email" placeholder="Enter your email address" required>
                    <button type="submit" class="btn btn-primary">Subscribe</button>
                </form>
            </div>
        </section>
    </main>

    <!-- Footer -->
    <footer>
        <div class="container footer-grid">
            <div class="footer-brand">
                <a class="brand" href="#">
                    <div class="brand-icon"><i class="fas fa-bolt"></i></div>
                    <span>Nexus<span class="accent">Shop</span></span>
                </a>
                <p>Curating tomorrow's technology and fashion standards today.</p>
            </div>
            <div class="footer-col">
                <h5>Categories</h5>
                <ul>
                    <li><a href="#">Smartphones</a></li>
                    <li><a href="#">Laptops</a></li>
                    <li><a href="#">Audio & Gadgets</a></li>
                    <li><a href="#">Footwear</a></li>
                </ul>
            </div>
            <div class="footer-col">
                <h5>Support</h5>
                <ul>
                    <li><a href="#">Help Center</a></li>
                    <li><a href="#">Order Tracking</a></li>
                    <li><a href="#">Return Policy</a></li>
                    <li><a href="#">Contact Us</a></li>
                </ul>
            </div>
            <div class="footer-col">
                <h5>Company</h5>
                <ul>
                    <li><a href="#">About Nexus</a></li>
                    <li><a href="#">Careers</a></li>
                    <li><a href="#">Privacy Policy</a></li>
                    <li><a href="#">Terms of Service</a></li>
                </ul>
            </div>
        </div>
        <div class="footer-bottom">
            &copy; <span id="year"></span> NexusShop Inc. All rights reserved.
        </div>
    </footer>

    <div class="toast-container" id="toastContainer"></div>

    <script>
        const CATEGORIES = [
            { id: 'all', name: 'All Products', icon: 'fa-border-all' },
            { id: 'phones', name: 'Phones', icon: 'fa-mobile-alt' },
            { id: 'laptops', name: 'Laptops', icon: 'fa-laptop' },
            { id: 'audio', name: 'Audio', icon: 'fa-headphones' },
            { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints' },
            { id: 'accessories', name: 'Accessories', icon: 'fa-clock' }
        ];

        const PRODUCTS = [
            { id: 1, title: 'iPhone 14 Pro Max', price: 1099, oldPrice: 1199, rating: 4.9, reviews: 128, badge: 'New', img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80', category: 'phones', tag: 'tech' },
            { id: 2, title: 'MacBook Pro 14"', price: 1999, oldPrice: null, rating: 4.8, reviews: 86, badge: null, img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80', category: 'laptops', tag: 'tech' },
            { id: 3, title: 'Apple Watch Series 8', price: 349, oldPrice: 399, rating: 4.9, reviews: 214, badge: '-12%', img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80', category: 'accessories', tag: 'lifestyle' },
            { id: 4, title: 'Nike Air Max 270', price: 150, oldPrice: null, rating: 4.7, reviews: 53, badge: null, img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80', category: 'footwear', tag: 'lifestyle' },
            { id: 5, title: 'Sony Mirrorless Camera', price: 2499, oldPrice: null, rating: 5.0, reviews: 42, badge: 'Best Seller', img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80', category: 'accessories', tag: 'tech' },
            { id: 6, title: 'Sony WH-1000XM5', price: 399, oldPrice: 449, rating: 4.9, reviews: 156, badge: '-10%', img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80', category: 'audio', tag: 'tech' }
        ];

        let cartCount = 0;
        let wishlistCount = 0;
        let activeCategory = 'all';

        // Render Categories
        function renderCategories() {
            const grid = document.getElementById('categoriesGrid');
            grid.innerHTML = CATEGORIES.map(cat => `
                <div class="cat-card ${activeCategory === cat.id ? 'active' : ''}" onclick="selectCategory('${cat.id}')">
                    <div class="cat-icon"><i class="fas ${cat.icon}"></i></div>
                    <h4>${cat.name}</h4>
                </div>
            `).join('');
        }

        // Render Products
        function renderProducts(items) {
            const grid = document.getElementById('productsGrid');
            if (items.length === 0) {
                grid.innerHTML = `<div style="grid-column:1/-1; text-align:center; padding:40px; color:var(--muted);">No matching products found.</div>`;
                return;
            }

            grid.innerHTML = items.map(p => `
                <div class="product-card">
                    ${p.badge ? `<span class="product-badge">${p.badge}</span>` : ''}
                    <button class="wishlist-btn" onclick="toggleWishlist(this)" aria-label="Add to wishlist">
                        <i class="far fa-heart"></i>
                    </button>
                    <div class="product-img-wrapper">
                        <img src="${p.img}" alt="${p.title}">
                    </div>
                    <div class="product-content">
                        <span class="product-category">${p.category}</span>
                        <h4 class="product-title">${p.title}</h4>
                        <div class="product-rating">
                            ★ ${p.rating} <span class="count">(${p.reviews})</span>
                        </div>
                        <div class="product-bottom">
                            <div class="price-group">
                                <span class="current-price">$${p.price}</span>
                                ${p.oldPrice ? `<span class="original-price">$${p.oldPrice}</span>` : ''}
                            </div>
                            <button class="add-cart-btn" onclick="addToCart('${p.title}')">
                                <i class="fas fa-shopping-bag"></i> Add
                            </button>
                        </div>
                    </div>
                </div>
            `).join('');
        }

        function selectCategory(id) {
            activeCategory = id;
            renderCategories();
            filterProducts();
        }

        function filterProducts() {
            const searchVal = document.getElementById('searchInput').value.toLowerCase();
            const activePill = document.querySelector('.pill.active')?.getAttribute('data-filter') || 'all';

            const filtered = PRODUCTS.filter(p => {
                const matchesCat = activeCategory === 'all' || p.category === activeCategory;
                const matchesSearch = p.title.toLowerCase().includes(searchVal) || p.category.toLowerCase().includes(searchVal);
                const matchesPill = activePill === 'all' || p.tag === activePill;
                return matchesCat && matchesSearch && matchesPill;
            });

            renderProducts(filtered);
        }

        function addToCart(title) {
            cartCount++;
            document.getElementById('cartCount').textContent = cartCount;
            showToast(`Added <strong>${title}</strong> to your cart!`);
        }

        function toggleWishlist(btn) {
            btn.classList.toggle('active');
            const icon = btn.querySelector('i');
            if (btn.classList.contains('active')) {
                icon.className = 'fas fa-heart';
                wishlistCount++;
                showToast('Item saved to your wishlist!');
            } else {
                icon.className = 'far fa-heart';
                wishlistCount = Math.max(0, wishlistCount - 1);
            }
            document.getElementById('wishlistCount').textContent = wishlistCount;
        }

        function showToast(message) {
            const container = document.getElementById('toastContainer');
            const toast = document.createElement('div');
            toast.className = 'toast';
            toast.innerHTML = `<i class="fas fa-check-circle"></i> <span>${message}</span>`;
            container.appendChild(toast);
            setTimeout(() => {
                toast.style.opacity = '0';
                toast.style.transform = 'translateX(100%)';
                setTimeout(() => toast.remove(), 300);
            }, 2500);
        }

        // Live Countdown Timer
        function startTimer() {
            let totalSecs = 12 * 3600 + 45 * 60 + 30;
            setInterval(() => {
                if (totalSecs <= 0) return;
                totalSecs--;
                const h = Math.floor(totalSecs / 3600);
                const m = Math.floor((totalSecs % 3600) / 60);
                const s = totalSecs % 60;
                document.getElementById('tHours').textContent = String(h).padStart(2, '0');
                document.getElementById('tMins').textContent = String(m).padStart(2, '0');
                document.getElementById('tSecs').textContent = String(s).padStart(2, '0');
            }, 1000);
        }

        // Event Listeners
        document.getElementById('searchInput').addEventListener('input', filterProducts);

        document.querySelectorAll('.pill').forEach(pill => {
            pill.addEventListener('click', (e) => {
                document.querySelectorAll('.pill').forEach(p => p.classList.remove('active'));
                e.target.classList.add('active');
                filterProducts();
            });
        });

        document.getElementById('claimDealBtn').addEventListener('click', () => {
            addToCart('MacBook Air M2');
        });

        document.getElementById('year').textContent = new Date().getFullYear();

        // Initial setup
        renderCategories();
        renderProducts(PRODUCTS);
        startTimer();
    </script>
</body>
</html>
