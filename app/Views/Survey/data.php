<?= $this->extend('layout/default') ?>

<?= $this->section('content') ?>
<section class="section">

<div class="section-header">
    <h1>Survey Kepuasan Stakeholder</h1>
</div>

<div class="section-body">
<div class="card-header">
        <div class="table-responsive">
            <table class="table table-borderless" id="table-survey">
                <thead>
                    <tr>
                        <th><h5>Nama Penugasan</h5></th>
                        <th><h5>Instansi</h5></th>
                        <th><h5>Status Pengisian</h5></th>
                        <th><h5>Aksi</h5></th>
                    </tr>
                </thead>
                <tbody>
                    <td>Evaluasi Tata Kelola Pemilu</td>
                    <td>Komisi Pemilihan Umum</td>
                    <td style="color: blue;"><b>Belum</b></td>
                    <td>
                        <i class="fa-solid fa-folder-open fa-lg" style="color: #97989b;"></i>
                    </td>
                </tbody>
                <tbody>
                    <td>Monitoring Tindak Lanjut Reviu</td>
                    <td>Pemerintah Provinsi Kalimantan Tengah</td>
                    <td style="color: red;"><b>Sudah</b></td>
                    <td>
                        <i class="fa-solid fa-folder-open fa-lg" style="color: #97989b;"></i>
                    </td>
                </tbody>
                <tbody>
                    <td>Audit Pembangunan Bandar Udara</td>
                    <td>UPBU Muara Teweh</td>
                    <td style="color: red;"><b>Sudah</b></td>
                    <td>
                        <i class="fa-solid fa-folder-open fa-lg" style="color: #97989b;"></i>
                    </td>
                </tbody>
                <tbody>
                    <td>Reviu Rencana Anggaran Biaya DSP</td>
                    <td>BPPW Kalimantan Tengah</td>
                    <td style="color: red;"><b>Sudah</b></td>
                    <td>
                        <i class="fa-solid fa-folder-open fa-lg" style="color: #97989b;"></i>
                    </td>
                </tbody>
                <tbody>
                    <td>Evaluasi Percepatan Stunting</td>
                    <td>BKKBN Kalteng</td>
                    <td style="color: blue;"><b>Belum</b></td>
                    <td>
                        <i class="fa-solid fa-folder-open fa-lg" style="color: #97989b;"></i>
                    </td>
                </tbody>
                <tbody>
                    <td>Evaluasi Bidang Kesehatan</td>
                    <td>Pemerintah Provinsi Kalimantan Tengah</td>
                    <td style="color: red;"><b>Sudah</b></td>
                    <td>
                        <i class="fa-solid fa-folder-open fa-lg" style="color: #97989b;"></i>
                    </td>
                </tbody>
                <tbody>
                    <td>Audit atas Pemenuhan Kewajiban PNBP</td>
                    <td>PT Ada Batubara Cukup</td>
                    <td style="color: red;"><b>Sudah</b></td>
                    <td>
                        <i class="fa-solid fa-folder-open fa-lg" style="color: #97989b;"></i>
                    </td>
                </tbody>
            </table>
        </div>
</div>
</div>

</section>
<?= $this->endSection() ?>