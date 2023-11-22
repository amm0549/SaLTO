<?= $this->extend('layout/default') ?>

<?= $this->section('content') ?>
<section class="section">
    <div class="section-header">
        <h1>Data Pegawai</h1>
    </div>

    <div class="section-body">
        <div class="card">
            <div class="card-header">
                <h4>Data Pegawai IPP</h4>
                <!-- <div class="card-header-action">
                    <button class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">Tambah Data</button>

                </div> -->
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-striped" id="table-pgw">
                        <thead>
                            <tr>
                                <th width="5%">No</th>
                                <th>Nama Pegawai</th>
                                <th>NIP</th>
                                <th>Pangkat</th>
                                <th>Jabatan</th>
                                <th>Status</th>
                                <!-- <th width="10%">Aksi</th> -->
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            $i = 1;
                            foreach ($pegawai as $row) : ?>
                                <tr>
                                    <td><?= $i ?></td>
                                    <td><?= $row["nama_pgw"] ?></td>
                                    <td><?= $row["nip"] ?></td>
                                    <td><?= $row["pangkat"] ?></td>
                                    <td><?= $row["jabatan"] ?></td>
                                    <td>
                                        <?php 
                                        $status = $row["status"];
                                        if($status == 'korwas') {
                                            echo "Koordinator Pengawas";
                                        } elseif ($status == 'dalnis') {
                                            echo "Pengendali Teknis";
                                        } elseif ($status == 'katim') {
                                            echo "Ketua Tim";
                                        } elseif ($status == 'tim') {
                                            echo "Anggota Tim";
                                        }
                                        ?>
                                    </td>
                                    <!-- <td>
                                        <button class="btn btn-primary" data-toggle="modal" data-target="#edit<?= $row['id_pgw']; ?>">Edit</button>
                                        <a href="#" class="btn btn-danger">Hapus</a>
                                    </td> -->
                                </tr>
                                <?php $i++; ?>
                            <?php endforeach; ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</section>
<div class="modal fade" tabindex="-1" role="dialog" id="exampleModal">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Tambah Data Pegawai</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <?php echo form_open('pegawai/add'); ?>
            <div class="modal-body">
                <div class="form-group row">
                    <label for="inputEmail3" class="col-sm-3 col-form-label">Nama Pegawai</label>
                    <div class="col-sm-9">
                        <input type="text" class="form-control" id="inputEmail3" placeholder="Nama Pegawai" name="nama_pgw">
                    </div>
                </div>
                <div class="form-group row">
                    <label for="inputPassword3" class="col-sm-3 col-form-label">Pangkat</label>
                    <div class="col-sm-9">
                        <input type="text" class="form-control" id="inputPassword3" placeholder="Pangkat Pegawai" name="pangkat">
                    </div>
                </div>
                <div class="form-group row">
                    <label for="inputPassword3" class="col-sm-3 col-form-label">Jabatan</label>
                    <div class="col-sm-9">
                        <input type="text" class="form-control" id="inputPassword3" placeholder="Jabatan Pegawai" name="jabatan">
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Posisi</label>
                    <div class="col-sm-9">
                        <select class="form-control" name="status">
                            <option>-Pilih-</option>
                            <option value="korwas">Koordinator Pengawasan</option>
                            <option value="dalnis">Pengendali Teknis</option>
                            <option value="katim">Ketua Tim</option>
                            <option value="tim">Anggota Tim</option>
                        </select>
                    </div>
                </div>
            </div>
            <div class="modal-footer bg-whitesmoke br">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary">Save changes</button>
            </div>
            <?php echo form_close(); ?>
        </div>
    </div>
</div>
<!-- edit  -->
<?php
foreach ($pegawai as $row) : ?>
    <div class="modal fade" tabindex="-1" role="dialog" id="edit<?= $row['id_pgw']; ?>">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Tambah Data Pegawai</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <?php echo form_open('pegawai/edit/' . $row['id_pgw']); ?>
                <div class="modal-body">
                    <div class="form-group row">
                        <label for="inputEmail3" class="col-sm-3 col-form-label">Nama Pegawai</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" id="inputEmail3" value="<?= $row['nama_pgw']; ?>" name="nama_pgw">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="inputPassword3" class="col-sm-3 col-form-label">Pangkat</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" id="inputPassword3" value="<?= $row['pangkat']; ?>" name="pangkat">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="inputPassword3" class="col-sm-3 col-form-label">Jabatan</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" id="inputPassword3" value="<?= $row['jabatan']; ?>" name="jabatan">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-3 col-form-label">Posisi</label>
                        <div class="col-sm-9">
                            <select class="form-control" name="status">
                                <option value="<?= $row['status']; ?>" selected><?= $row['status']; ?></option>
                                <option>-Pilih-</option>
                                <option value="korwas">Koordinator Pengawasan</option>
                                <option value="dalnis">Pengendali Teknis</option>
                                <option value="katim">Ketua Tim</option>
                                <option value="tim">Anggota Tim</option>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="modal-footer bg-whitesmoke br">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Save changes</button>
                </div>
                <?php echo form_close(); ?>
            </div>
        </div>
    </div>
<?php endforeach; ?>
<?= $this->endSection() ?>