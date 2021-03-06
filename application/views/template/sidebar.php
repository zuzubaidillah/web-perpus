    <?php
    // Query Menu
    $role_id = $this->session->userdata('role_id');
    $queryMenu = "SELECT *
                  FROM user_menu JOIN `user_access_menu`
                  ON `user_menu`.`menu_id` = `user_access_menu`.`menu_id` 
                  WHERE `user_access_menu`.`role_id`= $role_id";
    $subMenu = $this->db->query($queryMenu)->result_array();
    ?>
    <!-- Sidebar Menu -->
    <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">

        <div class="menu_section">
            <h3>Menu</h3>
            <ul class="nav side-menu">
                <!-- LOOPING SUB MENU -->

                <?php
                $n = 1;
                foreach ($subMenu as $sm) : ?>
                    <li id="<?= 'm' . $n++ ?>">
                        <a href="<?= base_url($sm['url']); ?>">
                            <i class="<?= $sm['icon']; ?>"></i> <?= $sm['title']; ?>
                        </a>
                    </li>
                <?php endforeach; ?>
            </ul><br>
        </div>
    </div>
    <!-- /sidebar menu -->

    <!-- /menu footer buttons -->
    <div class="sidebar-footer hidden-small">
        <a style="width: 100%;" title="Logout" href="<?= base_url() ?>auth/logout">Log Out
            <span style="margin-left: 10px;" class="glyphicon glyphicon-off" aria-hidden="true"></span>
        </a>
    </div>
    <!-- /menu footer buttons -->
    </div>
    </div>