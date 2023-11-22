<?= $this->extend('layout/default') ?>

<?= $this->section('content') ?>
<section class="section">
  <div class="section-header">
    <h1>Rekap Penugasan</h1>
  </div>

  <div class="section-body">
    <div class="card">
      <div class="card-header">
        <h2 class="mt-2">Informasi <?= $data_tugas['namast']; ?></h2>
</div>
<div class="card-body">
        <h4 class="mt-2">Nomor ST <?= $data_tugas['nost']; ?></h4>
</div>
      </div>

    <div class="container">
        <div class="row">
            <div class="col">
            <table class="table table-hover w-auto">
  <thead>
    <tr>
      <th scope="col">Indikator</th>
      <th scope="col">Detail</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">Kategori</th>
      <td colspan="2"><?= $data_tugas['kategori']; ?></td>
    </tr>
    <tr>
      <th scope="row">Nomor ST</th>
      <td colspan="2"><?= $data_tugas['nost']; ?></td>
    </tr>
    <tr>
      <th scope="row">Tanggal ST</th>
      <td colspan="2"><?= $data_tugas['tglst']; ?></td>
    </tr>
    <tr>
      <th scope="row">Tanggal Mulai</th>
      <td colspan="2"><?= $data_tugas['startst']; ?></td>
    </tr>
    <tr>
      <th scope="row">Tanggal Selesai</th>
      <td colspan="2"><?= $data_tugas['endst']; ?></td>
    </tr>
    <tr>
      <th scope="row">Ketua Tim</th>
      <td colspan="2"><?= $data_tugas['ketua']; ?></td>
    </tr>
    <tr>
      <th scope="row">Anggota Tim</th>
      <td colspan="2"><?= $data_tugas['anggota1']; ?>, <?= $data_tugas['anggota2']; ?>, <?= $data_tugas['anggota3']; ?></td>
    </tr>
    <tr>
      <th scope="row">Total Biaya Penugasan</th>
      <th scope="row">Belum ada biaya penugasan</th>
    </tr>
    <tr>
      <th scope="row">Total Hari Perjalanan</th>
      <th scope="row">Belum ada data hari perjalanan</th>
    </tr>
    <tr>
      <th scope="row">Status Penugasan</th>
      <td colspan="2"><?= $data_tugas['stattugas']; ?></td>
    </tr>
    <tr>
      <th scope="row">File ST dan KM</th>
      <td colspan="2">File ST belum diupload</td>
    </tr>
    <tr><th></th><td colspan="2">File KM belum diupload</td></tr>
    <tr>
      <th scope="row">Nomor Laporan</th>
      <td colspan="2">Belum ada nomor laporan</td>
    </tr>
    <tr>
      <th scope="row">File Laporan</th>
      <td colspan="2">File laporan belum diupload</td>
    </tr>
    <tr>
      <th scope="row">Kesimpulan Laporan</th>
      <td colspan="2">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</td>
    </tr>
    <tr>
      <th scope="row">Saran Laporan</th>
      <td colspan="2">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</td>
    </tr>
  </tbody>
</table>
            </div>
        </div>
    </div>

    <li><a class="nav-link" href="<?= site_url('rekap/data') ?>"><i class="far fa-file-alt text-info"></i> <span>Kembali ke Rekap Penugasan</span></a></li>


</section>

<?= $this->endSection() ?>