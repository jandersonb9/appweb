<body>

<div>
  <?php
    include("incluidos/header.php");
  ?>
</div>
<br><br><br>
<br><br><br>
<div>
  <?php echo($tabla);?>
  <?php
$this->load->view('incluidos/footer');
?>
</div>


	<!--================ jQuery first, then Popper.js, then Bootstrap JS =================-->
<div>
  <?php
    $this->load->view('incluidos/js.php');
  ?>
</div>
  <?php
    if (isset($js_files)) {
    	foreach ($js_files as $ruta_js) {
    	?>
    	<script type="text/javascript" src="<?php echo $ruta_js?>"></script>	
    	<?php
    	}
    	
    }
    ?>
</body>

</html>