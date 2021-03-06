<?php
defined('BASEPATH') OR exit('No direct script access allowed');
    include_once APPPATH.'/third_party/phpqrcode/qrlib.php';
    class Phpqrcode {
        public $tempdir;
        public $ukuran;
        public $padding;
        public $quality;
        public $hasil;
        // public function __construct($param = '"en-GB-x","A4","","",10,10,10,10,6,3'){
     // public function __construct($param = '"$id_peserta","$phptempdir"."$namafile",$phpquality,$phpukuran,$phppadding'){
        public function __construct($hasil = '"$id_peserta","$phptempdir"."$namafile","$phpquality","$phpukuran","$phppadding"'){
            $this->hasil = $hasil;
            // $this->qrcode = QRCode::png($this->hasil);
        }
    }