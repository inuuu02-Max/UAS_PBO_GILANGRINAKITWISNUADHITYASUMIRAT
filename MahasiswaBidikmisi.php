<?php
require_once 'Mahasiswa.php';
class MahasiswaBidikmisi extends Mahasiswa {
    private $kip, $dana;
    public function __construct($id, $nama, $nim, $sem, $ukt, $kip, $dana) {
        parent::__construct($id, $nama, $nim, $sem, $ukt);
        $this->kip = $kip; $this->dana = $dana;
    }
    public function hitungTagihanSemester() { return 0; }
    public function tampilkanSpesifikasiAkademik() { return "No KIP: {$this->kip}, Dana Saku: Rp " . number_format($this->dana); }
}