<?php
// session_start();

// if(!isset($_SESSION["login"])) {
//     header("Location: login.php");
//     exit;
// }

function add($data)
{
  global $db;
  $db = mysqli_connect("localhost", "root", "", "pw15ipp");

  // fetch data from every element in the form
  $nost = htmlspecialchars($data["nost"]);
  $namast = htmlspecialchars($data["namast"]);
  $tglst = htmlspecialchars($data["tglst"]);
  $startst = htmlspecialchars($data["startst"]);
  $endst = htmlspecialchars($data["endst"]);
  $ketua = htmlspecialchars($data["ketua"]);
  $stattugas = htmlspecialchars($data["stattugas"]);
  $statlap = htmlspecialchars($data["statlap"]);
  $nolap = htmlspecialchars($data["nolap"]);
  $tgllap = htmlspecialchars($data["tgllap"]);
  // $filest = htmlspecialchars($data["filest"]);
  // $filekm = htmlspecialchars($data["filekm"]);
  // $filelap = htmlspecialchars($data["filelap"]);
  $anggota1 = htmlspecialchars($data["anggota1"]);
  $anggota2 = htmlspecialchars($data["anggota2"]);
  $anggota3 = htmlspecialchars($data["anggota3"]);

  // query insert data
  $query = "INSERT INTO tugas SET
      nost='$nost',
      namast='$namast',
      tglst='$tglst',
      startst='$startst',
      endst='$endst',
      ketua='$ketua',
      anggota1='$anggota1',
      anggota2='$anggota2',
      anggota3='$anggota3',
      stattugas='$stattugas',
      statlap='$statlap',
      nolap='$nolap',
      tgllap = '$tgllap',
      id='';
  INSERT INTO teamrank SET
      id_anggota='',
      all_anggota='$anggota1',
      id_tugas_fk=LAST_INSERT_ID()
      ;
  INSERT INTO teamrank SET
      id_anggota='',
      all_anggota='$anggota2'
      id_tugas_fk=LAST_INSERT_ID();
  INSERT INTO teamrank SET
      id_anggota='',
      all_anggota='$anggota3'
      id_tugas_fk=LAST_INSERT_ID();
      ";

  // INSERT INTO team VALUES (id, nost, anggota)
  //     ('','$nost','$anggota')

  mysqli_multi_query($db, $query);

  return mysqli_affected_rows($db);
}

// data submitted
if (isset($_POST["submit"])) {
  // check whether data has been added
  if (add($_POST) > 0) {
    echo "
            <script>
            alert('Data has been successfully added.');
            document.location.href = 'home.php';
            </script>
        ";
  } else {
    echo "
            <script>
            alert('Data addition failed.');
            document.location.href = 'home.php';
            </script>   
        ";
  }
}

?>

<?= $this->extend('layout/default') ?>

