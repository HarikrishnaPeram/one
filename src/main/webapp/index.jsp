<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>NexusShop — Premium Dark UI</title>

    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;500;600;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous">

    <style>
        :root {
            --bg: #090d16;
            --surface: #111827;
            --surface-hover: #1f293d;
            --card: #161f30;
            --primary: #6366f1;
            --primary-hover: #4f46e5;
            --accent: #10b981;
            --accent-pink: #f43f5e;
            --text: #f9fafb;
            --muted: #9ca3af;
            --border: rgba(255, 255, 255, 0.08);
            --border-highlight: rgba(99, 102, 241, 0.4);
            --radius-lg: 16px;
            --radius-md: 10px;
            --shadow: 0 12px 32px -8px rgba(0, 0, 0, 0.5);
            --glow: 0 0 20px rgba(99, 102, 241, 0.3);
            --container: 1200px;
        }

        * {
            box-sizing: border-box;
            transition: background-color 0.2s ease, border-color 0.2s ease, transform 0.2s ease, box-shadow 0.2s ease;
        }

        html {
            scroll-behavior: smooth;
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

        /* Toast Notification */
        .toast {
            position: fixed;
            bottom: 24px;
            right: 24px;
            background: var(--surface);
            border: 1px solid var(--accent);
            color: var(--text);
            padding: 14px 20px;
            border-radius: var(--radius-md);
            box-shadow: var(--shadow);
            display: flex;
            align-items: center;
            gap: 10px;
            z-index: 100;
            transform: translateY(150%);
            opacity: 0;
            transition: all 0.3s cubic-bezier(0.16, 1, 0.3, 1);
        }

        .toast.show {
            transform: translateY(0);
            opacity: 1;
        }

        /* Header */
        header {
            position: sticky;
            top: 0;
            z-index: 50;
            background: rgba(9, 13, 22, 0.85);
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
            gap: 8px;
            list-style: none;
            margin: 0;
            padding: 0;
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
        }

        nav.main-nav li a:hover {
            color: var(--text);
            background: rgba(255, 255, 255, 0.06);
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
            background: rgba(255, 255, 255, 0.08);
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
            width: 42px;
            height: 42px;
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
            top: -2px;
            right: -2px;
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
            font-size: 20px;
            cursor: pointer;
        }

        /* Hero */
        .hero {
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
            background: linear-gradient(180deg, rgba(9, 13, 22, 0.6) 0%, var(--bg) 100%),
                        url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1400&q=80') center/cover no-repeat;
            color: white;
            min-height: 480px;
            padding: 80px 20px;
            border-bottom: 1px solid var(--border);
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
            max-width: 600px;
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
            grid-template-columns: repeat(7, 1fr);
        }

        .cat-card {
            background: var(--surface);
            border: 1px solid var(--border);
            border-radius: var(--radius-lg);
            padding: 20px 12px;
            text-align: center;
            cursor: pointer;
            user-select: none;
        }

        .cat-card:hover, .cat-card.active {
            transform: translateY(-4px);
            border-color: var(--primary);
            box-shadow: var(--shadow);
            background: var(--surface-hover);
        }

        .cat-card.active {
            box-shadow: var(--glow);
        }

        .cat-card .icon {
            font-size: 24px;
            color: var(--primary);
            margin-bottom: 10px;
        }

        .cat-card h4 {
            margin: 0;
            font-size: 14px;
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
            border-color: var(--border-highlight);
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
            transform: scale(1.06);
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
            font-weight: 600;
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
            padding: 10px 14px;
            border-radius: var(--radius-md);
            cursor: pointer;
        }

        .wish-btn:hover, .wish-btn.active {
            color: var(--accent-pink);
            border-color: var(--accent-pink);
            background: rgba(244, 63, 94, 0.1);
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
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            gap: 20px;
        }

        .testimonial {
            background: var(--surface);
            border: 1px solid var(--border);
            padding: 24px;
            border-radius: var(--radius-lg);
        }

        /* Newsletter */
        .newsletter {
            background: linear-gradient(135deg, rgba(99, 102, 241, 0.12) 0%, rgba(244, 63, 94, 0.12) 100%);
            border: 1px solid var(--border);
            border-radius: var(--radius-lg);
            padding: 48px 24px;
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

        .muted { color: var(--muted); }

        /* Responsive */
        @media (max-width:1200px) {
            .categories { grid-template-columns: repeat(4, 1fr); }
            .products { grid-template-columns: repeat(3, 1fr); }
        }

        @media (max-width:900px) {
            nav.main-nav { display: none; }
            .mobile-toggle { display: block; }
            .products { grid-template-columns: repeat(2, 1fr); }
            .categories { grid-template-columns: repeat(3, 1fr); }
            .deal { flex-direction: column; }
            .deal img { width: 100%; height: 240px; }
            .testimonials { grid-template-columns: 1fr; }
        }

        @media (max-width:600px) {
            .hero h1 { font-size: 32px; }
            .products { grid-template-columns: 1fr; }
            .categories { grid-template-columns: repeat(2, 1fr); }
            .search { min-width: 100%; }
            .header-inner { flex-wrap: wrap; }
        }
    </style>
</head>

<body>
    <div class="toast" id="toast">
        <i class="fas fa-check-circle" style="color:var(--accent); font-size: 18px;"></i>
        <span id="toastMsg">Item added to your cart</span>
    </div>

    <header>
        <div class="container header-inner">
            <div style="display:flex;align-items:center;gap:18px;">
                <button class="mobile-toggle" id="mobileToggle" aria-label="Open menu"><i class="fas fa-bars"></i></button>
                <a class="brand" href="#">
                    <span>Nexus<span class="accent">Shop</span></span>
                </a>
            </div>

            <nav class="main-nav">
                <ul>
                    <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
                    <li><a href="#categoriesSection"><i class="fas fa-th-large"></i> Categories</a></li>
                    <li><a href="#productsSection"><i class="fas fa-fire"></i> Trending</a></li>
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
