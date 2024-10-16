<div class="row">
            <div class="col-lg-12 d-flex align-items-stretch">
                <div class="card w-100">
                  <div class="card-body p-4">
                    <h5 class="card-title fw-semibold mb-4"><center>Data Sub Kriteria</center></h5>
                    <div class="row">    
                    <div class="col-sm-12 col-xl-12">
                        <a type="button" class="btn btn-primary m-1 float-end" href="?m=sub_tambah"><i class="ti ti-plus"></i> Tambah Data</button></a>
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
                                    <h6 class="fw-semibold mb-0">Kriteria</h6>
                                </th>
                                <th class="border-bottom-2">
                                    <h6 class="fw-semibold mb-0">Kode Sub Kriteria</h6>
                                  </th>
                                <th class="border-bottom-2">
                                  <h6 class="fw-semibold mb-0">Nama Sub Kriteria</h6>
                                </th>
                                <th class="border-bottom-2">
                                  <h6 class="fw-semibold mb-0 float-end"></h6>
                                </th>
                              </tr>
                            </thead>
                            <tbody>
                            <?php
                            $q = esc_field(isset($_GET['q'])?$_GET['q']:'');
                            $rows = $db->get_results("SELECT * FROM tb_sub s
                                INNER JOIN tb_kriteria k ON s.kode_kriteria=k.kode_kriteria 
                                WHERE nama_sub LIKE '%$q%' ORDER BY k.kode_kriteria, s.kode_sub");
                            $no = 0;
                            foreach ($rows as $row) : 
                            ?>
                              <tr>
                                <td class="border-bottom-2">
                                    <h6 class="fw-semibold mb-0"><?= ++$no ?></h6>
                                </td>
                                <td class="border-bottom-2">
                                    <h6 class="fw-semibold mb-0"><?= $row->nama_kriteria ?></h6>
                                </td>
                                <td class="border-bottom-2">
                                    <h6 class="fw-semibold mb-0"><?= $row->kode_sub ?></h6>
                                </td>
                                <td class="border-bottom-2">
                                    <h6 class="fw-semibold mb-0"><?= $row->nama_sub ?></h6>
                                </td>
                                <td class="border-bottom-2">
                                    <a type="button" class="btn btn-secondary m-1 float-end" href="?m=sub_ubah&ID=<?= $row->kode_sub ?>"><i class="ti ti-edit"></i> Edit</a>
                                    <a type="button" class="btn btn-danger m-1 float-end" href="aksi.php?act=sub_hapus&ID=<?= $row->kode_sub ?>" onclick="return confirm('Anda yakin ingin menghapus Hapus data <?= $row->nama_sub ?>?')"><i class="ti ti-trash"></i> Hapus</a>
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