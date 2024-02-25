<?php $this->load->view('template/header');
$this->load->view('template/menu')?>
<div class="marketing">
  <?php $this->load->view('template/pathway')?>
  <div class="featurette-divider"></div>
  <div class="container">
  <b> » Silahkan mengunjungi portal resmi website SAKTI untuk mendapatkan info terbaru dan terkini mengenai dokumen yang diperlukan. </b> <br>
  Klik Disini : <a href="https://disdukcapil.kedirikota.go.id/sakti/">Sistem Administrasi Kependudukan Berbasis Teknologi Informasi [ SAKTI ]</a>
  <br>
  Anda juga dapat menguduh dokumen yang diperlukan melalui website ini di Menu Media/Download.
  <br><br>
    <div class="row">
      <?php $row = $jp->row_array()?>
      <!-- Blog Entries Column -->
      <div class="col-md-8">
       <h3 class="p-title">Jenis Pelayanan</h3>
       <!-- Post Content -->
       <div class="tab">
        <?php
$x = 0;
foreach ($jp->result_array() as $i):
	$x++;
	?>
				         <button class="tablinks" onclick="openCity(event, '<?php echo $i["id"] ?>')" id="<?php if ($x == 1) {
		echo 'defaultOpen';}?>"><?php echo $i['judul'] ?></button>
				        <?php endforeach;?>
      </div>
      <?php
foreach ($jp->result_array() as $x):
?>
        <div id="<?php echo $x['id'] ?>" class="tabcontent">
          <h3><?php echo $x['judul'] ?></h3>
          <p><?php echo $x['isi'] ?></p>
        </div>
      <?php endforeach;?>
      <hr>
    </div>

    <!-- Sidebar Widgets Column -->
    <div class="col-md-4">
     <?php $this->load->view('template/widget')?>

   </div>

 </div>
</div>

</div>
<!-- end feature yo-->
<br>
<br>
<br>
<br>
<br>
<!-- FOOTER -->
<?php $this->load->view('template/footer')?>
