<div class="row">
    <div class="col-lg-12 d-flex align-items-stretch">
        <div class="card w-100">
          <div class="card-body p-4">
            <h5 class="card-title fw-semibold mb-4"><center>Perhitungan akhir & Perangkingan</center></h5>
        </div>
      </div>
    </div>
</div>

<div class="row">
    <div class="col-lg-12 d-flex align-items-stretch">
        <div class="card w-100">
          <div class="card-body p-4">
            <h5 class="card-title fw-semibold mb-4"><center>Hasil Analisis</center></h5>
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

<?php
function get_hasil_bobot($data, $prioritas_kriteria)
{
    global $SUB;
    $arr = [];
    foreach ($data as $key => $val) {
        foreach ($val as $k => $v) {
            $nilai_sub = $SUB[$v]['nilai_sub'];
            $prioritas = $prioritas_kriteria[$k] ?? 0;
            $arr[$key][$k] = $nilai_sub * $prioritas;
        }
    }
    return $arr;
}

// Mendapatkan data relasi alternatif-kriteria
$data = get_rel_alternatif(); // Pastikan fungsi ini sudah didefinisikan dan bekerja dengan benar

// Mendapatkan matriks dan prioritas kriteria
$matriks = get_relkriteria();
$total = get_baris_total($matriks);
$normal = normalize($matriks, $total);
$rata = get_rata($normal);

// Mendapatkan hasil bobot
$hasil_bobot = get_hasil_bobot($data, $rata);
?>

<div class="row">
    <div class="col-lg-12 d-flex align-items-stretch">
        <div class="card w-100">
          <div class="card-body p-4">
            <h5 class="card-title fw-semibold mb-4"><center>Hasil Nilai Bobot</center></h5>
            <div class="row">
            </div>
            <div class="table-responsive">
                <table class="table mb-0 align-middle display" id="myTable">
                    <thead class="text-dark fs-4">
                      <tr>
                        <th rowspan="2" class="border-bottom-2">
                            <h6 class="fw-semibold mb-0">Kode</h6>
                          </th>
                        <th rowspan="2" class="border-bottom-2">
                          <h6 class="fw-semibold mb-0">Nama Alternatif</h6>
                        </th>
                        <?php foreach ($KRITERIA as $key => $val) : ?>                                    
                            <th class="border-bottom-2">
                                <h6 class="fw-semibold mb-0"><?= $val ?></h6>
                            </th>
                        <?php endforeach ?>
                      </tr>
                      <tr>
                        <?php foreach ($rata as $key => $val) : ?>
                            <th class="border-bottom-2">
                                <h6 class="fw-semibold mb-0"><?= round($val, 4) ?></h6>
                            </th>
                        <?php endforeach ?>
                      </tr>
                    </thead>
                    <tbody>
                    <?php foreach ($hasil_bobot as $key => $val) : ?>
                      <tr>
                        <td class="border-bottom-2">
                            <h6 class="fw-semibold mb-0"><?= $key ?></h6>
                        </td>
                        <td class="border-bottom-2">
                            <h6 class="fw-semibold mb-0"><?= $ALTERNATIF[$key] ?></h6>
                        </td>
                        <?php foreach ($val as $k => $v) : ?>
                        <td class="border-bottom-2">
                            <h6 class="fw-semibold mb-0"><?= round($v ?? 0, 3) ?></h6>
                        </td>
                        <?php endforeach ?>
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

<div class="row">
    <?php
    function get_total($hasil_bobot)
    {
        $arr = [];
        foreach ($hasil_bobot as $key => $val) {
            $arr[$key] = array_sum($val);
        }
        return $arr;
    }

    // Mendapatkan data relasi alternatif-kriteria
    $data = get_rel_alternatif(); // Pastikan fungsi ini sudah didefinisikan dan bekerja dengan benar

    // Mendapatkan matriks dan prioritas kriteria
    $matriks = get_relkriteria();
    $total = get_baris_total($matriks);
    $normal = normalize($matriks, $total);
    $rata = get_rata($normal);

    // Mendapatkan hasil bobot
    $hasil_bobot = get_hasil_bobot($data, $rata);

    // Menghitung total untuk setiap alternatif
    $total = get_total($hasil_bobot);
    FAHP_save($total);
    $rows = $db->get_results("SELECT * FROM tb_alternatif ORDER BY total DESC");

    ?>
    <div class="col-lg-12 d-flex align-items-stretch">
        <div class="card w-100">
          <div class="card-body p-4">
            <h5 class="card-title fw-semibold mb-4"><center>Rangking</center></h5>
            <div class="row">
            </div>
            <div class="table-responsive">
                <table class="table mb-0 align-middle display" id="myTable">
                    <thead class="text-dark fs-4">
                      <tr>
                        <th class="border-bottom-2">
                            <h6 class="fw-semibold mb-0">Rangking</h6>
                          </th>
                        <th class="border-bottom-2">
                          <h6 class="fw-semibold mb-0">Kode</h6>
                        </th>
                        <th rowspan="2" class="border-bottom-2">
                          <h6 class="fw-semibold mb-0">Kelompok</h6>
                        </th>
                        <th rowspan="2" class="border-bottom-2">
                          <h6 class="fw-semibold mb-0">Total</h6>
                        </th>
                      </tr>
                    </thead>
                    <tbody>
                    <?php foreach ($rows as $row) : ?>
                      <tr>
                        <td class="border-bottom-2">
                            <h6 class="fw-semibold mb-0"><?= $row->rank ?></h6>
                        </td>
                        <td class="border-bottom-2">
                            <h6 class="fw-semibold mb-0"><?= $row->kode_alternatif ?></h6>
                        </td>
                        <td class="border-bottom-2">
                            <h6 class="fw-semibold mb-0"><?= $row->nama_alternatif ?></h6>
                        </td>
                        <td class="border-bottom-2">
                            <h6 class="fw-semibold mb-0"><?= round($row->total, 5) ?></h6>
                        </td>
                      </tr> 
                      <?php endforeach; ?>
                    </tbody>
                  </table>
            </div>
          </div>
        </div>
      </div>
    </table>
</div>