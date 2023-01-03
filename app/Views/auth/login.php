<?= $this->extend('auth/templates/index'); ?>

<?= $this->section('content'); ?>


<div id="conts" class="bg-image d-flex align-items-center">

    <div class="container border p-5 rounded-5 col-3 bg-dark border-secondary">
        <div class="text-center text-white">
            <h4 style="line-height: 0.7;">Hello Capt</h4>
            <h6>Dock Management System</h6>
        </div>
        <form action="<?= route_to('login') ?>" method="post">
            <?= csrf_field() ?>
            <div class="">
                <hr style="border-top: 3px solid #BF33C1; ">
            </div>

            <div class="text-muted">
                <label for="login" class="form-label">Email :</label>
                <input type="email" name="login" class="form-control <?php if (session('errors.login')) : ?>is-invalid<?php endif ?>" placeholder="<?= lang('Auth.email') ?>" style="background-color:#545252 ; border-style:none; color:aliceblue;">
                <div class="invalid-feedback">
                    <?= session('errors.login') ?>
                </div>
            </div>
            <div class="text-muted">
                <label for="password" class="form-label"><?= lang('Auth.password') ?></label>
                <input type="password" name="password" class="form-control  <?php if (session('errors.password')) : ?>is-invalid<?php endif ?>" placeholder="<?= lang('Auth.password') ?>" style="background-color:#545252 ; border-style:none; color:aliceblue;">
                <div class="invalid-feedback">
                    <?= session('errors.password') ?>
                </div>
            </div>
            <?php if ($config->allowRemembering) : ?>
                <div class="form-check">
                    <label class="form-check-label">
                        <input type="checkbox" name="remember" class="form-check-input " <?php if (old('remember')) : ?> checked <?php endif ?>>
                        <?= lang('Auth.rememberMe') ?>
                    </label>
                </div>
            <?php endif; ?>
            <div class="text-center">
                <button type="submit" class="btn btn-primary mt-3 rounded-1 btn-block w-100">Login</button>
            </div>
        </form>

        <?php if ($config->allowRegistration) : ?>
						<p><a href="<?= url_to('register') ?>"><?= lang('Auth.needAnAccount') ?></a></p>
					<?php endif; ?>
        <div class="text-center text-muted mt-3" style="font-size:12px">
            
            <p style="line-height: 0.1;">Butuh bantuan? <a href="">Kontak Kami</a></p>
        </div>

    </div>
</div>

<?= $this->endSection(); ?>