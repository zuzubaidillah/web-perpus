<!DOCTYPE html>
<html>

<head>
	<title></title>
</head>
<style>
	body {
		font-family: sans-serif !important;
		font-size: 8pt !important;
	}

	p {
		margin: 0pt;
	}

	table.items {
		/*border: 0.3mm solid #000000;*/
	}

	h3,
	p {
		text-align: center;
		clear: both;
		margin: 0pt;
		padding: 0pt;
	}

	td {
		clear: both;
		margin: 1pt;
		padding: 1pt;
	}

	.hilangborder td {
		border-style: none none !important;
	}

	/* tbody td{
            border-style: none solid !important;
            } */

	.borders {
		border-style: solid solid !important;
	}

	thead th {
		border: 1px solid black;
	}
</style>

<body>
	<table class="items" width="100%" style="font-size: 8pt; " cellpadding="5">
		<tr>
			<td width="5%">1</td>
			<td width="5%">2</td>
			<td width="5%">3</td>
			<td width="3%">4</td>
			<td width="3%">5</td>
			<td width="5%">6</td>
			<td width="5%">7</td>
			<td width="5%">8</td>
			<td width="3%">9</td>
			<td width="3%">10</td>
			<td width="5%">11</td>
			<td width="5%">12</td>
			<td width="5%">13</td>
			<td width="3%">14</td>
			<td width="3%">15</td>
			<td width="5%">16</td>
			<td width="5%">17</td>
			<td width="5%">18</td>
			<td width="3%">19</td>
			<td width="3%">20</td>
			<td width="5%">21</td>
			<td width="5%">22</td>
			<td width="5%">23</td>
			<td width="1%">24</td>
		</tr>
		<tr>
			<?php
			$simpan_kode_buku = "xxx";
			$databuku = $this->M_menu->tabelsql("SELECT kode_buku FROM buku limit 11");
			if ($databuku !== 0) {
				$row = '';
				foreach ($databuku as $dt) {
					$kode = $dt->kode_buku;
					$row .= "'".$kode."',";
					$path = './assets/images/qrcode/'.$kode.'.png';
					$type = pathinfo($path, PATHINFO_EXTENSION);
					$dd = file_get_contents($path);
					$base64 = 'data:image/' . $type . ';base64,' . base64_encode($dd);
			?>
					<td colspan="3" style="border: 1px solid black;">
						<img width="13%" src="<?= $base64; ?>">
						<center>
							<?= $kode; ?>
						</center>
					</td>
					<td style="border-right: 1px solid black;"></td>
					<td></td>
				<?php } ?>
			<?php } ?>
		</tr>
		<tr>
			<td height="25" colspan="24" style="border-bottom: 1px solid black;"></td>
		</tr>

	</table>
</body>

</html>