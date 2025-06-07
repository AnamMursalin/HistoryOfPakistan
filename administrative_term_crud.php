<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>History of Pakistan - Political Archive (1947-2025)</title>
    <link rel="icon" href="data:image/svg+xml,<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 100 100'><text y='.9em' font-size='90'>🇵🇰</text></svg>">
    <!-- Load Tailwind CSS for professional and responsive styling -->
    <script src="https://cdn.tailwindcss.com"></script>
    <!-- Load Font Awesome for icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link rel="stylesheet" href="style.css">
    <style>
        /* Custom styles to complement Tailwind and existing style.css */
        :root {
            --primary-green: #006A4E;
            --light-green: #00A86B;
            --white: #FFFFFF;
            --gold: #DAA520;
            --dark-gold: #B8860B;
            --text-dark: #2C3E50;
            --text-light: #7F8C8D;
            --shadow: rgba(0, 0, 0, 0.1);
            --gradient-green: linear-gradient(135deg, #006A4E 0%, #00A86B 100%);
            --gradient-gold: linear-gradient(135deg, #DAA520 0%, #B8860B 100%);
            --header-height: 70px;
        }

        body {
            font-family: 'Inter', sans-serif; /* Using Inter for a modern look */
        }

        /* Modal specific styles */
        .modal {
            display: none; /* Hidden by default */
            position: fixed; /* Stay in place */
            z-index: 1001; /* Sit on top */
            left: 0;
            top: 0;
            width: 100%; /* Full width */
            height: 100%; /* Full height */
            overflow: auto; /* Enable scroll if needed */
            background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
            backdrop-filter: blur(5px);
            justify-content: center;
            align-items: center;
        }

        .modal-content {
            background-color: #fefefe;
            margin: auto;
            padding: 2.5rem;
            border-radius: 0.75rem; /* rounded-xl */
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.2); /* shadow-xl */
            width: 90%;
            max-width: 600px;
            position: relative;
            transform: translateY(-20px);
            opacity: 0;
            animation: modalFadeIn 0.3s forwards;
            max-height: 90vh; /* Limit height to prevent overflow on small screens */
            overflow-y: auto; /* Scroll inside modal if content is long */
        }

        @keyframes modalFadeIn {
            to {
                transform: translateY(0);
                opacity: 1;
            }
        }

        .modal-close-button {
            color: #aaa;
            position: absolute;
            top: 1rem;
            right: 1rem;
            font-size: 1.8rem;
            font-weight: bold;
            cursor: pointer;
            transition: color 0.3s ease;
        }

        .modal-close-button:hover,
        .modal-close-button:focus {
            color: #333;
        }

        .modal-header {
            border-bottom: 1px solid #e5e7eb; /* border-b border-gray-200 */
            padding-bottom: 1rem;
            margin-bottom: 1.5rem;
        }

        .modal-header h3 {
            font-size: 1.75rem; /* text-2xl */
            font-weight: 700; /* font-bold */
            color: var(--primary-green);
        }

        .form-group label {
            display: block;
            margin-bottom: 0.5rem;
            font-weight: 600; /* font-semibold */
            color: var(--text-dark);
        }

        .form-group input,
        .form-group select,
        .form-group textarea {
            width: 100%;
            padding: 0.75rem;
            border: 1px solid #d1d5db; /* border-gray-300 */
            border-radius: 0.375rem; /* rounded-md */
            font-size: 1rem;
            transition: border-color 0.2s ease, box-shadow 0.2s ease;
            margin-bottom: 1rem;
        }

        .form-group input:focus,
        .form-group select:focus,
        .form-group textarea:focus {
            outline: none;
            border-color: var(--light-green);
            box-shadow: 0 0 0 3px rgba(0, 168, 107, 0.2); /* focus:ring-2 focus:ring-green-500 */
        }

        .modal-buttons {
            display: flex;
            justify-content: flex-end;
            gap: 0.75rem; /* space-x-3 */
            margin-top: 1.5rem;
        }

        .btn-primary {
            @apply bg-green-600 text-white px-5 py-2 rounded-md font-semibold transition-all duration-300 ease-in-out hover:bg-green-700 shadow-md;
        }

        .btn-secondary {
            @apply bg-gray-300 text-gray-800 px-5 py-2 rounded-md font-semibold transition-all duration-300 ease-in-out hover:bg-gray-400;
        }

        .btn-danger {
            @apply bg-red-600 text-white px-4 py-2 rounded-md font-semibold transition-all duration-300 ease-in-out hover:bg-red-700;
        }

        .crud-button {
            @apply ml-2 px-3 py-1 text-sm rounded-md font-semibold transition-colors duration-200;
        }

        .edit-button {
            @apply bg-blue-500 text-white hover:bg-blue-600;
        }

        .delete-button {
            @apply bg-red-500 text-white hover:bg-red-600;
        }

        /* Message box */
        #messageBox {
            position: fixed;
            top: 20px;
            left: 50%;
            transform: translateX(-50%);
            background-color: var(--primary-green);
            color: white;
            padding: 15px 30px;
            border-radius: 8px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.2);
            z-index: 1002;
            opacity: 0;
            transition: opacity 0.3s ease-in-out, transform 0.3s ease-in-out;
            display: flex;
            align-items: center;
            gap: 10px;
        }
        #messageBox.show {
            opacity: 1;
            transform: translateX(-50%) translateY(0);
        }
        #messageBox.error {
            background-color: #dc3545; /* Red for errors */
        }

        /* Confirmation Modal */
        #confirmModal .modal-content {
            max-width: 400px;
            text-align: center;
            padding: 2rem;
        }
        #confirmModal h3 {
            font-size: 1.5rem;
            margin-bottom: 1rem;
        }
        #confirmModal p {
            margin-bottom: 1.5rem;
            color: var(--text-dark);
        }
        #confirmModal .modal-buttons {
            justify-content: center;
        }
    </style>
