<!DOCTYPE html>
<html>

<head>
	<title></title>
</head>

<body>
		<?php
		$simpan_kode_buku = "xxx";
		$databuku = $this->M_menu->tabelsql("SELECT kode_buku FROM buku");
		if ($databuku !== 0) {
			$row = '';
			foreach ($databuku as $dt) {
				$kode = $dt->kode_buku;
				$row .= "'" . $kode . "',";
				$path = './assets/images/qrcode/' . $kode . '.png';
				$type = pathinfo($path, PATHINFO_EXTENSION);
				$dd = file_get_contents($path);
				$base64 = 'data:image/' . $type . ';base64,' . base64_encode($dd);
		?>
				<div style="float: right; width: 18%; border: 1px solid black; text-align: center; padding: 5px;">
					<img width="77%" src="<?= $base64; ?>">
					<center>
						<?= $kode; ?>
					</center>
				</div>
			<?php } ?>
		<?php } ?>
</body>

</html>