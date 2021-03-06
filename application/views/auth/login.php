  <body class="login">
    <div>
      <a class="hiddenanchor" id="signup"></a>
      <a class="hiddenanchor" id="signin"></a>

      <div class="login_wrapper">
        <div class="animate form login_form">
          <section class="login_content">
            <form method="post" action="<?= base_url('auth'); ?>">
              <h1>Login Form</h1>
              <div>
              	<?= $this->session->flashdata('message'); ?>
              </div>
              <div>
              	<?= form_error('username', '<small class="text-danger">', '</small>'); ?>
                <input type="text" class="form-control" placeholder="Username" id="username" name="username" value="<?= set_value('username');?>" />
                
              </div>
              <div>
              	<?= form_error('password', '<small class="text-danger">', '</small>'); ?>
                <input type="password" class="form-control" placeholder="Password" id="password" name="password"/>
              </div>
              <div>
                <button class="btn btn-default submit" type="submit">Log in</button>
              </div>
              <hr>
                <div class="clearfix"></div>
                <br />

                <div>
                  <h1><i class="fa fa-book" style="margin-right: 10px;"></i>Web Perpustakaan</h1>
                  <p>© <?= date('Y'); ?> All Rights Reserved.</p>
                </div>
              </div>
            </form>
          </section>
        </div>
      </div>
    </div>
  </body>
</html>
