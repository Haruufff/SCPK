<!-- input nilai perbandingan -->
<div class="row">
    <div class="col-lg-12 d-flex align-items-stretch">
        <div class="card w-100">
            <div class="card-body p-4">
                <h5 class="card-title fw-semibold mb-4"><center>Perhitungan Nilai Bobot Kriteria</center></h5>
                <?php
                if ($_POST) include 'aksi.php';
                    $rows = $db->get_results("SELECT k.nama_kriteria, rk.ID1, rk.ID2, nilai 
                        FROM tb_rel_kriteria rk INNER JOIN tb_kriteria k ON k.kode_kriteria=rk.ID1 
                        ORDER BY ID1, ID2");
                    $criterias = [];
                    $data = [];
                    foreach ($rows as $row) {
                        $criterias[$row->ID1] = $row->nama_kriteria;
                        $data[$row->ID1][$row->ID2] = $row->nilai;
                    }
                ?>
                <div class="row">    
                    <div class="col-sm-12 col-xl-12">
                        <form class="form-inline row g-4" action="?m=rel_kriteria" method="post">
                            <div class="form-group col-auto">
                                <select class="form-control" name="ID1">
                                    <?= get_kriteria_option($_POST['ID1']) ?>
                                </select>
                            </div>
                            <div class="form-group col-auto">
                                <select class="form-control" name="nilai">
                                    <?= get_nilai_option($_POST['nilai']) ?>
                                </select>
                            </div>
                            <div class="form-group col-auto">
                                <select class="form-control" name="ID2">
                                    <?= get_kriteria_option($_POST['ID2']) ?>
                                </select>
                            </div>
                            <div class="form-group col-auto">
                                <button class="btn btn-primary"><span class="glyphicon glyphicon-edit"></span> Ubah</a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- matriks perbandingan -->
<div class="row">
    <div class="col-lg-12 d-flex align-items-stretch">
        <div class="card w-100">
          <div class="card-body p-4">
            <h5 class="card-title fw-semibold mb-4"><center>Matriks Perbandingan</center></h5>
            <div class="table-responsive">
                <table class="table mb-0 align-middle display">
                    <thead class="text-dark fs-4">
                      <tr>
                        <th class="border-bottom-2">
                          <h6 class="fw-semibold mb-0">Kode</h6>
                        </th>
                        <th class="border-bottom-2">
                            <h6 class="fw-semibold mb-0">Nama Kriteria</h6>
                        </th>
                            <?php
                                $matriks = get_relkriteria();
                                $total = get_baris_total($matriks);
                                foreach ($matriks as $key => $val) : ?>
                                    <th class="border-bottom-2">
                                        <h6 class="fw-semibold mb-0"><?= $key ?></h6>
                                    </th>
                            <?php endforeach ?>
                      </tr>
                    </thead>
                    <?php foreach ($matriks as $key => $val) : ?>
                        <tr>
                        <td class="border-bottom-2">
                            <h6 class="fw-semibold mb-0"><?= $key ?></h6>
                        </td>
                        <td class="border-bottom-2">
                            <h6 class="fw-semibold mb-0"><?= $KRITERIA[$key] ?></h6>
                        </td>
                            <?php foreach ($val as $k => $v) : ?>
                                <td class="border-bottom-2">
                                    <h6 class="fw-semibold mb-0"><?= round($v, 3) ?></h6>
                                </td>
                            <?php endforeach ?>
                        </tr>
                    <?php endforeach ?>
                    <tfoot>
                        <td class="border-bottom-2" colspan="2">
                            <h6 class="fw-semibold mb-0">Total Nilai Perbandingan</h6>
                        </td>
                        <?php foreach ($total as $k => $v) : ?>
                            <td class="border-bottom-2">
                                <h6 class="fw-semibold mb-0"><?= round($v, 3) ?></h6>
                            </td>
                        <?php endforeach ?>
                    </tfoot>
                  </table>
            </div>
          </div>
        </div>
      </div>
    </table>
</div>


<!-- Normalisasi -->
<div class="row">
    <div class="col-lg-12 d-flex align-items-stretch">
        <div class="card w-100">
          <div class="card-body p-4">
            <h5 class="card-title fw-semibold mb-4"><center>Normalisasi</center></h5>
            <div class="table-responsive">
                <table class="table mb-0 align-middle display">
                    <thead class="text-dark fs-4">
                      <tr>
                        <th class="border-bottom-2">
                          <h6 class="fw-semibold mb-0">Kode</h6>
                        </th>
                        <?php
                            $normal = normalize($matriks, $total);
                            $rata = get_rata($normal);
                            foreach ($matriks as $key => $val) : ?>
                                <th class="border-bottom-2">
                                    <center>
                                        <h6 class="fw-semibold mb-0"><?= $key ?></h6>
                                    </center>
                                </th>
                            <?php endforeach ?>
                        <th class="border-bottom-2">
                            <center>
                                <h6 class="fw-semibold mb-0">Prioritas (Bobot Kriteria)</h6>
                            </center>
                        </th>
                      </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($normal as $key => $val) : ?>
                        <tr>
                            <td class="border-bottom-2">
                                <h6 class="fw-semibold mb-0"><?= $key ?></h6>
                            </td>
                            <?php foreach ($val as $k => $v) : ?>
                                <td class="border-bottom-2">
                                    <center>
                                        <h6 class="fw-semibold mb-0"><?= round($v, 3) ?></h6>
                                    </center>
                                </td>
                            <?php endforeach ?>
                            <td class="border-bottom-2">
                                <center>
                                    <h6 class="fw-semibold mb-0"><?= round($rata[$key], 4) ?></h6>
                                </center>
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

<!-- ordo matrix -->
<div class="row">
    <div class="col-lg-6 d-flex align-items-stretch">
        <div class="card w-100">
          <div class="card-body p-4">
            <h5 class="card-title fw-semibold mb-4"><center>Tabel Ratio Index</center></h5>
            <div class="table-responsive">
                <table class="table mb-0 align-middle display">
                    <thead class="text-dark fs-4">
                        <tr>
                            <th class="border-bottom-2">
                                <h6 class="fw-semibold mb-0"><center>Ordo Matrix</center></h6>
                            </th>
                            <th class="border-bottom-2">
                                <h6 class="fw-semibold mb-0"><center>Ratio Matrix</center></h6>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($nRI as $key => $value) { ?>
                            <tr>
                                <?php
                                    if (count($matriks) == $key)
                                        echo "
                                                <td class='border-bottom-2'>
                                                    <h6 class='fw-semibold mb-0 text-primary'><center>$key</center></h6>
                                                </td>
                                            ";
                                    else
                                        echo "
                                            <td class='border-bottom-2'>
                                                <h6 class='fw-semibold mb-0'><center>$key</center></h6>
                                            </td>
                                        ";
                                ?>
                                
                                <?php
                                    if (count($matriks) == $key)
                                        echo "
                                        <td class='border-bottom-2'>
                                            <h6 class='fw-semibold mb-0 text-primary'><center>$value</center></h6>
                                        </td>
                                        ";
                                    else
                                        echo "
                                        <td class='border-bottom-2'>
                                            <h6 class='fw-semibold mb-0'><center>$value</center></h6>
                                        </td>
                                        ";
                                ?>
                            </tr>
                        <?php } ?>
                    </tbody>
                  </table>
            </div>
          </div>
        </div>
      </div>

      <div class="col-lg-6 d-flex align-items-stretch">
        <div class="card w-100">
            <div class="card-body p-4">
                <h6 class="card-title fw-semibold mb-4">Diketahui : </h6>
                <div class="table-responsive">
                    <table class="table mb-0 align-middle display">
                        <?php
                        $cm = consistency_measure($matriks, $rata);
                        $CI = ((array_sum($cm) / count($cm)) - count($cm)) / (count($cm) - 1);
                        $RI = $nRI[count($matriks)];
                        $CR = $CI / $RI;
                        echo "
                            <tr>
                                <th class='border-bottom-2'>Consistency Index (CI)</th>
                                <td><h6 class='fw-semibold mb-0'>". round($CI, 3) ."</h6></td>
                            </tr>
                            <tr class='border-bottom-2'>
                                <th class='border-bottom-2'>Ratio Index (RI)</th>
                                <td><h6 class='fw-semibold mb-0'>". round($RI, 3) ."</h6></td>
                            </tr>
                            <tr>
                                <th class='border-bottom-2'>Consistency Ratio (CR)</th>
                                <td><h6 class='fw-semibold mb-0'>". round($CR, 3) ."</h6></td>
                            </tr>
                        ";
                        if ($CR > 0.10) {
                            echo "
                                <tr class='border-bottom-2'>
                                    <th class='border-bottom-2'><h6 mb-0'>Jika, nilai CR (". round($CR, 3) .") >= 0,1</h6></th>
                                    <td><h6 class='fw-semibold mb-0'>Maka, Tidak Konsisten</h6></td>
                                </tr>
                            ";
                        } else {
                            echo "
                                <tr class='border-bottom-2'>
                                    <th class='border-bottom-2'><h6 mb-0'>Jika, nilai CR (". round($CR, 3) .") <= 0,1</h6></th>
                                    <td><h6 class='fw-semibold mb-0'>Maka, Konsisten</h6></td>
                                </tr>
                            ";
                        }
                        ?>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>