</head>
<body class="bg-gray-50">
    <header id="header" class="bg-gradient-to-r from-green-800 to-green-600 text-white shadow-lg fixed w-full top-0 left-0 z-50 transition-all duration-300 ease-in-out h-auto md:h-[var(--header-height)]">
        <div class="container mx-auto px-4 py-3 flex flex-col md:flex-row justify-between items-center h-full">
            <div class="flex items-center gap-4">
                <div class="logo-placeholder flex items-center justify-center w-12 h-12 rounded-full overflow-hidden shadow-md">
                    <img src="https://placehold.co/48x48/006A4E/ffffff?text=PK" alt="History of Pakistan Project Logo" class="object-cover w-full h-full">
                </div>
                <h1 class="text-2xl font-bold tracking-tight site-title">History of Pakistan</h1>
            </div>
            <nav>
                <div class="mobile-menu-toggle md:hidden cursor-pointer p-2 flex flex-col gap-1.5" id="mobileMenuToggle">
                    <span class="block w-6 h-0.5 bg-white rounded-sm transition-all duration-300 ease-in-out"></span>
                    <span class="block w-6 h-0.5 bg-white rounded-sm transition-all duration-300 ease-in-out"></span>
                    <span class="block w-6 h-0.5 bg-white rounded-sm transition-all duration-300 ease-in-out"></span>
                </div>
                <ul id="navMenu" class="hidden md:flex flex-col md:flex-row gap-x-6 gap-y-2 mt-4 md:mt-0 items-center justify-center w-full md:w-auto">
                    <li><a href="#home" class="nav-link text-white hover:bg-white hover:text-green-800 px-4 py-2 rounded-full font-medium transition-all duration-300 active:bg-yellow-500 active:text-gray-900">Home</a></li>
                    <li><a href="#politicians" class="nav-link text-white hover:bg-white hover:text-green-800 px-4 py-2 rounded-full font-medium transition-all duration-300">Politicians</a></li>
                    <li><a href="#parties" class="nav-link text-white hover:bg-white hover:text-green-800 px-4 py-2 rounded-full font-medium transition-all duration-300">Political Parties</a></li>
                    <li><a href="#elections" class="nav-link text-white hover:bg-white hover:text-green-800 px-4 py-2 rounded-full font-medium transition-all duration-300">Elections</a></li>
                    <li><a href="#provinces" class="nav-link text-white hover:bg-white hover:text-green-800 px-4 py-2 rounded-full font-medium transition-all duration-300">Provinces & Constituencies</a></li>
                    <li><a href="#terms" class="nav-link text-white hover:bg-white hover:text-green-800 px-4 py-2 rounded-full font-medium transition-all duration-300">Administrative Terms</a></li>
                    <li><a href="#about" class="nav-link text-white hover:bg-white hover:text-green-800 px-4 py-2 rounded-full font-medium transition-all duration-300">About</a></li>
                    <li><a href="#contact" class="nav-link text-white hover:bg-white hover:text-green-800 px-4 py-2 rounded-full font-medium transition-all duration-300">Contact</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <main class="mt-[var(--header-height)] pt-5">
        <section id="home" class="section hero bg-gradient-to-br from-green-800 to-green-600 text-white flex flex-col items-center justify-center min-h-[calc(100vh-var(--header-height)-20px)] px-4 py-16">
            <h1 class="text-5xl md:text-6xl font-extrabold mb-4 drop-shadow-lg text-center animate-fade-in-up">History of Pakistan</h1>
            <p class="text-lg md:text-xl text-center max-w-3xl mb-8 opacity-90 animate-fade-in-up delay-100">Comprehensive Political Archive documenting Pakistan's democratic journey from 1947 to 2025. Explore politicians, parties, elections, and administrative terms that shaped our nation.</p>
            <a href="#politicians" class="cta-button bg-yellow-500 text-gray-900 px-8 py-3 rounded-full font-bold text-lg shadow-xl transition-all duration-300 hover:scale-105 hover:bg-yellow-400 animate-fade-in-up delay-200">Explore Political History</a>
        </section>

        <section id="politicians" class="section hidden container mx-auto px-4 py-8">
            <div class="section-header text-center mb-10">
                <h2 class="text-3xl font-bold text-green-800 mb-2 relative pb-2 after:content-[''] after:absolute after:bottom-0 after:left-1/2 after:-translate-x-1/2 after:w-16 after:h-1 after:bg-yellow-500 after:rounded">Politicians</h2>
                <p class="text-gray-600 text-lg">Discover the leaders who shaped Pakistan's political landscape</p>
                <button id="addPoliticianBtn" class="btn-primary mt-4">
                    <i class="fas fa-plus mr-2"></i>Add New Politician
                </button>
            </div>
            <div class="controls bg-white p-6 rounded-xl shadow-lg mb-8 flex flex-wrap gap-4 items-center">
                <input type="text" class="search-box flex-1 min-w-[180px] p-3 border border-gray-300 rounded-lg text-base focus:border-green-500 focus:ring-2 focus:ring-green-200" id="politicianSearch" placeholder="Search politicians by name...">
                <select class="filter-select flex-1 min-w-[180px] p-3 border border-gray-300 rounded-lg text-base focus:border-green-500 focus:ring-2 focus:ring-green-200" id="genderFilter">
                    <option value="">All Genders</option>
                    <option value="Male">Male</option>
                    <option value="Female">Female</option>
                </select>
                <select class="filter-select flex-1 min-w-[180px] p-3 border border-gray-300 rounded-lg text-base focus:border-green-500 focus:ring-2 focus:ring-green-200" id="activeFilter">
                    <option value="">All Statuses</option>
                    <option value="Active">Active</option>
                    <option value="Inactive">Inactive</option>
                </select>
            </div>
            <div class="cards-grid grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6" id="politiciansGrid"></div>
        </section>

        <section id="parties" class="section hidden container mx-auto px-4 py-8">
            <div class="section-header text-center mb-10">
                <h2 class="text-3xl font-bold text-green-800 mb-2 relative pb-2 after:content-[''] after:absolute after:bottom-0 after:left-1/2 after:-translate-x-1/2 after:w-16 after:h-1 after:bg-yellow-500 after:rounded">Political Parties</h2>
                <p class="text-gray-600 text-lg">Major political parties and their contributions to Pakistan's democracy</p>
                <button id="addPartyBtn" class="btn-primary mt-4">
                    <i class="fas fa-plus mr-2"></i>Add New Party
                </button>
            </div>
            <div class="filters bg-white p-6 rounded-xl shadow-lg mb-8 flex flex-wrap gap-4 items-center">
                <input type="text" id="partyNameFilter" class="flex-1 min-w-[180px] p-3 border border-gray-300 rounded-lg text-base focus:border-green-500 focus:ring-2 focus:ring-green-200" placeholder="Search by party name">
                <input type="text" id="abbreviationFilter" class="flex-1 min-w-[180px] p-3 border border-gray-300 rounded-lg text-base focus:border-green-500 focus:ring-2 focus:ring-green-200" placeholder="Search by abbreviation">
                <input type="text" id="headFilter" class="flex-1 min-w-[180px] p-3 border border-gray-300 rounded-lg text-base focus:border-green-500 focus:ring-2 focus:ring-green-200" placeholder="Search by current head">
            </div>
            <div class="table-container bg-white rounded-xl shadow-lg overflow-hidden">
                <table class="data-table w-full border-collapse">
                    <thead>
                        <tr>
                            <th class="bg-green-700 text-white px-4 py-3 text-left font-semibold text-base">ID</th>
                            <th class="bg-green-700 text-white px-4 py-3 text-left font-semibold text-base">Party Name</th>
                            <th class="bg-green-700 text-white px-4 py-3 text-left font-semibold text-base">Abbreviation</th>
                            <th class="bg-green-700 text-white px-4 py-3 text-left font-semibold text-base">Election Symbol</th>
                            <th class="bg-green-700 text-white px-4 py-3 text-left font-semibold text-base">Founded</th>
                            <th class="bg-green-700 text-white px-4 py-3 text-left font-semibold text-base">Current Head</th>
                            <th class="bg-green-700 text-white px-4 py-3 text-left font-semibold text-base">Actions</th>
                        </tr>
                    </thead>
                    <tbody id="partiesTable"></tbody>
                </table>
            </div>
        </section>

        <section id="elections" class="section hidden container mx-auto px-4 py-8">
            <div class="section-header text-center mb-10">
                <h2 class="text-3xl font-bold text-green-800 mb-2 relative pb-2 after:content-[''] after:absolute after:bottom-0 after:left-1/2 after:-translate-x-1/2 after:w-16 after:h-1 after:bg-yellow-500 after:rounded">Elections</h2>
                <p class="text-gray-600 text-lg">Timeline of Pakistan's democratic elections and their outcomes</p>
                <button id="addElectionBtn" class="btn-primary mt-4">
                    <i class="fas fa-plus mr-2"></i>Add New Election
                </button>
            </div>
            <div class="filters bg-white p-6 rounded-xl shadow-lg mb-8 flex flex-wrap gap-4 items-center">
                <input type="number" id="electionYearFilter" class="flex-1 min-w-[180px] p-3 border border-gray-300 rounded-lg text-base focus:border-green-500 focus:ring-2 focus:ring-green-200" placeholder="Filter by year">
                <select id="electionTypeFilter" class="flex-1 min-w-[180px] p-3 border border-gray-300 rounded-lg text-base focus:border-green-500 focus:ring-2 focus:ring-green-200">
                    <option value="">All Election Types</option>
                    <!-- Options populated dynamically or manually based on data -->
                    <option value="General Election">General Election</option>
                    <option value="Presidential Election">Presidential Election</option>
                    <option value="Constituent Assembly Election">Constituent Assembly Election</option>
                    <option value="Provincial Assembly Election">Provincial Assembly Election</option>
                </select>
                <select id="assemblyTypeFilter" class="flex-1 min-w-[180px] p-3 border border-gray-300 rounded-lg text-base focus:border-green-500 focus:ring-2 focus:ring-green-200">
                    <option value="">All Assembly Types</option>
                    <!-- Options populated dynamically or manually based on data -->
                    <option value="National Assembly">National Assembly</option>
                    <option value="Provincial Assembly">Provincial Assembly</option>
                    <option value="Constituent Assembly">Constituent Assembly</option>
                </select>
            </div>
            <div class="timeline relative mt-10" id="electionsTimeline"></div>
        </section>

        <section id="provinces" class="section hidden container mx-auto px-4 py-8">
            <div class="section-header text-center mb-10">
                <h2 class="text-3xl font-bold text-green-800 mb-2 relative pb-2 after:content-[''] after:absolute after:bottom-0 after:left-1/2 after:-translate-x-1/2 after:w-16 after:h-1 after:bg-yellow-500 after:rounded">Provinces & Constituencies</h2>
                <p class="text-gray-600 text-lg">Electoral divisions and administrative regions of Pakistan</p>
                <button id="addProvinceBtn" class="btn-primary mt-4">
                    <i class="fas fa-plus mr-2"></i>Add New Province/Region
                </button>
            </div>
            <div class="filters bg-white p-6 rounded-xl shadow-lg mb-8 flex flex-wrap gap-4 items-center">
                <input type="text" id="provinceNameFilter" class="flex-1 min-w-[180px] p-3 border border-gray-300 rounded-lg text-base focus:border-green-500 focus:ring-2 focus:ring-green-200" placeholder="Filter by province name">
                <select class="filter-select flex-1 min-w-[180px] p-3 border border-gray-300 rounded-lg text-base focus:border-green-500 focus:ring-2 focus:ring-green-200" id="regionTypeFilter">
                    <option value="">All Region Types</option>
                    <option value="Province">Province</option>
                    <option value="Federal Territory">Federal Territory</option>
                    <option value="Province (Historical)">Historical Province</option>
                    <option value="Federal Territory (Historical)">Historical Federal Territory</option>
                </select>
            </div>
            <div class="cards-grid grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6" id="provincesGrid"></div>
        </section>

        <section id="terms" class="section hidden container mx-auto px-4 py-8">
            <div class="section-header text-center mb-10">
                <h2 class="text-3xl font-bold text-green-800 mb-2 relative pb-2 after:content-[''] after:absolute after:bottom-0 after:left-1/2 after:-translate-x-1/2 after:w-16 after:h-1 after:bg-yellow-500 after:rounded">Administrative Terms</h2>
                <p class="text-gray-600 text-lg">Government periods and administrative structures</p>
                <button id="addTermBtn" class="btn-primary mt-4">
                    <i class="fas fa-plus mr-2"></i>Add New Term
                </button>
            </div>
            <div class="filters bg-white p-6 rounded-xl shadow-lg mb-8 flex flex-wrap gap-4 items-center">
                <input type="text" id="assemblyTermFilter" class="flex-1 min-w-[180px] p-3 border border-gray-300 rounded-lg text-base focus:border-green-500 focus:ring-2 focus:ring-green-200" placeholder="Filter by assembly term">
                <select class="filter-select flex-1 min-w-[180px] p-3 border border-gray-300 rounded-lg text-base focus:border-green-500 focus:ring-2 focus:ring-green-200" id="governmentLevelFilter">
                    <option value="">All Government Levels</option>
                    <option value="Federal">Federal</option>
                    <option value="Provincial">Provincial</option>
                </select>
            </div>
            <div class="table-container bg-white rounded-xl shadow-lg overflow-hidden">
                <table class="data-table w-full border-collapse">
                    <thead>
                        <tr>
                            <th class="bg-green-700 text-white px-4 py-3 text-left font-semibold text-base">Assembly Term</th>
                            <th class="bg-green-700 text-white px-4 py-3 text-left font-semibold text-base">Government Level</th>
                            <th class="bg-green-700 text-white px-4 py-3 text-left font-semibold text-base">Year Range</th>
                            <th class="bg-green-700 text-white px-4 py-3 text-left font-semibold text-base">IDs</th>
                            <th class="bg-green-700 text-white px-4 py-3 text-left font-semibold text-base">Actions</th>
                        </tr>
                    </thead>
                    <tbody id="termsTable"></tbody>
                </table>
            </div>
        </section>

        <section id="about" class="section hidden container mx-auto px-4 py-8">
            <div class="section-header text-center mb-10">
                <h2 class="text-3xl font-bold text-green-800 mb-2 relative pb-2 after:content-[''] after:absolute after:bottom-0 after:left-1/2 after:-translate-x-1/2 after:w-16 after:h-1 after:bg-yellow-500 after:rounded">History of Pakistan - Political Archive (1947-2025)</h2>
                <p class="text-gray-600 text-lg">Academic research project documenting Pakistan's political history</p>
            </div>
            <div class="about-content bg-white p-8 rounded-xl shadow-lg text-gray-700 leading-relaxed">
                <h3 class="text-2xl font-bold text-green-800 mb-4">Project Overview</h3>
                <p class="mb-4">This comprehensive digital archive represents a systematic documentation of Pakistan's political history from independence in 1947 to 2025. The project serves as an educational resource for students, researchers, and citizens interested in understanding the evolution of Pakistan's democratic institutions, political leadership, and electoral processes.</p>
                
                <h3 class="2xl font-bold text-green-800 mb-4">Research Team</h3>
                <div class="team-grid grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6 mb-8">
                    <div class="team-member bg-green-700 text-white p-6 rounded-lg text-center shadow-md hover:shadow-xl transition-all duration-300 transform hover:-translate-y-2">
                        <h4 class="text-xl font-semibold mb-1">Gulfam Afzal</h4>
                        <p class="text-sm opacity-90">NUM-BSCS-2023-31</p>
                    </div>
                    <div class="team-member bg-green-700 text-white p-6 rounded-lg text-center shadow-md hover:shadow-xl transition-all duration-300 transform hover:-translate-y-2">
                        <h4 class="text-xl font-semibold mb-1">Reeha Batool</h4>
                        <p class="text-sm opacity-90">NUM-BSCS-2023-09</p>
                    </div>
                    <div class="team-member bg-green-700 text-white p-6 rounded-lg text-center shadow-md hover:shadow-xl transition-all duration-300 transform hover:-translate-y-2">
                        <h4 class="text-xl font-semibold mb-1">Muhammad Bilal</h4>
                        <p class="text-sm opacity-90">NUM-BSCS-2023-23</p>
                    </div>
                    <div class="team-member bg-green-700 text-white p-6 rounded-lg text-center shadow-md hover:shadow-xl transition-all duration-300 transform hover:-translate-y-2">
                        <h4 class="text-xl font-semibold mb-1">Anam Fatima</h4>
                        <p class="text-sm opacity-90">NUM-BSCS-2023-06</p>
                    </div>
                </div>
                
                <h3 class="text-2xl font-bold text-green-800 mb-4">Academic Affiliation</h3>
                <p class="mb-2"><strong>Department:</strong> Department of Computer Sciences</p>
                <p class="mb-2"><strong>Institution:</strong> Namal University, Mianwali, Pakistan</p>
                <p class="mb-2"><strong>Supervisor:</strong> Miss. Asiya Batool</p>
                <p class="mb-4"><strong>Submission Date:</strong> 10th June, 2024</p>
                
                <h3 class="text-2xl font-bold text-green-800 mb-4">Project Objectives</h3>
                <p>This digital archive aims to preserve and present Pakistan's political heritage through a structured database system that captures the relationships between politicians, political parties, elections, constituencies, and administrative terms. The project facilitates research and analysis of political trends, electoral patterns, and democratic evolution in Pakistan.</p>
            </div>
        </section>

        <section id="contact" class="section hidden container mx-auto px-4 py-8">
            <div class="section-header text-center mb-10">
                <h2 class="text-3xl font-bold text-green-800 mb-2 relative pb-2 after:content-[''] after:absolute after:bottom-0 after:left-1/2 after:-translate-x-1/2 after:w-16 after:h-1 after:bg-yellow-500 after:rounded">Contact</h2>
                <p class="text-gray-600 text-lg">Get in touch with our research team</p>
            </div>
            <div class="about-content bg-white p-8 rounded-xl shadow-lg text-gray-700 leading-relaxed">
                <h3 class="text-2xl font-bold text-green-800 mb-4">Academic Contact</h3>
                <p class="mb-2"><strong>Supervisor:</strong> Miss. Asiya Batool</p>
                <p class="mb-2"><strong>Department:</strong> Computer Sciences</p>
                <p class="mb-2"><strong>Institution:</strong> Namal University</p>
                <p class="mb-4"><strong>Location:</strong> Mianwali, Pakistan</p>
                
                <h3 class="2xl font-bold text-green-800 mb-4">Project Inquiry</h3>
                <p class="mb-4">For academic inquiries about this research project, please contact the Department of Computer Sciences at Namal University. This project was submitted as part of the academic curriculum and represents student research work.</p>
                
                <h3 class="text-2xl font-bold text-green-800 mb-4">Technical Support</h3>
                <p>This website is designed to be extended with backend database integration. The current version serves as a prototype demonstrating the user interface and data structure for the comprehensive political history database.</p>
            </div>
        </section>
    </main>

    <!-- CRUD Modal -->
    <div id="crudModal" class="modal">
        <div class="modal-content">
            <span class="modal-close-button" onclick="closeModal()">&times;</span>
            <div class="modal-header">
                <h3 id="modalTitle"></h3>
            </div>
            <form id="crudForm">
                <input type="hidden" id="recordId" name="id">
                <input type="hidden" id="crudAction" name="action">
                <input type="hidden" id="entityType" name="entity">

                <div id="formFields" class="grid grid-cols-1 md:grid-cols-2 gap-4">
                    <!-- Form fields will be dynamically inserted here -->
                </div>

                <div class="modal-buttons">
                    <button type="button" class="btn-secondary" onclick="closeModal()">Cancel</button>
                    <button type="submit" class="btn-primary" id="submitModalBtn">Save Changes</button>
                </div>
            </form>
        </div>
    </div>

    <!-- Confirmation Modal -->
    <div id="confirmModal" class="modal">
        <div class="modal-content">
            <span class="modal-close-button" onclick="closeConfirmModal()">&times;</span>
            <div class="modal-header">
                <h3 class="text-red-600">Confirm Deletion</h3>
            </div>
            <p>Are you sure you want to delete this record? This action cannot be undone.</p>
            <div class="modal-buttons">
                <button type="button" class="btn-secondary" onclick="closeConfirmModal()">Cancel</button>
                <button type="button" class="btn-danger" id="confirmDeleteBtn">Delete</button>
            </div>
        </div>
    </div>

    <!-- Message Box -->
    <div id="messageBox" class="flex items-center">
        <i class="fas text-xl mr-2" id="messageIcon"></i>
        <span id="messageText"></span>
    </div>

    <script>
        // Global variables for convenience
        const BASE_API_URL = 'http://localhost/PPH/'; // Base URL for your PHP scripts

        // --- Utility Functions ---

        /**
         * Displays a temporary message box.
         * @param {string} message The message to display.
         * @param {string} type 'success' or 'error'.
         */
        function showMessage(message, type = 'success') {
            const messageBox = document.getElementById('messageBox');
            const messageText = document.getElementById('messageText');
            const messageIcon = document.getElementById('messageIcon');

            messageText.textContent = message;
            messageBox.classList.remove('success', 'error');
            messageIcon.classList.remove('fa-check-circle', 'fa-times-circle');

            if (type === 'success') {
                messageBox.classList.add('success');
                messageIcon.classList.add('fa-check-circle');
                messageBox.style.backgroundColor = 'var(--primary-green)';
            } else if (type === 'error') {
                messageBox.classList.add('error');
                messageIcon.classList.add('fa-times-circle');
                messageBox.style.backgroundColor = '#dc3545';
            }

            messageBox.classList.add('show');
            setTimeout(() => {
                messageBox.classList.remove('show');
            }, 3000); // Message disappears after 3 seconds
        }

        let currentDeleteCallback = null;

        /**
         * Opens the confirmation modal.
         * @param {Function} callback Function to execute if confirmed.
         */
        function openConfirmModal(callback) {
            currentDeleteCallback = callback;
            document.getElementById('confirmModal').style.display = 'flex';
        }

        /**
         * Closes the confirmation modal.
         */
        function closeConfirmModal() {
            document.getElementById('confirmModal').style.display = 'none';
            currentDeleteCallback = null;
        }

        // Event listener for the confirm delete button in the confirmation modal
        document.getElementById('confirmDeleteBtn').addEventListener('click', () => {
            if (currentDeleteCallback) {
                currentDeleteCallback();
            }
            closeConfirmModal();
        });


        // --- Modal & Form Handling ---
        const crudModal = document.getElementById('crudModal');
        const modalTitle = document.getElementById('modalTitle');
        const crudForm = document.getElementById('crudForm');
        const formFieldsContainer = document.getElementById('formFields');
        const recordIdInput = document.getElementById('recordId');
        const crudActionInput = document.getElementById('crudAction');
        const entityTypeInput = document.getElementById('entityType');
        const submitModalBtn = document.getElementById('submitModalBtn');

        /**
         * Opens the CRUD modal.
         * @param {string} entity 'politician', 'party', 'election', 'province', 'term'
         * @param {string} action 'add' or 'edit'
         * @param {Object} data Existing data for edit, or empty object for add.
         */
        function openModal(entity, action, data = {}) {
            modalTitle.textContent = `${action === 'add' ? 'Add New' : 'Edit'} ${entity.charAt(0).toUpperCase() + entity.slice(1)}`;
            crudActionInput.value = action;
            entityTypeInput.value = entity;
            // Set recordIdInput.value based on the entity's ID for edit operations
            switch(entity) {
                case 'politician': recordIdInput.value = data.id || ''; break;
                case 'party': recordIdInput.value = data.id || ''; break;
                case 'election': recordIdInput.value = data.id || ''; break;
                case 'province': recordIdInput.value = data.id || ''; break;
                case 'term': recordIdInput.value = data.id || ''; break;
                default: recordIdInput.value = '';
            }


            formFieldsContainer.innerHTML = ''; // Clear previous fields

            let fields = [];
            switch (entity) {
                case 'politician':
                    fields = [
                        { id: 'politicianid', label: 'Politician ID', type: 'number', name: 'politicianid', value: data.id, readOnly: true },
                        { id: 'firstName', label: 'First Name', type: 'text', name: 'FirstName', value: data['First Name'], required: true },
                        { id: 'lastName', label: 'Last Name', type: 'text', name: 'LastName', value: data['Last Name'], required: true },
                        { id: 'dateOfBirth', label: 'Date of Birth', type: 'date', name: 'DateofBirth', value: data['Date of Birth'], required: true },
                        { id: 'gender', label: 'Gender', type: 'select', name: 'Gender', value: data['Gender'] === 'Male' ? 'M' : (data['Gender'] === 'Female' ? 'F' : ''), options: [{ value: 'M', text: 'Male' }, { value: 'F', text: 'Female' }], required: true },
                        { id: 'placeOfBirth', label: 'Place of Birth', type: 'text', name: 'placeofbirth', value: data['Place of Birth'], required: true },
                        { id: 'biography', label: 'Biography', type: 'textarea', name: 'Biography', value: data['Biography'], required: true },
                        { id: 'isActive', label: 'Is Active', type: 'checkbox', name: 'IsActive', value: data['Is Active'] },
                        { id: 'photoUrl', label: 'Photo URL', type: 'url', name: 'photourl', value: data['Photo URL'] }
                    ];
                    break;
                case 'party':
                    fields = [
                        { id: 'partyId', label: 'Party ID', type: 'number', name: 'PartyId', value: data.id, readOnly: true },
                        { id: 'partyName', label: 'Party Name', type: 'text', name: 'partyName', value: data.name, required: true },
                        { id: 'abbreviation', label: 'Abbreviation', type: 'text', name: 'Abbreviation', value: data.abbreviation, required: true },
                        { id: 'foundingDate', label: 'Founding Date', type: 'date', name: 'foundingDate', value: data.founded, required: true },
                        { id: 'electionSymbol', label: 'Election Symbol', type: 'text', name: 'electionSymbol', value: data.symbol, required: true },
                        { id: 'ideology', label: 'Ideology', type: 'text', name: 'Ideology', value: data.ideology || '' },
                        { id: 'head', label: 'Current Head', type: 'text', name: 'head', value: data.head, required: true }
                    ];
                    break;
                case 'election':
                    fields = [
                        { id: 'electionId', label: 'Election ID', type: 'number', name: 'electionid', value: data.id, readOnly: true },
                        { id: 'electionDate', label: 'Election Date', type: 'date', name: 'electiondate', value: data.date, required: true },
                        { id: 'electionType', label: 'Election Type', type: 'text', name: 'ElectionType', value: data.type, required: true },
                        { id: 'assemblyType', label: 'Assembly Type', type: 'text', name: 'AssemblyType', value: data.assembly, required: true }
                    ];
                    break;
                case 'province':
                    fields = [
                        { id: 'provinceId', label: 'Province ID', type: 'number', name: 'ProvinceId', value: data.id, readOnly: true },
                        { id: 'provinceName', label: 'Province Name', type: 'text', name: 'ProvinceName', value: data.name, required: true },
                        { id: 'regionType', label: 'Region Type', type: 'text', name: 'RegionType', value: data.type, required: true }
                    ];
                    break;
                case 'term':
                    fields = [
                        { id: 'administrativeTermId', label: 'Administrative Term ID', type: 'number', name: 'AdministrativeTermid', value: data.id, readOnly: true },
                        { id: 'assemblyTerm', label: 'Assembly Term', type: 'text', name: 'Assemblyterm', value: data.assembly, required: true },
                        { id: 'governmentLevel', label: 'Government Level', type: 'text', name: 'Governmentlevel', value: data.level, required: true }
                    ];
                    break;
            }

            // Filter out ID fields for 'add' operation since they are auto-incremented
            if (action === 'add') {
                fields = fields.filter(field =>
                    field.id !== 'politicianid' &&
                    field.id !== 'partyId' &&
                    field.id !== 'electionId' &&
                    field.id !== 'provinceId' &&
                    field.id !== 'administrativeTermId'
                );
            }

            fields.forEach(field => {
                const formGroup = document.createElement('div');
                formGroup.className = 'form-group col-span-1 ' + (field.type === 'textarea' ? 'md:col-span-2' : '');

                const label = document.createElement('label');
                label.htmlFor = field.id;
                label.textContent = field.label + (field.required ? ' *' : '');
                formGroup.appendChild(label);

                let inputElement;
                if (field.type === 'select') {
                    inputElement = document.createElement('select');
                    field.options.forEach(option => {
                        const opt = document.createElement('option');
                        opt.value = option.value;
                        opt.textContent = option.text;
                        inputElement.appendChild(opt);
                    });
                    inputElement.value = field.value;
                } else if (field.type === 'textarea') {
                    inputElement = document.createElement('textarea');
                    inputElement.rows = 4;
                    inputElement.value = field.value || '';
                } else if (field.type === 'checkbox') {
                    inputElement = document.createElement('input');
                    inputElement.type = 'checkbox';
                    inputElement.checked = !!field.value; // Convert to boolean
                    inputElement.name = field.name; // Keep name for direct form serialization
                    inputElement.id = field.id;
                    inputElement.className = 'w-auto ml-2'; // Adjust styling for checkbox

                    formGroup.classList.add('flex', 'items-center', 'justify-start');
                    label.classList.remove('mb-0.5'); // Adjust label margin for checkbox
                    label.classList.add('order-2'); // Place label after checkbox visually
                    inputElement.classList.add('order-1'); // Place checkbox first visually
                }
                else {
                    inputElement = document.createElement('input');
                    inputElement.type = field.type;
                    inputElement.value = field.value || '';
                    if (field.readOnly) inputElement.readOnly = true;
                }

                if (field.type !== 'checkbox') { // For non-checkbox, apply general input styles
                    inputElement.className = 'w-full p-3 border border-gray-300 rounded-lg text-base focus:border-green-500 focus:ring-2 focus:ring-green-200';
                    inputElement.name = field.name; // Apply name attribute
                    inputElement.id = field.id; // Apply ID attribute
                }


                if (field.required) inputElement.required = true;

                formGroup.appendChild(inputElement);
                formFieldsContainer.appendChild(formGroup);
            });

            submitModalBtn.textContent = action === 'add' ? 'Add Record' : 'Save Changes';
            crudModal.style.display = 'flex';
        }

        /**
         * Closes the CRUD modal.
         */
        function closeModal() {
            crudModal.style.display = 'none';
            crudForm.reset(); // Clear form
        }

        // Event listener for form submission
        crudForm.addEventListener('submit', async function(event) {
            event.preventDefault(); // Prevent default form submission

            const entity = entityTypeInput.value;
            const action = crudActionInput.value;
            const id = recordIdInput.value;

            const formData = new FormData(crudForm);
            const data = {};

            // Special handling for checkbox
            formData.forEach((value, key) => {
                if (key === 'IsActive' && crudForm.querySelector(`#${key}`) && crudForm.querySelector(`#${key}`).type === 'checkbox') {
                    data[key] = crudForm.querySelector(`#${key}`).checked ? 1 : 0;
                } else {
                    data[key] = value;
                }
            });

            // Convert gender back to single char for PHP
            if (data.Gender) {
                data.Gender = data.Gender === 'Male' || data.Gender === 'M' ? 'M' : 'F';
            }


            let url = '';
            let method = '';

            // Determine the correct API endpoint and method
            switch (entity) {
                case 'politician':
                    url = `${BASE_API_URL}politicians_crud.php`;
                    method = action === 'add' ? 'POST' : 'PUT';
                    break;
                case 'party':
                    url = `${BASE_API_URL}politicalparty_crud.php`;
                    method = action === 'add' ? 'POST' : 'PUT';
                    break;
                case 'election':
                    url = `${BASE_API_URL}elections_crud.php`;
                    method = action === 'add' ? 'POST' : 'PUT';
                    break;
                case 'province':
                    url = `${BASE_API_URL}province_crud.php`;
                    method = action === 'add' ? 'POST' : 'PUT';
                    break;
                case 'term':
                    url = `${BASE_API_URL}administrative_terms_crud.php`;
                    method = action === 'add' ? 'POST' : 'PUT';
                    break;
                default:
                    showMessage('Invalid entity type.', 'error');
                    return;
            }

            // Include ID for update operations in the data payload if present and not handled by action
            if (action === 'edit' && id) {
                // The `recordIdInput.value` (id variable) already holds the correct ID.
                // We just need to ensure it's sent with the correct primary key name
                // for the PHP script to pick it up.
                switch(entity) {
                    case 'politician': data.politicianid = id; break;
                    case 'party': data.PartyId = id; break;
                    case 'election': data.electionid = id; break;
                    case 'province': data.ProvinceId = id; break;
                    case 'term': data.AdministrativeTermid = id; break;
                }
            }


            try {
                const response = await fetch(url, {
                    method: 'POST', // Always use POST to send data, then use _method for actual intent
                    headers: {
                        'Content-Type': 'application/json',
                    },
                    body: JSON.stringify({ ...data, _method: method }), // Send actual method via _method field
                });

                if (!response.ok) {
                    const errorBody = await response.json();
                    throw new Error(errorBody.error || `HTTP error! Status: ${response.status}`);
                }

                const result = await response.json();
                if (result.status === 'success') {
                    showMessage(`${entity.charAt(0).toUpperCase() + entity.slice(1)} ${action === 'add' ? 'added' : 'updated'} successfully!`);
                    closeModal();
                    populateData(); // Refresh data in the background
                } else {
                    throw new Error(result.error || `Failed to ${action} ${entity}.`);
                }
            } catch (error) {
                console.error(`Error ${action}ing ${entity}:`, error);
                showMessage(`Error: ${error.message}`, 'error');
            }
        });

        /**
         * Handles deletion of a record.
         * @param {string} entity Entity type ('politician', 'party', etc.)
         * @param {number} id ID of the record to delete.
         * @param {string} displayName A user-friendly name for the item being deleted.
         */
        async function handleDelete(entity, id, displayName) {
            openConfirmModal(async () => {
                let url = '';
                let primaryKey = ''; // The actual primary key column name in the database

                switch (entity) {
                    case 'politician': url = `${BASE_API_URL}politicians_crud.php`; primaryKey = 'politicianid'; break;
                    case 'party': url = `${BASE_API_URL}politicalparty_crud.php`; primaryKey = 'PartyId'; break;
                    case 'election': url = `${BASE_API_URL}elections_crud.php`; primaryKey = 'electionid'; break;
                    case 'province': url = `${BASE_API_URL}province_crud.php`; primaryKey = 'ProvinceId'; break;
                    case 'term': url = `${BASE_API_URL}administrative_terms_crud.php`; primaryKey = 'AdministrativeTermid'; break;
                    default:
                        showMessage('Invalid entity type for deletion.', 'error');
                        return;
                }

                try {
                    const response = await fetch(url, {
                        method: 'POST', // Always use POST to send data, then use _method for actual intent
                        headers: {
                            'Content-Type': 'application/json',
                        },
                        body: JSON.stringify({ [primaryKey]: id, _method: 'DELETE' }), // Send ID with primary key name and method
                    });

                    if (!response.ok) {
                        const errorBody = await response.json();
                        throw new Error(errorBody.error || `HTTP error! Status: ${response.status}`);
                    }

                    const result = await response.json();
                    if (result.status === 'success') {
                        showMessage(`${displayName} deleted successfully!`);
                        populateData(); // Refresh data
                    } else {
                        throw new Error(result.error || `Failed to delete ${displayName}.`);
                    }
                } catch (error) {
                    console.error(`Error deleting ${displayName}:`, error);
                    showMessage(`Error: ${error.message}`, 'error');
                }
            });
        }


        // --- Navigation and Section Display ---
        document.addEventListener('DOMContentLoaded', function() {
            console.log('DOM fully loaded. Initializing page...');
            const navLinks = document.querySelectorAll('.nav-link');
            const mobileMenuToggle = document.getElementById('mobileMenuToggle');
            const navMenu = document.getElementById('navMenu');

            // Set default active link and show home section
            const homeLink = document.querySelector('a[href="#home"]');
            if (homeLink) homeLink.classList.add('active');
            showSection('home');
            populateData(); // Initial data load

            // Navigation link click listener
            navLinks.forEach(link => link.addEventListener('click', function(e) {
                e.preventDefault();
                const targetId = this.getAttribute('href').substring(1);
                navLinks.forEach(l => l.classList.remove('active'));
                this.classList.add('active');
                showSection(targetId);
                navMenu.classList.remove('active'); // Close mobile menu
                mobileMenuToggle.classList.remove('open'); // Close hamburger animation
            }));

            // Mobile menu toggle
            mobileMenuToggle.addEventListener('click', function() {
                navMenu.classList.toggle('active');
                this.classList.toggle('open');
            });

            // Smooth scroll for CTA button
            document.querySelector('.cta-button').addEventListener('click', function(e) {
                e.preventDefault();
                const targetId = this.getAttribute('href').substring(1);
                navLinks.forEach(l => l.classList.remove('active'));
                const targetNavLink = document.querySelector(`nav a[href="#${targetId}"]`);
                if (targetNavLink) targetNavLink.classList.add('active');
                showSection(targetId);
                // Scroll to top of the section after header
                window.scrollTo({ top: document.getElementById(targetId).offsetTop - document.getElementById('header').offsetHeight, behavior: 'smooth' });
            });

            // Setup CRUD buttons
            document.getElementById('addPoliticianBtn').addEventListener('click', () => openModal('politician', 'add'));
            document.getElementById('addPartyBtn').addEventListener('click', () => openModal('party', 'add'));
            document.getElementById('addElectionBtn').addEventListener('click', () => openModal('election', 'add'));
            document.getElementById('addProvinceBtn').addEventListener('click', () => openModal('province', 'add'));
            document.getElementById('addTermBtn').addEventListener('click', () => openModal('term', 'add'));

            setupSearchAndFilters();
        });


        /**
         * Shows a specific section and hides others.
         * @param {string} sectionId The ID of the section to show.
         */
        function showSection(sectionId) {
            const sections = document.querySelectorAll('.section');
            sections.forEach(section => {
                if (section.id === sectionId) {
                    section.classList.remove('hidden');
                    section.classList.add('fade-in'); // Add fade-in animation class
                } else {
                    section.classList.add('hidden');
                    section.classList.remove('fade-in');
                }
            });
            // Ensure content is visible after switching sections
            window.scrollTo({ top: document.getElementById('header').offsetHeight, behavior: 'smooth' });
        }


        /**
         * Fetches and populates data for all sections.
         */
        async function populateData() {
            try {
                await Promise.all([
                    fetchPoliticians(),
                    fetchParties(),
                    fetchElections(),
                    fetchProvinces(),
                    fetchTerms()
                ]);
                console.log('All data fetching completed.');
                // Re-apply filters after data is re-populated
                filterPoliticians();
                filterParties();
                filterElections();
                filterProvinces();
                filterTerms();

            } catch (error) {
                console.error('Error in populateData:', error);
                showMessage('Failed to load all data. Please check console for details.', 'error');
            }
        }


        // --- Data Fetching Functions (Modified to include CRUD buttons) ---

        async function fetchPoliticians() {
            const grid = document.getElementById('politiciansGrid');
            grid.innerHTML = '<p class="text-center text-gray-500 col-span-full">Loading politicians...</p>';
            try {
                const response = await fetch(`${BASE_API_URL}getdata.php`, { method: 'GET', headers: { 'Accept': 'application/json' } });
                if (!response.ok) throw new Error(`HTTP error! Status: ${response.status}`);
                const politicians = await response.json();

                // Store raw data for filtering later
                window.allPoliticians = politicians;
                filterPoliticians(); // Apply initial filter
            } catch (error) {
                console.error('Error fetching politicians:', error);
                grid.innerHTML = `<p class="text-center text-red-600 col-span-full">Error loading politicians data: ${error.message}. Check API or server status.</p>`;
            }
        }

        async function fetchParties() {
            const tableBody = document.getElementById('partiesTable');
            tableBody.innerHTML = '<tr><td colspan="7" class="text-center text-gray-500 py-4">Loading political parties...</td></tr>';
            try {
                const response = await fetch(`${BASE_API_URL}politicalparty.php`, { method: 'GET', headers: { 'Accept': 'application/json' } });
                if (!response.ok) throw new Error(`HTTP error! Status: ${response.status}`);
                const parties = await response.json();

                window.allParties = parties;
                filterParties();
            } catch (error) {
                console.error('Error fetching parties:', error);
                tableBody.innerHTML = `<tr><td colspan="7" class="text-center text-red-600 py-4">Error loading parties data: ${error.message}. Check API or server status.</td></tr>`;
            }
        }

        async function fetchElections() {
            const timeline = document.getElementById('electionsTimeline');
            timeline.innerHTML = '<p class="text-center text-gray-500 col-span-full">Loading elections...</p>';
            try {
                const response = await fetch(`${BASE_API_URL}elections.php`, { method: 'GET', headers: { 'Accept': 'application/json' } });
                if (!response.ok) throw new Error(`HTTP error! Status: ${response.status}`);
                const elections = await response.json();

                window.allElections = elections;
                filterElections();
            } catch (error) {
                console.error('Error fetching elections:', error);
                timeline.innerHTML = `<p class="text-center text-red-600 col-span-full">Failed to load elections data: ${error.message}. Check network.</p>`;
            }
        }

        async function fetchProvinces() {
            const grid = document.getElementById('provincesGrid');
            grid.innerHTML = '<p class="text-center text-gray-500 col-span-full">Loading provinces...</p>';
            try {
                const response = await fetch(`${BASE_API_URL}province.php`, { method: 'GET', headers: { 'Accept': 'application/json' } });
                if (!response.ok) throw new Error(`HTTP error! Status: ${response.status}`);
                const provinces = await response.json();

                window.allProvinces = provinces;
                filterProvinces();
            } catch (error) {
                console.error('Error fetching provinces:', error);
                grid.innerHTML = `<p class="text-center text-red-600 col-span-full">Failed to load provinces data: ${error.message}. Check network.</p>`;
            }
        }

        async function fetchTerms() {
            const tableBody = document.getElementById('termsTable');
            tableBody.innerHTML = '<tr><td colspan="5" class="text-center text-gray-500 py-4">Loading terms...</td></tr>';
            try {
                const response = await fetch(`${BASE_API_URL}administrativeterm.php`, {
                    method: 'GET',
                    headers: { 'Accept': 'application/json' }
                });

                if (!response.ok) throw new Error(`HTTP error! Status: ${response.status}`);

                const result = await response.json();
                let terms = result.data || [];

                // Deduplicate by assembly and level, keeping all IDs
                const termMap = new Map();
                terms.forEach(term => {
                    const key = `${term.assembly}|${term.level}`;
                    if (!termMap.has(key)) {
                        termMap.set(key, { ...term, ids: [term.id] });
                    } else {
                        termMap.get(key).ids.push(term.id);
                    }
                });
                terms = Array.from(termMap.values());

                // Parse years and sort
                terms = terms.map(term => {
                    const match = term.assembly.match(/\((\d{4})-(\d{4})\)/);
                    return {
                        ...term,
                        startYear: match ? parseInt(match[1]) : 0,
                        endYear: match ? parseInt(match[2]) : 0
                    };
                }).sort((a, b) => {
                    // Sort by level (Federal first), then startYear, then assembly
                    if (a.level !== b.level) return a.level.localeCompare(b.level);
                    if (a.startYear !== b.startYear) return a.startYear - b.startYear;
                    return a.assembly.localeCompare(b.assembly);
                });

                window.allTerms = terms;
                filterTerms();

            } catch (error) {
                console.error('Error in fetchTerms:', error);
                tableBody.innerHTML = `<tr><td colspan="5" class="text-center text-red-600 py-4">Error: ${error.message}. Please try again later.</td></tr>`;
            }
        }


        // --- Filtering Functions ---

        function setupSearchAndFilters() {
            // Politicians
            document.getElementById('politicianSearch').addEventListener('input', filterPoliticians);
            document.getElementById('genderFilter').addEventListener('change', filterPoliticians);
            document.getElementById('activeFilter').addEventListener('change', filterPoliticians);

            // Parties
            document.getElementById('partyNameFilter').addEventListener('input', filterParties);
            document.getElementById('abbreviationFilter').addEventListener('input', filterParties);
            document.getElementById('headFilter').addEventListener('input', filterParties);

            // Elections
            document.getElementById('electionYearFilter').addEventListener('input', filterElections);
            document.getElementById('electionTypeFilter').addEventListener('change', filterElections);
            document.getElementById('assemblyTypeFilter').addEventListener('change', filterElections);

            // Provinces
            document.getElementById('provinceNameFilter').addEventListener('input', filterProvinces);
            document.getElementById('regionTypeFilter').addEventListener('change', filterProvinces);

            // Terms
            document.getElementById('assemblyTermFilter').addEventListener('input', filterTerms);
            document.getElementById('governmentLevelFilter').addEventListener('change', filterTerms);
        }

        function filterPoliticians() {
            const searchTerm = document.getElementById('politicianSearch').value.toLowerCase();
            const genderFilterValue = document.getElementById('genderFilter').value;
            const activeFilterValue = document.getElementById('activeFilter').value;
            const grid = document.getElementById('politiciansGrid');
            grid.innerHTML = '';

            if (!window.allPoliticians || window.allPoliticians.length === 0) {
                grid.innerHTML = '<p class="text-center text-gray-500 col-span-full">No politicians data available.</p>';
                return;
            }

            const filteredPoliticians = window.allPoliticians.filter(politician => {
                const name = `${politician['First Name']} ${politician['Last Name'] || ''}`.toLowerCase();
                const gender = politician['Gender'];
                const isActive = politician['Is Active'] ? 'Active' : 'Inactive';

                const matchesSearch = !searchTerm || name.includes(searchTerm);
                const matchesGender = !genderFilterValue || gender === (genderFilterValue === 'Male' ? 'M' : 'F');
                const matchesActive = !activeFilterValue || isActive === activeFilterValue;

                return matchesSearch && matchesGender && matchesActive;
            });

            if (filteredPoliticians.length === 0) {
                grid.innerHTML = '<p class="text-center text-gray-500 col-span-full">No politicians match your criteria.</p>';
            } else {
                filteredPoliticians.forEach(politician => {
                    const name = `${politician['First Name']} ${politician['Last Name'] || ''}`;
                    const dob = politician['Date of Birth'];
                    const gender = politician['Gender'] === 'M' ? 'Male' : 'Female';
                    const birthPlace = politician['Place of Birth'];
                    const biography = politician['Biography'];
                    const active = politician['Is Active'];
                    const photoUrl = politician['Photo URL'];
                    const card = document.createElement('div');
                    card.className = 'card bg-white rounded-xl shadow-md overflow-hidden transition-all duration-300 hover:shadow-lg hover:scale-[1.01] border-t-4 border-green-600 flex flex-col';
                    card.innerHTML = `
                        <div class="card-image h-48 bg-gray-100 flex items-center justify-center text-gray-400 font-bold text-xl overflow-hidden">
                            <img src="${photoUrl || 'https://placehold.co/300x200/006A4E/ffffff?text=' + encodeURIComponent(name.split(' ').map(n => n[0]).join(''))}" alt="${name}" class="w-full h-full object-cover" onerror="this.onerror=null;this.src='https://placehold.co/300x200/006A4E/ffffff?text=${encodeURIComponent(name.split(' ').map(n => n[0]).join(''))}';">
                        </div>
                        <div class="card-content p-5 flex-grow">
                            <h3 class="card-title text-xl font-bold text-green-800 mb-2">${name}</h3>
                            <div class="card-meta flex flex-wrap gap-2 mb-3">
                                <span class="card-tag bg-green-500 text-white px-3 py-1 rounded-full text-xs font-semibold">ID: ${politician['Politician ID']}</span>
                                <span class="card-tag bg-green-500 text-white px-3 py-1 rounded-full text-xs font-semibold">${gender}</span>
                                <span class="card-tag ${active ? 'bg-blue-500' : 'bg-red-500'} text-white px-3 py-1 rounded-full text-xs font-semibold">${active ? 'Active' : 'Inactive'}</span>
                            </div>
                            <p class="card-description text-gray-600 text-sm mb-3">
                                <strong>Born:</strong> ${dob ? new Date(dob).toLocaleDateString('en-GB') : 'N/A'}<br>
                                <strong>Place:</strong> ${birthPlace || 'N/A'}<br>
                                ${biography ? biography.substring(0, 100) + '...' : 'No biography available.'}
                            </p>
                        </div>
                        <div class="p-4 border-t border-gray-100 flex justify-end">
                            <button class="crud-button edit-button" onclick="openModal('politician', 'edit', {
                                id: ${politician['Politician ID']},
                                'First Name': '${politician['First Name'].replace(/'/g, "\\'")}',
                                'Last Name': '${politician['Last Name'].replace(/'/g, "\\'")}',
                                'Date of Birth': '${politician['Date of Birth'] || ''}',
                                'Gender': '${gender}',
                                'Place of Birth': '${politician['Place of Birth'].replace(/'/g, "\\'")}',
                                'Biography': \`${politician['Biography'].replace(/`/g, "\\`")}\`,
                                'Is Active': ${politician['Is Active'] ? true : false},
                                'Photo URL': '${politician['Photo URL'] || ''}'
                            })"><i class="fas fa-edit mr-1"></i>Edit</button>
                            <button class="crud-button delete-button" onclick="handleDelete('politician', ${politician['Politician ID']}, '${name.replace(/'/g, "\\'")}')"><i class="fas fa-trash-alt mr-1"></i>Delete</button>
                        </div>
                    `;
                    grid.appendChild(card);
                });
            }
        }


        function filterParties() {
            const partyNameSearchTerm = document.getElementById('partyNameFilter').value.toLowerCase();
            const abbreviationSearchTerm = document.getElementById('abbreviationFilter').value.toLowerCase();
            const headSearchTerm = document.getElementById('headFilter').value.toLowerCase();
            const tableBody = document.getElementById('partiesTable');
            tableBody.innerHTML = '';

            if (!window.allParties || window.allParties.length === 0) {
                tableBody.innerHTML = '<tr><td colspan="7" class="text-center text-gray-500 py-4">No political parties data available.</td></tr>';
                return;
            }

            const filteredParties = window.allParties.filter(party => {
                const matchesName = !partyNameSearchTerm || (party.name && party.name.toLowerCase().includes(partyNameSearchTerm));
                const matchesAbbreviation = !abbreviationSearchTerm || (party.abbreviation && party.abbreviation.toLowerCase().includes(abbreviationSearchTerm));
                const matchesHead = !headSearchTerm || (party.head && party.head.toLowerCase().includes(headSearchTerm));
                return matchesName && matchesAbbreviation && matchesHead;
            });

            if (filteredParties.length === 0) {
                tableBody.innerHTML = '<tr><td colspan="7" class="text-center text-gray-500 py-4">No parties match your criteria.</td></tr>';
            } else {
                filteredParties.forEach(party => {
                    const row = document.createElement('tr');
                    row.className = 'border-b border-gray-100 hover:bg-gray-50 transition-colors duration-200';
                    row.innerHTML = `
                        <td class="px-4 py-3 text-sm text-gray-600">${party.id || 'N/A'}</td>
                        <td class="px-4 py-3 text-base text-gray-800 font-medium">${party.name || 'N/A'}</td>
                        <td class="px-4 py-3 text-sm text-gray-600">${party.abbreviation || 'N/A'}</td>
                        <td class="px-4 py-3 text-xl">${party.symbol || 'N/A'}</td>
                        <td class="px-4 py-3 text-sm text-gray-600">${party.founded ? new Date(party.founded).toLocaleDateString('en-GB') : 'N/A'}</td>
                        <td class="px-4 py-3 text-sm text-gray-600">${party.head || 'N/A'}</td>
                        <td class="px-4 py-3 text-right whitespace-nowrap">
                            <button class="crud-button edit-button" onclick="openModal('party', 'edit', {
                                id: ${party.id},
                                name: '${party.name.replace(/'/g, "\\'")}',
                                abbreviation: '${party.abbreviation.replace(/'/g, "\\'")}',
                                founded: '${party.founded || ''}',
                                symbol: '${party.symbol.replace(/'/g, "\\'")}',
                                ideology: '${(party.ideology || '').replace(/'/g, "\\'")}',
                                head: '${party.head.replace(/'/g, "\\'")}'
                            })"><i class="fas fa-edit mr-1"></i>Edit</button>
                            <button class="crud-button delete-button" onclick="handleDelete('party', ${party.id}, '${party.name.replace(/'/g, "\\'")}')"><i class="fas fa-trash-alt mr-1"></i>Delete</button>
                        </td>
                    `;
                    tableBody.appendChild(row);
                });
            }
        }


        function filterElections() {
            const yearFilter = document.getElementById('electionYearFilter').value;
            const typeFilter = document.getElementById('electionTypeFilter').value;
            const assemblyFilter = document.getElementById('assemblyTypeFilter').value;
            const timeline = document.getElementById('electionsTimeline');
            timeline.innerHTML = '';

            if (!window.allElections || window.allElections.length === 0) {
                timeline.innerHTML = '<p class="text-center text-gray-500 col-span-full">No elections data available.</p>';
                return;
            }

            const filteredElections = window.allElections.filter(election => {
                const electionYear = election.date !== 'N/A' ? new Date(election.date).getFullYear() : null;
                const matchesYear = !yearFilter || (electionYear && electionYear.toString().includes(yearFilter));
                const matchesType = !typeFilter || election.type === typeFilter;
                const matchesAssembly = !assemblyFilter || election.assembly === assemblyFilter;
                return matchesYear && matchesType && matchesAssembly;
            }).sort((a, b) => new Date(b.date) - new Date(a.date)); // Sort by date descending

            if (filteredElections.length === 0) {
                timeline.innerHTML = '<p class="text-center text-gray-500 col-span-full">No elections match your criteria.</p>';
            } else {
                filteredElections.forEach(election => {
                    const item = document.createElement('div');
                    item.className = 'timeline-item relative flex items-start mb-8 even:flex-row-reverse even:text-right';
                    item.innerHTML = `
                        <div class="timeline-date absolute top-0 left-1/2 -translate-x-1/2 bg-yellow-500 text-gray-900 px-3 py-1 rounded-full text-xs font-semibold whitespace-nowrap z-10 md:static md:translate-x-0 md:mr-4 md:ml-4">ID: ${election.id} - ${election.date === 'N/A' ? 'N/A' : new Date(election.date).toLocaleDateString('en-GB')}</div>
                        <div class="timeline-line absolute left-1/2 w-0.5 h-full bg-green-600 z-0 hidden md:block"></div>
                        <div class="timeline-content bg-white p-5 rounded-lg shadow-lg relative w-full md:w-1/2 border-l-4 border-yellow-500 even:border-l-0 even:border-r-4 even:ml-auto">
                            <h3 class="text-lg font-semibold text-green-800 mb-1">${election.type} - ${election.date === 'N/A' ? 'N/A' : new Date(election.date).getFullYear()}</h3>
                            <p class="text-gray-600 text-sm mb-1"><strong>Assembly:</strong> ${election.assembly || 'N/A'}</p>
                            <p class="text-gray-600 text-sm mb-3"><strong>Winner:</strong> ${election.winner || 'N/A'}</p>
                            <p class="text-gray-600 text-sm">${election.description || 'Details not available'}</p>
                            <div class="mt-3 flex justify-end">
                                <button class="crud-button edit-button" onclick="openModal('election', 'edit', {
                                    id: ${election.id},
                                    date: '${election.date || ''}',
                                    type: '${election.type.replace(/'/g, "\\'")}',
                                    assembly: '${election.assembly.replace(/'/g, "\\'")}'
                                })"><i class="fas fa-edit mr-1"></i>Edit</button>
                                <button class="crud-button delete-button" onclick="handleDelete('election', ${election.id}, 'Election on ${election.date}')"><i class="fas fa-trash-alt mr-1"></i>Delete</button>
                            </div>
                        </div>
                    `;
                    timeline.appendChild(item);
                });
            }
        }


        function filterProvinces() {
            const provinceNameSearchTerm = document.getElementById('provinceNameFilter').value.toLowerCase();
            const regionTypeFilterValue = document.getElementById('regionTypeFilter').value;
            const grid = document.getElementById('provincesGrid');
            grid.innerHTML = '';

            if (!window.allProvinces || window.allProvinces.length === 0) {
                grid.innerHTML = '<p class="text-center text-gray-500 col-span-full">No provinces data available.</p>';
                return;
            }

            const filteredProvinces = window.allProvinces.filter(province => {
                const matchesName = !provinceNameSearchTerm || (province.name && province.name.toLowerCase().includes(provinceNameSearchTerm));
                const matchesType = !regionTypeFilterValue || province.type === regionTypeFilterValue;
                return matchesName && matchesType;
            });

            if (filteredProvinces.length === 0) {
                grid.innerHTML = '<p class="text-center text-gray-500 col-span-full">No provinces match your criteria.</p>';
            } else {
                filteredProvinces.forEach(province => {
                    const card = document.createElement('div');
                    card.className = 'card bg-white rounded-xl shadow-md overflow-hidden transition-all duration-300 hover:shadow-lg hover:scale-[1.01] border-t-4 border-green-600 flex flex-col';
                    const constituenciesList = province.constituencies && province.constituencies.length > 0 ?
                        province.constituencies.slice(0, 3).map(c => `<li><strong>${c.code}</strong> - ${c.city} (${c.assembly})</li>`).join('') :
                        '<li>No constituencies available</li>';
                    const moreConstituencies = province.constituencies && province.constituencies.length > 3 ? '<li>... and more</li>' : '';

                    card.innerHTML = `
                        <div class="card-image h-48 bg-gradient-to-br from-green-50 to-green-100 flex items-center justify-center text-green-800 font-bold text-3xl">
                            ${province.name.substring(0, 2).toUpperCase()}
                        </div>
                        <div class="card-content p-5 flex-grow">
                            <h3 class="card-title text-xl font-bold text-green-800 mb-2">${province.name || 'N/A'}</h3>
                            <div class="card-meta flex flex-wrap gap-2 mb-3">
                                <span class="card-tag bg-blue-500 text-white px-3 py-1 rounded-full text-xs font-semibold">ID: ${province.id}</span>
                                <span class="card-tag bg-blue-500 text-white px-3 py-1 rounded-full text-xs font-semibold">${province.type || 'N/A'}</span>
                                <span class="card-tag bg-purple-500 text-white px-3 py-1 rounded-full text-xs font-semibold">${(province.constituencies ? province.constituencies.length : 0)} Constituencies</span>
                            </div>
                            <p class="card-description text-gray-600 text-sm mb-3">
                                <strong>Key Constituencies (Sample):</strong>
                                <ul class="mt-2 pl-5 list-disc text-gray-600">
                                    ${constituenciesList}
                                    ${moreConstituencies}
                                </ul>
                            </p>
                        </div>
                        <div class="p-4 border-t border-gray-100 flex justify-end">
                            <button class="crud-button edit-button" onclick="openModal('province', 'edit', {
                                id: ${province.id},
                                name: '${province.name.replace(/'/g, "\\'")}',
                                type: '${province.type.replace(/'/g, "\\'")}'
                            })"><i class="fas fa-edit mr-1"></i>Edit</button>
                            <button class="crud-button delete-button" onclick="handleDelete('province', ${province.id}, '${province.name.replace(/'/g, "\\'")}')"><i class="fas fa-trash-alt mr-1"></i>Delete</button>
                        </div>
                    `;
                    grid.appendChild(card);
                });
            }
        }


        function filterTerms() {
            const assemblyTermSearchTerm = document.getElementById('assemblyTermFilter').value.toLowerCase();
            const governmentLevelFilterValue = document.getElementById('governmentLevelFilter').value;
            const tableBody = document.getElementById('termsTable');
            tableBody.innerHTML = '';

            if (!window.allTerms || window.allTerms.length === 0) {
                tableBody.innerHTML = '<tr><td colspan="5" class="text-center text-gray-500 py-4">No administrative terms data available.</td></tr>';
                return;
            }

            const filteredTerms = window.allTerms.filter(term => {
                const matchesAssemblyTerm = !assemblyTermSearchTerm || (term.assembly && term.assembly.toLowerCase().includes(assemblyTermSearchTerm));
                const matchesGovernmentLevel = !governmentLevelFilterValue || term.level === governmentLevelFilterValue;
                return matchesAssemblyTerm && matchesGovernmentLevel;
            });

            if (filteredTerms.length === 0) {
                tableBody.innerHTML = '<tr><td colspan="5" class="text-center text-gray-500 py-4">No terms match your criteria.</td></tr>';
            } else {
                filteredTerms.forEach(term => {
                    const row = document.createElement('tr');
                    row.className = 'border-b border-gray-100 hover:bg-gray-50 transition-colors duration-200';
                    const yearRange = term.startYear && term.endYear ? `${term.startYear}-${term.endYear}` : 'N/A';
                    row.innerHTML = `
                        <td class="px-4 py-3 text-base text-gray-800 font-medium">${term.assembly || 'N/A'}</td>
                        <td class="px-4 py-3 text-sm text-gray-600">${term.level || 'N/A'}</td>
                        <td class="px-4 py-3 text-sm text-gray-600">${yearRange}</td>
                        <td class="px-4 py-3 text-sm text-gray-600">${term.ids.join(', ')}</td>
                        <td class="px-4 py-3 text-right whitespace-nowrap">
                            <button class="crud-button edit-button" onclick="openModal('term', 'edit', {
                                id: ${term.id},
                                assembly: '${term.assembly.replace(/'/g, "\\'")}',
                                level: '${term.level.replace(/'/g, "\\'")}'
                            })"><i class="fas fa-edit mr-1"></i>Edit</button>
                            <button class="crud-button delete-button" onclick="handleDelete('term', ${term.id}, '${term.assembly.replace(/'/g, "\\'")}')"><i class="fas fa-trash-alt mr-1"></i>Delete</button>
                        </td>
                    `;
                    tableBody.appendChild(row);
                });
            }
        }


        // --- Header Scroll Effect ---
        let lastScrollTop = 0;
        const header = document.getElementById('header');
        window.addEventListener('scroll', function() {
            let scrollTop = window.pageYOffset || document.documentElement.scrollTop;
            if (scrollTop > 50) {
                header.classList.add('scrolled');
                if (scrollTop > lastScrollTop && scrollTop > header.offsetHeight) header.style.top = `-${header.offsetHeight}px`;
                else header.style.top = '0';
            } else {
                header.classList.remove('scrolled');
                header.style.top = '0';
            }
            lastScrollTop = scrollTop <= 0 ? 0 : scrollTop;
        });

        // --- Intersection Observer for Fade-in Animations ---
        const observerOptions = { threshold: 0.1, rootMargin: '0px 0px -50px 0px' };
        const animationObserver = new IntersectionObserver(entries => {
            entries.forEach(entry => {
                if (entry.isIntersecting) {
                    entry.target.classList.add('fade-in-visible');
                    animationObserver.unobserve(entry.target);
                }
            });
        }, observerOptions);

        document.addEventListener('DOMContentLoaded', function() {
            const elementsToObserve = document.querySelectorAll('.card, .timeline-item, .table-container, .section-header, .about-content .team-member');
            elementsToObserve.forEach(el => {
                el.classList.add('fade-in-init');
                animationObserver.observe(el);
            });
        });

    </script>
</body>
</html>
