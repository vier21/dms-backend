<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Edit Jadwal</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <link rel="stylesheet" href="/css/style.css">
</head>

<body>
  <div class="bg-image d-flex align-items-center" style="height: 100vh;" id="conts">

    <div class="container border p-5 rounded-5 col-3 bg-dark border-secondary">
      <div class="text-center text-white">
        <h4 style="line-height: 0.7;">Hello Capt</h4>
        <h6>Dock Management System</h6>
      </div>
      <div class="">
        <hr style="border-top: 3px solid #BF33C1; ">
      </div>

      <form action="<?= base_url('/admin/'.$users['id'].'/edit')?>" method="post">
        <div class="text-white">
          <label for="perusahaan" class="form-label">Nama Perusahaan:</label>
          <input type="text" name="perusahaan" class="form-control p-3 mb-2 bg-secondary text-white"  placeholder="Perusahaan" value="<?= $users['perusahaan'] ?>">

        </div>
        <div class="text-white">
          <label for="email" class="form-label">Email:</label>
          <input type="email" name="email" class="form-control -3 mb-2 bg-secondary text-white"  placeholder="email" value="<?= $users['email'] ?>">

        </div>

        <div class="text-white">
          <label for="password" class="form-label">Password:</label>
          <input type="password" name="password" class="form-control p-3 mb-2 bg-secondary text-white" placeholder="password" value="<?= $users['password_hash'] ?>">

        </div>
        <div class="text-white">
          <label for="npwp" class="form-label">NPWP:</label>

          <input type="number" name="npwp" class="form-control p-3 mb-2 bg-secondary text-white"  value="<?= $users['npwp'] ?>">
        </div>
        <div class="text-white">
          <label for="kontak" class="form-label">Kontak:</label>

          <input type="number" name="kontak" class="form-control p-3 mb-2 bg-secondary text-white" value="<?= $users['kontak'] ?>">
        </div>
        <div class="text-center">

          <button type="submit" class="btn btn-primary mt-3 rounded-1 btn-block w-100" style="font-weight:bold;">Save!</button>
        </div>
      </form>

      <div class="text-center text-muted mt-3" style="font-size:12px">
        <p style="line-height: 0.1;">Butuh bantuan? <a href="">Kontak Kami</a></p>
      </div>

    </div>
  </div>



  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
</body>

</html>