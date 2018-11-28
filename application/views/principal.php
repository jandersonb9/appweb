<body>


<?php
  $this->load->view('incluidos/header.php');
?>

<?php
$this->load->view('incluidos/baner');
?>	
	
<?php
$this->load->view('incluidos/Feedback');
?>	
	
<?php
$this->load->view('incluidos/footer');
?>


	<!--================ jQuery first, then Popper.js, then Bootstrap JS =================-->
<div>
  <?php
    $this->load->view('incluidos/js.php');
  ?>
</div>
</body>

</html>