<?= $this->section('content') ?>
<section class="section">
  <div class="section-header">
    <h1>Rekap Penugasan</h1>
  </div>

  <div class="section-body">
    <div class="card">
      <div class="card-header">
        <h4>Tambah Data Penugasan Baru</h4>
      </div>      
      <form action="<?= base_url('rekap/add'); ?>" method="post" enctype="multipart/form">
        <div class="card-body">
          <div class="row">
            <div class="col-sm-1">
              <div class="form-group">
                <label>Kategori</label>
                <select name="kategori" class="form-control">
                  <option>-Pilih-</option>
                  <option value="audit">Audit</option>
                  <option value="eval">Evaluasi</option>
                  <option value="monit">Monitoring</option>
                  <option value="assess">Assesment</option>
                  <option value="bimtek">Bimtek/Narasumber</option>
                </select>
              </div>
            </div>
            <div class="col-sm-2">
              <div class="form-group">
                <label>Nomor ST</label>
                <input type="text" class="form-control" name="nost" placeholder="Isikan nomor penugasan ...">
              </div>
            </div>
            <div class="col-sm-9">
              <div class="form-group">
                <label>Judul Penugasan</label>
                <input type="text" class="form-control" name="namast" placeholder="Isikan judul penugasan...">
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-sm-4">
              <div class="form-group">
                <label>Tanggal ST</label>
                <div class="input-group">
                  <div class="input-group-prepend">
                    <div class="input-group-text">
                      <i class="fas fa-calendar"></i>
                    </div>
                  </div>
                  <input type="date" class="form-control datemask" placeholder="DD/MM/YYYY" name="tglst">
                </div>
              </div>
            </div>
            <div class="col-sm-4">
              <div class="form-group">
                <label>Tanggal Mulai Penugasan</label>
                <div class="input-group">
                  <div class="input-group-prepend">
                    <div class="input-group-text">
                      <i class="fas fa-calendar"></i>
                    </div>
                  </div>
                  <input type="date" class="form-control datemask" placeholder="DD/MM/YYYY" name="startst">
                </div>
              </div>
            </div>
            <div class="col-sm-4">
              <div class="form-group">
                <label>Tanggal Selesai Penugasan</label>
                <div class="input-group">
                  <div class="input-group-prepend">
                    <div class="input-group-text">
                      <i class="fas fa-calendar"></i>
                    </div>
                  </div>
                  <input type="date" class="form-control datemask" placeholder="DD/MM/YYYY" name="endst">
                </div>
              </div>
            </div>
          </div>
          <div class="form-group">
            <label>Ketua Tim</label>
            <select class="form-control" name="ketua">
              <option value="">-Pilih Ketua Tim-</option>
              <?php
              foreach ($data_pgw as $key => $value) { ?>
                <option value="<?= $value['nama_pgw']; ?>"><?= $value['nama_pgw']; ?></option>
              <?php } ?>
              ?>
            </select>
          </div>

          <div class="form-group">
            <label>Anggota Tim</label>

            <div class="row mb-1">
              <div class="col-6">
              <select class="form-control select2" name="anggota1" placeholder="Cari nama anggota tim">
              <option value="">-Pilih Anggota Tim-</option>
              <?php
              foreach ($data_pgw as $key => $value) { ?>
                <option value="<?= $value['nama_pgw']; ?>"><?= $value['nama_pgw']; ?></option>
              <?php } ?>
              ?>
              </select>
              </div>

              <div class="col-2">
                <input type="int" class="form-control" name="hari_tugas1" placeholder="Lama DL">
              </div>

              <div class="col-4">
                <input type="bigint" class="form-control" name="anggaran1" placeholder="Total uang DL (Rp, tanpa titik)">
              </div>
            </div>

            <div class="row mb-1">
              <div class="col-6">
              <select class="form-control select2" name="anggota2" placeholder="Cari nama anggota tim">
              <option value="">-Pilih Anggota Tim-</option>
              <?php
              foreach ($data_pgw as $key => $value) { ?>
                <option value="<?= $value['nama_pgw']; ?>"><?= $value['nama_pgw']; ?></option>
              <?php } ?>
              ?>
              </select>
              </div>

              <div class="col-2">
                <input type="int" class="form-control" name="hari_tugas2" placeholder="Lama DL">
              </div>

              <div class="col-4">
                <input type="bigint" class="form-control" name="anggaran2" placeholder="Total uang DL (Rp, tanpa titik)">
              </div>
            </div>

            <div class="row mb-1">
              <div class="col-6">
              <select class="form-control select2" name="anggota3" placeholder="Cari nama anggota tim">
              <option value="">-Pilih Anggota Tim-</option>
              <?php
              foreach ($data_pgw as $key => $value) { ?>
                <option value="<?= $value['nama_pgw']; ?>"><?= $value['nama_pgw']; ?></option>
              <?php } ?>
              ?>
              </select>
              </div>

              <div class="col-2">
                <input type="int" class="form-control" name="hari_tugas3" placeholder="Lama DL">
              </div>

              <div class="col-4">
                <input type="bigint" class="form-control" name="anggaran3" placeholder="Total uang DL (Rp, tanpa titik)">
              </div>
            </div>

          <div class="form-group"><label>Status Penugasan</label>
          <div class="row">
            <div class="col-8">
            <select name="stattugas" class="form-control">
              <option>-Pilih Status Penugasan-</option>
              <option value="selesai">Selesai</option>
              <option value="dl3">DL3</option>
              <option value="dl2">DL2</option>
              <option value="dl1">DL1</option>
              <option value="belum" selected>Belum Dimulai</option>
            </select>
              </div>

              <div class="col-2">
                <select class="form-control select" name="jenisdl">
                  <option value="">Jenis Perjalanan</option>
                  <option value="dl">DL</option>
                  <option value="dldk">DL-DK</option>
                  <option value="tanpabiaya">Tanpa Biaya</option>
                </select>
              </div>
          </div>
              </div>
          <!-- <div class="row">
            <div class="col-sm-6">
            <div class="form-group">
              <label>Upload File Laporan</label>
              <input type="file" class="form-control" name="filelap">
            </div>
          </div>
            <div class="col-sm-6">
              <div class="form-group">
                <label>Tanggal Selesai Laporan</label>
                <div class="input-group">
                  <div class="input-group-prepend">
                    <div class="input-group-text">
                      <i class="fas fa-calendar"></i>
                    </div>
                  </div>
                  <input type="date" class="form-control datemask" placeholder="DD/MM/YYYY" name="tgllap">
                </div>
              </div>
            </div>
          </div> -->
          <div class="row">
            <div class="col-sm-4">
              <div class="form-group">
                <label>Upload File Laporan</label>
                <div class="input-group">
                  <div class="input-group-prepend">
                    <div class="input-group-text">
                    </div>
                  </div>
                  <input type="file" class="form-control" name="filelap">
                </div>
              </div>
            </div>
            <div class="col-sm-4">
              <div class="form-group">
                <label>Nomor Laporan</label>
                <div class="input-group">
                  <div class="input-group-prepend">
                    <div class="input-group-text">
                    </div>
                  </div>
                  <input type="text" class="form-control" name="nolap" placeholder="Isikan nomor laporan...">
                </div>
              </div>
            </div>
            <div class="col-sm-3">
              <div class="form-group">
                <label>Tanggal Selesai Laporan</label>
                <div class="input-group">
                  <div class="input-group-prepend">
                    <div class="input-group-text">
                      <i class="fas fa-calendar"></i>
                    </div>
                  </div>
                  <input type="date" class="form-control datemask" placeholder="DD/MM/YYYY" name="tgllap">
                </div>
              </div>
            </div>
          </div>
          <div class="form-group">
            <label for="simpulan">Example textarea</label>
            <textarea class="form-control" id="simpulan" rows="3" placeholder="Ketik kesimpulan laporan di sini." name="simpulan"></textarea>
          </div>
          <div class="form-group">
            <label for="saran">Example textarea</label>
            <textarea class="form-control" id="saran" rows="3" placeholder="Ketik saran laporan di sini." name="saran"></textarea>
          </div>
          <button class="btn btn-primary" name="submit">Submit</button>
      </form>
</section>
<?= $this->endSection() ?>