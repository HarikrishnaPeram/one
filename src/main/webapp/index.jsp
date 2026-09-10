<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Nehitha — Bike & Auto Rides</title>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;500;600;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous">

    <style>
        :root {
            --rapido-yellow: #FFD500;
            --rapido-yellow-hover: #F2C700;
            --rapido-dark: #1A1A1A;
            --rapido-light: #F9F9F9;
            --rapido-white: #FFFFFF;
            --rapido-gray-100: #EFEFEF;
            --rapido-gray-500: #717171;
            --rapido-gray-900: #111111;
            --radius-pill: 9999px;
            --radius-lg: 16px;
            --radius-md: 10px;
            --shadow-card: 0 6px 20px rgba(0, 0, 0, 0.06);
            --shadow-hover: 0 12px 32px rgba(0, 0, 0, 0.12);
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
            color: var(--rapido-gray-900);
            background: var(--rapido-light);
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
            background: var(--rapido-dark);
            color: var(--rapido-yellow);
            text-align: center;
            padding: 10px 16px;
            font-size: 13px;
            font-weight: 700;
            letter-spacing: -0.01em;
        }

        .top-bar span {
            background: rgba(255, 213, 0, 0.15);
            padding: 2px 10px;
            border-radius: var(--radius-pill);
            margin-left: 6px;
            color: var(--rapido-white);
        }

        /* Header */
        header {
            position: sticky;
            top: 0;
            z-index: 100;
            background: rgba(255, 255, 255, 0.95);
            backdrop-filter: blur(12px);
            border-bottom: 1px solid var(--rapido-gray-100);
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
            color: var(--rapido-gray-900);
        }

        .brand .badge-brand {
            background: var(--rapido-yellow);
            color: var(--rapido-gray-900);
            padding: 2px 10px;
            border-radius: 8px;
            font-size: 22px;
        }

        /* Location Picker */
        .location-pill {
            display: flex;
            align-items: center;
            gap: 8px;
            background: #FFF9D6;
            padding: 10px 18px;
            border-radius: var(--radius-pill);
            font-size: 14px;
            font-weight: 700;
            cursor: pointer;
            transition: all 0.2s;
            border: 1px solid rgba(255, 213, 0, 0.4);
        }

        .location-pill i {
            color: #D4AF37;
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
            color: var(--rapido-gray-900);
            font-weight: 600;
            font-size: 14px;
            transition: all 0.2s;
        }

        nav.main-nav li a:hover, nav.main-nav li a.active {
            background: var(--rapido-yellow);
            color: var(--rapido-gray-900);
        }

        .header-right {
            display: flex;
            align-items: center;
            gap: 12px;
        }

        .btn-download {
            background: var(--rapido-dark);
            color: var(--rapido-yellow);
            border: none;
            border-radius: var(--radius-pill);
            padding: 12px 24px;
            display: inline-flex;
            align-items: center;
            gap: 8px;
            cursor: pointer;
            font-size: 14px;
            font-weight: 700;
            transition: all 0.2s;
        }

        .btn-download:hover {
            background: #000;
            transform: translateY(-1px);
        }

        /* Hero Section with Ride Booking Widget */
        .hero {
            background: linear-gradient(135deg, #FFFDF0 0%, var(--rapido-light) 100%);
            padding: 50px 0 80px;
            border-bottom: 1px solid var(--rapido-gray-100);
        }

        .hero-grid {
            display: grid;
            grid-template-columns: 1.1fr 0.9fr;
            gap: 48px;
            align-items: center;
        }

        .hero h1 {
            font-size: 48px;
            font-weight: 800;
            line-height: 1.15;
            margin-bottom: 16px;
            letter-spacing: -0.03em;
            color: var(--rapido-gray-900);
        }

        .hero h1 span {
            background: var(--rapido-yellow);
            padding: 0 8px;
            border-radius: 6px;
        }

        .hero p {
            color: var(--rapido-gray-500);
            font-size: 17px;
            margin-bottom: 32px;
            font-weight: 500;
        }

        /* Ride Booking Card (Rapido Booking Widget) */
        .booking-card {
            background: var(--rapido-white);
            border-radius: var(--radius-lg);
            padding: 28px;
            box-shadow: var(--shadow-hover);
            border: 2px solid var(--rapido-yellow);
        }

        .ride-tabs {
            display: flex;
            gap: 10px;
            margin-bottom: 24px;
        }

        .ride-tab {
            flex: 1;
            padding: 12px 10px;
            background: var(--rapido-light);
            border: 1px solid var(--rapido-gray-100);
            border-radius: 12px;
            text-align: center;
            font-weight: 700;
            font-size: 13px;
            cursor: pointer;
            transition: all 0.2s;
            display: flex;
            flex-direction: column;
            align-items: center;
            gap: 6px;
        }

        .ride-tab.active, .ride-tab:hover {
            background: var(--rapido-yellow);
            border-color: var(--rapido-yellow);
            color: var(--rapido-gray-900);
        }

        .ride-tab i {
            font-size: 18px;
        }

        .location-inputs {
            display: flex;
            flex-direction: column;
            gap: 14px;
            margin-bottom: 24px;
        }

        .input-group {
            display: flex;
            align-items: center;
            background: var(--rapido-light);
            border: 1px solid var(--rapido-gray-100);
            border-radius: var(--radius-md);
            padding: 0 16px;
            transition: all 0.2s;
        }

        .input-group:focus-within {
            border-color: var(--rapido-gray-900);
            background: var(--rapido-white);
            box-shadow: 0 0 0 3px rgba(255, 213, 0, 0.2);
        }

        .input-group i {
            font-size: 16px;
            margin-right: 12px;
        }

        .input-group.pickup i { color: #2E7D32; }
        .input-group.drop i { color: #C62828; }

        .input-group input {
            border: 0;
            background: transparent;
            outline: none;
            padding: 14px 0;
            width: 100%;
            font-size: 14px;
            font-weight: 600;
            color: var(--rapido-gray-900);
        }

        .input-group input::placeholder {
            color: var(--rapido-gray-500);
            font-weight: 400;
        }

        .btn-book {
            width: 100%;
            background: var(--rapido-yellow);
            color: var(--rapido-gray-900);
            border: none;
            padding: 16px;
            border-radius: var(--radius-pill);
            font-weight: 800;
            font-size: 16px;
            cursor: pointer;
            transition: all 0.2s;
            box-shadow: 0 4px 14px rgba(255, 213, 0, 0.4);
        }

        .btn-book:hover {
            background: var(--rapido-yellow-hover);
            transform: translateY(-2px);
            box-shadow: 0 6px 20px rgba(255, 213, 0, 0.6);
        }

        .hero-img-box {
            border-radius: var(--radius-lg);
            overflow: hidden;
            box-shadow: var(--shadow-hover);
            height: 420px;
            background: var(--rapido-dark);
            position: relative;
        }

        .hero-img-box img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            opacity: 0.85;
        }

        .hero-banner-tag {
            position: absolute;
            bottom: 24px;
            left: 24px;
            right: 24px;
            background: rgba(0, 0, 0, 0.8);
            backdrop-filter: blur(8px);
            padding: 16px 20px;
            border-radius: var(--radius-md);
            color: var(--rapido-white);
            display: flex;
            align-items: center;
            justify-content: space-between;
        }

        .hero-banner-tag h4 {
            font-size: 16px;
            font-weight: 700;
            color: var(--rapido-yellow);
        }

        .hero-banner-tag p {
            font-size: 13px;
            margin: 0;
            color: #CCCCCC;
        }

        /* Section Layouts */
        .section {
            padding: 64px 0;
        }

        .section-header {
            margin-bottom: 32px;
        }

        .section-title h2 {
            font-size: 30px;
            font-weight: 800;
            letter-spacing: -0.02em;
            color: var(--rapido-gray-900);
        }

        .section-title p {
            color: var(--rapido-gray-500);
            font-size: 15px;
            margin-top: 4px;
        }

        /* Services Grid */
        .services-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(260px, 1fr));
            gap: 24px;
        }

        .service-card {
            background: var(--rapido-white);
            border-radius: var(--radius-lg);
            padding: 28px;
            border: 1px solid var(--rapido-gray-100);
            box-shadow: var(--shadow-card);
            transition: all 0.25s ease;
            cursor: pointer;
        }

        .service-card:hover {
            border-color: var(--rapido-yellow);
            box-shadow: var(--shadow-hover);
            transform: translateY(-4px);
        }

        .service-icon {
            width: 56px;
            height: 56px;
            background: #FFF9D6;
            color: var(--rapido-gray-900);
            border-radius: 14px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 22px;
            margin-bottom: 20px;
        }

        .service-card h3 {
            font-size: 18px;
            font-weight: 700;
            margin-bottom: 8px;
        }

        .service-card p {
            font-size: 14px;
            color: var(--rapido-gray-500);
            line-height: 1.5;
        }

        /* Footer */
        footer {
            background: var(--rapido-dark);
            color: var(--rapido-white);
            padding: 64px 0 36px;
            margin-top: 80px;
        }

        .footer-brand {
            font-size: 28px;
            font-weight: 800;
            margin-bottom: 20px;
        }

        .footer-brand span {
            background: var(--rapido-yellow);
            color: var(--rapido-gray-900);
            padding: 0 8px;
            border-radius: 6px;
        }

        .footer-bottom {
            border-top: 1px solid rgba(255, 255, 255, 0.1);
            padding-top: 24px;
            margin-top: 40px;
            text-align: center;
            color: #999999;
            font-size: 13px;
        }

        @media (max-width: 900px) {
            .hero-grid { grid-template-columns: 1fr; }
            .hero-img-box { display: none; }
            .location-pill { display: none; }
            nav.main-nav { display: none; }
            .hero h1 { font-size: 36px; }
        }
    </style>
