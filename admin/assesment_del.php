<?php
include_once("../library/koneksi.php");
if($_GET){
	if($_GET["aksi"] && $_GET["id"]){
        mysql_query("DELETE FROM assesments WHERE assesment_id='".$_GET["id"]."'");
        mysql_query("DELETE FROM assesment_items WHERE assesment_id='".$_GET["id"]."'");		
        echo "<meta http-equiv='refresh' content='0; url=?menu=pelayanan'>";
	}else{
		echo "<center><div class='alert alert-warning alert-dismissable'>
                  <button type='button' class='close' data-dismiss='alert' aria-hidden='true'>&times;</button>
					<b>Data yang dihapus tidak ada!!</b>
			</div></center>";
	}
}
?>