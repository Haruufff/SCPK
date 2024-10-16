<div class="row">
            <div class="col-lg-12 d-flex align-items-stretch">
                <div class="card w-100">
                  <div class="card-body p-4">
                    <h5 class="card-title fw-semibold mb-4"><center>Data Kriteria</center></h5>
                    <div class="row">    
                    <div class="col-sm-12 col-xl-12">
                        <a type="button" class="btn btn-primary m-1 float-end" href="?m=kriteria_tambah"><i class="ti ti-plus"></i> Tambah Data</button></a>
                        <!-- <a class="btn btn-warning m-1 float-end" href="cetak.php?m=kriteria&a=<?= isset($_GET['q'])?$_GET['q']:'' ?>" target="_blank">Cetak</a> -->
                    </div>
                    </div>
                    <div class="table-responsive">
                        <table class="table mb-0 align-middle display" id="myTable">
                            <thead class="text-dark fs-4">
                              <tr>
                                <th class="border-bottom-2">
                                  <h6 class="fw-semibold mb-0">No</h6>
                                </th>
                                <th class="border-bottom-2">
                                    <h6 class="fw-semibold mb-0">Kode Kriteria</h6>
                                  </th>
                                <th class="border-bottom-2">
                                  <h6 class="fw-semibold mb-0">Nama Kriteria</h6>
                                </th>
                                <th class="border-bottom-2">
                                  <h6 class="fw-semibold mb-0 float-end"></h6>
                                </th>
                              </tr>
                            </thead>
                            <tbody>
                            <?php
                                $q = esc_field(isset($_GET['q'])?$_GET['q']:'');
                                $rows = $db->get_results("SELECT * FROM tb_kriteria WHERE nama_kriteria LIKE '%$q%' ORDER BY kode_kriteria");
                                $no = 0;
                                foreach ($rows as $row) : 
                            ?>
                              <tr>
                                <td class="border-bottom-2">
                                    <h6 class="fw-semibold mb-0"><?= ++$no ?></h6>
                                </td>
                                <td class="border-bottom-2">
                                    <h6 class="fw-semibold mb-0"><?= $row->kode_kriteria ?></h6>
                                </td>
                                <td class="border-bottom-2">
                                    <h6 class="fw-semibold mb-0"><?= $row->nama_kriteria ?></h6>
                                </td>
                                <td class="border-bottom-2">
                                    <a type="button" class="btn btn-secondary m-1 float-end" href="?m=kriteria_ubah&ID=<?= $row->kode_kriteria ?>"><i class="ti ti-edit"></i> Edit</a>
                                    <a type="button" class="btn btn-danger m-1 float-end" href="aksi.php?act=kriteria_hapus&ID=<?= $row->kode_kriteria ?>" onclick="return confirm('Anda yakin ingin menghapus Hapus data <?= $row->nama_kriteria ?>?')"><i class="ti ti-trash"></i> Hapus</a>
                                </td>
                              </tr> 
                              <?php endforeach ?>
                            </tbody>
                          </table>
                    </div>
                  </div>
                </div>
              </div>
            </table>
        </div>