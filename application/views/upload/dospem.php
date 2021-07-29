<div class="box">
    <div class="box-header with-border">
        <h3 class="box-title">Master <?= $subjudul ?></h3>
        <div class="box-tools pull-right">
            <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
            </button>
        </div>
    </div>
    <div class="box-body">
        <div class="mt-9 mb-4"><a href="<?= base_url('upload/tambahdospem') ?>" class="btn btn-sm bg-purple btn-flat"><i class="fa fa-plus"></i> Tambah Data</a>
        </div>
    </div>

        <div class="table-responsive">
            <table id="mahasiswa" class="table table-striped table-bordered table-hover">
            <tr>
                        <th>No.</th>
                        <th>Nama dospem</th>
                        <th>Nama dosen tamu</th>
                        
                </tr>
                <?php
                $no = 1;
                foreach ($dsn_bimbing as $data) :
                    ?>
                        <tr>
                            <td><?php echo $data->id_dosen ?></td>
                            <td><?php echo $data->nama_dospem ?></td>
                            <td><?php echo $data->dosen_tamu?></td>
                            
                        </tr>
                  <?php
                endforeach;
                ?>
            </table>
        </div>
    </div>
</div>