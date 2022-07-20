<?php 

    include '../connection/koneksi.php';

    error_reporting(0);

    session_start();

    if (isset($_SESSION['username']) AND isset($_SESSION['password'])) {
        header("Location: ../application/home.php");
    }

    if (isset($_POST['submit'])) {
        $username = $_POST['username'];
        $password = md5($_POST['password']);

        $sql = "SELECT * FROM users WHERE username='$username' AND password='$password'";
        $result = mysqli_query($conn, $sql);
            if ($result->num_rows > 0) {
                $row = mysqli_fetch_assoc($result);
                $_SESSION['username'] = $row['username'];
                $_SESSION['password'] = $row['password'];

                header("Location: ../application/home.php");
            } else {
                echo "<script>alert('Email atau password Anda salah. Silahkan coba lagi!')</script>";
            }
        }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Dokumentasi API</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="../asset/css/style.css">
</head>
<body>

    <div class="main">

        <section class="sign-in">
            <div class="container">
                <div class="signin-content">
                    <div class="signin-image">
                        <figure><img src="../asset/images/code.png" alt="sing up image"></figure>
                        <a href="../auth/register.php" class="signup-image-link">Buat akun?</a>
                    </div>

                    <div class="signin-form">
                        <h2 class="form-title">Sign in</h2>
                        <form  method="POST" class="register-form" id="login-form">
                            <div class="form-group">
                                <label for="your_name"><img src="../asset/images/hacker.png"></label>
                                <input type="text" name="username" id="username" placeholder="Username" value="<?php echo $username; ?>" required>
                            </div>
                            <div class="form-group">
                                <label for="your_pass"><img src="../asset/images/password.png"></i></label>
                                <input type="password" name="password" id="password" placeholder="Password" value="<?php echo $_POST['password']; ?>" required>
                            </div>
                            <div class="form-group form-button">
                                <input type="submit" name="submit" id="submit" class="form-submit" value="Log in"/>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </section>

    </div>

    <!-- JS -->
    <script src="asset/js/main.js"></script>
</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>