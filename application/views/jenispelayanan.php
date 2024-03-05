<?php $this->load->view('template/header');
$this->load->view('template/menu')?>

<style>
/* Gaya CSS untuk membuat tab responsif */
.tabcontent {
  display: none;
  padding: 15px; /* Tambahkan padding untuk memberikan ruang di sekitar konten */
  overflow-y: auto; /* Aktifkan overflow vertikal */
  max-height: 500px; /* Atur ketinggian maksimum konten tab */

  /* Penyesuaian responsif */
  @media screen and (max-width: 768px) {
    padding: 10px; /* Atur ulang padding untuk perangkat seluler */
    max-height: 200px; /* Atur ulang ketinggian maksimum untuk perangkat seluler */
  }
}

.tabcontent.active {
  display: block; /* Tampilkan tab content yang aktif */
}
</style>



<div class="marketing">
  <?php $this->load->view('template/pathway')?>
  <div class="featurette-divider"></div>
  <div class="container">
    <div class="row">
      <!-- Blog Entries Column -->
      <div class="col-md-8">
        <h3 class="p-title">Jenis Pelayanan</h3>
        <!-- Post Content -->
        <?php foreach ($jp->result_array() as $i): ?>
          <div class="row mb-3">
            <div class="col-12">
              <button class="btn btn-outline-danger w-100" onclick="toggleContent('<?php echo $i["id"] ?>')"><?php echo $i['judul'] ?></button>
            </div>
            <div class="col-12 mt-3 tabcontent" id="<?php echo $i['id'] ?>" style="display: none;">
              <h3><?php echo $i['judul'] ?></h3>
              <p><?php echo $i['isi'] ?></p>
            </div>
          </div>
        <?php endforeach; ?>
      </div>
      <div class="col-md-4">
        <!-- Sidebar Widgets Column -->
        <?php $this->load->view('template/widget') ?>
      </div>
    </div>
  </div>
</div>

<script>
  function toggleContent(id) {
    var contents = document.getElementsByClassName("tabcontent");
    for (var i = 0; i < contents.length; i++) {
      if (contents[i].id === id) {
        if (contents[i].style.display === "none") {
          contents[i].style.display = "block";
        } else {
          contents[i].style.display = "none";
        }
      } else {
        contents[i].style.display = "none";
      }
    }
  }
</script>


<!-- FOOTER -->
<?php $this->load->view('template/footer')?>
