<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Nehitha Traveling Services — Book Your Ride</title>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;500;600;700;800&display=swap"
          rel="stylesheet">

    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
          crossorigin="anonymous">

    <style>

        :root {
            --bg: #080b12;
            --surface: #111722;
            --surface-card: #192130;
            --surface-hover: #222d40;

            --primary: #22c55e;
            --primary-dark: #16a34a;
            --primary-light: rgba(34, 197, 94, 0.14);

            --blue: #3b82f6;
            --yellow: #facc15;

            --text: #f8fafc;
            --muted: #94a3b8;

            --border: rgba(255,255,255,0.08);

            --radius-xl: 22px;
            --radius-lg: 15px;
            --radius-md: 10px;

            --shadow:
                0 20px 30px rgba(0,0,0,0.45);

            --container: 1280px;
        }

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        html {
            scroll-behavior: smooth;
        }

        body {
            font-family: 'Plus Jakarta Sans', system-ui, sans-serif;
            background: var(--bg);
            color: var(--text);
            line-height: 1.6;
        }

        a {
            color: inherit;
            text-decoration: none;
        }

        button,
        input {
            font-family: inherit;
        }

        button {
            cursor: pointer;
        }

        .container {
            width: 100%;
            max-width: var(--container);
            margin: auto;
            padding: 0 24px;
        }


        /* ==============================
           TOP BAR
        ============================== */

        .top-bar {
            background: linear-gradient(
                90deg,
                #16a34a,
                #22c55e
            );

            color: white;
            text-align: center;

            padding: 9px 15px;

            font-size: 13px;
            font-weight: 700;
        }


        /* ==============================
           HEADER
        ============================== */

        header {
            position: sticky;
            top: 0;
            z-index: 100;

            background: rgba(8,11,18,0.9);

            backdrop-filter: blur(15px);

            border-bottom: 1px solid var(--border);
        }

        .header-inner {
            height: 76px;

            display: flex;
            align-items: center;
            justify-content: space-between;

            gap: 25px;
        }

        .brand {
            display: flex;
            align-items: center;

            gap: 10px;

            font-size: 22px;
            font-weight: 800;

            white-space: nowrap;
        }

        .brand-icon {
            width: 40px;
            height: 40px;

            display: flex;
            align-items: center;
            justify-content: center;

            border-radius: 12px;

            background: linear-gradient(
                135deg,
                var(--primary),
                var(--primary-dark)
            );

            color: white;

            box-shadow:
                0 0 25px rgba(34,197,94,0.3);
        }

        .brand .accent {
            color: var(--primary);
        }


        /* ==============================
           NAVIGATION
        ============================== */

        .main-nav ul {
            list-style: none;

            display: flex;
            gap: 5px;
        }

        .main-nav a {
            display: flex;
            align-items: center;
            gap: 7px;

            padding: 9px 14px;

            color: var(--muted);

            border-radius: 10px;

            font-size: 14px;
            font-weight: 600;
        }

        .main-nav a:hover,
        .main-nav a.active {
            color: white;
            background: var(--primary-light);
        }


        /* ==============================
           HEADER RIGHT
        ============================== */

        .header-right {
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .icon-btn {
            width: 43px;
            height: 43px;

            border: 1px solid var(--border);

            background: var(--surface);

            color: white;

            border-radius: 12px;

            display: flex;
            align-items: center;
            justify-content: center;

            transition: 0.2s;
        }

        .icon-btn:hover {
            border-color: var(--primary);
            transform: translateY(-2px);
        }


        /* ==============================
           HERO
        ============================== */

        .hero {
            min-height: 620px;

            display: flex;
            align-items: center;

            background:
                radial-gradient(
                    circle at 80% 20%,
                    rgba(34,197,94,0.15),
                    transparent 40%
                ),
                radial-gradient(
                    circle at 20% 80%,
                    rgba(59,130,246,0.1),
                    transparent 40%
                );
        }

        .hero-grid {
            display: grid;

            grid-template-columns:
                1fr 0.85fr;

            gap: 60px;

            align-items: center;
        }


        /* ==============================
           HERO TEXT
        ============================== */

        .hero-badge {
            display: inline-flex;

            align-items: center;
            gap: 8px;

            padding: 7px 14px;

            background: var(--primary-light);

            border: 1px solid rgba(34,197,94,0.3);

            color: #86efac;

            border-radius: 50px;

            font-size: 13px;

            font-weight: 700;

            margin-bottom: 20px;
        }

        .hero h1 {
            font-size: 50px;

            line-height: 1.1;

            letter-spacing: -0.03em;

            margin-bottom: 20px;

            font-weight: 800;
        }

        .hero h1 span {
            color: var(--primary);
        }

        .hero p {
            max-width: 560px;

            color: var(--muted);

            font-size: 17px;

            margin-bottom: 30px;
        }


        /* ==============================
           BOOKING CARD
        ============================== */

        .booking-card {
            background: var(--surface-card);

            border: 1px solid var(--border);

            border-radius: var(--radius-xl);

            padding: 28px;

            box-shadow: var(--shadow);
        }

        .booking-card h2 {
            font-size: 22px;
            margin-bottom: 6px;
        }

        .booking-card > p {
            color: var(--muted);
            font-size: 13px;
            margin-bottom: 22px;
        }


        /* ==============================
           LOCATION INPUTS
        ============================== */

        .location-box {
            display: flex;

            gap: 12px;

            margin-bottom: 16px;
        }

        .location-icon {
            width: 38px;
            height: 38px;

            flex-shrink: 0;

            display: flex;
            align-items: center;
            justify-content: center;

            border-radius: 50%;

            background: var(--primary-light);

            color: var(--primary);
        }

        .location-input {
            flex: 1;

            position: relative;
        }

        .location-input label {
            display: block;

            color: var(--muted);

            font-size: 11px;

            font-weight: 700;

            margin-bottom: 5px;
        }

        .location-input input {
            width: 100%;

            padding: 12px 14px;

            background: var(--surface);

            border: 1px solid var(--border);

            border-radius: 10px;

            color: white;

            outline: none;
        }

        .location-input input:focus {
            border-color: var(--primary);

            box-shadow:
                0 0 0 3px
                rgba(34,197,94,0.1);
        }


        /* ==============================
           BUTTONS
        ============================== */

        .btn {
            width: 100%;

            border: none;

            border-radius: 12px;

            padding: 14px 20px;

            font-size: 14px;

            font-weight: 800;

            display: flex;

            align-items: center;
            justify-content: center;

            gap: 9px;

            transition: 0.2s;
        }

        .btn-primary {
            background: var(--primary);

            color: #052e16;

            box-shadow:
                0 8px 25px
                rgba(34,197,94,0.2);
        }

        .btn-primary:hover {
            background: #4ade80;

            transform: translateY(-2px);
        }


        /* ==============================
           MAP
        ============================== */

        .map-card {
            height: 440px;

            border-radius: var(--radius-xl);

            overflow: hidden;

            position: relative;

            border: 1px solid var(--border);

            background:
                linear-gradient(
                    135deg,
                    #162033,
                    #0e1725
                );

            box-shadow: var(--shadow);
        }

        .map-grid {
            position: absolute;

            inset: 0;

            background-image:
                linear-gradient(
                    rgba(255,255,255,0.04) 1px,
                    transparent 1px
                ),
                linear-gradient(
                    90deg,
                    rgba(255,255,255,0.04) 1px,
                    transparent 1px
                );

            background-size: 55px 55px;

            transform: rotate(-5deg) scale(1.2);
        }

        .road {
            position: absolute;

            height: 9px;

            background: #35445b;

            border-radius: 20px;
        }

        .road.one {
            width: 130%;
            top: 42%;
            left: -15%;

            transform: rotate(18deg);
        }

        .road.two {
            width: 120%;
            top: 62%;
            left: -10%;

            transform: rotate(-25deg);
        }

        .road.three {
            width: 90%;
            top: 30%;
            left: 10%;

            transform: rotate(65deg);
        }

        .map-label {
            position: absolute;

            top: 20px;
            left: 20px;

            background: rgba(8,11,18,0.8);

            backdrop-filter: blur(10px);

            padding: 10px 14px;

            border-radius: 10px;

            font-size: 13px;

            font-weight: 700;
        }


        /* ==============================
           MAP MARKERS
        ============================== */

        .marker {
            position: absolute;

            width: 46px;
            height: 46px;

            border-radius: 50%;

            display: flex;
            align-items: center;
            justify-content: center;

            color: white;

            border: 4px solid white;

            box-shadow: 0 5px 20px rgba(0,0,0,0.4);
        }

        .pickup-marker {
            background: var(--primary);

            top: 37%;
            left: 25%;
        }

        .destination-marker {
            background: #ef4444;

            top: 58%;
            right: 23%;
        }

        .route-line {
            position: absolute;

            width: 260px;

            height: 5px;

            background: var(--primary);

            top: 53%;
            left: 29%;

            transform: rotate(25deg);

            border-radius: 20px;
        }


        /* ==============================
           DRIVER CARD
        ============================== */

        .driver-card {
            position: absolute;

            bottom: 20px;

            left: 20px;
            right: 20px;

            background: rgba(17,23,34,0.94);

            backdrop-filter: blur(15px);

            border: 1px solid var(--border);

            border-radius: 15px;

            padding: 15px;

            display: flex;

            align-items: center;

            justify-content: space-between;
        }

        .driver-info {
            display: flex;

            align-items: center;

            gap: 12px;
        }

        .driver-avatar {
            width: 42px;
            height: 42px;

            border-radius: 50%;

            background: var(--blue);

            display: flex;
            align-items: center;
            justify-content: center;
        }

        .driver-info strong {
            display: block;
            font-size: 13px;
        }

        .driver-info small {
            color: var(--muted);
            font-size: 11px;
        }

        .driver-rating {
            color: var(--yellow);

            font-size: 13px;

            font-weight: 700;
        }


        /* ==============================
           SECTION
        ============================== */

        .section {
            padding: 70px 0;
        }

        .section-title {
            margin-bottom: 30px;
        }

        .section-title h2 {
            font-size: 30px;

            font-weight: 800;
        }

        .section-title p {
            color: var(--muted);

            font-size: 14px;

            margin-top: 5px;
        }


        /* ==============================
           RIDE TYPES
        ============================== */

        .ride-grid {
            display: grid;

            grid-template-columns:
                repeat(3,1fr);

            gap: 20px;
        }

        .ride-card {
            background: var(--surface-card);

            border: 1px solid var(--border);

            border-radius: var(--radius-lg);

            padding: 22px;

            transition: 0.25s;

            cursor: pointer;
        }

        .ride-card:hover,
        .ride-card.selected {
            border-color: var(--primary);

            background:
                linear-gradient(
                    145deg,
                    var(--surface-card),
                    rgba(34,197,94,0.08)
                );

            transform: translateY(-5px);
        }

        .ride-icon {
            width: 58px;
            height: 58px;

            border-radius: 15px;

            display: flex;

            align-items: center;
            justify-content: center;

            background: var(--primary-light);

            color: var(--primary);

            font-size: 25px;

            margin-bottom: 15px;
        }

        .ride-card h3 {
            font-size: 17px;

            margin-bottom: 5px;
        }

        .ride-card p {
            color: var(--muted);

            font-size: 12px;

            margin-bottom: 14px;
        }

        .ride-bottom {
            display: flex;

            justify-content: space-between;

            align-items: center;
        }

        .ride-price {
            font-size: 18px;

            font-weight: 800;
        }

        .ride-time {
            color: var(--muted);

            font-size: 12px;
        }


        /* ==============================
           RECENT RIDES
        ============================== */

        .recent-rides {
            display: grid;

            grid-template-columns:
                repeat(2,1fr);

            gap: 15px;
        }

        .recent-card {
            background: var(--surface-card);

            border: 1px solid var(--border);

            border-radius: 14px;

            padding: 18px;

            display: flex;

            align-items: center;

            justify-content: space-between;
        }

        .recent-route {
            display: flex;

            align-items: center;

            gap: 12px;
        }

        .route-icons {
            display: flex;

            flex-direction: column;

            align-items: center;

            gap: 4px;

            color: var(--primary);
        }

        .route-icons .line {
            height: 20px;

            border-left:
                2px dashed
                var(--muted);
        }

        .recent-route strong {
            display: block;

            font-size: 13px;
        }

        .recent-route span {
            color: var(--muted);

            font-size: 11px;
        }


        /* ==============================
           FOOTER
        ============================== */

        footer {
            background: var(--surface);

            border-top: 1px solid var(--border);

            padding: 45px 0;
        }

        .footer-content {
            text-align: center;

            color: var(--muted);

            font-size: 13px;
        }

        .footer-brand {
            color: white;

            font-size: 18px;

            font-weight: 800;

            margin-bottom: 8px;
        }

        .footer-brand span {
            color: var(--primary);
        }


        /* ==============================
           TOAST
        ============================== */

        .toast {
            position: fixed;

            bottom: 25px;
            right: 25px;

            background: #16a34a;

            color: white;

            padding: 15px 20px;

            border-radius: 12px;

            font-size: 13px;

            font-weight: 700;

            box-shadow: var(--shadow);

            transform:
                translateY(100px);

            opacity: 0;

            transition: 0.3s;

            z-index: 999;
        }

        .toast.show {
            transform: translateY(0);

            opacity: 1;
        }


        /* ==============================
           MOBILE
        ============================== */

        @media(max-width:900px) {

            .hero-grid {
                grid-template-columns: 1fr;
            }

            .map-card {
                height: 380px;
            }

            .hero h1 {
                font-size: 40px;
            }

            .ride-grid {
                grid-template-columns: 1fr;
            }

            .recent-rides {
                grid-template-columns: 1fr;
            }

            .main-nav {
                display: none;
            }
        }

        @media(max-width:600px) {

            .header-inner {
                height: 65px;
            }

            .brand {
                font-size: 17px;
            }

            .brand-icon {
                width: 34px;
                height: 34px;
            }

            .header-right {
                display: none;
            }

            .hero {
                padding: 50px 0;
            }

            .hero h1 {
                font-size: 34px;
            }

            .hero p {
                font-size: 15px;
            }

            .booking-card {
                padding: 20px;
            }

            .map-card {
                display: none;
            }
        }

    </style>
</head>


<body>


<!-- TOP BAR -->

<div class="top-bar">
    🚕 Nehitha Traveling Services — Safe, Fast & Reliable Rides
</div>


<!-- HEADER -->

<header>

    <div class="container header-inner">

        <a class="brand" href="#">

            <div class="brand-icon">
                <i class="fas fa-car"></i>
            </div>

            <span>
                Nehitha
                <span class="accent">Traveling</span>
            </span>

        </a>


        <nav class="main-nav">

            <ul>

                <li>
                    <a href="#" class="active">
                        <i class="fas fa-home"></i>
                        Home
                    </a>
                </li>

                <li>
                    <a href="#rides">
                        <i class="fas fa-car-side"></i>
                        Rides
                    </a>
                </li>

                <li>
                    <a href="#recent">
                        <i class="fas fa-history"></i>
                        My Rides
                    </a>
                </li>

            </ul>

        </nav>


        <div class="header-right">

            <button class="icon-btn">
                <i class="fas fa-bell"></i>
            </button>

            <button class="icon-btn">
                <i class="fas fa-user"></i>
            </button>

        </div>

    </div>

</header>



<!-- HERO -->

<section class="hero">

    <div class="container hero-grid">


        <!-- LEFT -->

        <div>

            <div class="hero-badge">

                <i class="fas fa-shield-halved"></i>

                Safe & Trusted Travel

            </div>


            <h1>

                Your Ride,

                <span>Your Way.</span>

            </h1>


            <p>

                Book a comfortable and reliable ride with
                Nehitha Traveling Services. Choose your vehicle,
                enter your destination and travel safely.

            </p>


            <!-- BOOKING CARD -->

            <div class="booking-card">

                <h2>
                    Book a Ride
                </h2>

                <p>
                    Enter your pickup and destination
                </p>


                <!-- PICKUP -->

                <div class="location-box">

                    <div class="location-icon">

                        <i class="fas fa-location-dot"></i>

                    </div>

                    <div class="location-input">

                        <label>
                            PICKUP LOCATION
                        </label>

                        <input
                            id="pickup"
                            type="text"
                            placeholder="Enter pickup location"
                        >

                    </div>

                </div>


                <!-- DESTINATION -->

                <div class="location-box">

                    <div class="location-icon"
                         style="
                         background:rgba(239,68,68,0.12);
                         color:#ef4444;
                         ">

                        <i class="fas fa-location-dot"></i>

                    </div>

                    <div class="location-input">

                        <label>
                            DESTINATION
                        </label>

                        <input
                            id="destination"
                            type="text"
                            placeholder="Where are you going?"
                        >

                    </div>

                </div>


                <button
                    class="btn btn-primary"
                    onclick="searchRide()">

                    <i class="fas fa-search"></i>

                    Find a Ride

                </button>

            </div>

        </div>



        <!-- MAP -->

        <div class="map-card">

            <div class="map-grid"></div>

            <div class="road one"></div>

            <div class="road two"></div>

            <div class="road three"></div>


            <div class="map-label">

                <i class="fas fa-location-dot"
                   style="color:#22c55e"></i>

                Nearby drivers

            </div>


            <div class="route-line"></div>


            <!-- PICKUP MARKER -->

            <div class="marker pickup-marker">

                <i class="fas fa-location-dot"></i>

            </div>


            <!-- DESTINATION MARKER -->

            <div class="marker destination-marker">

                <i class="fas fa-flag-checkered"></i>

            </div>


            <!-- DRIVER -->

            <div class="driver-card">

                <div class="driver-info">

                    <div class="driver-avatar">

                        <i class="fas fa-user"></i>

                    </div>

                    <div>

                        <strong>
                            Driver nearby
                        </strong>

                        <small>
                            Toyota • 2 min away
                        </small>

                    </div>

                </div>


                <div class="driver-rating">

                    ★ 4.9

                </div>

            </div>

        </div>

    </div>

</section>



<!-- RIDE TYPES -->

<section class="section" id="rides">

    <div class="container">

        <div class="section-title">

            <h2>
                Choose Your Ride
            </h2>

            <p>
                Select the vehicle that suits your journey
            </p>

        </div>


        <div class="ride-grid">


            <!-- MINI -->

            <div
                class="ride-card selected"
                onclick="selectRide(this,'Mini',150)"
            >

                <div class="ride-icon">

                    <i class="fas fa-car"></i>

                </div>

                <h3>
                    Nehitha Mini
                </h3>

                <p>
                    Affordable ride for everyday travel
                </p>

                <div class="ride-bottom">

                    <span class="ride-price">
                        ₹150
                    </span>

                    <span class="ride-time">
                        2-3 min
                    </span>

                </div>

            </div>


            <!-- SEDAN -->

            <div
                class="ride-card"
                onclick="selectRide(this,'Sedan',250)"
            >

                <div class="ride-icon">

                    <i class="fas fa-car-side"></i>

                </div>

                <h3>
                    Nehitha Sedan
                </h3>

                <p>
                    Comfortable ride with extra space
                </p>

                <div class="ride-bottom">

                    <span class="ride-price">
                        ₹250
                    </span>

                    <span class="ride-time">
                        4-5 min
                    </span>

                </div>

            </div>


            <!-- SUV -->

            <div
                class="ride-card"
                onclick="selectRide(this,'SUV',400)"
            >

                <div class="ride-icon">

                    <i class="fas fa-truck"></i>

                </div>

                <h3>
                    Nehitha SUV
                </h3>

                <p>
                    Spacious vehicle for groups
                </p>

                <div class="ride-bottom">

                    <span class="ride-price">
                        ₹400
                    </span>

                    <span class="ride-time">
                        5-7 min
                    </span>

                </div>

            </div>

        </div>

    </div>

</section>



<!-- RECENT RIDES -->

<section class="section" id="recent">

    <div class="container">

        <div class="section-title">

            <h2>
                Recent Rides
            </h2>

            <p>
                Your previous Nehitha Traveling trips
            </p>

        </div>


        <div class="recent-rides">


            <div class="recent-card">

                <div class="recent-route">

                    <div class="route-icons">

                        <i class="fas fa-circle"
                           style="font-size:8px"></i>

                        <div class="line"></div>

                        <i class="fas fa-location-dot"></i>

                    </div>

                    <div>

                        <strong>
                            Chennai Central
                        </strong>

                        <span>
                            → T. Nagar
                        </span>

                    </div>

                </div>

                <strong>
                    ₹220
                </strong>

            </div>



            <div class="recent-card">

                <div class="recent-route">

                    <div class="route-icons">

                        <i class="fas fa-circle"
                           style="font-size:8px"></i>

                        <div class="line"></div>

                        <i class="fas fa-location-dot"></i>

                    </div>

                    <div>

                        <strong>
                            Airport
                        </strong>

                        <span>
                            → Anna Nagar
                        </span>

                    </div>

                </div>

                <strong>
                    ₹380
                </strong>

            </div>


        </div>

    </div>

</section>



<!-- FOOTER -->

<footer>

    <div class="container footer-content">

        <div class="footer-brand">

            Nehitha
            <span>Traveling Services</span>

        </div>

        <p>

            Safe rides. Happy journeys.

        </p>

        <p style="margin-top:10px">

            © 2026 Nehitha Traveling Services.
            All rights reserved.

        </p>

    </div>

</footer>



<!-- TOAST -->

<div class="toast" id="toast">

    <i class="fas fa-check-circle"></i>

    Ride booked successfully!

</div>



<script>


/* ============================
   SELECTED RIDE
============================ */

let selectedRide = "Mini";

let selectedPrice = 150;


function selectRide(card, ride, price) {

    document
        .querySelectorAll(".ride-card")
        .forEach(item => {

            item.classList.remove("selected");

        });


    card.classList.add("selected");


    selectedRide = ride;

    selectedPrice = price;

}


/* ============================
   FIND RIDE
============================ */

function searchRide() {

    const pickup =
        document.getElementById("pickup").value;

    const destination =
        document.getElementById("destination").value;


    if (!pickup || !destination) {

        showToast(
            "Please enter pickup and destination"
        );

        return;
    }


    showToast(
        "Finding nearby " +
        selectedRide +
        " rides..."
    );

}


/* ============================
   BOOK RIDE
============================ */

function bookRide() {

    const pickup =
        document.getElementById("pickup").value;

    const destination =
        document.getElementById("destination").value;


    if (!pickup || !destination) {

        showToast(
            "Please enter your locations first"
        );

        return;
    }


    showToast(
        "Your " +
        selectedRide +
        " ride is booked!"
    );

}


/* ============================
   TOAST
============================ */

function showToast(message) {

    const toast =
        document.getElementById("toast");

    toast.innerHTML =
        '<i class="fas fa-check-circle"></i> ' +
        message;

    toast.classList.add("show");


    setTimeout(() => {

        toast.classList.remove("show");

    }, 3000);

}


/* ============================
   ADD BOOK BUTTON
============================ */

const bookingCard =
    document.querySelector(".booking-card");


const bookButton =
    document.createElement("button");


bookButton.className =
    "btn btn-primary";

bookButton.style.marginTop =
    "10px";

bookButton.innerHTML =
    '<i class="fas fa-car"></i> Book Ride';


bookButton.onclick =
    bookRide;


bookingCard.appendChild(
    bookButton
);

</script>


</body>
</html>
