       <div id="left">
            <ul id="menu" class="collapse">
                <li class="panel active"><a href="index.php"><i class="icon-home"></i> Dashboard</a></li>
                <li><a href="?menu=pasien"><i class="icon-paper-clip"> </i> Pasien</a></li>
                <li><a href="?menu=laborat"><i class="icon-paper-clip"></i> Laboratorium</a></li>
                <li><a href="?menu=tindakan"><i class="icon-paper-clip"></i> Tindakan</a></li>
                <li><a href="?menu=obat"><i class="icon-paper-clip"></i> Obat-obatan</a></li>
                <li><a href="?menu=kunjungan"><i class="icon-paper-clip"></i> Kunjungan</a></li>
                <li><a href="?menu=dokter"><i class="icon-paper-clip"></i> Dokter</a></li>
                <li><a href="?menu=poliklinik"><i class="icon-paper-clip"></i> Polklinik</a></li>
                <li><a href="?menu=rekam"><i class="icon-paper-clip"></i> Rekam Medis</a></li>
                <li><a href="?menu=pelayanan"><i class="icon-paper-clip"></i> Pelayanan <span class="badge badge-warning" data-container="body">New</span></a></li>
                <li><a href="?menu=user"><i class="icon-user "></i> Daftar User</a></li>
            </ul>
        </div>
		
		
		<div id="content">
            <div class="inner">
                <div class="row">
                    <div class="col-lg-12">
						<h1>Sistem Informasi Rumah Sakit Admin</h1>
                    </div>
                </div>
                <hr/>
                 <!--BLOCK SECTION -->
                 <div class="row">
                    <div class="col-lg-12">
						<?php
						if($_GET["menu"]){
							include_once("load.php");
						}else{
							echo "<div class='col-lg-12'>
										<div class='panel panel-default'>
											<div class='panel-heading'>
												Tentang Aplikasi
											</div>
											<div class='panel-body'>
												<ul class='nav nav-tabs'>
													<li class='active'><a href='#home' data-toggle='tab'>Home</a>
													</li>
													<li><a href='#profile' data-toggle='tab'>Profil</a>
													</li>
													<li><a href='#messages' data-toggle='tab'>Pesan</a>
													</li>
												</ul>

												<div class='tab-content'>
													<div class='tab-pane fade in active' id='home'>
													<center>
														<p><img src='../img/rs.png' class='img-responsive' alt='Header SIRS'/></p></center>
													</div>
													<div class='tab-pane fade' id='profile'>
														<blockquote>
															<table><tr><td align='left' width='200px'>
															Nama Aplikasi</td><td>: Aplikasi Sistem Informasi Rumah Sakit</td></tr>
															<tr><td align='left'>Nama Pembuat</td><td>: Heny Nugraheny</td></tr>
															<tr><td align='left'>Alamat</td><td>: Yogyakarta</td></tr>
															</table>
														</blockquote>
													</div>
													<div class='tab-pane fade' id='messages'>
														Assalamu'alaikum WR.WB<p>
														Hai..<p>
														Selamat Datang di Sistem Informasi Rumah Sakit, aplikasi ini dibuat untuk menguji kemmapuan saya (Heny) dan sebagai kelengkapan matakuliah Sistem Informasi Terdistribusi.<p>
														Semoga aplikasi ini bermanfaat dan mudah dikembangkan.<p>
														Terimakasih.. Wassalamu'alaikum WR.WB<p>
													</div>
													
												</div>
											</div>
										</div>
									</div>";
						}?>
					</div>
                </div>
                  <!--END BLOCK SECTION -->
                <hr />
            </div>
        </div>
       <!-- <li><a href='#kontak' data-toggle='tab'>Kontak</a></li>
		<div class='tab-pane fade' id='kontak'>
														Untuk kepentingan pengembangan aplikasi agar lebih baik dan lebih bermanfaat. Saya mengharapkan ada kritik dan saran yang membangun untuk kemajuan SIRS ini<p>
														Anda bisa memberikan kritik dan saran di<p>
														<table><tr><td><a href='http://facebook.com/ogis.katana/'>
														<img src='../img/fb.png' class='img-responsive' alt='Inbox Facebook'/></a></td><td> Maful Prayoga Arnandi</td></tr>
														<tr><td><a href='http://twitter.com/ogis_katana/'>
														<img src='../img/tw.png' class='img-responsive' alt='Inbox Facebook'/></a></td><td> @ogis_katana</td></tr>
														<tr><td>
														<img src='../img/bbm.png' class='img-responsive' alt='Inbox Facebook'/></td><td> 73DE04DF</td></tr>
														</table>
													</div>--!>