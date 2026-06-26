<?php
require_once 'MahasiswaMandiri.php';
require_once 'MahasiswaBidikmisi.php';
require_once 'MahasiswaPrestasi.php';

$db = new mysqli("localhost", "root", "", "db_uas_pbo_gilangrinakitwisnuadhityasumirat");
$res = $db->query("SELECT * FROM tabel_mahasiswa");
?>
<!DOCTYPE html>
<html>
<head>
    <style>
        body { font-family: 'Segoe UI', sans-serif; background: #fdfdfd; padding: 20px; color: #333; }
        table { width: 100%; border-collapse: collapse; margin-top: 20px; background: #fff; }
        th, td { border: 1px solid #ddd; padding: 12px; text-align: left; }
        th { background: #007bff; color: white; }
        tr:nth-child(even) { background-color: #f9f9f9; }
    </style>
</head>
<body>
    <h2>Data Mahasiswa</h2>
    <table>
        <tr><th>Nama</th><th>Jalur</th><th>Spesifikasi</th><th>Tagihan</th></tr>
        <?php
        while ($row = $res->fetch_assoc()) {
            if ($row['jenis_pembiayaan'] == 'Mandiri') 
                $mhs = new MahasiswaMandiri($row['id_mahasiswa'], $row['nama_mahasiswa'], $row['nim'], $row['semester'], $row['trif_ukt_nominal'], $row['golongan_ukt'], $row['nama_wali']);
            elseif ($row['jenis_pembiayaan'] == 'Bidikmisi') 
                $mhs = new MahasiswaBidikmisi($row['id_mahasiswa'], $row['nama_mahasiswa'], $row['nim'], $row['semester'], $row['trif_ukt_nominal'], $row['nomor_kip_kuliah'], $row['dana_saku_subsidi']);
            else 
                $mhs = new MahasiswaPrestasi($row['id_mahasiswa'], $row['nama_mahasiswa'], $row['nim'], $row['semester'], $row['trif_ukt_nominal'], $row['nama_instansi_beasiswa'], $row['minimal_ipk_syarat']);

            echo "<tr>
                <td>{$mhs->getNama()}</td>
                <td>{$row['jenis_pembiayaan']}</td>
                <td>{$mhs->tampilkanSpesifikasiAkademik()}</td>
                <td>Rp " . number_format($mhs->hitungTagihanSemester(), 0, ',', '.') . "</td>
            </tr>";
        }
        ?>
    </table>
</body>
</html>