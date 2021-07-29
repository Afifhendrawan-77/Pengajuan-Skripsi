<?php 

?>
<div class="box">
    <div class="box-header with-border">
        <h3 class="box-title">Form <?=$judul?></h3>
        <div class="box-tools pull-right">
            <a href="<?=base_url('ujian/data2')?>" class="btn btn-sm btn-flat btn-warning">
                <i class="fa fa-arrow-left"></i> Batal
            </a>
        </div>
    </div>
    <div class="box-body">
        <div class="row">
            <div class="col-sm-4 col-sm-offset-4">
            
                <?=form_open('ujian/getDataupload', array('judul_skripsi'=>'judul'), array('method'=>'add'))?>
                    <div class="form-group">
                        <label for="nama">Judul Skripsi</label>
                        <input placeholder="Nama" type="text" name="nama" class="form-control">
                        <small class="help-block"></small>
                    </div>
                     <div class="form-group">
                        <label for="upload">Upload Transkrip Nilai</label>
                        <input placeholder="file" type="file" name="file upload" class="form-control">
                        <small class="help-block"></small>
                    </div>
                    <div class="form-group">
                        <label for="upload">Upload KRS Terakhir</label>
                        <input placeholder="file" type="file" name="file upload" class="form-control">
                        <small class="help-block"></small>
                    </div>
                    <div class="form-group">
                        <label for="upload">Upload Proposal Skripsi</label>
                        <input placeholder="file" type="file" name="file upload" class="form-control">
                        <small class="help-block"></small>
                    </div>
                    <div class="form-group">
                        <label for="upload">Upload Jurnal Internasional 3</label>
                        <input placeholder="file" type="file" name="file upload" class="form-control">
                        <small class="help-block"></small>
                    </div>
                    <div class="form-group">
                        <label for="upload">Upload Jurnal Nasional 3</label>
                        <input placeholder="file" type="file" name="file upload" class="form-control">
                        <small class="help-block"></small>
                    </div>



                    <div class="form-group pull-right">
                        <button type="reset" class="btn btn-flat btn-default"><i class="fa fa-rotate-left"></i> Reset</button>
                        <button type="submit" id="submit" class="btn btn-flat bg-purple"><i class="fa fa-save"></i> Simpan</button>
                    </div>
                <?=form_close()?>
            </div>
        </div>
    </div>
</div>

<script src="<?=base_url()?>assets/dist/js/app/master/mahasiswa/add.js"></script>