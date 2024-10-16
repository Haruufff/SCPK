<?php $row = $db->get_row("SELECT * FROM tb_alternatif WHERE kode_alternatif='$_GET[ID]'"); ?>

<div class="row">
            <div class="col-lg-12 d-flex align-items-stretch">
                <div class="card w-100">
                  <div class="card-body p-4">
                    <h5 class="card-title fw-semibold mb-4">Ubah Nilai Bobot &raquo; <small><?= $row->nama_alternatif ?></small></h5>
                    <div class="row">
                    </div>
                    <div class="modal-body">
                        <form method="post" action="aksi.php?act=rel_alternatif_ubah">
                        <?php
                            $rows = $db->get_results("SELECT ra.ID, k.kode_kriteria, k.nama_kriteria, ra.kode_sub
                            FROM tb_rel_alternatif ra INNER JOIN tb_kriteria k ON k.kode_kriteria=ra.kode_kriteria
                            WHERE kode_alternatif='$_GET[ID]' ORDER BY kode_kriteria");
                            foreach ($rows as $row) : 
                        ?>
                        <div class="mb-3">
                            <label for="kode" class="form-label"><?= $row->nama_kriteria ?></label>
                            <select class="form-control" name="nilai[<?= $row->ID ?>]" id="nilai[<?= $row->ID ?>]">
                                <?= get_sub_option($row->kode_sub, $row->kode_kriteria) ?>
                            </select>
                        </div>
                        <?php endforeach ?>
                            <div class="col-sm-12 col-xl-12">
                                <button type="submit" class="btn btn-primary float-end m-1">Submit</button>
                                <a class="btn btn-danger float-end m-1" href="?m=rel_alternatif">Close</a>
                            </div>
                        </form>
                    </div>
                  </div>
                </div>
              </div>
            </table>
        </div>