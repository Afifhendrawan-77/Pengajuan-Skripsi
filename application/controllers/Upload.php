<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Upload extends CI_Controller
{
    public $mhs;
    public $user;

    public function __construct()
    {
        parent::__construct();
        if (!$this->ion_auth->logged_in()) {
            redirect('auth');
        }
        $this->load->library(['datatables', 'form_validation']);// Load Library Ignited-Datatables
        $this->load->helper('my');
        $this->load->model('Master_model', 'master');
        $this->load->model('Ujian_model', 'ujian');
        $this->load->model('Upload_model', 'upload');
        $this->form_validation->set_error_delimiters('', '');
		$this->load->model('Upload_model');
       
        $this->user = $this->ion_auth->user()->row();
        $this->mhs 	= $this->ujian->getIdMahasiswa($this->user->username);
    }

    	public function index(){

		$data['judul_skripsi'] = $this->Upload_model->get_data();
		$this->load->view('mhs_judulskripsi.php',$data);
	}

    public function mhs_judulskripsi()
    {
	
        $data = [
            'user' => $this->ion_auth->user()->row(),
            'judul'	=> 'Judul Skripsi',
            'subjudul' => 'Mahasiswa',
			'judul_skripsi' => $this->Upload_model->index(), //udulskripsi = variabel buat manggi view

        ];
        $this->load->view('_templates/dashboard/_header.php', $data);
        $this->load->view('upload/mhs_judulskripsi', $data);
        $this->load->view('_templates/dashboard/_footer.php');
    }

	public function dsn_judulskripsi()
    {
	
        $data = [
            'user' => $this->ion_auth->user()->row(),
            'judul'	=> 'Judul Skripsi',
            'subjudul' => 'Dosen',
			'judul_skripsi' => $this->Upload_model->index(), //udulskripsi = variabel buat manggi view

        ];
        $this->load->view('_templates/dashboard/_header.php', $data);
        $this->load->view('upload/dsn_judulskripsi', $data);
        $this->load->view('_templates/dashboard/_footer.php');
    }

	public function mhs_seminar()
	{

		$data = [
			'user' => $this->ion_auth->user()->row(),
			'judul'	=> ' Seminar Proposal',
			'subjudul' => 'Mahasiswa',
			'seminar_proposal' => $this->Upload_model->seminar(),
		];
		$this->load->view('_templates/dashboard/_header.php', $data);
		$this->load->view('upload/mhs_seminar');
		$this->load->view('_templates/dashboard/_footer.php');
	}

	public function dsn_seminar()
	{

		$data = [
			'user' => $this->ion_auth->user()->row(),
			'judul'	=> ' Seminar Proposal',
			'subjudul' => 'Dosen',
			'seminar_proposal' => $this->Upload_model->seminar(),
		];
		$this->load->view('_templates/dashboard/_header.php', $data);
		$this->load->view('upload/dsn_seminar');
		$this->load->view('_templates/dashboard/_footer.php');
	}

	public function mhs_ujianskripsi()
	{
		$data = [
			'user' => $this->ion_auth->user()->row(),
			'judul'	=> ' Ujian Skripsi',
			'subjudul' => 'Mahasiswa',
			'ujian_skripsi' => $this->Upload_model->ujian_skripsi(),

		];
		$this->load->view('_templates/dashboard/_header.php', $data);
		$this->load->view('upload/mhs_ujianskripsi');
		$this->load->view('_templates/dashboard/_footer.php');
	}

	public function dsn_ujianskripsi()
	{
		$data = [
			'user' => $this->ion_auth->user()->row(),
			'judul'	=> ' Ujian Skripsi',
			'subjudul' => 'Dosen',
			'ujian_skripsi' => $this->Upload_model->ujian_skripsi(),

		];
		$this->load->view('_templates/dashboard/_header.php', $data);
		$this->load->view('upload/dsn_ujianskripsi');
		$this->load->view('_templates/dashboard/_footer.php');
	}
	
	public function pengajuan_judul()
	{
		$user = $this->ion_auth->user()->row();

		$data = [
			'user' 		=> $user,
			'judul'	=> 'Pengajuan Judul Skripsi',
			'subjudul' => 'Mahasiswa',
			'mhs' 		=> $this->ujian->getIdMahasiswa($user->username),
			
			
		];
		$this->load->view('_templates/dashboard/_header.php', $data);
		$this->load->view('upload/pengajuan_judul', $data);
		$this->load->view('_templates/dashboard/_footer.php');
	}

	public function pengajuan_seminar()
	{

		$user = $this->ion_auth->user()->row();
		
		$data = [
			'user' 		=> $user,
			'judul'	=> 'Pengajuan Seminar Proposal',
			'subjudul' => 'Mahasiswa',
			'mhs' 		=> $this->ujian->getIdMahasiswa($user->username),
			//'pengajuan_seminar' => $this->Upload_model->input_data(),
		];
		$this->load->view('_templates/dashboard/_header.php', $data);
		$this->load->view('upload/pengajuan_seminar',$data);
		$this->load->view('_templates/dashboard/_footer.php');
	}

	public function pendaftaran_ujian()
	{

		$user = $this->ion_auth->user()->row();
		
		$data = [
			'user' 		=> $user,
			'judul'	=> 'Pendaftaran Ujian Skripsi',
			'subjudul' => 'Mahasiswa',
			'mhs' 		=> $this->ujian->getIdMahasiswa($user->username),
		];
		$this->load->view('_templates/dashboard/_header.php', $data);
		$this->load->view('upload/pendaftaran_ujian',$data);
		$this->load->view('_templates/dashboard/_footer.php');
	}
	public function suksesdospem()
    {
	
        $data = [
            'user' => $this->ion_auth->user()->row(),
            'judul'	=> 'Dosen Pembimbing',
            'subjudul' => 'Mahasiswa',
		

        ];
		$this->load->view('_templates/dashboard/_header.php', $data);
		$this->load->view('upload/dosensukses');
		$this->load->view('_templates/dashboard/_footer.php');
    }

	public function dospem()
    {
	
        $data = [
            'user' => $this->ion_auth->user()->row(),
            'judul'	=> 'Dosen Pembimbing',
            'subjudul' => 'Mahasiswa',
			'dsn_bimbing' => $this->Upload_model->dosen_pembimbing(),

        ];
		$this->load->view('_templates/dashboard/_header.php', $data);
		$this->load->view('upload/dospem',$data);
		$this->load->view('_templates/dashboard/_footer.php');
    }

	public function tambahdospem()
    {
		$user = $this->ion_auth->user()->row();
		
		$data = [
			'user' 		=> $user,
            'judul'		=> 'Pengajuan Dosen Pembimbing',
            'subjudul' 	=> 'Mahasiswa',
			'mhs' 		=> $this->ujian->getIdMahasiswa($user->username),

        ];
		$this->load->view('_templates/dashboard/_header.php', $data);
		$this->load->view('upload/add_dospem',$data);
		$this->load->view('_templates/dashboard/_footer.php');
    }

	public function tambahketerangan()
    {
		$user = $this->ion_auth->user()->row();
		
		$data = [
			'user' 		=> $user,
            'judul'		=> 'Dosen Memberi Keterangan',
            'subjudul' 	=> 'Dosen',
			'mhs' 		=> $this->ujian->getIdMahasiswa($user->username),

        ];
		$this->load->view('_templates/dashboard/_header.php', $data);
		$this->load->view('upload/dsn_keterangan',$data);
		$this->load->view('_templates/dashboard/_footer.php');
    }
	
	// PENGAUPLOADAN
    public function tambahaksi()
	{
		$data = array(
		'id_judulskripsi'	 	=> $this->input->post('id_judulskripsi'),
		'nama'	 				=> $this->input->post('nama'),
		'judul' 				=> $this->input->post('judul'),
		'transkip_nilai' 		=> $this->input->post('transkip_nilai'),
		'krs_terakhir' 			=> $this->input->post('krs_terakhir'),
		'proposal_skripsi' 		=> $this->input->post('proposal_skripsi'),
		'jurnal_internasional3'	=> $this->input->post('jurnal_internasional3'),
		'jurnal_nasional3' 		=> $this->input->post('jurnal_nasional3'),
		);
			$this->db->insert('skripsi', $data);
		redirect('upload/mhs_judulskripsi');
	}

	public function tambahseminar()
	{
		$data = array(
		'id_seminar'	 		=> $this->input->post('id_seminar'),
		'proposal_skripsi'		=> $this->input->post('proposal_skripsi'),
		'bukti_acc' 			=> $this->input->post('bukti_acc'),
		'kartu_bimbingan' 		=> $this->input->post('kartu_bimbingan'),
		'kartu_sempro' 			=> $this->input->post('kartu_sempro'),
		'keterangan' 			=> $this->input->post('keterangan'),
		);
			$this->db->insert('seminar', $data);
		redirect('upload/mhs_seminar');
	}

	public function tambahujian()
	{
		$data = array(
		'id_skripsi'	 			=> $this->input->post('id_skripsi'),
		'data_skripsi'	 			=> $this->input->post('data_skripsi'),
		'sertifikat_toefel'			=> $this->input->post('sertifikat_toefel'),
		'ujikom' 					=> $this->input->post('ujikom'),
		'ijazah' 					=> $this->input->post('ijazah'),
		'nilai_krs' 				=> $this->input->post('nilai_krs'),
		'sertifikat_kegiatan' 		=> $this->input->post('sertifikat_kegiatan'),
		'kartu_bimbingan' 			=> $this->input->post('kartu_bimbingan'),
		'seminar_proposal' 			=> $this->input->post('seminar_proposal'),
		'reboan' 					=> $this->input->post('reboan'),
		);
			$this->db->insert('daftarujian', $data);
		redirect('upload/mhs_ujianskripsi');
	}

	public function tambahdosenpem()
	{
		$data = array(
			'id_dosen'	 	=> $this->input->post('id_dosen'),
			'nama_dospem'			=> $this->input->post('nama_dospem'),
			'dosen_tamu' 			=> $this->input->post('dosen_tamu'),

		);
			$this->db->insert('dospem', $data);
		redirect('upload/dospem');
	}

	public function tambahketerangandsn()
	{
		$data = array(
		'id_judulskripsi'	 	=> $this->input->post('id_judulskripsi'),
		'keterangan'			=> $this->input->post('keterangan'),
		'status' 				=> $this->input->post('status'),
		);
			$this->db->insert('skripsi', $data);
		redirect('upload/dsn_judulskripsi');
	}

// edit status
public function edit($id_judulskripsi) 
{
     $data['upload'] = $this->Upload_model->edit($id_judulskripsi)->row();
	 $this->load->view('_templates/dashboard/_header.php');
	 $this->load->view('upload/dsn_keterangan',$data);
	 $this->load->view('_templates/dashboard/_footer.php');
}
public function edit_simpan($id_judulskripsi)
{
     $data = array(
          'keterangan' => $this->input->post('keterangan'),
          'status' => $this->input->post('status'),
     );

     if($this->Upload_model->update($data, $id_judulskripsi) == TRUE) {
          $this->session->set_flashdata('upload', true);
     }
     else {
          $this->session->set_flashdata('upload', false);
     }

     redirect('dsn_judulskripsi');
}

public function validasi()
	{
		
		$user 	= $this->ion_auth->user()->row();
		$dosen 	= $this->upload->getIdDosen($user->username);

		$this->form_validation->set_rules('keterangan');
		$this->form_validation->set_rules('status');
	
	}

public function save()
	{
		$this->validasi();
		$this->load->helper('string');

		$method 				= $this->input->post('method', true);
		$id_judulskripsi 					= $this->input->post('id_judulskripsi', true);
		$keterangan		= $this->input->post('keterangan', true);
		$status			= $this->input->post('status', true);


		if( $this->form_validation->run() === FALSE ){
			$data['status'] = false;
			$data['errors'] = [
				'id_judulskripsi' 	=> form_error('id_judulskripsi'),
				'keterangan' 	=> form_error('keterangan'),
				'status' 	=> form_error('status'),
				
			];
		}else{
			$input = [
				'id_judulskripsi' 	=> $id_judulskripsi,
				'keterangan' 	=> $keterangan,
				'status' 	=> $status,
			];
			if($method === 'tambahketerangan'){
				$input['id_judulskripsi']	= $id_judulskripsi;
				$action = $this->master->create('skripsi', $input);
			}else if($method === 'edit'){
				$judul = $this->input->post('judul', true);
				$action = $this->master->update('skripsi', $input, 'id_judulskripsi', $id_judulskripsi);
			}
			$data['status'] = $action ? TRUE : FALSE;
		}
		$this->output_json($data);
	}
	public function output_json($data, $encode = true)
	{
        if($encode) $data = json_encode($data);
        $this->output->set_content_type('application/json')->set_output($data);
	}
	
	public function json($id=null)
	{

		$this->output_json($this->upload->getById($id), false);
	}

}