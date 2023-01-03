<?= $this->extend('auth/templates/index'); ?>

<?= $this->section('content'); ?>


<div class="bg-image d-flex align-items-center" id="conts">

    <div class=" container border p-5 rounded-5 col-3 bg-dark border-secondary">
        <div class="text-center text-white">
            <h4 style="line-height: 0.7;">Hello Capt</h4>
            <h6>Dock Management System</h6>
        </div>
        <div>
            <hr style="border-top: 3px solid #BF33C1; ">
        </div>
        <?= view('Myth\Auth\Views\_message_block') ?>
        <form action="<?= url_to('register') ?>" method="post">
            <?= csrf_field() ?>

            <div class="form-group text-white">
                <label for="nama_pendaftar" class="form-label">Nama Perusahaan :</label>
                <input type="text" name="perusahaan" class="form-control p-2 mb-1 bg-secondary text-white" placeholder="Nama Perusahaan">
            </div>
            <div class="form-group text-white">
                <label for="npwp" class="form-label">NPWP :</label>
                <input type="number" name="npwp" class="form-control p-2 mb-1 bg-secondary text-white" placeholder="NPWP">
            </div>
            <div class="form-group text-white">
                <label for="email"  class="form-label"><?= lang('Auth.email') ?></label>
                <input type="email" class="form-control p-2 mb-1 bg-secondary text-white <?php if (session('errors.email')) : ?>is-invalid<?php endif ?>" name="email" aria-describedby="emailHelp" placeholder="<?= lang('Auth.email') ?>" value="<?= old('email') ?>">
                
            </div>
            <div class="form-group text-white">
                <label for="username" class="form-label">Username: </label>
                <input type="text" class="form-control p-2 mb-1 bg-secondary text-white <?php if (session('errors.username')) : ?>is-invalid<?php endif ?>" name="username" placeholder="<?= lang('Auth.username') ?>" value="<?= old('username') ?>">
            </div>
            <div class="form-group text-white">
                <label for="password" class="form-label">Password :</label>
                <input type="password" name="password" class="form-control p-2 mb-1 bg-secondary text-white <?php if (session('errors.password')) : ?>is-invalid<?php endif ?>" placeholder="Password">
            </div>
            <div class="form-group text-white">
                <label for="pass_confirm"  class="form-label"><?= lang('Auth.repeatPassword') ?></label>
                <input type="password" name="pass_confirm" class="form-control p-2 mb-1 bg-secondary text-white <?php if (session('errors.pass_confirm')) : ?>is-invalid<?php endif ?>" placeholder="<?= lang('Auth.repeatPassword') ?>" autocomplete="off">
            </div>
            <div class="form-group text-white">
                <label for="kontak" class="form-label">Kontak Penanggung Jawab :</label>
                <input type="number" name="kontak" class="form-control p-2 mb-1 bg-secondary text-white" placeholder="082131293193">
            </div>

            <button type="submit" class="btn btn-primary mt-3 rounded-1 btn-block w-100" style="font-weight:bold;"><?= lang('Auth.register') ?></button>

        </form>
        <div class="text-center text-muted mt-3" style="font-size:12px">

            <p style="line-height: 0.1;">Butuh bantuan? <a href="">Kontak Kami</a></p>
        </div>

    </div>
</div>

<?= $this->endSection(); ?>