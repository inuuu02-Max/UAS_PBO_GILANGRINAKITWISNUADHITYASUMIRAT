<?php
abstract class Mahasiswa {
    protected $id, $nama, $nim, $semester, $tarifUkt;

    public function __construct($id, $nama, $nim, $semester, $ukt) {
        $this->id = $id; $this->nama = $nama; $this->nim = $nim;
        $this->semester = $semester; $this->tarifUkt = $ukt;
    }

    abstract public function hitungTagihanSemester();
    abstract public function tampilkanSpesifikasiAkademik();
}