<?php
require_once 'Mahasiswa.php';
class MahasiswaMandiri extends Mahasiswa {
    private $golongan, $wali;
    public function __construct($id, $nama, $nim, $sem, $ukt, $gol, $wali) {
        parent::__construct($id, $nama, $nim, $sem, $ukt);
        $this->golongan = $gol; $this->wali = $wali;
    }
    public function hitungTagihanSemester() { return $this->tarifUkt + 100000; }
    public function tampilkanSpesifikasiAkademik() { return "Golongan: {$this->golongan}, Wali: {$this->wali}"; }
}