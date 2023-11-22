<?php
// session_start();

// if(!isset($_SESSION["login"])) {
//     header("Location: login.php");
//     exit;
// }

// connect to database


function query($query)
{
  global $db;
  $db = mysqli_connect("localhost", "root", "", "pw15ipp");
  $result = mysqli_query($db, $query);
  $rows = [];
  while ($row = mysqli_fetch_array($result)) {
    $rows[] = $row;
  }
  return $rows;
}

$penugasan = query("SELECT * FROM tugas ORDER BY nost ASC");

?>

<?= $this->extend('layout/default') ?>

<?= $this->section('content') ?>
<section class="section">
  <div class="section-header">
    <h1>Dashboard Monitoring</h1>
  </div>

  <div class="section-header">
    <div class="col-lg-4">
      <div class="card card-statistic-1">
        <div class="card-icon bg-primary">
          <i class="far fa-bookmark fa-lg"></i>
        </div>
        <div class="card-wrap">
          <div class="card-header">
            <h2><a class="nav-link" href="<?= site_url('Profile') ?>">Profiling Pegawai</a></h2>
          </div>
        </div>
      </div>
    </div>
    <div class="col-lg-4">
      <div class="card card-statistic-1">
        <div class="card-icon bg-primary">
          <i class="far fa-star fa-lg"></i>
        </div>
        <div class="card-wrap">
          <div class="card-header">
            <h2><a class="nav-link" href="<?= site_url('Rating') ?>">Rating Performance</a></h2>
          </div>
        </div>
      </div>
    </div>
    <div class="col-lg-4">
      <div class="card card-statistic-1">
        <div class="card-icon bg-primary">
          <i class="fa-solid fa-envelope-open-text fa-2xl" style="color: white;"></i>
        </div>
        <div class="card-wrap">
          <div class="card-header">
            <h2><a class="nav-link" href="<?= site_url('Survey') ?>">Survey</a></h2>
          </div>
        </div>
      </div>
    </div>
  </div>

  <div class="section-body">
    <div class="row">
      <div class="col-lg-3 col-md-6 col-sm-6 col-12">
        <div class="card card-statistic-1">
          <div class="card-icon bg-primary">
            <i class="far fa-envelope"></i>
          </div>
          <div class="card-wrap">
            <div class="card-header">
              <h4>Total Penugasan</h4>
            </div>
            <div class="card-body">
              <?= $jmltugas; ?>
            </div>
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-md-6 col-sm-6 col-12">
        <div class="card card-statistic-1">
          <div class="card-icon bg-danger">
            <i class="fas fa-calendar-week"></i>
          </div>
          <div class="card-wrap">
            <div class="card-header">
              <h4>Penugasan Hari ini</h4>
            </div>
            <div class="card-body">
              <?= $tugasToday; ?>
            </div>
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-md-6 col-sm-6 col-12">
        <div class="card card-statistic-1">
          <div class="card-icon bg-warning">
            <i class="fas fa-calendar"></i>
          </div>
          <div class="card-wrap">
            <div class="card-header">
              <h4>Penugasan Bulan ini</h4>
            </div>
            <div class="card-body">
              <?= $tugasMonth; ?>
            </div>
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-md-6 col-sm-6 col-12">
        <div class="card card-statistic-1">
          <div class="card-icon bg-success">
            <i class="fas fa-circle"></i>
          </div>
          <div class="card-wrap">
            <div class="card-header">
              <h4>Penugasan Belum Selesai</h4>
            </div>
            <div class="card-body">
              <?= $tugasBelum; ?>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="card">
      <div class="card-header">
        <h4>Daftar Penugasan</h4>
      </div>
      <div class="card-body p-0">
        <div class="table-responsive table-invoice">
          <table class="table table-striped">
            <tbody>
              <tr>
                <th>Nomor ST</th>
                <th>Nama Penugasan</th>
                <th>Tanggal ST</th>
                <th>Ketua Tim</th>
                <th>Status Penugasan</th>
                <th>Status Laporan</th>
                <!-- <th>Aksi</th> -->
              <?php $i = 1; ?>
              <?php foreach ($penugasan as $row) : ?>
                <tr>
                  <td><?= $row["nost"] ?></td>
                  <td><?= $row["namast"] ?></td>
                  <td><?= $row["tglst"] ?></td>
                  <td><?= $row["ketua"] ?></td>
                  <td>
                  <?php
                    $status = $row["stattugas"];
                    if ($status == 'selesai') {
                      echo "<span class='badge badge-success'>$status</span>";
                    } elseif ($status == 'dl3') {
                      echo "<span class='badge badge-info'>$status</span>";
                    } elseif ($status == 'dl2') {
                      echo "<span class='badge badge-warning'>$status</span>";
                    } elseif ($status == 'dl1') {
                      echo "<span class='badge badge-secondary'>$status</span>";
                    } elseif ($status == 'belum') {
                      echo "<span class='badge badge-danger'>$status</span>";
                    }
                  ?>
                  </td>
                  <td>
                  <?php
                  $filelap = $row["filelap"];
                  if ($filelap == 0) {
                    echo "<span class='badge badge-danger'>Belum Selesai</span>";
                  } else {
                    echo "<span class='badge badge-success'>Selesai</span>";
                  }
                  ?>
                  </td>
                  <!-- <td>
                    <a href="#" class="btn btn-primary">Detail</a>
                  </td> -->
                </tr>
              <?php endforeach; ?>
            </tbody>
          </table>
        </div>
      </div>

    </div>
    <div class="row">
      <div class="col-lg-6 col-md-6 col-12">
        <div class="card">
          <div class="card-header">
            <h4>Progress Laporan</h4>
            <div class="card-header-action">
              <form>
                <div class="input-group">
                  <input type="text" class="form-control" placeholder="Search">
                  <div class="input-group-btn">
                    <button class="btn btn-primary"><i class="fas fa-search"></i></button>
                  </div>
                </div>
              </form>
            </div>
          </div>
          <div class="card-body p-0">
            <div class="table-responsive">
              <table class="table table-striped">
                <tbody>
                  <tr>
                    <th>Laporan</th>
                    <th>Ketua Tim</th>
                    <th>Deadline</th>
                    <th>Status</th>
                  </tr>
                    <td><?= $row["nolap"]; ?></td>
                    <td><?= $row["ketua"]; ?></td>
                    <td><?= $row["endst"]; ?></td>
                    <td>
                    <?php
                      $filelap = $row["filelap"];
                      if ($filelap == 0) {
                        echo "<span class='badge badge-danger'>Belum Selesai</span>";
                      } else {
                        echo "<span class='badge badge-success'>Selesai</span>";
                      }
                    ?>
                    </td>
                </tbody>
              </table>
            </div>
          </div>
        </div>
        <div class="card">
          <div class="card-header">
            <h4>Jumlah Penugasan Aktif</h4>
            <div class="card-header-action dropdown">
              <a href="#" data-toggle="dropdown" class="btn dropdown-toggle" aria-expanded="false">Periode</a>
              <ul class="dropdown-menu dropdown-menu-sm dropdown-menu-right" x-placement="bottom-end" style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(-124px, 31px, 0px);">
                <li class="dropdown-title">Pilih Bulan</li>
                <li><a href="#" class="dropdown-item">Januari</a></li>
                <li><a href="#" class="dropdown-item">Februari</a></li>
                <li><a href="#" class="dropdown-item">Maret</a></li>
                <li><a href="#" class="dropdown-item">April</a></li>
                <li><a href="#" class="dropdown-item">Mei</a></li>
                <li><a href="#" class="dropdown-item">Juni</a></li>
                <li><a href="#" class="dropdown-item">Juli</a></li>
                <li><a href="#" class="dropdown-item">Agustus</a></li>
                <li><a href="#" class="dropdown-item">September</a></li>
                <li><a href="#" class="dropdown-item">Oktober</a></li>
                <li><a href="#" class="dropdown-item">November</a></li>
                <li><a href="#" class="dropdown-item">Desember</a></li>
              </ul>
            </div>
          </div>
          <div class="card card-statistic-2">
            <div class="card-stats">
              <div class="card-stats-items">
                <div class="card-stats-item">
                  <div class="card-stats-item-count">1</div>
                  <div class="card-stats-item-label">Perencanaan</div>
                </div>
                <div class="card-stats-item">
                  <div class="card-stats-item-count">4</div>
                  <div class="card-stats-item-label">Pelaksanaan</div>
                </div>
                <div class="card-stats-item">
                  <div class="card-stats-item-count">0</div>
                  <div class="card-stats-item-label">Pelaporan</div>
                </div>
              </div>
            </div>
            <div class="card-icon shadow-primary bg-primary">
              <i class="fas fa-archive"></i>
            </div>
            <div class="card-wrap">
              <div class="card-header">
                <h4>Total Penugasan Aktif</h4>
              </div>
              <div class="card-body">
                5
              </div>
            </div>
          </div>
        </div>
        <div class="card">
          <div class="card-header">
            <h4>Jumlah Penugasan PFA</h4>
            <div class="card-header-action dropdown">
              <a href="#" data-toggle="dropdown" class="btn dropdown-toggle" aria-expanded="false">Periode</a>
              <ul class="dropdown-menu dropdown-menu-sm dropdown-menu-right" x-placement="bottom-end" style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(-124px, 31px, 0px);">
                <li class="dropdown-title">Pilih Bulan</li>
                <li><a href="#" class="dropdown-item">Januari</a></li>
                <li><a href="#" class="dropdown-item">Februari</a></li>
                <li><a href="#" class="dropdown-item">Maret</a></li>
                <li><a href="#" class="dropdown-item">April</a></li>
                <li><a href="#" class="dropdown-item">Mei</a></li>
                <li><a href="#" class="dropdown-item">Juni</a></li>
                <li><a href="#" class="dropdown-item">Juli</a></li>
                <li><a href="#" class="dropdown-item">Agustus</a></li>
                <li><a href="#" class="dropdown-item">September</a></li>
                <li><a href="#" class="dropdown-item">Oktober</a></li>
                <li><a href="#" class="dropdown-item">November</a></li>
                <li><a href="#" class="dropdown-item">Desember</a></li>
              </ul>
            </div>
          </div>
          <div class="card-body p-0">
            <div class="table-responsive">
              <table class="table table-striped">
                <tbody>
                  <tr>
                    <th>No</th>
                    <th>Nama</th>
                    <th>Jumlah Penugasan</th>
                  </tr>
                  <tr>
                    <td>1</td>
                    <td class="font-weight-600">Chika Salsabila</td>
                    <td>4</td>
                  </tr>
                  <tr>
                    <td>2</td>
                    <td class="font-weight-600">Almirah Melati Meiriska</td>
                    <td>3</td>
                  </tr>
                  <tr>
                    <td>3</td>
                    <td class="font-weight-600">Siti Kusmini</td>
                    <td>1</td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>

      <div class="col-lg-6 col-md-6 col-12">
        <div class="card">
          <div class="card-header">
            <h4>Tren Penugasan</h4>
          </div>
          <div class="card-body">
            <div class="mb-4">
              <div class="text-small float-right font-weight-bold text-muted">9</div>
              <div class="font-weight-bold mb-1">Evaluasi</div>
              <div class="progress" data-height="3" style="height: 3px;">
                <div class="progress-bar" role="progressbar" data-width="45%" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%;"></div>
              </div>
            </div>

            <div class="mb-4">
              <div class="text-small float-right font-weight-bold text-muted">4</div>
              <div class="font-weight-bold mb-1">Audit</div>
              <div class="progress" data-height="3" style="height: 3px;">
                <div class="progress-bar" role="progressbar" data-width="20%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100" style="width: 67%;"></div>
              </div>
            </div>

            <div class="mb-4">
              <div class="text-small float-right font-weight-bold text-muted">2</div>
              <div class="font-weight-bold mb-1">Monitoring</div>
              <div class="progress" data-height="3" style="height: 3px;">
                <div class="progress-bar" role="progressbar" data-width="10%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100" style="width: 58%;"></div>
              </div>
            </div>

            <div class="mb-4">
              <div class="text-small float-right font-weight-bold text-muted">2</div>
              <div class="font-weight-bold mb-1">Reviu</div>
              <div class="progress" data-height="3" style="height: 3px;">
                <div class="progress-bar" role="progressbar" data-width="10%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100" style="width: 36%;"></div>
              </div>
            </div>

            <div class="mb-4">
              <div class="text-small float-right font-weight-bold text-muted">3</div>
              <div class="font-weight-bold mb-1">Lainnya</div>
              <div class="progress" data-height="3" style="height: 3px;">
                <div class="progress-bar" role="progressbar" data-width="15%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100" style="width: 28%;"></div>
              </div>
            </div>
          </div>
        </div>
        <div class="card">
          <div class="card-header">
            <h4 class="d-inline">Status PFA</h4>
            <div class="card-header-action">
              <a href="#" class="btn btn-danger">View All</a>
            </div>
          </div>
          <div class="card-body">
            <ul class="list-unstyled list-unstyled-border">
              <li class="media">
                <img class="mr-3 rounded-circle" width="50" src="<?= base_url() ?>/template/assets/img/avatar/avatar-5.png" alt="avatar">
                <div class="media-body">
                  <div class="badge badge-pill badge-warning mb-1 float-right">Penyusunan Laporan</div>
                  <h6 class="media-title"><a href="#">Chika Salsabila</a></h6>
                  <div class="text-small text-muted">Calon Auditor Pelaksana</div>
                </div>
              </li>
              <li class="media">
                <img class="mr-3 rounded-circle" width="50" src="<?= base_url() ?>/template/assets/img/avatar/avatar-4.png" alt="avatar">
                <div class="media-body">
                  <div class="badge badge-pill badge-success mb-1 float-right">Dalam Penugasan</div>
                  <h6 class="media-title"><a href="#">Almirah Melati Meiriska</a></h6>
                  <div class="text-small text-muted">Calon Auditor Pelaksana</div>
                </div>
              </li>
              <li class="media">
                <img class="mr-3 rounded-circle" width="50" src="<?= base_url() ?>/template/assets/img/avatar/avatar-1.png" alt="avatar">
                <div class="media-body">
                  <div class="badge badge-pill badge-danger mb-1 float-right">Tidak Dalam Penugasan</div>
                  <h6 class="media-title"><a href="#">Siti Kusmini</a></h6>
                  <div class="text-small text-muted">Auditor Pelaksana</div>
                </div>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<?= $this->endSection() ?>