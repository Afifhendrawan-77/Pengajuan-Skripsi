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
                         <th class="text-center">
							<input type="checkbox" class="select_all">
						</th>
                        <th>No.</th>
                        <th>Data Skripsi</th>
                        <th>Sertifikat Toefel</th>
                        <th>Sertifikat Ujikom</th>
                        <th>Ijazah SMA</th>
                        <th>Transkip Nilai dan KRS</th>
                        <th>Sertifikat Kegiatan</th>
                        <th>Kartu Bimbingan</th>
                        <th>Kartu Seminar Proposal</th>
                        <th>Kartu Reboan</th>
                        </th>
                    </tr>
                    <?php
                $no = 1;
                foreach ($ujian_skripsi as $data) :
					$no++;
                    ?>
                        <tr>
                        <th class="text-center">
							<input type="checkbox" class="select_all">
						</th>
                            <td><?php echo $data->id_skripsi ?></td>
                            <td><?php echo $data->data_skripsi ?></td>
                            <td><?php echo $data->sertifikat_toefel ?></a></td>
                            <td><?php echo $data->ujikom ?></a></td>
                            <td><?php echo $data->ijazah ?></a></td>
                            <td><?php echo $data->nilai_krs ?></a></td>
                            <td><?php echo $data->sertifikat_kegiatan ?></a></td>
                            <td><?php echo $data->kartu_bimbingan ?></a></td>
                            <td><?php echo $data->seminar_proposal ?></a></td>
                            <td><?php echo $data->reboan ?></a></td>
                            
                           

                        </tr>
                  <?php
                endforeach;
                ?>
			
		</table>
		<?= form_close() ?>
            </table>
            <?=form_close()?>
        </div>
       

    </div>
</div>