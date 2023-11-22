<?= $this->extend('layout/default') ?>

<?= $this->section('content') ?>
<section class="section">
    <div class="section-header">
        <h1>Rekap Penugasan</h1>
    </div>

    <div class="section-body">
        <div class="card">
            <div class="card-header">
                <h4>Data Penugasan Baru</h4>
                <div class="card-header-action">
                    <a href="<?= base_url('rekap'); ?>" class="btn btn-sm btn-info text-right text-end">Tambah Data</a>
                </div>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-striped" id="table-1">
                        <thead>
                            <tr>
                                <th style="display:none">ID</th>
                                <th>Kategori</th>
                                <th>Nomor ST</th>
                                <th>Nama Penugasan</th>
                                <th>Tanggal ST</th>
                                <th>Ketua Tim</th>
                                <th>Anggota Tim</th>
                                <th>Status Penugasan</th>
                                <th>Status Laporan</th>
                                <th width="10%">Aksi</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            $i = 1;
                            foreach ($data_rekap as $row) : ?>
                                <tr>
                                    <td style="display:none"><?= $row["id"]; ?></td>
                                    <td>
                                        <?php
                                        $status = $row["kategori"];
                                        if ($status == 'audit') {
                                            echo "Audit";
                                        } elseif ($status == 'eval') {
                                            echo "Evaluasi";
                                        } elseif ($status == 'monit') {
                                            echo "Monitoring";
                                        } elseif ($status == 'assess') {
                                            echo "Assessment";
                                        } elseif ($status == 'bimtek') {
                                            echo "Bimtek/Narasumber";
                                        }
                                        ?>
                                    </td>
                                    <td><?= $row["nost"] ?></td>
                                    <td><?= $row["namast"] ?></td>
                                    <td><?= $row["tglst"] ?></td>
                                    <td><?= $row["ketua"] ?></td>
                                    <td>
                                        <p><?= $row["anggota1"]; ?></p>
                                        <p><?= $row["anggota2"]; ?></p>
                                        <p><?= $row["anggota3"]; ?></p>
                                    </td>
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
                                    <td>
                                        <a href="<?= base_url('rekap/edit/' . $row["id"]); ?>" class="btn btn-warning btn-sm">
                                        edit
                                        </a>
                                        <a href="<?= base_url('rekap/delete/' . $row["id"]); ?>" class="btn btn-danger btn-sm">
                                        del
                                        </a>
                                        <a href="<?= base_url('rekap/detail/'. $row["id"]); ?>" class="btn btn-primary btn-sm">
                                        info
                                        </a>
                                    </td>
                                </tr>
                            <?php endforeach; ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</section>

<?= $this->endSection() ?>