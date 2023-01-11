<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>DMS ADMIN DASHBOARD</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <link rel="stylesheet" href="/css/dash.css">
</head>

<body>

  <div class="pembungkus">
    <div class="navigasibar">
      <div class="profile">
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

      </div>
      <div class="listbar">

        <button class="btn btn-toggle align-items-center rounded text-white">Lihat Semua User</button>

        <a href="<?= base_url('logout') ?>" class="btn btn-toggle align-items-center rounded text-white">Logout</a>
      </div>
    </div>




    <div class="isi">

      <div class="tabell">
        <table class="table text-center mt-2">
          <thead class="thead-dark mb-5">
            <tr>
              <th scope="col">No</th>
              <th scope="col">Perusahaan</th>
              <th scope="col">Email</th>
              <th scope="col">Kontak</th>
              <th scope="col">NPWP</th>
              <th scope="col">Action</th>

            </tr>
          </thead>
          <tbody>
            <?php $i = 1 ?>
            <?php foreach ($users as $us) : ?>
              <tr>
                <th scope="row"><?= $i++; ?></th>

                <td><?= $us->perusahaan;  ?></td>
                <td><?= $us->email;  ?></td>
                <td><?= $us->kontak;  ?></td>
                <td><?= $us->npwp;  ?></td>
                <td>
                  <a class="btn btn-primary" type="button" href="<?= base_url('/admin/'.$us->id.'/edit')?>">Edit</a>
                  <a class="btn btn-primary" type="button" href="<?= base_url('/admin/'.$us->id.'/delete')?>">Delete</a>
                </td>

              </tr>
            <?php endforeach ?>


          </tbody>
        </table>
      </div>

      <!-- <div class="masukan">'
          <button class="btn btn-primary btn-lg  col-3 mx-5" type="submit">TAMBAH OPERATOR</button>
          <button class="btn btn-primary btn-lg  col-3 mx-5" type="submit">HAPUS OPERATOR</button>
        </div> -->
    </div>
  </div>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
</body>

</html>