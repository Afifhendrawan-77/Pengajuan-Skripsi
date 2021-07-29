<html>
    <head>
        <title>Tampil Buku</title>
    </head>
<body>
<?php
    
    echo "<br><br>";
    echo "<table border='1'>
            <tr>
                        <th>No.1</th>
                        <th>Judul Skripsi</th>
                        <th>Transkrip Nilai</th>
                        <th>KRS Terakhir</th>
                        <th>Proposal Skripsi</th>
                        <th>Jurnal Internasional 3</th>
                        <th>Jurnal Nasional 3</th>
            </tr>";
            $no=1;
            foreach($data as $b)
            {
            echo "<tr>
            <td>$no</td>
            <td>$b->judul</td>
            <td>$b->transkip_nilai</td>
            <td>$b->proposal_skripsi</td>
            <td>$b->jurnal_internasional3</td>
            <td>$b->jurnal_nasional3</td>

            </tr>";
    $no++;}
    echo "</table>";
    ?>
    </body>
    </html>
