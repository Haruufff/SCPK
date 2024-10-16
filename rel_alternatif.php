<div class="row">
            <div class="col-lg-12 d-flex align-items-stretch">
                <div class="card w-100">
                  <div class="card-body p-4">
                    <h5 class="card-title fw-semibold mb-4"><center>Data Kriteria</center></h5>
                    <div class="row">
                    </div>
                    <div class="table-responsive">
                        <table class="table mb-0 align-middle display" id="myTable">
                            <thead class="text-dark fs-4">
                              <tr>
                                <th class="border-bottom-2">
                                    <h6 class="fw-semibold mb-0">Kode</h6>
                                  </th>
                                <th class="border-bottom-2">
                                  <h6 class="fw-semibold mb-0">Nama Alternatif</h6>
                                </th>
                                <?php foreach ($KRITERIA as $key => $val) : ?>                                    
                                    <th class="border-bottom-2">
                                        <h6 class="fw-semibold mb-0"><?= $val ?></h6>
                                    </th>
                                <?php endforeach ?>
                                <th class="border-bottom-2">
                                  <h6 class="fw-semibold mb-0"></h6>
                                </th>
                              </tr>
                            </thead>
                            <tbody>
                            <?php
                                $data = get_rel_alternatif();
                                $no = 0;
                                foreach ($data as $key => $val) : 
                            ?>
                              <tr>
                                <td class="border-bottom-2">
                                    <h6 class="fw-semibold mb-0"><?= $key ?></h6>
                                </td>
                                <td class="border-bottom-2">
                                    <h6 class="fw-semibold mb-0"><?= $ALTERNATIF[$key] ?></h6>
                                </td>
                                <?php foreach ($val as $k => $v) : ?>
                                <td class="border-bottom-2">
                                    <h6 class="fw-semibold mb-0"><?= !$v ? '-' : $SUB[$v]['nama'] ?></h6>
                                </td>
                                <?php endforeach ?>
                                <td class="border-bottom-2">
                                    <a type="button" class="btn btn-secondary m-1 float-end" href="?m=rel_alternatif_ubah&ID=<?= $key ?>"><i class="ti ti-edit"></i> Edit</a>
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