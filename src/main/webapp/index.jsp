<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Nehith — Finance & Rapido Rides</title>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;500;600;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous">

    <style>
        :root {
            --app-primary: #0A8754;
            --app-primary-hover: #086F44;
            --rapido-yellow: #FFD100;
            --rapido-dark: #222222;
            --fin-dark: #121826;
            --fin-light: #F3F4F6;
            --fin-white: #FFFFFF;
            --fin-gray-100: #E5E7EB;
            --fin-gray-500: #6B7280;
            --radius-pill: 9999px;
            --radius-lg: 16px;
            --radius-md: 12px;
            --shadow-card: 0 4px 15px rgba(18, 24, 38, 0.06);
            --shadow-hover: 0 8px 25px rgba(18, 24, 38, 0.12);
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
            color: var(--fin-dark);
            background: var(--fin-white);
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
            background: linear-gradient(135deg, var(--rapido-dark), #111111);
            color: var(--rapido-yellow);
            text-align: center;
            padding: 10px 16px;
            font-size: 13px;
            font-weight: 700;
        }

        .top-bar span {
            background: rgba(255, 209, 0, 0.2);
            color: var(--fin-white);
            padding: 2px 10px;
            border-radius: var(--radius-pill);
            margin-left: 6px;
        }

        /* Header */
        header {
            position: sticky;
            top: 0;
            z-index: 100;
            background: var(--fin-white);
            box-shadow: 0 15px 40px -20px rgba(18, 24, 38, 0.08);
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
            color: var(--fin-dark);
        }

        .brand-logo {
            background: var(--rapido-yellow);
            color: var(--rapido-dark);
            width: 42px;
            height: 42px;
            border-radius: 12px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 20px;
        }

        /* Location Pill */
        .location-pill {
            display: flex;
            align-items: center;
            gap: 8px;
            background: var(--fin-light);
            padding: 10px 16px;
            border-radius: var(--radius-pill);
            font-size: 14px;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.2s;
            border: 1px solid var(--fin-gray-100);
        }

        .location-pill:hover {
            border-color: var(--rapido-yellow);
        }

        .location-pill i {
            color: var(--app-primary);
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
            color: var(--fin-dark);
            font-weight: 600;
            font-size: 14px;
            transition: all 0.2s;
        }

        nav.main-nav li a:hover, nav.main-nav li a.active {
            color: var(--app-primary);
            background: #E8F5E9;
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
            color: var(--fin-dark);
            display: flex;
            align-items: center;
            gap: 8px;
            padding: 8px 14px;
            border-radius: var(--radius-pill);
            transition: background 0.2s;
        }

        .nav-btn:hover {
            background: var(--fin-light);
        }

        .nav-btn-cart {
            background: var(--rapido-yellow);
            color: var(--rapido-dark);
            font-weight: 700;
        }

        .nav-btn-cart:hover {
            background: #E5BD00;
        }

        .badge-count {
            background: var(--rapido-dark);
            color: var(--rapido-yellow);
            font-size: 11px;
            font-weight: 800;
            padding: 2px 7px;
            border-radius: var(--radius-pill);
        }

        /* Sub-Service Banner */
        .services-bar {
            background: var(--fin-light);
            padding: 16px 0;
            border-bottom: 1px solid var(--fin-gray-100);
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
            background: var(--fin-white);
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
            background: var(--rapido-yellow);
            color: var(--rapido-dark);
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
            color: var(--fin-dark);
        }

        /* Categories */
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
            border: 3px solid var(--fin-light);
        }

        .cat-img img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .cat-item h4 {
            font-size: 15px;
            font-weight: 700;
            color: var(--fin-dark);
        }

        /* Service Cards Grid */
        .restaurants-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(270px, 1fr));
            gap: 32px;
        }

        .restaurant-card {
            background: var(--fin-white);
            border-radius: var(--radius-lg);
            overflow: hidden;
            display: flex;
            flex-direction: column;
            cursor: pointer;
            transition: transform 0.25s ease, box-shadow 0.25s ease;
            border: 1px solid var(--fin-gray-100);
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
            background: var(--fin-light);
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
            background: linear-gradient(180deg, rgba(0,0,0,0) 0%, rgba(34,34,34,0.9) 100%);
            color: var(--rapido-yellow);
            padding: 16px 12px 10px;
            font-size: 14px;
            font-weight: 800;
            letter-spacing: -0.01em;
        }

        .res-content {
            padding: 14px 12px;
            display: flex;
            flex-direction: column;
            gap: 6px;
        }

        .res-name {
            font-size: 18px;
            font-weight: 700;
            color: var(--fin-dark);
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
            background: var(--app-primary);
            color: var(--fin-white);
            padding: 2px 6px;
            border-radius: 6px;
            font-size: 12px;
            display: inline-flex;
            align-items: center;
            gap: 3px;
        }

        .res-cuisines {
            font-size: 14px;
            color: var(--fin-gray-500);
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
            font-weight: 500;
        }

        .res-location {
            font-size: 13px;
            color: var(--fin-gray-500);
            font-weight: 500;
        }

        /* Footer */
        footer {
            background: var(--rapido-dark);
            color: var(--fin-white);
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
        🛵 50% OFF on your first 3 Rapido Bike Taxis & Zero Fee Investments! <span>Use code: NEHITHRAPIDO</span>
    </div>

    <header>
        <div class="container header-inner">
            <a class="brand" href="#">
                <div class="brand-logo"><i class="fas fa-motorcycle"></i></div>
                Nehith <span style="color: #D4AF37;">SuperApp</span>
            </a>

            <div class="location-pill">
                <i class="fas fa-location-dot"></i>
                <span>Madhapur, Hyderabad</span>
                <i class="fas fa-chevron-down" style="font-size: 10px; margin-left: 4px;"></i>
            </div>

            <nav class="main-nav">
                <ul>
                    <li><a href="#" class="active"><i class="fas fa-bolt"></i> Rapido Rides</a></li>
                    <li><a href="#wealthSection"><i class="fas fa-wallet"></i> Finance & Wealth</a></li>
                    <li><a href="#ridesSection"><i class="fas fa-box"></i> Parcel Delivery</a></li>
                </ul>
            </nav>

            <div class="header-right">
                <button class="nav-btn"><i class="far fa-user"></i> Account</button>
                <button class="nav-btn nav-btn-cart" onclick="alert('Opening active rides & bookings...')">
                    <i class="fas fa-bookmark"></i> Bookings <span class="badge-count" id="cartCount">0</span>
                </button>
            </div>
        </div>
    </header>

    <div class="services-bar">
        <div class="container services-scroll">
            <div class="service-pill active"><i class="fas fa-motorcycle"></i> Rapido Bike Taxi</div>
            <div class="service-pill" onclick="alert('Booking Rapido Auto Ride...')"><i class="fas fa-taxi"></i> Rapido Auto</div>
            <div class="service-pill" onclick="alert('Opening Rapido Parcel / Courier Delivery...')"><i class="fas fa-box-open"></i> Rapido Parcel</div>
            <div class="service-pill" onclick="alert('Opening Nehith Wealth & Mutual Funds...')"><i class="fas fa-chart-line"></i> Wealth & Mutual Funds</div>
        </div>
    </div>

    <main>
        <section class="section container">
            <div class="section-header">
                <div class="section-title">
                    <h2>Need a quick ride or financial plan, Nehith?</h2>
                </div>
            </div>
            <div class="categories-grid" id="categoriesGrid"></div>
        </section>

        <section class="section container" id="ridesSection">
            <div class="section-header">
                <div class="section-title">
                    <h2>Rapido Express Rides & Logistics</h2>
                </div>
            </div>
            <div class="restaurants-grid" id="ridesGrid"></div>
        </section>

        <section class="section container" id="wealthSection">
            <div class="section-header">
                <div class="section-title">
                    <h2>Nehith Finance & Investment Portfolios</h2>
                </div>
            </div>
            <div class="restaurants-grid" id="financeGrid"></div>
        </section>
    </main>

    <footer>
        <div class="container">
            <div class="footer-brand">
                <div class="brand-logo" style="width: 32px; height: 32px; font-size: 16px;"><i class="fas fa-motorcycle"></i></div>
                Nehith SuperApp (Rapido & Finance)
            </div>
            <p style="color: #93959F; font-size: 14px; max-width: 400px;">Experience lightning-fast bike taxi pickups and automated financial management all in one seamless application.</p>
            <div class="footer-bottom">
                <p>&copy; 2026 Nehith Technologies Pvt. Ltd. Integrated with Rapido & Finance UI Framework.</p>
            </div>
        </div>
    </footer>

    <script>
        const categories = [
            { name: "Bike Taxi", img: "https://images.unsplash.com/photo-1558981806-ec527fa84c39?auto=format&fit=crop&w=300&q=80" },
            { name: "Rapido Auto", img: "https://images.unsplash.com/photo-1617886364736-1f9f3c5b525f?auto=format&fit=crop&w=300&q=80" },
            { name: "Parcel Drop", img: "https://images.unsplash.com/photo-1566576912321-d58ddd7a6088?auto=format&fit=crop&w=300&q=80" },
            { name: "Mutual Funds", img: "https://images.unsplash.com/photo-1611974789855-9c2a0a7236a3?auto=format&fit=crop&w=300&q=80" },
            { name: "Stocks & ETFs", img: "https://images.unsplash.com/photo-1590283603385-17ffb3a7f29f?auto=format&fit=crop&w=300&q=80" },
            { name: "Gold Vault", img: "https://images.unsplash.com/photo-1610375461246-83df859d849d?auto=format&fit=crop&w=300&q=80" }
        ];

        const rideServices = [
            { id: 1, name: "Rapido Bike Express", offer: "FLAT 50% OFF", rating: "4.8", time: "2 mins away", cuisines: "Safest Bike Taxi • Helmet Provided", location: "Madhapur to Hitech City", img: "https://images.unsplash.com/photo-1558981806-ec527fa84c39?auto=format&fit=crop&w=500&q=80" },
            { id: 2, name: "Rapido Auto Ride", offer: "NO SURGE PRICING", rating: "4.7", time: "4 mins away", cuisines: "Doorstep Auto Pickup • Metered Fare", location: "Jubilee Hills", img: "https://images.unsplash.com/photo-1617886364736-1f9f3c5b525f?auto=format&fit=crop&w=500&q=80" },
            { id: 3, name: "Rapido Parcel Courier", offer: "DELIVERY UNDER 45 MINS", rating: "4.9", time: "Instant Pickup", cuisines: "Send Documents, Food, Packages", location: "Citywide Coverage", img: "https://images.unsplash.com/photo-1566576912321-d58ddd7a6088?auto=format&fit=crop&w=500&q=80" }
        ];

        const financialProducts = [
            { id: 1, name: "Nifty 50 Index Fund", offer: "14.2% 3Y CAGR", rating: "4.8", time: "Moderate Risk", cuisines: "Direct Growth • Low Expense Ratio", location: "Equity Asset Class", img: "https://images.unsplash.com/photo-1590283603385-17ffb3a7f29f?auto=format&fit=crop&w=500&q=80" },
            { id: 2, name: "High-Yield Savings Vault", offer: "7.1% INTEREST P.A.", rating: "4.9", time: "Zero Risk", cuisines: "Instant Liquidity • Daily Payouts", location: "Insured Bank Partner", img: "https://images.unsplash.com/photo-1559526324-4b87b5e36e44?auto=format&fit=crop&w=500&q=80" }
        ];

        // Render Categories
        document.getElementById('categoriesGrid').innerHTML = categories.map(c => `
            <div class="cat-item" onclick="alert('Exploring ${c.name} service...')">
                <div class="cat-img">
                    <img src="${c.img}" alt="${c.name}">
                </div>
                <h4>${c.name}</h4>
            </div>
        `).join('');

        // Render Rides
        document.getElementById('ridesGrid').innerHTML = rideServices.map(r => `
            <div class="restaurant-card" onclick="bookService('${r.name}')">
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

        // Render Finance
        document.getElementById('financeGrid').innerHTML = financialProducts.map(p => `
            <div class="restaurant-card" onclick="bookService('${p.name}')">
                <div class="res-img-wrapper">
                    <img src="${p.img}" alt="${p.name}">
                    <div class="discount-badge">${p.offer}</div>
                </div>
                <div class="res-content">
                    <div class="res-name">${p.name}</div>
                    <div class="res-meta">
                        <span class="rating-box"><i class="fas fa-star" style="font-size: 10px;"></i> ${p.rating}</span>
                        <span>•</span>
                        <span>${p.time}</span>
                    </div>
                    <div class="res-cuisines">${p.cuisines}</div>
                    <div class="res-location">${p.location}</div>
                </div>
            </div>
        `).join('');

        let bookingCount = 0;
        function bookService(serviceName) {
            bookingCount++;
            document.getElementById('cartCount').innerText = bookingCount;
            alert(`Successfully booked or added "${serviceName}" to your active items list!`);
        }
    </script>
</body>
</html>