</head>
<body>

    <div class="top-bar">
        ⚡ Fastest commute in the city • Lowest fares guaranteed! <span>Code: RAPIDO50</span>
    </div>

    <header>
        <div class="container header-inner">
            <a class="brand" href="#">
                Nehitha <span class="badge-brand">Ride</span>
            </a>

            <div class="location-pill">
                <i class="fas fa-map-marker-alt"></i>
                <span>Hyderabad</span>
                <i class="fas fa-chevron-down" style="font-size: 10px; margin-left: 4px;"></i>
            </div>

            <nav class="main-nav">
                <ul>
                    <li><a href="#" class="active"><i class="fas fa-motorcycle"></i> Rides</a></li>
                    <li><a href="#servicesSection"><i class="fas fa-box"></i> Parcel</a></li>
                    <li><a href="#servicesSection"><i class="fas fa-shield-alt"></i> Safety</a></li>
                </ul>
            </nav>

            <div class="header-right">
                <button class="btn-download" onclick="alert('Downloading Nehitha Ride App...')">
                    <i class="fas fa-download"></i> Download App
                </button>
            </div>
        </div>
    </header>

    <main>
        <section class="hero">
            <div class="container hero-grid">
                <div>
                    <h1>Bharat's <span>fastest</span> & most affordable bike taxi</h1>
                    <p>Beat the traffic, save time and money on your everyday commute with verified captains.</p>
                    
                    <!-- Ride Booking Widget -->
                    <div class="booking-card">
                        <div class="ride-tabs">
                            <div class="ride-tab active" onclick="selectTab(this)">
                                <i class="fas fa-motorcycle"></i> Bike
                            </div>
                            <div class="ride-tab" onclick="selectTab(this)">
                                <i class="fas fa-taxi"></i> Auto
                            </div>
                            <div class="ride-tab" onclick="selectTab(this)">
                                <i class="fas fa-car"></i> Cab
                            </div>
                            <div class="ride-tab" onclick="selectTab(this)">
                                <i class="fas fa-box-open"></i> Parcel
                            </div>
                        </div>

                        <div class="location-inputs">
                            <div class="input-group pickup">
                                <i class="fas fa-circle-dot"></i>
                                <input type="text" id="pickupInput" placeholder="Enter pickup location">
                            </div>
                            <div class="input-group drop">
                                <i class="fas fa-location-dot"></i>
                                <input type="text" id="dropInput" placeholder="Enter drop location">
                            </div>
                        </div>

                        <button class="btn-book" onclick="bookRide()">
                            <i class="fas fa-search"></i> Find Captain
                        </button>
                    </div>
                </div>

                <div class="hero-img-box">
                    <img src="https://images.unsplash.com/photo-1558981806-ec527fa84c39?auto=format&fit=crop&w=800&q=80" alt="Bike Ride">
                    <div class="hero-banner-tag">
                        <div>
                            <h4>10M+ Happy Rides Daily</h4>
                            <p>Safe helmets provided with every ride</p>
                        </div>
                        <i class="fas fa-helmet-safety" style="font-size: 28px; color: var(--rapido-yellow);"></i>
                    </div>
                </div>
            </div>
        </section>

        <section class="section container" id="servicesSection">
            <div class="section-header">
                <div class="section-title">
                    <h2>Our Services</h2>
                    <p>Choose how you want to travel or send goods</p>
                </div>
            </div>

            <div class="services-grid">
                <div class="service-card">
                    <div class="service-icon"><i class="fas fa-motorcycle"></i></div>
                    <h3>Bike Taxi</h3>
                    <p>Quickest way to zip through traffic jams and reach your destination on time.</p>
                </div>
                <div class="service-card">
                    <div class="service-icon"><i class="fas fa-taxi"></i></div>
                    <h3>Auto Rides</h3>
                    <p>Comfortable doorstep auto pickups at transparent meter-backed fares.</p>
                </div>
                <div class="service-card">
                    <div class="service-icon"><i class="fas fa-box"></i></div>
                    <h3>Parcel Delivery</h3>
                    <p>Send food, documents, gifts or packages securely across town within minutes.</p>
                </div>
                <div class="service-card">
                    <div class="service-icon"><i class="fas fa-shield-halved"></i></div>
                    <h3>Safety Assurance</h3>
                    <p>INR 5L accidental insurance cover & live ride tracking for complete peace of mind.</p>
                </div>
            </div>
        </section>
    </main>

    <footer>
        <div class="container">
            <div class="footer-brand">Nehitha <span>Ride</span></div>
            <p style="color: #aaa; font-size: 14px; max-width: 400px;">Making everyday urban commuting lightning fast, safe, and affordable for everyone.</p>
            <div class="footer-bottom">
                <p>&copy; 2026 Nehitha Ride Inc. Inspired by Rapido UI Aesthetics.</p>
            </div>
        </div>
    </footer>

    <script>
        function selectTab(element) {
            document.querySelectorAll('.ride-tab').forEach(t => t.classList.remove('active'));
            element.classList.add('active');
        }

        function bookRide() {
            const pickup = document.getElementById('pickupInput').value.trim();
            const drop = document.getElementById('dropInput').value.trim();

            if (!pickup || !drop) {
                alert('Please enter both pickup and drop locations to find a captain.');
                return;
            }

            alert(`Searching for nearby captains from "${pickup}" to "${drop}"...`);
        }
    </script>
</body>
</html>
