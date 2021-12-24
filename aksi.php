<?php
require_once'functions.php';
 

    /** LOGIN */ 
    if ($mod=='login'){
        $user = esc_field($_POST['user']);
        $pass = esc_field($_POST['pass']);
        
        $row = $db->get_row("SELECT * FROM tb_user WHERE user='$user' AND pass='$pass'");
        if($row){
            $_SESSION['login'] = $row->user;
            redirect_js("index.php");
        } else{
            print_msg("Salah kombinasi username dan password.");
        }          
    }  else if ($mod=='password'){
        $pass1 = $_POST['pass1'];
        $pass2 = $_POST['pass2'];
        $pass3 = $_POST['pass3'];
        
        $row = $db->get_row("SELECT * FROM tb_user WHERE user='$_SESSION[user]' AND pass='$pass1'");        
        
        if($pass1=='' || $pass2=='' || $pass3=='')
            print_msg('Field bertanda * harus diisi.');
        elseif(!$row)
            print_msg('Password lama salah.');
        elseif( $pass2 != $pass3 )
            print_msg('Password baru dan konfirmasi password baru tidak sama.');
        else{        
            $db->query("UPDATE tb_user SET pass='$pass2' WHERE user='$_SESSION[user]'");                    
            print_msg('Password berhasil diubah.', 'success');
        }
    } elseif($act=='logout'){
        unset($_SESSION['login']);
        header("location:index.php?m=login");
    }
           
    /** PAGE */
    elseif($mod=='page_ubah'){
        $judul = $_POST['judul'];
        $isi = $_POST['isi'];
                        
        if($judul=='' || $isi=='' )
            print_msg("Field yang bertanda * tidak boleh kosong!");
        else{
            $db->query("UPDATE tb_page SET judul='$judul', isi='$isi' WHERE nama_page='$_GET[nama]'");                   
            print_msg("Data tersimpan", 'success');
        }
    } 
    
    if($mod=='tempat_tambah'){
        $nama_tempat = $_POST['nama_tempat'];
        $lat = $_POST['lat'];
        $lng = $_POST['lng'];
        
        if($nama_tempat=='' || $lat=='' || $lng=='' )
            print_msg("Field bertanda * tidak boleh kosong!");
        else{      
            $db->query("INSERT INTO tb_tempat (nama_tempat, lat, lng) 
                    VALUES ('$nama_tempat', '$lat', '$lng')");                       
            redirect_js("index.php?m=tempat");
        }                    
    } else if($mod=='tempat_ubah'){
        $nama_tempat = $_POST['nama_tempat'];
        $lat = $_POST['lat'];
        $lng = $_POST['lng'];
        
        if($nama_tempat=='' || $lat=='' || $lng=='')
            print_msg("Field bertanda * tidak boleh kosong!");
        else{           
            $db->query("UPDATE tb_tempat SET nama_tempat='$nama_tempat', lat='$lat', lng='$lng' WHERE id_tempat='$_GET[ID]'");
            redirect_js("index.php?m=tempat");
        }    
    } else if ($act=='tempat_hapus'){
        $db->query("DELETE FROM tb_tempat WHERE id_tempat='$_GET[ID]'");
        header("location:index.php?m=tempat");
    } else if($mod=='register'){
        $user = $_POST['user'];
        $pass = $_POST['pass'];

        if($user=='' || $pass=='')
            print_msg("Field bertanda * tidak boleh kosong!");
        else{      
            $db->query("INSERT INTO tb_user (user, pass) 
                    VALUES ('$user', '$pass')");                       
            redirect_js("index.php?m=tempat_list");
        }     
    }
    
    
