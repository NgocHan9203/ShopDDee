<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
    <link rel="stylesheet" href="css/styles.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <style>
        body {
            margin: 0;
            font-family: 'Poppins', sans-serif;
            overflow: hidden; /* Prevent scrolling */
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background: linear-gradient(135deg, #74ebd5, #ACB6E5);
        }

        .background-video {
            position: fixed;
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
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            width: 800px; /* Adjust width as needed */
            text-align: center;
            animation: fadeIn 1s ease-in-out;
            z-index: 1;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
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

        .login-form {
            width: 100%;
            max-width: 600px; /* Adjust max-width as needed */
            margin: auto;
        }

        .form-column {
            display: flex;
            flex-direction: column;
            gap: 20px;
        }

        .form-row {
            display: flex;
            gap: 40px;
        }

        .form-row .input-group {
            flex: 1;
        }

        .input-group {
            text-align: left;
        }

        .input-group label {
            display: block;
            margin-bottom: 8px;
            color: #555;
            font-weight: 500;
        }

        .input-group input,
        .input-group textarea,
        .input-group select {
            width: 100%;
            padding: 12px 15px;
            border: 1px solid #ddd;
            border-radius: 8px;
            font-size: 16px;
            transition: all 0.3s ease;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.05);
        }

        .input-group.focused input,
        .input-group.focused textarea,
        .input-group.focused select {
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
            justify-content: space-between;
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
    </style>
</head>
<body>
    <video autoplay muted loop class="background-video">
        <source src="images/video/ShopDDee.mp4" type="video/mp4">
        Your browser does not support the video tag.
    </video>

    <div class="login-container">
        <div class="login-form">
            <h2>Register</h2>
            <form id="register-form" action="registerr" method="POST">
                <c:if test="${not empty error}">
                    <div class="alert alert-danger" role="alert" style="color: red">
                        ${error}
                    </div>
                </c:if>
                <c:if test="${not empty exist}">
                    <div class="alert alert-danger" role="alert" style="color: red">
                        ${exist}
                    </div>
                </c:if>

                <div class="form-column">
                    <div class="form-row">
                        <div class="input-group">
                            <label for="username">Username</label>
                            <input type="text" id="username" name="username" required>
                        </div>
                        <div class="input-group">
                            <label for="email">Email</label>
                            <input type="email" id="email" name="email" required>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="input-group">
                            <label for="password">Password</label>
                            <input type="password" id="password" name="password" required>
                        </div>
                        <div class="input-group">
                            <label for="confirm-password">Confirm Password</label>
                            <input type="password" id="confirm-password" name="confirm-password" required>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="input-group">
                            <label for="dob">Date of Birth</label>
                            <input type="date" id="dob" name="dob" required>
                        </div>
                        <div class="input-group">
                            <label for="gender">Gender</label>
                            <select id="gender" name="gender" required>
                                <option value="M">Male</option>
                                <option value="F">Female</option>
                                <option value="O">Other</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="input-group">
                            <label for="address">Address</label>
                            <textarea id="address" name="address" rows="4" required></textarea>
                        </div>
                        <div class="input-group">
                            <label for="phone">Phone Number</label>
                            <input type="tel" id="phone" name="phone" pattern="[0-9]{10}" required>
                        </div>
                    </div>
                </div>

                <button type="submit" >Register</button>
            </form>
            <div class="footer">
                <a href="login">Login</a>
                <a href="forgotPassword.jsp">Forgot password?</a>
            </div>
        </div>
    </div>

</body>
</html>
