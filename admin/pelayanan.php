<?php
include_once("../library/koneksi.php");
#untuk paging (pembagian halamanan)
$row = 20;
$hal = isset($_GET['hal']) ? $_GET['hal'] : 0;
$pageSql = "SELECT * FROM assesments";
$pageQry = mysql_query($pageSql, $server) or die ("error paging: ".mysql_error());
$jml	 = mysql_num_rows($pageQry);
$max	 = ceil($jml/$row);
?>
<a href="?menu=assesment_add" class="btn btn-primary btn-rect"><i class='icon icon-white icon-plus'></i> Tambah Data</a><p>
<div class="panel panel-default">
	<div class="panel-heading">
		Daftar Assesment
	</div>
	<div class="panel-body">
		<div class="table-responsive">
			<table class="table table-striped table-bordered table-hover">
				<thead>
                    <tr>
                        <th width="150">No Assesment</th>
						<th>Nama Pasien</th>
						<th>Tanggal Dibuat</th>
                        <th>Aksi</th>
					</tr>
				</thead>
			<?php
				$pelayananSql = "SELECT a.*, b.nm_pasien FROM assesments a LEFT JOIN pasien b ON a.no_pasien=b.no_pasien ORDER BY assesment_id DESC LIMIT $hal, $row";
				$pelayananQry = mysql_query($pelayananSql, $server)  or die ("Query Rekam Medis salah : ".mysql_error());
				$nomor  = 0; 
				while ($pelayanan = mysql_fetch_array($pelayananQry)) {
				$nomor++;
			?>
				<tbody>
					<tr>
						<td><?php echo $pelayanan['assesment_no'];?></td>
						<td><?php echo $pelayanan['nm_pasien'];?></td>
						<td><?php echo $pelayanan['created_at'];?></td>
						<td>
						  <div class='btn-group'>
						  <a href="?menu=assesment_del&aksi=hapus&id=<?php echo $pelayanan['assesment_id']; ?>" class="btn btn-xs btn-danger tipsy-kiri-atas" title="Hapus Data Ini" onclick="return confirm('ANDA YAKIN AKAN MENGHAPUS DATA PENTING INI ... ?')"><i class="icon-remove icon-white"></i></a> 
						  <a href="?menu=assesment_edit&aksi=edit&id=<?php echo $pelayanan['assesment_id']; ?>" class="btn btn-xs btn-info tipsy-kiri-atas" title='Edit Data ini'> <i class="icon-edit icon-white"></i> </a>
						  </div>
						</td>
					</tr>
				</tbody>
			<?php } ?>
					<tr>
						<td colspan="6" align="right">
						<?php
						for($h = 1; $h <= $max; $h++){
							$list[$h] = $row*$h-$row;
							echo "<ul class='pagination pagination-sm'><li><a href='?menu=pelayanan&hal=$list[$h]'>$h</a></li></ul>";
						}
						?></td>
					</tr>
			</table>
		</div>
	</div>
</div>