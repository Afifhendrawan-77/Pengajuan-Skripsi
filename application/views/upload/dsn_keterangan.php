<div class="box">
    <div class="box-header with-border">
        <h3 class="box-title">Form <?=$judul?></h3>
        <div class="box-tools pull-right">
        </div>
    </div>

    <div class="box-body">
        <div class="mt-9 mb 4"><a href="<?= base_url('upload/dsn_judulskripsi') ?>"  class="btn btn-danger"><i class="fa fa-arrow-left"></i> Batal</a>
    <div class="box-body">
        <div class="row">
            <div class="col-sm-4 col-sm-offset-4">
            <?php echo form_open('upload/tambahketerangandsn');?>
            <div class="form-group">
                        <label for="judul">Keterangan</label>
                        <div class="form-group">
                            <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" name="keterangan"></textarea>
                            <div class="valid-feedback">
        Looks good!
      </div>
                        </div>
                        <small class="help-block"></small>
                    </div>
            <div class="form-group">
                        <label for="exampleFormControlSelect1">Status</label>
                        <select class="form-control" name="status" id="exampleFormControlSelect1">
                        <option>Pilih...</option>
                        <option>Diterima</option>
                        <option>Ditolak</option>

                        </select>
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