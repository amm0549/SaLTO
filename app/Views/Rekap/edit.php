<?= $this->extend('layout/default') ?>

<?= $this->section('content') ?>
<section class="section">
  <div class="section-header">
    <h1>Rekap Penugasan</h1>
  </div>

  <div class="section-body">
    <div class="card">
      <div class="card-header">
        <h4>Edit Data Penugasan</h4>
      </div>

      <form action="<?= base_url('rekap/edit/' . $id); ?>" method="post" enctype="multipart/form">
        <div class="card-body">
          <div class="row">
          <div class="col-sm-1">
              <div class="form-group">
                <label>Kategori</label>
                <select name="kategori" class="form-control">
                <option value=""><?= $data_tugas['kategori']; ?></option>
                  <option value="audit">Audit</option>
                  <option value="eval">Evaluasi</option>
                  <option value="monit">Monitoring</option>
                  <option value="assess">Assesment</option>
                  <option value="bimtek">Bimtek/Narasumber</option>
                </select>
              </div>
            </div>
            <input type="hidden" name="id" value="<?= $data_tugas['id']; ?>" />
            <div class="col-sm-2">
              <div class="form-group">
                <label>Nomor ST</label>
                <input type="text" class="form-control" name="nost" value="<?= $data_tugas['nost']; ?>">
                </div>
            </div>
            <div class="col-sm-9">
              <div class="form-group">
                <label>Judul Penugasan</label>
                <input type="text" class="form-control" name="namast" value="<?= $data_tugas['namast']; ?>">
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
                  <input type="date" class="form-control datemask" value="<?= $data_tugas['tglst']; ?>" name="tglst">
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
                  <input type="date" class="form-control datemask" value="<?= $data_tugas['startst']; ?>" name="startst">
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
                  <input type="date" class="form-control datemask" value="<?= $data_tugas['endst']; ?>" name="endst">
                  </div>
              </div>
            </div>
          </div>
          <div class="form-group">
            <label>Ketua Tim</label>
            <select class="form-control" name="ketua">
              <option value=""><?= $data_tugas['ketua']; ?></option>
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
              <option value="<?= $data_tugas['anggota1']; ?>" selected>
              <?php
              foreach ($data_pgw as $key => $value) { ?>
                <option value="<?= $value['nama_pgw']; ?>"><?= $value['nama_pgw']; ?></option>
              <?php } ?>
              ?>
              </select>
              </div>

              <div class="col-2">
                <input type="int" value="<?= $data_tugas['hari_tugas1']; ?>" class="form-control" name="hari_tugas1" placeholder="Lama DL">
              </div>

              <div class="col-4">
                <input type="bigint" value="<?= $data_tugas['anggaran1']; ?>" class="form-control" name="anggaran1" placeholder="Total uang DL (Rp, tanpa titik)">
              </div>
            </div>

            <div class="row mb-1">
              <div class="col-6">
              <select class="form-control select2" name="anggota2" placeholder="Cari nama anggota tim">
              <option value="<?= $data_tugas['anggota2']; ?>" selected>
              <?php
              foreach ($data_pgw as $key => $value) { ?>
                <option value="<?= $value['nama_pgw']; ?>"><?= $value['nama_pgw']; ?></option>
              <?php } ?>
              ?>
              </select>
              </div>

              <div class="col-2">
                <input type="int" value="<?= $data_tugas['hari_tugas2']; ?>" class="form-control" name="hari_tugas2" placeholder="Lama DL">
              </div>

              <div class="col-4">
                <input type="bigint" value="<?= $data_tugas['anggaran2']; ?>" class="form-control" name="anggaran2" placeholder="Total uang DL (Rp, tanpa titik)">
              </div>
            </div>

            <div class="row mb-1">
              <div class="col-6">
              <select class="form-control select2" name="anggota3" placeholder="Cari nama anggota tim">
              <option value="<?= $data_tugas['anggota3']; ?>" selected>
              <?php
              foreach ($data_pgw as $key => $value) { ?>
                <option value="<?= $value['nama_pgw']; ?>"><?= $value['nama_pgw']; ?></option>
              <?php } ?>
              ?>
              </select>
              </div>

              <div class="col-2">
                <input type="int" value="<?= $data_tugas['hari_tugas3']; ?>" class="form-control" name="hari_tugas3" placeholder="Lama DL">
              </div>

              <div class="col-4">
                <input type="bigint" value="<?= $data_tugas['anggaran3']; ?>" class="form-control" name="anggaran3" placeholder="Total uang DL (Rp, tanpa titik)">
              </div>
            </div>


          <div class="form-group">
            <label>Status Penugasan</label>
            <select name="stattugas" class="form-control">
              <option value=""><?= $data_tugas['stattugas']; ?></option>
              <option value="selesai">Selesai</option>
              <option value="dl3" selected>DL3</option>
              <option value="dl2">DL2</option>
              <option value="dl1">DL1</option>
              <option value="belum">Belum Dimulai</option>
            </select>
          </div>

          <div class="row">
            <div class="col-sm-4">
              <div class="form-group">
                <label>Upload File Laporan</label>
                <div class="input-group">
                  <div class="input-group-prepend">
                    <div class="input-group-text">
                    </div>
                  </div>
                  <input type="file" class="form-control" name="filelap" value="<?= $data_tugas['filelap']; ?>">
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
                  <input type="text" class="form-control" name="nolap" placeholder="Isikan nomor laporan..." value="<?= $data_tugas['nolap']; ?>">
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
                  <input type="date" class="form-control datemask" placeholder="DD/MM/YYYY" value="<?= $data_tugas['tgllap']; ?>" name="tgllap">
                </div>
              </div>
            </div>
          </div>

          <div class="form-group">
            <label for="simpulan">Kesimpulan</label>
            <textarea class="form-control" id="simpulan" rows="3" placeholder="Ketik kesimpulan laporan di sini." value="<?= $data_tugas['simpulan']; ?>" name="simpulan"></textarea>
          </div>
          <div class="form-group">
            <label for="saran">Saran</label>
            <textarea class="form-control" id="saran" rows="3" placeholder="Ketik saran laporan di sini." value="<?= $data_tugas['saran']; ?>" name="saran"></textarea>
          </div>

          <button class="btn btn-primary" name="submit">Submit</button>
      </form>
</section>

<?= $this->endSection() ?>