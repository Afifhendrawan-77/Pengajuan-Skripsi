<div class="box">
    <div class="box-header with-border">
        <h3 class="box-title">Form <?=$judul?></h3>
        <div class="box-tools pull-right">
        </div>
    </div>

    <div class="box-body">
        <div class="mt-9 mb 4"><a href="<?= base_url('upload/dospem') ?>"  class="btn btn-danger"><i class="fa fa-arrow-left"></i> Batal</a>
    <div class="box-body">
        <div class="row">
            <div class="col-sm-4 col-sm-offset-4">
       <?php echo form_open('upload/tambahdosenpem');?>
                    <div class="form-group">
                        <label for="judul">Nama Dosen Pembimbing</label>
                        <select class="form-control" name="nama_dospem">
                        <option>Pilih</option>
                        <option>Afif Hendrawan</option>
                        <option>afifah retn</option>
                        <option>samerry</option>
                        </select>
                    </div>      

                    <div class="form-group">
                        <label for="judul">Nama Dosen Tamu</label>
                        <select class="form-control" name="dosen_tamu">
                        <option>Pilih</option>
                        <option>Afif Hendrawan</option>
                        <option>afifah retn</option>
                        <option>samerry</option>
                        </select>
                    </div>    

                    <div class="form-group pull-right">
                        <button type="reset" class="btn btn-flat btn-default"><i class="fa fa-rotate-left"></i> Reset</button>
                        <a href="dosensukses.php"><button  class="btn btn-flat bg-purple"><i class="fa fa-save"></i> Simpan</button></a>
                        <a class="btn btn-primary" href="suksesdospem" role="button">Simpan</a>
                    </div>
                    <?php echo form_close();?>
            </div>
        </div>
    </div>
</div>

<script src="<?=base_url()?>assets/dist/js/app/master/mahasiswa/add.js"></script>