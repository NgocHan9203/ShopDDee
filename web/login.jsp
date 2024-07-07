<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="css/styles.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <style>
        body {
            margin: 0;
            font-family: 'Poppins', sans-serif;
            overflow: hidden; /* Prevent scrolling */
        }

        .background-video {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            object-fit: cover;
            z-index: -1;
        }

        .login-container {
            position: relative;
            background: rgba(255, 255, 255, 0.9);
            padding: 30px 40px;
            border-radius: 12px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            width: 350px;
            text-align: center;
            animation: fadeIn 1s ease-in-out;
            z-index: 1;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(-20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        .login-form h2 {
            margin-bottom: 20px;
            color: #333;
            font-size: 24px;
        }

        .input-group {
            margin-bottom: 20px;
            text-align: left;
            position: relative;
        }

        .input-group label {
            display: block;
            margin-bottom: 8px;
            color: #555;
            font-weight: 500;
        }

        .input-group input {
            width: 100%;
            padding: 12px 15px;
            border: 1px solid #ddd;
            border-radius: 8px;
            font-size: 16px;
            transition: all 0.3s ease;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.05);
        }

        .input-group.focused input {
            border-color: #74ebd5;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }

        button {
            width: 100%;
            padding: 15px;
            background: linear-gradient(135deg, #74ebd5, #ACB6E5);
            border: none;
            border-radius: 8px;
            color: white;
            font-size: 18px;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.3s ease;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
        }

        button:hover {
            background: linear-gradient(135deg, #ACB6E5, #74ebd5);
            box-shadow: 0 6px 20px rgba(0, 0, 0, 0.15);
        }

        .footer {
            display: flex;
            justify-content: space-between; /* ?? c?n ??u kho?ng c?ch gi?a c?c ph?n t? */
            align-items: center; /* ?? c?n gi?a theo chi?u d?c */
            margin-top: 20px;
        }

        .footer a {
            color: #4a9285;
            text-decoration: none;
            font-weight: 500;
            transition: color 0.3s ease;
        }

        .footer a:hover {
            color: #ACB6E5;
            text-decoration: underline;
        }

        .particle {
            position: absolute;
            top: -10px;
            width: 10px;
            height: 10px;
            background: rgba(255, 255, 255, 0.8);
            border-radius: 50%;
            animation: float 5s linear infinite;
            opacity: 0;
        }

        @keyframes float {
            0% {
                transform: translateY(0);
                opacity: 1;
            }
            100% {
                transform: translateY(-100vh);
                opacity: 0;
            }
        }
    </style>
</head>

<body>
    <video autoplay muted loop class="background-video">
        <source src="images/video/ShopDDee.mp4" type="video/mp4">
    </video>

    <div class="login-container" style= "margin: 120px 0px 0px 150px">
        <div class="login-form">
            <h2>Login</h2>
            <form action="login" method="POST">
                <c:if test="${not empty error}">
                    <div class="alert alert-danger" role="alert" style="color: red">
                        ${error}
                    </div>
                </c:if>
                <div class="input-group">
                    <label for="username">UserName</label>
                    <input type="text" id="username" name="username" required>
                </div>
                <div class="input-group">
                    <label for="password">Password</label>
                    <input type="password" id="password" name="password" required>
                </div>
                <button type="submit"  class="flex-c-m stext-101 cl0 size-103 bg1 bor1 hov-btn2 p-lr-15 trans-04">Login</button>
            </form>
            <div class="footer">
                <a href="forgotPassword.jsp">Forget password?</a>
                <a href="registerr">Register</a>
                <a href="home">Home</a>
            </div>
        </div>
    </div>

    <script>
        // Add focus effect to input fields
        const inputs = document.querySelectorAll('.input-group input');

        inputs.forEach(input => {
            input.addEventListener('focus', () => {
                input.parentElement.classList.add('focused');
            });

            input.addEventListener('blur', () => {
                if (input.value === '') {
                    input.parentElement.classList.remove('focused');
                }
            });
        });

        // Add floating particles effect
        function createParticle() {
            const particle = document.createElement('div');
            particle.classList.add('particle');
            document.body.appendChild(particle);

            particle.style.left = `${Math.random() * 100}%`;
            particle.style.animationDuration = `${Math.random() * 3 + 2}s`;
            particle.style.animationDelay = `${Math.random() * 5}s`;

            particle.addEventListener('animationend', () => {
                particle.remove();
            });
        }

        for (let i = 0; i < 20; i++) {
            createParticle();
        }

        setInterval(createParticle, 5000);
    </script>
</body>
</html>
