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
                        <th>Proposal Skripsi</th>
                        <th>Bukti Acc</th>
                        <th>Kartu Bimbingan</th>
                        <th>Bukti Sempro/Semhas</th>
                        <th>Keterangan</th>
                        </th>
                    </tr>
                    <?php
                $no = 1;
                foreach ($seminar_proposal as $data) :
                    ?>
                        <tr>
                        <th class="text-center">
							<input type="checkbox" class="select_all">
						</th>
                            <td><?php echo $data->id_seminar ?></td>
                            <td><?php echo $data->proposal_skripsi ?></a></td>
                            <td><?php echo $data->bukti_acc ?></a></td>
                            <td><?php echo $data->kartu_bimbingan ?></a></td>
                            <td><?php echo $data->kartu_sempro ?></a></td>
                            <td><?php echo $data->keterangan?></td>
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