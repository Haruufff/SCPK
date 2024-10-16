<div class="row">
            <div class="col-lg-12 d-flex align-items-stretch">
                <div class="card w-100">
                  <div class="card-body p-4">
                    <h5 class="card-title fw-semibold mb-4">Tambah Data Alternatif</h5>
                    <div class="row">
                    </div>
                    <div class="modal-body">
                    <?php if ($_POST) include 'aksi.php' ?>
                        <form method="POST">
                            <div class="mb-3">
                                <label for="kode" class="form-label">Kode Alternatif</label>
                                <input type="text" class="form-control" id="kode" name="kode" value="<?= isset($_POST['kode']) ? $_POST['kode']:'' ?>">
                            </div>
                            <div class="mb-3">
                                <label for="nama" class="form-label">Kelompok</label>
                                <input type="text" class="form-control" id="nama" name="nama" value="<?= isset($_POST['nama']) ? $_POST['nama']:'' ?>">
                            </div>
                            <div class="col-sm-12 col-xl-12">
                                <button type="submit" class="btn btn-primary float-end m-1">Submit</button>
                                <a class="btn btn-danger float-end m-1" href="?m=kriteria">Close</a>
                            </div>
                        </form>
                    </div>
                  </div>
                </div>
              </div>
            </table>
        </div>