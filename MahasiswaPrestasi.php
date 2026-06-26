<?php
require_once 'Mahasiswa.php';
class MahasiswaPrestasi extends Mahasiswa {
    private $instansi, $ipk;
    public function __construct($id, $nama, $nim, $sem, $ukt, $instansi, $ipk) {
        parent::__construct($id, $nama, $nim, $sem, $ukt);
        $this->instansi = $instansi; $this->ipk = $ipk;
    }
    public function hitungTagihanSemester() { return $this->tarifUkt * 0.25; }
    public function tampilkanSpesifikasiAkademik() { return "Instansi: {$this->instansi}, IPK Min: {$this->ipk}"; }
}