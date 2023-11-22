<?php
$db = mysqli_connect("localhost","root","","pw15ipp");

function query($query) {
    global $db;
    $result = mysqli_query($db,$query);
    $rows = [];
    while($row = mysqli_fetch_array($result)) {
        $rows[] = $row;
    }
    return $rows;
}

function add($data) {
    global $db;

    // fetch data from every element in the form
    $nost = htmlspecialchars($data["nost"]);
    $namast = htmlspecialchars($data["namast"]);
    $tglst = htmlspecialchars($data["tglst"]);
    $startst = htmlspecialchars($data["startst"]);
    $endst = htmlspecialchars($data["endst"]);
    $ketua = htmlspecialchars($data["ketua"]);
    $stattugas = htmlspecialchars($data["stattugas"]);
    $statlap = htmlspecialchars($data["statlap"]);
    $nolap = htmlspecialchars($data["nolap"]);
    $tgllap = htmlspecialchars($data["tgllap"]);
    // $filest = htmlspecialchars($data["filest"]);
    // $filekm = htmlspecialchars($data["filekm"]);
    $filelap = htmlspecialchars($data["filelap"]);
    $anggota1 = htmlspecialchars($data["anggota1"]);
    $anggota2 = htmlspecialchars($data["anggota2"]);
    $anggota3 = htmlspecialchars($data["anggota3"]);

    // file upload function
    $filelap = upload();
    if(!$filelap) {
        return false;
    }

    // query insert data
    $query = "INSERT INTO tugas SET
        nost='$nost',
        namast='$namast',
        tglst='$tglst',
        startst='$startst',
        endst='$endst',
        ketua='$ketua',
        anggota1='$anggota1',
        anggota2='$anggota2',
        anggota3='$anggota3',
        stattugas='$stattugas',
        statlap='$statlap',
        filelap='$filelap',
        nolap='$nolap',
        tgllap = '$tgllap',
        id='';
    INSERT INTO teamrank SET
        id_anggota='',
        all_anggota='$anggota1',
        id_tugas_fk=LAST_INSERT_ID()
        ;
    INSERT INTO teamrank SET
        id_anggota='',
        all_anggota='$anggota2'
        id_tugas_fk=LAST_INSERT_ID();
    INSERT INTO teamrank SET
        id_anggota='',
        all_anggota='$anggota3'
        id_tugas_fk=LAST_INSERT_ID();
        ";

    // INSERT INTO team VALUES (id, nost, anggota)
    //     ('','$nost','$anggota')

    mysqli_multi_query($db,$query);

    return mysqli_affected_rows($db);
}

function upload () {
    $filelap = $_FILES['filelap']['name'];
    $filelapsize = $_FILES['filelap']['size'];
    $error = $_FILES['filelap']['error'];
    $tmpName = $_FILES['filelap']['tmp_name'];

    // check whether user uploaded an image
    $extfilelapOK = ['docx', 'doc','pdf'];
    $extfilelap = explode('.',$filename);
    $extfilelap = strtolower(end($extfilelap));
    if(!in_array($extfilelap, $extfilelapOK)) {
        echo "<script>
            alert('Extension file yang diupload tidak sesuai.');
            </script>";  
    }

    // check whether the size is too big
    if($filesize > 10000000) {
            echo "<script>
                alert('Ukuran file terlalu besar.');
                </script>";  
        }

    // image is ready to be uploaded
    // generate new name
    $newfilename = uniqid();
    $newfilename .= '.';
    $newfilename .= $extfilelap;
    move_uploaded_file($tmpName, './uploads/'.$newfilename);

    return $newfilename;
}

