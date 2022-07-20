<?php 

  
  include '../connection/koneksi.php';

  session_start();

  if(isset($_POST['submit'])){

	$username = $_POST['username'];
	$password = $_POST['password'];
	

	$sql = "SELECT * FROM users WHERE username='$username' AND password='$password'";
	$result = $conn->query($sql);

	if ($result->num_rows > 0 ){
		$_SESSION['username']=$username;
		$_SESSION['password']=$password;
	}else{
		echo "login gagal";
	}

  }

  function generate_token($username, $password)
{

    include '../connection/koneksi.php';

    $token  = md5($username . $password);

    $sql    = "UPDATE users SET key_token='$token' WHERE username='$username' AND password='$password'";
    $result = $conn->query($sql);

    if ($result) {

        $_SESSION['username'] = $username;
        $_SESSION['password'] = $password;
    } else {

        echo "login salah";
    }

    echo $token;
    return $token;
}

  
?>
<!DOCTYPE html>
<html lang="en"> 
<head>
    <title>NewsTy</title>
    
    <!-- Meta -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">   
    <link rel="shortcut icon" href="favicon.ico"> 
    
    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700&display=swap" rel="stylesheet">
    
    <!-- FontAwesome JS-->
    <script defer src="../asset/fontawesome/js/all.min.js"></script>
    

    <!-- Theme CSS -->  
	<link rel="stylesheet" href="../asset/css/bootstrap.min.css" />
	<link rel="stylesheet" href="../asset/css/glightbox.min.css" />
	<link rel="stylesheet" href="../asset/css/home.css" />
    <link id="theme-style" rel="stylesheet" href="../asset/css/theme.css">

</head> 

