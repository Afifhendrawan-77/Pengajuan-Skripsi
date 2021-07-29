<div class="box">
    <div class="box-header with-border">
        <h3 class="box-title">Form <?=$judul?></h3>
        <div class="box-tools pull-right">
        </div>
    </div>
    <div class="box-body">
    <div class="mt-9 mb 4"><a href="<?= base_url('upload/mhs_ujianskripsi') ?>"  class="btn btn-danger"><i class="fa fa-arrow-left"></i> Batal</a>
        <div class="row">
            <div class="col-sm-4 col-sm-offset-4">
   <?php echo form_open('upload/tambahujian');?>

                     <div class="form-group">
                        <label for="upload">Upload Draft Skripsi</label>
                        <input placeholder="file" type="file" name="data_skripsi" class="form-control">
                        <small class="help-block"></small>
                    </div>
                    <div class="form-group">
                        <label for="upload">Upload Scan Sertifikat TOEFL</label>
                        <input placeholder="file" type="file" name="sertifikat_toefel" class="form-control">
                        <small class="help-block"></small>
                    </div>
                    <div class="form-group">
                        <label for="upload">Upload Scan Sertifikat Ujian Kompetensi Teknisi Akuntansi atau Brevet</label>
                        <input placeholder="file" type="file" name="ujikom" class="form-control">
                        <small class="help-block"></small>
                    </div>
                    <div class="form-group">
                        <label for="upload">Upload Scan Ijazah SMA</label>
                        <input placeholder="file" type="file" name="ijazah" class="form-control">
                        <small class="help-block"></small>
                    </div>
                     <div class="form-group">
                        <label for="upload">Upload Transkrip Nilai dan KRS Terakhir</label>
                        <input placeholder="file" type="file" name="nilai_krs" class="form-control">
                        <small class="help-block"></small>
                    </div>
                     <div class="form-group">
                        <label for="upload">Upload 10 Sertifikat Kegiatan</label>
                        <input placeholder="file" type="file" name="sertifikat_kegiatan" class="form-control">
                        <small class="help-block"></small>
                    </div>
                     <div class="form-group">
                        <label for="upload">Upload Kartu Bimbingan</label>
                        <input placeholder="file" type="file" name="kartu_bimbingan" class="form-control">
                        <small class="help-block"></small>
                    </div>
                     <div class="form-group">
                        <label for="upload">Upload Kartu Keikutsertaan Seminar Proposal atau Semhas</label>
                        <input placeholder="file" type="file" name="seminar_proposal" class="form-control">
                        <small class="help-block"></small>
                    </div>
                     <div class="form-group">
                        <label for="upload">Upload Kartu Keikutsertaan Reboan</label>
                        <input placeholder="file" type="file" name="reboan" class="form-control">
                        <small class="help-block"></small>
                    </div>

                    <div class="form-group pull-right">
                        <button type="reset" class="btn btn-flat btn-default"><i class="fa fa-rotate-left"></i> Reset</button>
                        <button type="submit" id="submit" class="btn btn-flat bg-purple"><i class="fa fa-save"></i> Simpan</button>
                    </div>
                <?php echo form_close(); ?>
            </div>
        </div>
    </div>
</div>

<script src="<?=base_url()?>assets/dist/js/app/master/mahasiswa/add.js"></script>