
<!DOCTYPE html>
<html lang="ru">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>EduConnect | Ваш Портал К Знаниям</title>

    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Google Fonts -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;700&display=swap">

    <!-- Font Awesome Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

    <!-- Custom CSS -->
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f5f5f5;
            color: #333;
        }

        /* Navbar */
        .navbar {
            background-color: #0056d2;
            overflow: hidden;
        }

        .navbar-brand {
            color: white;
            font-weight: 700;
            font-size: 1.8rem;
        }

        .nav-link {
            color: #fff;
            margin-right: 20px;
            font-weight: 500;
            transition: color 0.3s ease;
        }

        .nav-link:hover {
            color: #f8d146 !important;
        }

        .btn-outline-light {
            font-weight: 600;
            border: 2px solid white;
            padding: 8px 20px;
        }

        .btn-outline-light:hover {
            background-color: white;
            color: #0056d2;
        }

        /* Hero Section */
        .hero {
            height: 100vh;
            background: linear-gradient(45deg, rgba(0, 0, 50, 0.7), rgba(0, 0, 80, 0.7)), url('https://via.placeholder.com/1920x1080') center/cover no-repeat;
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            text-align: center;
        }

        .hero h1 {
            font-size: 4rem;
            font-weight: 700;
            margin-bottom: 20px;
        }

        .hero p {
            font-size: 1.4rem;
            margin-bottom: 30px;
        }

        .hero .btn {
            font-size: 1.2rem;
            border-radius: 30px;
            padding: 10px 35px;
            margin: 10px;
        }

        .hero .btn-primary {
            background-color: #f8d146;
            border: none;
        }

        .hero .btn-primary:hover {
            background-color: #ffd966;
        }

        /* Features Section */
        .features {
            padding: 80px 15px;
            background-color: #fff;
        }

        .features h2 {
            text-align: center;
            font-size: 2.8rem;
            font-weight: 700;
            margin-bottom: 40px;
        }

        .features .feature-box {
            text-align: center;
            padding: 30px 20px;
            border-radius: 20px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s, box-shadow 0.3s;
            background: linear-gradient(145deg, #fff, rgba(240, 240, 253, 0.9));
        }

        .features .feature-box:hover {
            transform: translateY(-10px);
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.15);
        }

        .features .feature-box i {
            font-size: 3rem;
            color: #0056d2;
            margin-bottom: 20px;
        }

        .features .feature-box h4 {
            font-size: 1.5rem;
            font-weight: 600;
        }

        /* Testimonials Section */
        .testimonials {
            background-color: #f8f9fa;
            padding: 80px 15px;
        }

        .testimonials .testimonial-card {
            padding: 20px 25px;
            background-color: white;
            border-radius: 15px;
            text-align: center;
            box-shadow: 0px 5px 10px rgba(0, 0, 0, 0.1);
        }

        .testimonials h2 {
            font-size: 2.5rem;
            text-align: center;
            font-weight: bold;
            margin-bottom: 40px;
        }

        .testimonials p {
            font-size: 1.1rem;
            color: #555;
            margin-bottom: 15px;
        }

        .testimonials h5 {
            font-weight: bold;
        }

        /* Contact Section */
        .contact {
            padding: 80px 15px;
        }

        .contact h2 {
            text-align: center;
            margin-bottom: 40px;
            font-size: 2.5rem;
            font-weight: bold;
        }

        .contact form input,
        .contact form textarea {
            width: 100%;
            padding: 15px;
            margin: 15px 0;
            border: 1px solid #ddd;
            border-radius: 8px;
        }

        .contact form button {
            padding: 12px 40px;
            background-color: #0056d2;
            color: white;
            border: none;
            border-radius: 8px;
            transition: background-color 0.3s;
        }

        .contact form button:hover {
            background-color: #003d99;
        }

        /* Footer Styles */
        footer {
            background-color: #003d99;
            color: white;
            padding: 40px 15px;
            text-align: center;
        }

        footer a {
            color: #ffd966;
            text-decoration: none;
        }

        footer a:hover {
            color: #fff;
            text-decoration: underline;
        }
    </style>
</head>

<body>
<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark">
    <div class="container">
        <a class="navbar-brand" href="#">EduConnect</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item"><a class="nav-link" href="#features">Функции</a></li>
                <li class="nav-item"><a class="nav-link" href="#testimonials">Отзывы</a></li>
                <li class="nav-item"><a class="nav-link" href="#contact">Контакты</a></li>
                <li class="nav-item"><a class="btn btn-outline-light" href="/pages/moderatorLogin.jsp">Авторизация</a></li>
            </ul>
        </div>
    </div>
</nav>

<!-- Hero Section -->
<div class="hero">
    <div>
        <h1>Достижите успеха с EduConnect</h1>
        <p>Идеальная платформа для обучения, преподавания и карьерного развития.</p>
        <a href="student-login.jsp" class="btn btn-primary">Стать студентом</a>
        <a href="teacher-login.jsp" class="btn btn-outline-light">Стать преподавателем</a>
    </div>
</div>

<!-- Features Section -->
<section id="features" class="features">
    <div class="container">
        <h2>Почему Выбирают EduConnect</h2>
        <div class="row gy-4">
            <div class="col-lg-4 col-md-6">
                <div class="feature-box">
                    <i class="fas fa-laptop-code"></i>
                    <h4>Инновационные Курсы</h4>
                    <p>Подготовьте себя с помощью наших современных и практичных материалов.</p>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="feature-box">
                    <i class="fas fa-brain"></i>
                    <h4>Доступ к Экспертам</h4>
                    <p>Возможность учиться у проверенных преподавателей и наставников.</p>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="feature-box">
                    <i class="fas fa-briefcase"></i>
                    <h4>Карьера</h4>
                    <p>Найдите лучшие вакансии и подчеркните свою карьеру.</p>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Testimonials Section -->
<section id="testimonials" class="testimonials">
    <div class="container">
        <h2>Отзывы наших Пользователей</h2>
        <div class="row">
            <div class="col-md-4">
                <div class="testimonial-card">
                    <p>"EduConnect изменил мое мышление. Замечательный опыт!"</p>
                    <h5>Екатерина И.</h5>
                </div>
            </div>
            <div class="col-md-4">
                <div class="testimonial-card">
                    <p>"Обучение стало быстрее, и я уверен в своем будущем!"</p>
                    <h5>Антон В.</h5>
                </div>
            </div>
            <div class="col-md-4">
                <div class="testimonial-card">
                    <p>"Прекрасный интерфейс и лучшие преподаватели."</p>
                    <h5>Ольга Н.</h5>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Contact Section -->
<section id="contact" class="contact">
    <div class="container">
        <h2>Свяжитесь с нами</h2>
        <form>
            <input type="text" placeholder="Ваше имя" required>
            <input type="email" placeholder="Ваш Email" required>
            <textarea rows="5" placeholder="Ваше сообщение" required></textarea>
            <button type="submit">Отправить</button>
        </form>
    </div>
</section>

<!-- Footer -->
<footer>
    <p>&copy; 2024 EduConnect. Все права защищены.</p>
</footer>

<!-- Bootstrap 5 JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>