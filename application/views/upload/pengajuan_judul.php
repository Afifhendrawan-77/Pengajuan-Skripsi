<div class="box">
    <div class="box-header with-border">
        <h3 class="box-title">Form <?=$judul?></h3>
        <div class="box-tools pull-right">
        </div>
    </div>
    <div class="box-body">
    <div class="mt-9 mb 4"><a href="<?= base_url('upload/mhs_judulskripsi') ?>"  class="btn btn-danger"><i class="fa fa-arrow-left"></i> Batal</a>
        <div class="row">
            <div class="col-sm-4 col-sm-offset-4">
            <?php echo form_open('upload/tambahaksi');?>
            <div class="form-group">
                        <label for="judul">Nama Mahasiswa</label>
                        <input placeholder="nama" type="text" name="nama" class="form-control">
                        <small class="help-block"></small>
                    </div>
                    <div class="form-group">
                        <label for="judul">Judul Skripsi</label>
                        <input placeholder="Judul" type="text" name="judul" class="form-control">
                        <small class="help-block"></small>
                    </div>
                     <div class="form-group">
                        <label for="upload">Upload Transkrip Nilai</label>
                        <input placeholder="file" type="file" name="transkip_nilai" class="form-control">
                        <small class="help-block"></small>
                    </div>
                    <div class="form-group">
                        <label for="upload">Upload KRS Terakhir</label>
                        <input placeholder="file" type="file" name="krs_terakhir" class="form-control">
                        <small class="help-block"></small>
                    </div>
                    <div class="form-group">
                        <label for="upload">Upload Proposal Skripsi</label>
                        <input placeholder="file" type="file" name="proposal_skripsi" class="form-control">
                        <small class="help-block"></small>
                    </div>
                    <div class="form-group">
                        <label for="upload">Upload Jurnal Internasional 3</label>
                        <input placeholder="file" type="file" name="jurnal_internasional3" class="form-control">
                        <small class="help-block"></small>
                    </div>
                    <div class="form-group">
                        <label for="upload">Upload Jurnal Nasional 3</label>
                        <input placeholder="file" type="file" name="jurnal_nasional3" class="form-control">
                        <small class="help-block"></small>
                    </div>



                    <div class="form-group pull-right">
                        <button type="reset" class="btn btn-flat btn-default"><i class="fa fa-rotate-left"></i> Reset</button>
                        <button type="submit"  id="submit" class="btn btn-flat bg-purple"><i class="fa fa-save"></i> Simpan</button>
                    </div>
                    <?php echo form_close();?>
            </div>
        </div>
    </div>
</div>

<script src="<?=base_url()?>assets/dist/js/app/master/mahasiswa/add.js"></script>