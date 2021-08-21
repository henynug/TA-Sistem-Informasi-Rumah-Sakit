<style>
    input[type=text], select {
        width: 500px;
        padding: 4px;
        border: 0.3px solid #aaa;
        border-radius: 4px;
        background-color: #efefef;
    }
    label {
        font-weight: normal;
    }
    .btn-submit {
        margin-top: 20px;
        padding:16px;
        width: 100%;
        color: #fff;
        background-color: #428bca;
        font-size: 16px;
        font-weight: bold;
        border-radius: 8px;
        border: 0.3px solid #aaa;
    }
</style>
<?php
include("../library/koneksi.php");
session_start();
//MAIN DATA
$d_query = mysql_query("SELECT * FROM assesments WHERE assesment_id=" . $_GET['id']);
while ($d = mysql_fetch_array($d_query)) {
    $di_array = [];
    $di_query = mysql_query("SELECT * FROM assesment_items WHERE assesment_id=" . $d['assesment_id']);
    while ($di = mysql_fetch_array($di_query)) {
        $di_array[$di['item_id']] = $di['value'];
    }
    if(isset($_POST["submit"])){
    try {
        mysql_query("UPDATE assesments SET assesment_no='".$_POST["assesment_no"]."', no_pasien='".$_POST["no_pasien"]."' WHERE assesment_id='".$_GET['id']."'");
        mysql_query("DELETE FROM assesment_items WHERE assesment_id='".$_GET['id']."'");
        foreach ($_POST['items'] as $key => $value) {
            mysql_query("INSERT INTO assesment_items SET `assesment_id`=".$_GET['id'].",`item_id`=".$key.", `value`='".$value."'");
        }
        echo "<center><div class='alert alert-success alert-dismissable'><button type='button' class='close' data-dismiss='alert' aria-hidden='true'>&times;</button><b>Berhasil menambah ke database</b></div></center>";
        echo "<meta http-equiv='refresh' content='0; url=?menu=pelayanan'>";
    } catch (\Exception $e) {
        echo "<center><div class='alert alert-danger alert-dismissable'><button type='button' class='close' data-dismiss='alert' aria-hidden='true'>&times;</button><b>".$e->getMessage()."</b></div></center>";
    }
}
function renderItem($data,$level=1){
    global $di_array;
    $h = "h6";
    $margin_left = 0;
    $margin_top = 0;
    switch ($level) {
        case 1:
            $h = "h3";
            break;
        case 2:
            $h = "h4";
            break;
        case 3:
            $h = "h5";
            break;
        case 4:
            $h = "h6";
            break;
    }
    switch ($level) {
        case 1:
            $margin_left = 0;
            $margin_top = 20;
            break;
        case 2:
            $margin_left = 30;
            break;
        case 3:
            $margin_left = 40;
            break;
        case 4:
            $margin_left = 60;
            break;
        case 5:
            $margin_left = 80;
            break;
        case 6:
            $margin_left = 100;
            break;
    }
    echo "<div style='margin-left:".$margin_left."px;margin-top:".$margin_top."px;'>";
    switch ($data['item_type']) {
        case 'text':
            echo "<".$h.">".$data['item_label']."</".$h.">";
            echo "<input type='text' name='items[".$data['item_id']."]' value='".$di_array[$data['item_id']]."' required>";
            break;
        case 'radio':
            $radiochecked = $data['item_id'] == $di_array[$data['item_parent']] ? 'checked' : '';
            echo "<input type='radio' name='items[".$data['item_parent']."]' id='radio_".$data['item_id']."' value='".$data['item_id']."' style='margin-right: 8px' ".$radiochecked."><label for='radio_".$data['item_id']."'>" . $data['item_label']."</label>";
            break;
        case 'box':
            echo "<".$h.">".$data['item_label']."</".$h.">";
            break;
        case 'level':
            $radiochecked2 = $data['item_id'] == $di_array[$data['item_parent']] ? 'checked' : '';
            echo "<input type='radio' name='items[".$data['item_parent']."]' id='level_".$data['item_id']."' value='".$data['item_id']."' style='margin-right: 8px' ".$radiochecked2."><label for='level_".$data['item_id']."'><img src='../img/" . $data['item_img']."'></label>";
            break;
        default:
            echo "<".$h.">".$data['item_label']."</".$h.">";
            
        }
    echo "</div>";
}
?>



<div class="box">
    <header>
        <h5>Edit Assesment: <?=$d['assesment_no']?></h5>
	</header>
    <div class="body">
        <form action="" method="post" class="form-horizontal">
        <h3>Nomor Assesment</h3>
        <input type="text" name="assesment_no" value="<?=$d['assesment_no']?>" required>
        <h3>Pasien</h3>
        <select name="no_pasien" required>
            <option></option>
            <?php
            $qp = "SELECT * FROM pasien";
            $pd = mysql_query($qp, $server)  or die ("Query Rekam Medis salah : " . $qp);
            while ($data_pasien = mysql_fetch_array($pd)) {
                $pasienselected = $d['no_pasien'] == $data_pasien['no_pasien'] ? 'selected': '';
                echo "<option value='".$data_pasien['no_pasien']."'  ". $pasienselected ." >".$data_pasien['nm_pasien']."</option>";
            }
            ?>
        </select>
        <?php 
        $q1 = "SELECT * FROM assesment_form_items WHERE item_parent=0";
        $lv1 = mysql_query($q1, $server) or die ("Query Rekam Medis salah : " . $q1);
        while ($data1 = mysql_fetch_array($lv1)) {
            renderItem($data1, 1);
            $q2 = "SELECT * FROM assesment_form_items WHERE item_parent=" . $data1['item_id'];
            $lv2 = mysql_query($q2, $server)  or die ("Query Rekam Medis salah : " . $q2);
            while ($data2 = mysql_fetch_array($lv2)) {
                renderItem($data2, 2);
                $q3 = "SELECT * FROM assesment_form_items WHERE item_parent=" . $data2['item_id'];
                $lv3 = mysql_query($q3, $server)  or die ("Query Rekam Medis salah : " . $q3);
                while ($data3 = mysql_fetch_array($lv3)) {
                    renderItem($data3, 3);
                    $q4 = "SELECT * FROM assesment_form_items WHERE item_parent=" . $data3['item_id'];
                    $lv4 = mysql_query($q4, $server)  or die ("Query Rekam Medis salah : " . $q4);
                    while ($data4 = mysql_fetch_array($lv4)) {
                        renderItem($data4, 4);
                        $q5 = "SELECT * FROM assesment_form_items WHERE item_parent=" . $data4['item_id'];
                        $lv5 = mysql_query($q5, $server)  or die ("Query Rekam Medis salah : " . $q5);
                        while ($data5 = mysql_fetch_array($lv5)) {
                            renderItem($data5, 5);
                        }
                    }
                }
            }
        }
        ?>
        <button type="submit" class="btn-submit" name="submit">Submit</button>
        </form>
    </div>
</div>
<?php } ?>