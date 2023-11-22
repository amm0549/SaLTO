<?= $this->extend('layout/default') ?>

<?= $this->section('content') ?>
<section class="section">

<div class="section-header">
    <h1>Rating Performance</h1>
</div>

<div class="section-body">
    <div class="row">
        <!-- First Column -->
        <div class="col-4">
            <div class="card">
            <div class="card-wrap">
                <div class="card-header">
                    <h2>Daftar Auditor</h2>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-borderless table-hover" id="table-auditor">
                            <thead style="display: none">
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        <i class="fa-solid fa-circle-user fa-2xl"></i></i>
                                    </td>
                                    <td>
                                        <h6>Amel</h6>
                                        <span>Auditor Pelaksana</span>
                                    </td>
                                    <td>
                                        <i class="fa fa-star" style="color: orange;"></i> 5.0
                                    </td>
                                    <td>
                                        <i class="fa-solid fa-arrow-up-right-from-square fa-lg" style="color: green;"></i></i>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <i class="fa-solid fa-circle-user fa-2xl"></i></i>
                                    </td>
                                    <td>
                                        <h6>Budi</h6>
                                        <span>Auditor Penyelia</span>
                                    </td>
                                    <td>
                                        <i class="fa fa-star" style="color: orange;"></i> 4.7
                                    </td>
                                    <td>
                                        <i class="fa-solid fa-arrow-up-right-from-square fa-lg"></i></i>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <i class="fa-solid fa-circle-user fa-2xl"></i></i>
                                    </td>
                                    <td>
                                        <h6>Clara</h6>
                                        <span>Auditor Muda</span>
                                    </td>
                                    <td>
                                        <i class="fa fa-triangle-exclamation" style="color: orange;"></i> 3.8
                                    </td>
                                    <td>
                                        <i class="fa-solid fa-arrow-up-right-from-square fa-lg"></i></i>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <i class="fa-solid fa-circle-user fa-2xl"></i></i>
                                    </td>
                                    <td>
                                        <h6>Dodi</h6>
                                        <span>Auditor Pertama</span>
                                    </td>
                                    <td>
                                        <i class="fa fa-triangle-exclamation" style="color: orange;"></i> 3.9
                                    </td>
                                    <td>
                                        <i class="fa-solid fa-arrow-up-right-from-square fa-lg"></i></i>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <i class="fa-solid fa-circle-user fa-2xl"></i></i>
                                    </td>
                                    <td>
                                        <h6>Emanuel</h6>
                                        <span>Auditor Pertama</span>
                                    </td>
                                    <td>
                                        <i class="fa fa-star" style="color: orange;"></i> 4.2
                                    </td>
                                    <td>
                                        <i class="fa-solid fa-arrow-up-right-from-square fa-lg"></i>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <i class="fa-solid fa-circle-user fa-2xl"></i>
                                    </td>
                                    <td>
                                        <h6>Farid</h6>
                                        <span>Auditor Pelaksana</span>
                                    </td>
                                    <td>
                                        <i class="fa fa-star" style="color: orange;"></i> 4.4
                                    </td>
                                    <td>
                                        <i class="fa-solid fa-arrow-up-right-from-square fa-lg"></i>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <i class="fa-solid fa-circle-user fa-2xl"></i>
                                    </td>
                                    <td>
                                        <h6>Gusti</h6>
                                        <span>Auditor Pelaksana</span>
                                    </td>
                                    <td>
                                        <i class="fa fa-triangle-exclamation" style="color: red;"></i> 2.7
                                    </td>
                                    <td>
                                        <i class="fa-solid fa-arrow-up-right-from-square fa-lg"></i></i>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            </div>
        </div>

        <!-- Second Column -->
        <div class="col-8">
            <div class="card card-statistic-1">
                <div class="card-wrap">
                    <div class="card-header bg-primary">
                        <h2 style="color: white;">Amelia Melati</h2>
                    </div>
                    <div class="card-body">
                        <p style="color: blue;"><i>Auditor Pelaksana</i></p>
                    </div>
            </div>

            <div class="row">
                <div class="col">
                    <div class="card">
                        <div class="card-wrap">
                            <div class="card-header">
                                <h3>Performance</h3>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-borderless" id="table-performa">
                                        <thead style="display: none;">
                                            <th></th>
                                            <th style="width: 35px;"></th>
                                        </thead>
                                        <tbody style="font-size: 14px;">
                                            <tr>
                                               <td><h6>Kualitas</h6></td>
                                               <td>
                                                    <i class="fa fa-star" style="color: orange;"></i> 5.0
                                               </td> 
                                            </tr>
                                            <tr>
                                               <td>Kuantitas</td>
                                               <td>
                                                    <i class="fa fa-star" style="color: orange;"></i> 5.0
                                               </td> 
                                            </tr>
                                            <tr>
                                               <td>Ketepatan Waktu</td>
                                               <td>
                                                    <i class="fa fa-star" style="color: orange;"></i> 5.0
                                               </td> 
                                            </tr>
                                            <tr>
                                               <td>Efektivitas</td>
                                               <td>
                                                    <i class="fa fa-star" style="color: orange;"></i> 5.0
                                               </td> 
                                            </tr>
                                            <tr>
                                               <td>Kemandirian</td>
                                               <td>
                                                    <i class="fa fa-star" style="color: orange;"></i> 5.0
                                               </td> 
                                            </tr>
                                            <tr>
                                               <td>Rata-rata</td>
                                               <td>
                                                    <i class="fa fa-star" style="color: orange;"></i> 5.0
                                               </td> 
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col">
                    <div class="row">
                        <h6>Jumlah Penugasan Diselesaikan</h6>
                        <p style="font-size: 20px;">17</p>
                    </div>
                    <div class="row">
                        <h6 style="color: blue;">Status Penugasan</h6>
                        <p style="font-size: 20px;">Evaluasi Tata Kelola Pemilu</p>
                    </div>
                </div>
            </div>
        </div>


    </div>
</div>



</section>
<?= $this->endSection() ?>