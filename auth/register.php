<?php 
 
    include '../connection/koneksi.php';
    
    error_reporting(0);
    
    session_start();
    
    if (isset($_SESSION['username'])) {
        header("Location: ../auth/login.php");
    }
    
    if (isset($_POST['submit'])) {
        $username = $_POST['username'];
        $email = $_POST['email'];
        $password = md5($_POST['password']);
        $cpassword = md5($_POST['cpassword']); 
    
        if ($password == $cpassword) {
            $sql = "SELECT * FROM users WHERE email='$email'";
            $result = mysqli_query($conn, $sql);
            if (!$result->num_rows > 0) {
                $sql = "INSERT INTO users (username, email, password)
                        VALUES ('$username', '$email', '$password')";
                $result = mysqli_query($conn, $sql);
                if ($result) {
                    echo "<script>alert('Selamat, registrasi berhasil!')</script>";
                    header("Location: ../auth/login.php");
                    $username = "";
                    $email = "";
                    $_POST['password'] = "";
                    $_POST['cpassword'] = "";
                } else {
                    echo "<script>alert('Woops! Terjadi kesalahan.')</script>";
                }
            } else {
                echo "<script>alert('Woops! Email Sudah Terdaftar.')</script>";
            }
            
        } else {
            echo "<script>alert('Password Tidak Sesuai')</script>";
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

    <!-- Main css -->
    <link rel="stylesheet" href="../asset/css/style.css">
</head>
<body>

    <div class="main">

        <!-- Sign up form -->
        <section class="signup">
            <div class="container">
                <div class="signup-content">
                    <div class="signup-form">
                        <h2 class="form-title">Sign up</h2>
                        <form method="POST" class="register-form">
                            <div class="form-group">
                                <label for="name"><img src="../asset/images/hacker.png"></label>
                                <input type="text" name="username" id="username" placeholder="Your Name" value="<?php echo $username; ?>" required>
                            </div>
                            <div class="form-group">
                                <label for="email"><img src="../asset/images/email.png"></i></label>
                                <input type="email" name="email" id="email" placeholder="Your Email" value="<?php echo $email; ?>" required>
                            </div>
                            <div class="form-group">
                                <label for="pass"><img src="../asset/images/password.png"></i></label>
                                <input type="password" name="password" id="password" placeholder="Password" value="<?php echo $_POST['password']; ?>" required>
                            </div>
                            <div class="form-group">
                                <label for="pass"><img src="../asset/images/password.png"></i></label>
                                <input type="password" name="cpassword" id="cpassword" placeholder="Re-Type Password" value="<?php echo $_POST['password']; ?>" required>
                            </div>
                            <div class="form-group form-button">
                                <input type="submit" name="submit" id="submit" class="form-submit" value="Register"/>
                            </div>
                        </form>
                    </div>
                    <div class="signup-image">
                        <figure><img src="../asset/images/adm.png" alt="sing up image"></figure>
                        <a href="../auth/login.php" class="signup-image-link">Sudah Punya Akun?</a>
                    </div>
                </div>
            </div>
        </section>
    </div>

    <!-- JS -->
    <script src="asset/js/main.js"></script>
</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>