function edit($data) {
    global $db;

    // fetch data from every element in the form
    $nost = htmlspecialchars($data["nost"]);
    $namast = htmlspecialchars($data["namast"]);
    $tglst = htmlspecialchars($data["tglst"]);
    $startst = htmlspecialchars($data["startst"]);
    $endst = htmlspecialchars($data["endst"]);
    $ketua = htmlspecialchars($data["ketua"]);
    $stattugas = htmlspecialchars($data["stattugas"]);
    $statlap = htmlspecialchars($data["statlap"]);
    $nolap = htmlspecialchars($data["nolap"]);
    $tgllap = htmlspecialchars($data["tgllap"]);
    // $oldfilest = htmlspecialchars($data["oldfilest"]);
    // $oldfilekm = htmlspecialchars($data["oldfilekm"]);
    $oldfilelap = htmlspecialchars($data["oldfilelap"]);
    $id = $data["id"];
    $anggota1 = htmlspecialchars($data["anggota1"]);
    $anggota2 = htmlspecialchars($data["anggota2"]);
    $anggota3 = htmlspecialchars($data["anggota3"]);
    $id_rank = $data["id_rank"];
    $id_tugas_fk = $data["id_tugas_fk"];
    $all_anggota = $data["all_anggota"];
    
    // check whether the user uploaded a new file
    // if($_FILES['filekm']['error'] === 4) {
    //     $filekm = $oldfilekm;
    // } else {
    //     $filekm = upload();
    // }

    // if($_FILES['filest']['error'] === 4) {
    //     $filest = $oldfilest;
    // } else {
    //     $filest = upload();
    // }

    if($_FILES['filelap']['error'] === 4) {
        $filelap = $oldfilelap;
    } else {
        $filelap = upload();
    }

    // query insert data
    $query = "UPDATE tugas SET
        nost='$nost',
        namast='$namast',
        tglst='$tglst',
        startst='$startst',
        endst='$endst',
        ketua='$ketua',
        anggota1='$anggota1',
        anggota2='$anggota2',
        anggota3='$anggota3',
        stattugas='$stattugas',
        statlap='$statlap',
        nolap='$nolap',
        tgllap = '$tgllap'
    WHERE id = $id;
    -- UPDATE teamrank SET
    --     all_anggota='$anggota1',
    --     all_anggota='$anggota2',
    --     all_anggota='$anggota3'
    -- WHERE id_tugas_fk = $id;
    UPDATE teamrank SET
        all_anggota='$anggota1',
    WHERE all_anggota='$anggota1' AND id_tugas_fk = $id;
    UPDATE teamrank SET
        all_anggota='$anggota2',
    WHERE all_anggota='$anggota2' AND id_tugas_fk = $id;
    UPDATE teamrank SET
        all_anggota='$anggota2',
    WHERE all_anggota='$anggota2' AND id_tugas_fk = $id;
    ";

    mysqli_multi_query($db,$query);

    return mysqli_affected_rows($db);
}

function delete($id) {
    global $db;

    $query = "DELETE FROM teamrank WHERE id_tugas_fk = $id;
    DELETE FROM tugas WHERE id = $id";
    mysqli_multi_query($db,$query);

    return mysqli_affected_rows($db);
}

function find($keyword) {
    $query = "SELECT * FROM tugas WHERE
    nost LIKE '%$keyword%' OR
    namast LIKE '%$keyword%' OR
    tglst LIKE '%$keyword%' OR
    ketua LIKE '%$keyword%' OR
    stattugas LIKE '$keyword' OR
    statlap LIKE '$keyword' OR
    anggota1 LIKE '%$keyword%' OR
    anggota2 LIKE '%$keyword%' OR
    anggota3 LIKE '%$keyword%'
    ";

return query($query);
}

function register($data) {
    global $db;

    $username = strtolower(stripslashes($data["username"]));
    $password = mysqli_real_escape_string($db,$data["password"]);
    $password_confirm = mysqli_real_escape_string($db,$data["password_confirm"]);

    // check username availability
    $result= mysqli_query($db,"SELECT username from users_ipp WHERE username = '$username'");
    if(mysqli_fetch_assoc($result)) {
        echo "<script>
        alert('Username sudah terdaftar.')
        </script>";
        return false;
    }

    // check password confirmation
    if($password !== $password_confirm) {
        echo "<script>
        alert('Password tidak sama.')
        </script>";
        return false;
    }

    // password encryption
    $password = password_hash($password,PASSWORD_DEFAULT);

    // add pasword to database
    mysqli_query($db,"INSERT INTO users_ipp VALUES('','$username','$password')");
    return mysqli_affected_rows($db);

    return 1;

    // add new user to database

}
?>