<body class="docs-page">    
    <header class="header fixed-top ">	    
        <div class="branding docs-branding">
            <div class="container-fluid position-relative py-2">
                <div class="docs-logo-wrapper ">
	                <div class="site-logo">
						<a class="navbar-brand" href="../application/home.php"><span class="logo-text">NewsTy</span></a>
					</div>    
                </div><!--//docs-logo-wrapper-->
            </div><!--//container-->
        </div><!--//branding-->
    </header><!--//header-->
    
    
    <div class="docs-wrapper">
	    <div id="docs-sidebar" class="docs-sidebar">
		    <nav id="docs-nav" class="docs-nav navbar">
			    <ul class="section-items list-unstyled nav flex-column pb-3">
				    <li class="nav-item section-title"><a class="nav-link scrollto active" href="#section-1"><span class="theme-icon-holder me-2"><i class="fas fa-map-signs"></i></span>NewsTy API</a></li>
				    <li class="nav-item"><a class="nav-link scrollto" href="#item-1-1">Aturan API KEY</a></li>
					<li class="nav-item"><a class="nav-link scrollto" href="#item-1-2">Daftar Kategori</a></li>
				    <li class="nav-item section-title mt-3"><a class="nav-link scrollto" href="#section-2"><span class="theme-icon-holder me-2"><i class="fas fa-arrow-down"></i></span>User API</a></li>
				    <li class="nav-item"><a class="nav-link scrollto" href="#item-2-1">API KEY</a></li>
				    <li class="nav-item section-title mt-3"><a class="nav-link scrollto" href="#section-8"><span class="theme-icon-holder me-2"><i class="fas fa-lightbulb"></i></span>Dokumentasi</a></li>
				    <li class="nav-item"><a class="nav-link scrollto" href="#item-9-1">Get All Data</a></li>
				    <li class="nav-item"><a class="nav-link scrollto" href="#item-9-2">Search Kategori</a></li>
				    <li class="nav-item"><a class="nav-link scrollto" href="#item-9-3">Search Title</a></li>
					<li class="nav-item section-title mt-3"><a class="nav-link scrollto" href="../auth/logout.php"><span class="theme-icon-holder me-2"><i class="fas fa-lightbulb"></i></span>LogOut</a></li>
			    </ul>

		    </nav><!--//docs-nav-->
	    </div><!--//docs-sidebar-->
	    <div class="docs-content">
		    <div class="container">
			    <article class="docs-article" id="section-1">
				    <header class="docs-header">
					    <section class="docs-intro">
						    <p>NewSty menyajikan berita terupdate lokal, nasional, internasional, ekonomi dan olahraga. menghadirkan jurnalisme yang mengedepankan proses klarifikasi, pengecekan, dan uji silang sebelum artikel diterbitkan sehingga berita yang diterbitkn dapat dibuktikan keaslian dan bukan Hoax .</p>
						</section><!--//docs-intro-->

						<section class="docs-section" id="item-1-1">
							<h2 class="section-heading">Aturan Penggunaan API </h2>
							<p>Dalam rangka mempermudah User menggunakan API NewsTy, kami menyusun petunjuk penggunaan API yang harus diikuti: </p>
							<ul>
								<li class="me-1">API harus digunakan dengan bijak sehingga tidak merugikan pihak NewsTy dan pihak lain manapun</li>
								<li class="me-1">Dilarang menggunakan sesuatu yang dapat merugikan pihak NewsTy seperti script otomatis yang melakukan request ke NewsTy tanpa action user</li>
								<li class="me-1">Segala Bentuk Request harus dilakukan secara langsung untuk mendapatkan hasil yang akurat</li>
							</ul>               
						</section>

						<section class="docs-section" id="item-1-2">
							<h2 class="section-heading">Daftar Kategori </h2>
							<p>Berikut Kategori yang dapat digunakan dalam pencarian berdasarkan kategori sebagai berikut : </p>
							<table class="table table-striped">
								<thead>
									<tr>
										<th scope="col">No</th>
										<th scope="col">Kategori</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row">1</th>
										<td>Pendidikan</td>
									</tr>
									<tr>
										<th scope="row">2</th>
										<td>Religi</td>
									</tr>
									<tr>
										<th scope="row">3</th>
										<td>Politik</td>
									</tr>
									<tr>
										<th scope="row">4</th>
										<td>Kesehatan</td>
									</tr>
									<tr>
										<th scope="row">5</th>
										<td>Selebriti</td>
									</tr>
									<tr>
										<th scope="row">6</th>
										<td>Internasional</td>
									</tr>
									<tr>
										<th scope="row">7</th>
										<td>Ekonomi</td>
									</tr>
								</tbody>
							</table>          
						</section>

				    </header>
					
			    </article>
			    
			    <article class="docs-article" id="section-2">
				    <header class="docs-header">
					    <?php echo "<h1 class=docs-heading> Hello ". $_SESSION['username'] . "</h1>"; ?>
					    <section class="docs-intro">
						    <p>Gunakan API Key ini untuk menggunakan API NewsTy. Untuk informasi lebih lanjut mengenai cara menggunakan API NewsTy, silakan baca dokumentasi.</p>
						</section><!--//docs-intro-->
				    </header>
				     <section class="docs-section" id="item-2-1">
						<h2 class="section-heading">API KEY  :</h2>
						<p><?php generate_token($_SESSION['username'], $_SESSION['password']); ?></p>
					</section><!--//section-->
			    </article><!--//docs-article-->
	    
			    <article class="docs-article" id="section-8">
				    <header class="docs-header">
					    <h1 class="docs-heading">Dokumentasi API </h1>
					    <section class="docs-intro">
						    <p>Dokumentasi ini menjelaskan cara mengakses layanan API NewsTy. Untuk akses API dapat dilakukan dengan cara seperti yang ada pada dokumentas. harap baca dan patuhi aturan dari Newsty </p>
						</section>

						<div class="about-five-tab">
							<nav>
								<div class="nav nav-tabs" id="nav-tab" role="tablist">
								<button class="nav-link active" id="nav-who-tab" data-bs-toggle="tab" data-bs-target="#nav-who"
									type="button" role="tab" aria-controls="nav-who" aria-selected="true">Invalid Key</button>
								<button class="nav-link" id="nav-vision-tab" data-bs-toggle="tab" data-bs-target="#nav-vision"
									type="button" role="tab" aria-controls="nav-vision" aria-selected="false">Invalid Request</button>
								</div>
							</nav>
							<div class="tab-content" id="nav-tabContent">
								<div class="tab-pane fade show active" id="nav-who" role="tabpanel" aria-labelledby="nav-who-tab">
									<div class="docs-code-block">
										<!-- ** Embed github code starts ** -->
										<script src="https://gist.github.com/MuhRezaAldiIrawan/0f7794741fd29cd3523498009ef2b34b.js"></script>
										<!-- ** Embed github code ends ** -->
									</div><!--//docs-code-block-->
								</div>
								<div class="tab-pane fade" id="nav-vision" role="tabpanel" aria-labelledby="nav-vision-tab">
								<div class="docs-code-block">
										<!-- ** Embed github code starts ** -->
										<script src="https://gist.github.com/MuhRezaAldiIrawan/c91a67e5bac7c06d58a8f38a1930232b.js"></script>
										<!-- ** Embed github code ends ** -->
									</div><!--//docs-code-block-->
								
								</div>
							</div>
						</div>

						<h5>Request Get All Data</h5>
						<div class="about-five-tab">
							<nav>
								<div class="nav nav-tabs" id="nav-tab" role="tablist">
								<button class="nav-link active" id="nav-who-tab" data-bs-toggle="tab" data-bs-target="#nav-url"
									type="button" role="tab" aria-controls="nav-url" aria-selected="true">URL</button>
								<button class="nav-link" id="nav-vision-tab" data-bs-toggle="tab" data-bs-target="#nav-parameter"
									type="button" role="tab" aria-controls="nav-parameter" aria-selected="false">Parameter</button>
								</div>
							</nav>
							<div class="tab-content" id="nav-tabContent">
								<div class="tab-pane fade show active" id="nav-url" role="tabpanel" aria-labelledby="nav-who-tab">
								<table class="table table-bordered">
									<thead>
										<tr>
										<th scope="col">Method</th>
										<th scope="col">URL</th>
										</tr>
									</thead>
									<tbody>
										<tr>
										<td>GET</td>
										<td>http://localhost/NewsTy/API/getalldata.php</td>
										</tr>
									</tbody>
								</table>
								</div>
								<div class="tab-pane fade" id="nav-parameter" role="tabpanel" aria-labelledby="nav-vision-tab">
								<table class="table table-bordered">
									<thead>
										<tr>
										<th scope="col">Method</th>
										<th scope="col">Parameter</th>
										<th scope="col">Tipe</th>
										<th scope="col">Keterangan</th>
										</tr>
									</thead>
									<tbody>
										<tr>
										<td scope="row">GET/HEAD</td>
										<td>Key</td>
										<td>String</td>
										<td>API Key</td>
										</tr>
										<tr>
										<td scope="row">GET/HEAD</td>
										<td>Android Key</td>
										<td>String</td>
										<td>Identitas Aplikasi Android</td>
										</tr>
										<tr>
										<td scope="row">GET/HEAD</td>
										<td>Ios Key</td>
										<td>String</td>
										<td>Identitas AplikasiIos</td>
										</tr>
										<tr>
										<td scope="row">GET</td>
										<td>Id</td>
										<td>String</td>
										<td>Id Berita</td>
										</tr>
									</tbody>
								</table>
								
								</div>
							</div>
						</div>

						
						<h5>Response</h5>
						
						<div class="docs-code-block">
							<!-- ** Embed github code starts ** -->
							<script src="https://gist.github.com/MuhRezaAldiIrawan/8cfa283fd039679dae0f93db25f8c96f.js"></script>
							<!-- ** Embed github code ends ** -->
						</div><!--//docs-code-block-->

						<h5>Request Search By Kategori</h5>
						<div class="about-five-tab">
							<nav>
								<div class="nav nav-tabs" id="nav-tab" role="tablist">
								<button class="nav-link active" id="nav-who-tab" data-bs-toggle="tab" data-bs-target="#nav-url-kategori"
									type="button" role="tab" aria-controls="nav-url" aria-selected="true">URL</button>
								<button class="nav-link" id="nav-vision-tab" data-bs-toggle="tab" data-bs-target="#nav-parameter-kategori"
									type="button" role="tab" aria-controls="nav-parameter" aria-selected="false">Parameter</button>
								</div>
							</nav>
							<div class="tab-content" id="nav-tabContent">
								<div class="tab-pane fade show active" id="nav-url-kategori" role="tabpanel" aria-labelledby="nav-who-tab">
								<table class="table table-bordered">
									<thead>
										<tr>
										<th scope="col">Method</th>
										<th scope="col">URL</th>
										</tr>
									</thead>
									<tbody>
										<tr>
										<td>GET</td>
										<td>http://localhost/loginregister/API/search_category.php?kategori=politik</td>
										</tr>
									</tbody>
								</table>
								</div>
								<div class="tab-pane fade" id="nav-parameter-kategori" role="tabpanel" aria-labelledby="nav-vision-tab">
								<table class="table table-bordered">
									<thead>
										<tr>
										<th scope="col">Method</th>
										<th scope="col">Parameter</th>
										<th scope="col">Tipe</th>
										<th scope="col">Keterangan</th>
										</tr>
									</thead>
									<tbody>
										<tr>
										<td scope="row">GET/HEAD</td>
										<td>Key</td>
										<td>String</td>
										<td>API Key</td>
										</tr>
										<tr>
										<td scope="row">GET/HEAD</td>
										<td>Android Key</td>
										<td>String</td>
										<td>Identitas Aplikasi Android</td>
										</tr>
										<tr>
										<td scope="row">GET/HEAD</td>
										<td>Ios Key</td>
										<td>String</td>
										<td>Identitas AplikasiIos</td>
										</tr>
										<tr>
										<td scope="row">GET</td>
										<td>Kategori</td>
										<td>String</td>
										<td>Id Kategori</td>
										</tr>
									</tbody>
								</table>
								
								</div>
							</div>
						</div>
						
						<h5>Response Sukses</h5>
						<div class="docs-code-block">
							<!-- ** Embed github code starts ** -->
							<script src="https://gist.github.com/MuhRezaAldiIrawan/0be4535d930a8fd2fc98b6df5f86f0ad.js"></script>
							<!-- ** Embed github code ends ** -->
						</div><!--//docs-code-block-->

						<h5>Request Search By Title</h5>
						<div class="about-five-tab">
							<nav>
								<div class="nav nav-tabs" id="nav-tab" role="tablist">
								<button class="nav-link active" id="nav-who-tab" data-bs-toggle="tab" data-bs-target="#nav-url-title"
									type="button" role="tab" aria-controls="nav-url" aria-selected="true">URL</button>
								<button class="nav-link" id="nav-vision-tab" data-bs-toggle="tab" data-bs-target="#nav-parameter-title"
									type="button" role="tab" aria-controls="nav-parameter" aria-selected="false">Parameter</button>
								</div>
							</nav>
							<div class="tab-content" id="nav-tabContent">
								<div class="tab-pane fade show active" id="nav-url-title" role="tabpanel" aria-labelledby="nav-who-tab">
								<table class="table table-bordered">
									<thead>
										<tr>
										<th scope="col">Method</th>
										<th scope="col">URL</th>
										</tr>
									</thead>
									<tbody>
										<tr>
										<td>GET</td>
										<td>http://localhost/loginregister/API/search_title.php?judul=anak</td>
										</tr>
									</tbody>
								</table>
								</div>
								<div class="tab-pane fade" id="nav-parameter-title" role="tabpanel" aria-labelledby="nav-vision-tab">
								<table class="table table-bordered">
									<thead>
										<tr>
										<th scope="col">Method</th>
										<th scope="col">Parameter</th>
										<th scope="col">Tipe</th>
										<th scope="col">Keterangan</th>
										</tr>
									</thead>
									<tbody>
										<tr>
										<td scope="row">GET/HEAD</td>
										<td>Key</td>
										<td>String</td>
										<td>API Key</td>
										</tr>
										<tr>
										<td scope="row">GET/HEAD</td>
										<td>Android Key</td>
										<td>String</td>
										<td>Identitas Aplikasi Android</td>
										</tr>
										<tr>
										<td scope="row">GET/HEAD</td>
										<td>Ios Key</td>
										<td>String</td>
										<td>Identitas AplikasiIos</td>
										</tr>
										<tr>
										<td scope="row">GET</td>
										<td>Judul</td>
										<td>String</td>
										<td>Id Judul</td>
										</tr>
									</tbody>
								</table>
								
								</div>
							</div>
						</div>
					
						
						<h5>Response</h5>
						
						<p>Response Sukses</p>
						<div class="docs-code-block">
							<!-- ** Embed github code starts ** -->
							<script src="https://gist.github.com/MuhRezaAldiIrawan/3716515b68468c63d08e0c6f8acfda7d.js"></script>
							<!-- ** Embed github code ends ** -->
						</div><!--//docs-code-block-->

				</div>
						
						
				    </header>
			
			    <footer class="footer">
				    <div class="container text-center py-5">
			            <small class="copyright">Made By Anything Can Do <span class="sr-only">love</span><i class="fas fa-heart" style="color: #fb866a;"></i> by <a class="theme-link" href="http://themes.3rdwavemedia.com" target="_blank">Kelompok 7</a> for developers</small>
				    </div>
			    </footer>
		    </div> 
	    </div>
    </div><!--//docs-wrapper-->
   
    
    <!-- Page Specific JS -->
	<script src="../asset/js/bootstrap.bundle.min.js"></script>
  	<script src="../asset/js/main.js"></script>
    <script src="../asset/js/highlight-custom.js"></script> 
    <script src="../asset/js/docs.js"></script> 

</body>
</html> 

