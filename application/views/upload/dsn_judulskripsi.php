<div class="box">
    <div class="box-header with-border">
        <h3 class="box-title">Master <?= $subjudul ?></h3>
        <div class="box-tools pull-right">
            <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
            </button>
        </div>
    </div>

        </div>
       

        <div class="table-responsive">
     
        <form method="post" action="<?php echo base_url(); ?>upload/edit"> 
            <table id="mahasiswa" class="table table-striped table-bordered table-hover">
                         <tr>
                        <th>No.</th>
                        <th>Nama</th>
                        <th>Judul Skripsi</th>
                        <th>Transkrip Nilai</th>
                        <th>KRS Terakhir</th>
                        <th>Proposal Skripsi</th>
                        <th>Jurnal Internasional 3</th>
                        <th>Jurnal Nasional 3</th>
                        <th>Keterangan</th>
                        <th>Status</th>
                        <th>Aksi</th>
                        </th>
                    </tr>
                   <?php

                $no = 1;
                foreach ($judul_skripsi as $data) :
                    ?>
                        <tr>
                            <td><?php echo $data->id_judulskripsi ?></td>
                            <td><?php echo $data->nama ?></td>
                            <td><?php echo $data->judul ?></td>
                            <td><?php echo $data->transkip_nilai ?></a></td>
                            <td><?php echo $data->krs_terakhir ?></a></td>
                            <td><?php echo $data->proposal_skripsi ?></a></td>
                            <td><?php echo $data->jurnal_internasional3 ?></a></td>
                            <td><?php echo $data->jurnal_nasional3 ?></a></td>
                            <td><?php echo $data->keterangan ?></td>
                            <td><?php echo $data->status ?></td>
                           
                         <td>  <a href="tambahketerangan" class="btn btn-danger btn-sm delete-record">Keterangan</a></td>
                    
                        </tr>
                  <?php
                endforeach;
                ?>
            </table>
            <?=form_close()?>
        </div>
       

    </div>
</div>