<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta name="description" content="bootstrap material admin template">
    <meta name="author" content="">

    <title>App e-sertifikat - <?= $title; ?></title>

    <link rel="apple-touch-icon" href="<?php echo base_url() ?>resources/images/logo.png">
    <link rel="shortcut icon" href="<?php echo base_url() ?>resources/images/logo.png">

    <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=Roboto:300,400,500,300italic'>
        <!-- icons -->
        <link rel="stylesheet" href="<?= base_url() ?>template/global/fonts/font-awesome/font-awesome.css">
        <style type="text/css">
        </style>
</head>

<body>
    <!-- Page -->
    <?php 
    if (isset($hasil_cek_qrcode)) {
      if ($hasil_cek_qrcode!=0) {
        foreach ($hasil_cek_qrcode as $key){ ?>
          <table border="0">
            <tr>
              <td>
                  <img src="<?= base_url(); ?>resources/images/logo.png" width="150">
              </td>
              <td class="td" style="width: 900px; text-align: center;">
                <h1>UNIVERSITAS KH. ABDUL WAHAB HASBULLAH</h1>
                <h1 style="font-family: 'arial', Times, serif; font-size: 30px; font-weight: bold;"><?= $key->nama_acara; ?></h1>
                <h3 style="font-family: 'times', Times, serif; font-size: 20px;">Sistem Informasi e-Sertifikat</h3>
                <p style="font-family: 'arial', Times, serif; font-size: 15px;">Jl. Garuda No.09, Tambak Rejo, Kec. Jombang, Kabupaten Jombang, Jawa Timur 61415</p>
              </td>
              <td>
                <img src="<?= base_url(); ?>resources/images/logo.png" width="150">
              </td>
            </tr>
          </table>
          <hr style="">
          <h3 style="text-align: center; margin-bottom: -20px;">Diberikan Kepada :</h3>
          <table border="0" cellpadding="50" width="100%">
            <tr>
              <td>
                <center><h1>Nama : <u><?php echo strtoupper($key->nama_pe); ?></u></h1></center>
                <center><h4>Tanggal : <u><?php echo date_indo($key->tgl_lahir); ?></u></h4></center>
                <br>
                <table width="100%" border="0">
                  <tr>
                    <td colspan="3">
                      <center>
                        <br>
                        <p style="font-size: 18px;">Sertifikat ini diberikan sebagai contoh saja, sekedar untuk mencoba pembuatan QR Code dan Contoh Validasinya.</p>
                        <p style="font-size: 18px;">Menerangkan Bahwa: </p><br>
                        <p style="font-size: 18px;">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ull.</p>
                        <br>
                        <br>
                        <br>
                      </center>
                    </td>
                  </tr>
                  <tr>
                    <td></td>
                    <td width="70%"></td>
                    <td width="20%">
                      <br/>
                      <br/>
                      <br/>
                    </td>
                  </tr>
                  <tr>
                    <td width="30%">






                      <?php  
                        $this->load->library('ciqrcode');
                        QRcode::png(base64_encode(base64_encode(base64_encode($key->id_peserta.'_'.$key->id_acara))),'image.png','H',4,4);
                      ?>









                      <img width="100" src="image.png">
                      <!-- <img width="100" src="<?= base_url(); ?>resources/img_qrcode/<?= $key->id_peserta; ?>_<?= $key->id_acara; ?>.png"> -->
                    </td>
                    <td width="40%"></td>
                    <td width="30%">
                      <p>Jombang, <?php echo date_indo(date('Y-m-d')); ?></p>
                      <br/>
                      <br/>
                      <br/>
                      <br/>
                      <p><b>UNWAHA.ac.id</b></p>
                    </td>
                  <tr>
                </table>
              </td>
            </tr>
          </table>
        <?php }}else{ ?>
          <div class="alert alert-warning">
              <center>
                <strong><h1>Data Tidak Ada</h1></strong>
              </center>
          </div>
        <?php }}else{ ?>
          <div class="alert alert-danger">
              <center>
                <strong>Maaf, QR-Code tidak Ada</strong>
              </center>
          </div>
        <?php } ?>
</body>
</html>