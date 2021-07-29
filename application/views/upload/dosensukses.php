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
            <!-- <div class="form-group">
                        <label for="judul">NIP</label>
                        <input placeholder="nip" type="text" name="nip" class="form-control">
                        <small class="help-block"></small>
                    </div>
                    <div class="form-group">
                        <label for="judul">Nama Dosen</label>
                        <input placeholder="nama" type="text" name="nama" class="form-control">
                        <small class="help-block"></small>
                    </div>
                     <div class="form-group">
                        <label for="upload">Email Dosen</label>
                        <input placeholder="email" type="text" name="email" class="form-control">
                        <small class="help-block"></small>
                    </div>
                    <div class="form-group">
                        <label for="upload">Mata KUliah</label>
                        <input placeholder="matkul" type="text" name="matkul" class="form-control">
                        <small class="help-block"></small>
                    </div> -->
                    <label for="Nama Pembimbing">
                    <div class="alert alert-primary" role="alert">
                   
                    </div>
    <table>
        
    <tr>
    <div class="alert alert-success" role="alert">
  <h4 class="alert-heading">Selamat Berhasil Disimpan</h4>
  <p>Segera hubungi dosen pembimbing anda.</p>


</div>
<tr>
              <div class="form-group">
                        <label for="exampleFormControlSelect1">Nama Mahasiswa</label>
                        <select class="form-control" name="status" id="exampleFormControlSelect1">
                        <option>Pilih...</option>
                        <option>Imam Nugroho</option>
                        <option>Imam Darto</option>

                        </select>
              </div>
              <div class="form-group">
                        <label for="exampleFormControlSelect1">Nama Dosen Pembimbing</label>
                        <select class="form-control" name="status" id="exampleFormControlSelect1">
                        <option>Pilih...</option>
                        <option>Imam Nugroho</option>
                        <option>Imam Darto</option>

                        </select>
              </div>
              <div class="form-group">
                        <label for="exampleFormControlSelect1">Nama Dosen Tamu</label>
                        <select class="form-control" name="status" id="exampleFormControlSelect1">
                        <option>Pilih...</option>
                        <option>Imam Nugroho</option>
                        <option>Imam Darto</option>

                        </select>
              </div>
</tr>
    </table>
</label>


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