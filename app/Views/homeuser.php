<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>DMS DASHBOARD</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <link rel="stylesheet" href="/css/dash.css">
</head>

<body>

  <div class="pembungkus">
    <div class="navigasibar">
      <div class="profile">
        <!-- <circle cx="100" cy="100" r="80" stroke="black" stroke-width="2"  /> -->
        <svg height="200" width="200">
          <defs>

            <circle id="circle" cx="100" cy="100" r="80" stroke-width="2" vector-effect="non-scaling-stroke" />
            <clipPath id="circle-clip">
              <use xlink:href="#circle" />
            </clipPath>
          </defs>
          <g clip-path="url(#circle-clip)">
            <image xlink:href="https://s3-us-west-2.amazonaws.com/s.cdpn.io/62127/penguin.jpg" width="100%" height="100%" preserveAspectRatio="xMidYMid slice" />
            <use xlink:href="#circle" fill="none" stroke="#0F1C3F" stroke-width="2" opacity="0.25" />
          </g>
        </svg>
        <h2><?= user()->perusahaan ?></h2>
        <p><?= user()->email ?></p>
      </div>
      <div class="listbar">

        <a href="<?= base_url('/') ?>" class="btn btn-toggle align-items-center rounded text-white">Lihat Semua Jadwal</a>
        <!-- <button class=" btn btn-toggle align-items-center rounded text-white"">Log Pesanan</button> -->
        <button class="btn btn-toggle align-items-center rounded text-white" data-bs-toggle="collapse" data-bs-target="#orders-collapse" aria-expanded="true">
          <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-right-circle" viewBox="0 0 16 16">
            <path fill-rule="evenodd" d="M1 8a7 7 0 1 0 14 0A7 7 0 0 0 1 8zm15 0A8 8 0 1 1 0 8a8 8 0 0 1 16 0zM4.5 7.5a.5.5 0 0 0 0 1h5.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3a.5.5 0 0 0 0-.708l-3-3a.5.5 0 1 0-.708.708L10.293 7.5H4.5z" />
          </svg>
          <p>Kontak Admin</p>
        </button>
        <div class="collapse show" id="orders-collapse" style="">
          <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
            <li><a href="#" class="text-muted">Hapus Akun</a></li>
            <li><a href="#" class="text-muted">FAQ</a></li>
            <li><a href="#" class="text-muted">Kontak CS</a></li>
          </ul>
        </div>
        <a href="<?= base_url('user/' . user()->id . '/jadwal') ?>" class="btn btn-toggle align-items-center rounded text-white">Jadwal Anda</a>
        <a href="<?= base_url('logout') ?>" class="btn btn-toggle align-items-center rounded text-white">Logout</a>
      </div>
    </div>
    <div class=" isi">

      <div class="tabell">
        <table class="table table-striped text-center mt-2">
          <thead class="thead-dark mb-5">
            <tr>
              <th scope="col">No</th>
              <th scope="col">Nama Kapal</th>
              <th scope="col">Jadwal Kedatangan</th>
              <th scope="col">Jadwal berangkat</th>
              <th scope="col">keterangan</th>
             
            </tr>
          </thead>
          <tbody>
            <?php $i = 1 ?>
            <?php foreach ($jadwal as $jd) : ?>
              <tr>
                <th scope="row"><?= $i++; ?></th>

                <td><?= $jd['nama_kapal'];  ?></td>
                <td><?= $jd['jam_datang'];  ?></td>
                <td><?= $jd['jam_berangakat'];  ?></td>
                <td><?= $jd['keterangan'];  ?></td>
                
              </tr>
            <?php endforeach ?>


          </tbody>
        </table>
      </div>

      <div class="masukan">'

        <a class="btn btn-primary btn-lg  col-3 mx-5" href="<?= site_url('input') ?>" role="button">Input Jadwal</a>

      </div>
    </div>
  </div>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
</body>

</html>