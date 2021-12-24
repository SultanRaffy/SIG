<script>
    function donasi() {
        var nominal = document.getElementById("nominal").value;
        alert("Telah Berdonasi Sebesar " + nominal);
    }
</script>

<div class="container">
    <h1>Masukkan Nominal Saldo</h1>
    <div class="form-group">
        <label>Nominal<span class="text-danger">*</span></label>
        <input id="nominal" class="form-control" type="number" name="nominal"/>
    </div>
    <a href="?m=tempat_list" class="btn btn-primary"><span class="glyphicon glyphicon-chevron-left"></span> Kembali</a>    
    <button onClick="donasi()" class="btn btn-primary"><span class="glyphicon glyphicon-credit-card"></span> Donasi</button>
</div>