<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>She Can Foundation - Tech Internship</title>
    <style>
        :root {
            --primary: #6c5ce7;
            --primary-dark: #5b4cc4;
            --dark: #2d3436;
            --light: #f9f9f9;
            --border: #dfe6e9;
            --success: #00b894;
            --error: #d63031;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', system-ui, sans-serif;
        }

        body {
            background-color: var(--light);
            color: var(--dark);
            line-height: 1.6;
        }

        .container {
            width: 90%;
            max-width: 1100px;
            margin: 0 auto;
            padding: 0 20px;
        }

        /* Header Layout */
        header {
            background: white;
            box-shadow: 0 2px 10px rgba(0,0,0,0.05);
            position: sticky;
            top: 0;
            z-index: 100;
        }

        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 20px 0;
        }

        .logo {
            font-weight: 700;
            font-size: 1.5rem;
            color: var(--primary);
        }

        /* Hero / About UI Grid */
        .hero {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 50px;
            padding: 80px 0;
        }

        .hero-content {
            flex: 1;
        }

        .hero-content h1 {
            font-size: 2.5rem;
            line-height: 1.2;
            margin-bottom: 20px;
            color: var(--dark);
        }

        .hero-content p {
            font-size: 1.1rem;
            margin-bottom: 30px;
            color: #636e72;
        }

        .hero-image {
            flex: 1;
            display: flex;
            justify-content: center;
        }

        .hero-image img {
            width: 100%;
            max-width: 450px;
            border-radius: 15px;
            box-shadow: 0 10px 20px rgba(0,0,0,0.05);
        }

        /* Reusable Dynamic Buttons */
        .btn {
            display: inline-block;
            background-color: var(--primary);
            color: white;
            padding: 12px 30px;
            text-decoration: none;
            border-radius: 25px;
            font-weight: 600;
            border: none;
            cursor: pointer;
            transition: background 0.2s ease, transform 0.1s ease;
        }

        .btn:hover {
            background-color: var(--primary-dark);
        }

        .btn:disabled {
            background-color: #b2bec3;
            cursor: not-allowed;
        }

        /* Interactive Form Card Wrapper */
        .form-section {
            background: white;
            padding: 60px 0;
            border-radius: 15px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.03);
            margin-bottom: 60px;
        }

        .section-title {
            text-align: center;
            margin-bottom: 30px;
            font-size: 2rem;
        }

        form {
            max-width: 550px;
            margin: 0 auto;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            margin-bottom: 8px;
            font-weight: 600;
        }

        .form-group input, .form-group textarea {
            width: 100%;
            padding: 12px;
            border: 2px solid var(--border);
            border-radius: 8px;
            font-size: 1rem;
            transition: border-color 0.2s ease;
        }

        .form-group input:focus, .form-group textarea:focus {
            border-color: var(--primary);
            outline: none;
        }

        /* REST Response Dynamic Messages */
        .alert {
            display: none;
            padding: 15px;
            border-radius: 8px;
            margin-bottom: 20px;
            font-weight: 600;
            text-align: center;
        }

        .alert-success {
            background-color: var(--success);
            color: white;
        }

        .alert-error {
            background-color: var(--error);
            color: white;
        }

        /* Footer Layout */
        footer {
            background-color: var(--dark);
            color: white;
            text-align: center;
            padding: 25px 0;
            margin-top: auto;
        }

        /* Mobile Optimization Rules */
        @media (max-width: 768px) {
            .hero {
                flex-direction: column-reverse;
                text-align: center;
                padding: 40px 0;
            }
            .hero-image img {
                max-width: 300px;
                margin-bottom: 20px;
            }
        }
    </style>
</head>
<body>

<header>
    <div class="container navbar">
        <div class="logo">She Can Foundation</div>
        <a href="#apply" class="btn">Join Us</a>
    </div>
</header>

<main class="container">
    <section class="hero">
        <div class="hero-content">
            <h1>Empowering the Next Generation of Tech Leaders</h1>
            <p>She Can Foundation is a youth-driven NGO working towards creating opportunities, awareness, and positive social impact through education, digital initiatives, and community-driven programs. We believe talent should not be judged only by experience—every student deserves a fair chance to learn, explore, and grow.</p>
            <a href="#apply" class="btn">Volunteer / Join Us</a>
        </div>
        <div class="hero-image">
            <img src="https://images.unsplash.com/photo-1573164713988-8665fc963095?auto=format&fit=crop&w=500&q=80" alt="Tech Internship Presentation">
        </div>
    </section>

    <section id="apply" class="form-section">
        <h2 class="section-title">Internship Application Form</h2>

        <div style="max-width: 550px; margin: 0 auto; padding: 0 10px;">
            <div id="successAlert" class="alert alert-success">Form Submitted Successfully</div>
            <div id="errorAlert" class="alert alert-error">Submission failed. Please check backend connection.</div>
        </div>

        <form id="applyForm">
            <div class="form-group">
                <label for="name">Name Field</label>
                <input type="text" id="name" required placeholder="Enter your full name">
            </div>
            <div class="form-group">
                <label for="email">Email Field</label>
                <input type="email" id="email" required placeholder="Enter your email address">
            </div>
            <div class="form-group">
                <label for="message">Message Field</label>
                <textarea id="message" rows="4" required placeholder="Tell us why you want to join..."></textarea>
            </div>
            <div style="text-align: center;">
                <button type="submit" id="submitBtn" class="btn">Submit Button</button>
            </div>
        </form>
    </section>
</main>

<footer>
    <div class="container">
        <p>&copy; 2026 She Can Foundation. All Rights Reserved.</p>
    </div>
</footer>

<script>
    document.getElementById('applyForm').addEventListener('submit', async function(e) {
        e.preventDefault(); // Halt default HTTP post action

        // UI Element Hooks
        const successAlert = document.getElementById('successAlert');
        const errorAlert = document.getElementById('errorAlert');
        const submitBtn = document.getElementById('submitBtn');

        // Clean previous presentation flags
        successAlert.style.display = 'none';
        errorAlert.style.display = 'none';
        submitBtn.disabled = true;
        submitBtn.innerText = 'Submitting...';

        // Gather DOM field values for Jersey binding map
        const payload = {
            name: document.getElementById('name').value,
            email: document.getElementById('email').value,
            message: document.getElementById('message').value
        };

        try {
            // Fire async JSON wire exchange to Jersey Engine running on local server port
            const response = await fetch('http://localhost:8080/Project_war_exploded/webapi/applications', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify(payload)
            });

            if (response.status === 201 || response.ok) {
                successAlert.style.display = 'block';
                document.getElementById('applyForm').reset();
                successAlert.scrollIntoView({ behavior: 'smooth', block: 'center' });
            } else {
                errorAlert.style.display = 'block';
            }
        } catch (error) {
            console.error('Network Pipeline Fault: ', error);
            errorAlert.style.display = 'block';
        } finally {
            // Return button processing state back to functional interaction loop
            submitBtn.disabled = false;
            submitBtn.innerText = 'Submit Button';
        }
    });
</script>
</body>
</html>