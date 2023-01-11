<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Input Jadwal</title>
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

      <form action="<?= base_url() ?>/user/input" method="post">
        <div class="text-white">
        <input type="hidden" name="id_user" class="form-control p-3 mb-2 bg-secondary text-white" id="exampleFormControlInput1" placeholder="Nama Kapal" value="<?= user()->id ?>">
          <label for="nama_kapal" class="form-label">Nama Kapal :</label>
          <input type="text" name="nama_kapal" class="form-control p-3 mb-2 bg-secondary text-white" id="exampleFormControlInput1" placeholder="Nama Kapal">

        </div>
        <div class="text-white">
          <label for="jam_datang" class="form-label">Jadwal Kedatangan :</label>
          <input type="datetime-local" name="jam_datang" class="form-control -3 mb-2 bg-secondary text-white" id="exampleFormControlInput1" placeholder="Jadwal Kedatangan">

        </div>

        <div class="text-white">
          <label for="jam_berangakat" class="form-label">Jadwal Kepergian :</label>
          <input type="datetime-local" name="jam_berangakat" class="form-control p-3 mb-2 bg-secondary text-white" id="exampleFormControlInput1" placeholder="Jadwal Kepergian">

        </div>
        <div class="text-white">
          <label for="keterangan" class="form-label">Keterangan :</label>

          <input type="text" name="keterangan" class="form-control p-3 mb-2 bg-secondary text-white" id="exampleFormControlInput1" placeholder="cth : Mengangkut Barang">


        </div>
        <div class="text-center">

          <button type="submit" class="btn btn-primary mt-3 rounded-1 btn-block w-100" style="font-weight:bold;">Go!</button>
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