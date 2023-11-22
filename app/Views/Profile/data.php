<?= $this->extend('layout/default') ?>

<?= $this->section('content') ?>
<section class="section">

    <div class="section-header">
        <h1>Profiling Auditor</h1>
    </div>

    <div class="section-body">
        <div class="card">
            <div class="card-header">
                <h2>Penugasan dan Tim</h2>
            </div>
            <div class="card-body">
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-striped" id="table-pgw">
                            <thead>
                                <tr>
                                    <th><h5>Nama Penugasan</h5></th>
                                    <th><h5>Nomor ST</h5></th>
                                    <th><h5>Ketua Tim</h5></th>
                                    <th><h5>Aksi</h5></th>
                                </tr>
                            </thead>
                            <tbody>
                                    <tr>
                                        <td>Evaluasi Tata Kelola Pemilu</td>
                                        <td>ST-126</td>
                                        <td>Hania</td>
                                        <td><i class="fa-solid fa-folder-open fa-lg" style="color: blue;"></i></td>
                                    </tr>
                                    <tr>
                                        <td>Reviu Rencana Anggaran Biaya DSP</td>
                                        <td>ST-103</td>
                                        <td>Yulianti</td>
                                        <td><i class="fa-solid fa-folder-open fa-lg" style="color: #97989b;"></i></td>
                                    </tr>
                                    <tr>
                                        <td>Monitoring Tindak Lanjut</td>
                                        <td>ST-123</td>
                                        <td>Yulianti</td>
                                        <td><i class="fa-solid fa-folder-open fa-lg" style="color: #97989b;"></i></td>
                                    </tr>
                                    <tr>
                                        <td>Audit Pembangunan Bandar Udara</td>
                                        <td>ST-111</td>
                                        <td>Ufairah</td>
                                        <td><i class="fa-solid fa-folder-open fa-lg" style="color: #97989b;"></i></td>
                                    </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="section-header">
    <div class="container">
        <div class="row justify-content-between">
        <div class="col-xl">
            <div class="card-wrap">
                <div class="card-header">
                    <h3>Info Penugasan Terkini</h3>
                    <span> Diperbarui pada tanggal 25 Oktober 2023</span>
                </div>
                <div class="card-body">
                    <h6>Nama Penugasan</h6>
                    <span>Evaluasi Tata Kelola Pemilu</span>
                    <h6>Nomor ST</h6>
                    <span>PE.12.02/PW15/ST-126</span>
                    <h6>Tim</h6>
                    <span>Hania, Budi, Amel</span>
                </div>
            </div>
        </div>
        <div class="col-xl">
            <div class="card-wrap">
                <div class="card-header">
                    <h3>Kendala Dalam Penugasan</h3>
                    <span> Di-input pada tanggal 30 Oktober 2023</span>
                </div>
                <div class="card-body">
                <h4><i class="fa-solid fa-users-gear" style="color: #e62828;"></i><b> Kompetensi Terkait Penugasan</b></h4>
                <h4><i class="fa-solid fa-handshake" style="color: #e62828;"></i><b> Hubungan antar Tim</b></h4>
                <h4><i class="fa-solid fa-notes-medical" style="color: #e62828;"></i><b> Kondisi Kesehatan Anggota Tim</b></h4>
                </div>
            </div>   
        </div>
        </div>
    </div>
    </div>

<?= $this->endSection() ?>