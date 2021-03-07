    <!-- Page -->
    <div class="page">
        <div class="page-header page-header-bordered">
            <h1 class="page-title text-center">Scan QR-CODE</h1>
        </div>

        <div class="page-content">
            <!-- Panel -->
            <div class="row justify-content-center">
                <ul class="nav nav-tabs nav-tabs-line" role="tablist">
                    <li class="nav-item">
                        <a class="nav-link active" data-toggle="tab" href="#ViaCamera" aria-controls="ViaCamera" role="tab" aria-selected="false">
                            <i class="icon fa-video-camera" style="font-size: 15px;" aria-hidden="true"></i>Camera
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-toggle="tab" href="#ViaUpfile" aria-controls="ViaUpfile" role="tab" aria-selected="false">
                            <i class="icon md-upload" style="font-size: 15px;" aria-hidden="true"></i>Uploade Qr-Code
                        </a>
                    </li>
                </ul>
            </div>
            <div class="panel-body" style="padding: 0px;">
                <div class="tab-content">
                    <div class="tab-pane active" id="ViaCamera" role="tabpanel">
                        <div class="row justify-content-center">
                            <div class="col-md-6">
                                <div class="panel pricing-list">
                                    <h3 class="panel-title p-1px">Arahkan Kode QR Ke Kamera!</h3>
                                    <div class="example">
                                        <video class="col-md-12" id="preview"></video>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>




                    <div class="tab-pane" id="ViaUpfile" role="tabpanel">
                        <div class="row justify-content-center">
                            <div class="col-md-6">
                                <div class="panel pricing-list">
                                    <h3 class="panel-title p-1px">Uploade FILE QR-CODE di e-Sertifikat</h3>
                                    <!-- <form method="post" action="<?= base_url(); ?>qrvalidasi/hasil"> -->
                                    <div class="example">
                                        <div class="" id="mainbody">
                                            <table class="table table-bordered" id="outdiv" border="1">
                                                <div class="row justify-content-center">
                                                    <div id="qrfile" class="col-md-12">
                                                        <!-- class="img-rounded img-bordered img-bordered-primary" -->
                                                        <canvas id="out-canvas" class="img-rounded col-md-12" width="320" height="240" style="padding: 0px;"></canvas>
                                                        <div class="text-center" id="imghelp">
                                                            <p>drag and drop a QRCode here
                                                                <br>or select a file
                                                            </p>
                                                            <input class="content-center" type="file" onchange="handleFiles(this.files)" />
                                                        </div>
                                                    </div>
                                                </div>
                                            </table>
                                        </div>
                                        <button class="btn btn-primary" onclick="cari_qrcode()">Cari ?</button>
                                        <div id="result"></div>
                                    </div>
                                    <!-- </form> -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Modal -->
    <div class="modal fade example-modal-lg show" aria-labelledby="exampleOptionalLarge" id="myModal" role="dialog">
        <div class="modal-dialog modal-simple modal-lg">
            <!-- Modal content-->
            <div class="modal-content modal-lg">
                <!-- <div class="modal-body" style="padding:40px 50px;"> -->
                <!-- <div class="modal-header"></div> -->
                <div class="modal-body row">
                    <table border="3" cellpadding="80" cellspacing="0" width="100%">
                        <tr>
                            <td style="padding: 1em;">
                                <table width="100%" border="0">
                                    <tr>
                                        <td colspan="5">
                                            <center>
                                                <img src="<?= base_url(); ?>resources/images/logo.png" width="100">
                                                <h4>UNIVERSITAS KH. ABDUL WAHAB HASBULLAH</h4>
                                                <p>Jl. Garuda No.09, Tambak Rejo, Kec. Jombang, Kabupaten Jombang, Jawa Timur 61415</p>
                                                <hr>
                                                <p>Menerangkan Bahwa: </p>
                                    <tr>
                                        <td width="25%"></td>
                                        <td width="15%">Acara</td>
                                        <td id="nmac"></td>
                                        <td width="5%"></td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td>Tanggal</td>
                                        <td id="tglac"></td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td>Nama Peserta</td>
                                        <td id="nmpe"></td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td>Tanggal Lahir</td>
                                        <td id="tgl_lahir"></td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td>Peserta Dari</td>
                                        <td id="ktpe"></td>
                                        <td></td>
                                    </tr>
                                    </center>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="5" align="center" id="tmp_tabel">
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <!-- <td id="myfixed11" style="width: 50px; height: 50px; background: red;"></td> -->
                            <td></td>
                            <td></td>
                        </tr>
                    </table>
                    </td>
                    </tr>
                    </table>
                </div>
                <div class="modal-footer">
                    <button type="cancel" class="btn btn-round btn-default" data-dismiss="modal">Kembali</button>
                </div>
                <!-- </div> -->
            </div>
        </div>
    </div>
