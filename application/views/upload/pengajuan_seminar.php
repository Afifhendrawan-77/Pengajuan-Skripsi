<div class="box">
    <div class="box-header with-border">
        <h3 class="box-title">Form <?=$judul?></h3>
        <div class="box-tools pull-right">
        </div>
    </div>
    <div class="box-body">
    <div class="mt-9 mb 4"><a href="<?= base_url('upload/mhs_seminar') ?>"  class="btn btn-danger"><i class="fa fa-arrow-left"></i> Batal</a>
        <div class="row">
            <div class="col-sm-4 col-sm-offset-4">
            <?php echo form_open('upload/tambahseminar');?>
                   
                     <div class="form-group">
                        <label for="upload">Upload Proposal Skripsi </label>
                        <input placeholder="file" type="file" name="proposal_skripsi" class="form-control">
                        <small class="help-block"></small>
                    </div>
                    <div class="form-group">
                        <label for="upload">Upload Bukti Acc Dosen pembimbing</label>
                        <input placeholder="file" type="file" name="bukti_acc" class="form-control">
                        <small class="help-block"></small>
                    </div>
                    <div class="form-group">
                        <label for="upload">Upload Kartu bimbingan</label>
                        <input placeholder="file" type="file" name="kartu_bimbingan" class="form-control">
                        <small class="help-block"></small>
                    </div>
                    <div class="form-group">
                        <label for="upload">Upload Kartu Keikutsertaan Sempro atau Semhas</label>
                        <input placeholder="file" type="file" name="kartu_sempro" class="form-control">
                        <small class="help-block"></small>
                    </div>
                    <div class="form-group">
                         <label>Keterangan</label>
                          <textarea name="keterangan" required class="form-control" rows="3" placeholder="Masukan Keterangan"></textarea>
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