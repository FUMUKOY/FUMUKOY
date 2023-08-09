<?php
## ===*=== [C]ALLING CONTROLLER ===*=== ##
include("app/Http/Controllers/Controller.php");
include("app/Http/Controllers/HomeController.php");


## ===*=== [O]BJECT DEFINED ===*=== ##
$homeCtrl = new HomeController;
$eloquent = new Eloquent;


## ===*=== [F]ETCH SLIDER DATA FOR HOME PAGE SLIDER ===*=== ##
$columnName = $tableName = null;
$columnName = "*";
$tableName = "slides";
$slidesList = $eloquent->selectData($columnName, $tableName);
## ===*=== [F]ETCH SLIDER DATA FOR HOME PAGE SLIDER ===*=== ##


## ===*=== [F]ETCH MEN'S PRODUCT LIST FOR SHOWING HOME PAGE PRODUCT ===*=== ##
$columnName = $tableName = $whereValue = null;
$columnName["1"] = "id";
$columnName["2"] = "product_name";
$columnName["3"] = "product_price";
$columnName["4"] = "product_master_image";
$tableName = "products";
$whereValue["category_id"] = 1;	//Carproduct's Category ID
$whereValue["product_status"] = "In Stock";
$formatBy["DESC"] = "id";
$paginate["POINT"] = 0;
$paginate["LIMIT"] = 8;
$carProducts = $eloquent->selectData($columnName, $tableName, @$whereValue, @$inColumn, @$inValue, @$formatBy, @$paginate);
## ===*=== [F]ETCH CAR'S PRODUCT LIST FOR SHOWING HOME PAGE PRODUCT ===*=== ##


## ===*=== [F]ETCH Bathroom'S PRODUCT LIST FOR SHOWING HOME PAGE PRODUCT ===*=== ##
$columnName = $tableName = $whereValue = $inColumn = $inValue = $formatBy = $paginate = null;
$columnName["1"] = "id";
$columnName["2"] = "product_name";
$columnName["3"] = "product_price";
$columnName["4"] = "product_master_image";
$tableName = "products";
$whereValue["category_id"] = 2;	//Bathroom's Category ID
$whereValue["product_status"] = "In Stock";
$formatBy["DESC"] = "id";
$paginate["POINT"] = 0;
$paginate["LIMIT"] = 8;
$bathroomProducts = $eloquent->selectData($columnName, $tableName, @$whereValue, @$inColumn, @$inValue, @$formatBy, @$paginate);
## ===*=== [F]ETCH Bathrom'S PRODUCT LIST FOR SHOWING HOME PAGE PRODUCT ===*=== ##


## ===*=== [F]ETCH Kitchen'S PRODUCT LIST FOR SHOWING HOME PAGE PRODUCT ===*=== ##
$columnName = $tableName = $whereValue = $inColumn = $inValue = $formatBy = $paginate = null;
$columnName["1"] = "id";
$columnName["2"] = "product_name";
$columnName["3"] = "product_price";
$columnName["4"] = "product_master_image";
$tableName = "products";
$whereValue["category_id"] = 8;	//Watch Category ID
$whereValue["product_status"] = "In Stock";
$formatBy["DESC"] = "id";
$paginate["POINT"] = 0;
$paginate["LIMIT"] = 8;
$KitchenProducts = $eloquent->selectData($columnName, $tableName, @$whereValue, @$inColumn, @$inValue, @$formatBy, @$paginate);
## ===*=== [F]ETCH Kitchen'S PRODUCT LIST FOR SHOWING HOME PAGE PRODUCT ===*=== ##
?>

<!--=*= HOME SECTION START =*=-->
<main class="main">
	<div class="home-top-container">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="home-slider owl-carousel owl-carousel-lazy">
						
					<?php 
						#== DYNAMIC SLIDER IMAGES
						foreach($slidesList AS $eachSlide)
						{
							echo '
							<div class="home-slide">
								<img class="owl-lazy" src="public/assets/images/lazy.png" data-src="'.$GLOBALS['SLIDES_DIRECTORY'] . $eachSlide['slider_file'].'" alt="slider image">
								<div class="home-slide-content">
									<h1 class="text-primary">'.$eachSlide['slider_title'].'</h1>
								</div>
							</div>';
						}
					?>
					
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="info-boxes-container">
		<div class="container">
			<div class="info-box">
				<i class="icon-shipping"></i>
				<div class="info-box-content">
					<h4>FREE Delivery for Return Products</h4>
					<p>Delivery/Collection in Store.</p>
				</div>
			</div>
			<div class="info-box">
				<i class="icon-us-dollar"></i>
				<div class="info-box-content">
					<h4>MONEY BACK GUARANTEE</h4>
					<p>10% money back guarantee</p>
				</div>
			</div>
			<div class="info-box">
				<i class="icon-support"></i>
				<div class="info-box-content">
					<h4>ONLINE SUPPORT </h4>
					<p>Only During Buiness Hours.</p>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="home-product-tabs">
					<ul class="nav nav-tabs" role="tablist">
						<li class="nav-item">
							<a class="nav-link active" id="featured-products-tab" data-toggle="tab" href="#featured-products" role="tab" aria-controls="featured-products" aria-selected="true">Car</a>
						</li>
					</ul>
					<div class="tab-content">
						<div class="tab-pane fade show active" id="featured-products" role="tabpanel" aria-labelledby="featured-products-tab">
							<div class="row row-sm">
								
							<?php
								#== CAR's PRODUCT BASE ON LAST ADDED AND IN STOCK
								$homeCtrl->productLister($carProducts);
							?>
								
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<div class="home-product-tabs">
					<ul class="nav nav-tabs" role="tablist">
						<li class="nav-item">
							<a class="nav-link active" id="featured-products-tab" data-toggle="tab" href="#featured-products" role="tab" aria-controls="featured-products" aria-selected="true">Bathroom</a>
						</li>
					</ul>
					<div class="tab-content">
						<div class="tab-pane fade show active" id="featured-products" role="tabpanel" aria-labelledby="featured-products-tab">
							<div class="row row-sm">
								
							<?php
								#== Bathroom'S PRODUCT BASE ON LAST ADDED AND IN STOCK
								$homeCtrl->productLister($bathroomProducts);
							?>
								
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<div class="home-product-tabs">
					<ul class="nav nav-tabs" role="tablist">
						<li class="nav-item">
							<a class="nav-link active" id="featured-products-tab" data-toggle="tab" href="#featured-products" role="tab" aria-controls="featured-products" aria-selected="true">Kitchen</a>
						</li>
					</ul>
					<div class="tab-content">
						<div class="tab-pane fade show active" id="featured-products" role="tabpanel" aria-labelledby="featured-products-tab">
							<div class="row row-sm">
								
							<?php
								#== Kictchen'S PRODUCT BASE ON LAST ADDED AND IN STOCK
								$homeCtrl->productLister($KitchenProducts);
							?>
								
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="partners-container">
		<div class="container">
		<div>
					<h2>ABOUT US</h2>
				<p>
						o TEBELLO YA RONA GROUP was founded on the 18 April 2018, and it’s a 100% black 
						female owned company. We are passionate about clean environment, swift and 
						efficient service delivery and quality products.
						<br>
						o We are a chemical manufacturer and supplier for innovative, high quality cleaning 
						detergents, disinfecting and sanitizing products.
						<br>
						o Services that we also do are Deep Cleaning, General Cleaning, Hygiene services and 
						disinfecting and supply
						<br>
						o Our outmost interest is to always adhere to Safety and Environmental regulations 
						while delivering our services with pride. 
						<br>
						o Received vast training from Chemin Incubator, which is an initiative of the 
						Department of Small Business Development (SEDA)
						<br>
						o We also supply our customers with MSDS (Material Safety Data Sheet)
						<br>
						o The nature of business which is chemical manufacturing is the first of it’s kind in 
						Carletonville
						Our goal is to grow bigger creating employment opportunities in our area.
						<br>
						o We have employed 8 people, in which 2 work with manufacturing and deliveries. 
						While 6 of our employees work in office cleaning and deep cleaning for GEGE GROUP 
						PTY LTD. 
						<br>
						o Our service be likely to be cheaper than other contractors as we use our own 
						manufactured products.
						<br>
						o The Director has a vast experience in the mining industry in Property Management;
						from managing of tenants, creating rules and policies, ensuring healthy and safe 
						living conditions, maintenance management to cleaning of the facilities and catering.
						Her experience is gained from the Managerial position she has carried while in the 
						Mining Sector as an HR Practitioner and later as a Hostel Manager.
						<br>
						<h2>Services</h2>
						o Cleaning & Hygiene services<br>
						o Sanitation<br>
						o Disinfecting and Deep Cleaning<br>
						o Laundry Services<br>
						o Facilities Management<br>
						o Catering<br>
						o Procuring / Supply<br>
						
						Want to procure any of our services?<br> 
						click the link below.<br>
						<li><a href="contact.php">Contact Us</a></li>
						
					</p>
				</div>
			<div class="partners-carousel owl-carousel owl-theme">
				
				
				<!--<a href="#" class="partner">
					<img src="public/assets/images/brand/brand(1).png" alt="logo">
				</a>
				<a href="#" class="partner">
					<img src="public/assets/images/brand/brand(2).png" alt="logo">
				</a>
				 <a href="#" class="partner">
					<img src="public/assets/images/brand/brand(3).png" alt="logo">
				</a>
				<a href="#" class="partner">
					<img src="public/assets/images/brand/brand(4).png" alt="logo">
				</a>
				<a href="#" class="partner">
					<img src="public/assets/images/brand/brand(5).png" alt="logo">
				</a>				
				<a href="#" class="partner">
					<img src="public/assets/images/brand/brand(1).png" alt="logo">
				</a>				
				<a href="#" class="partner">
					<img src="public/assets/images/brand/brand(2).png" alt="logo">
				</a> -->
			</div>
		</div>
	</div>
</main>
<!--=*= HOME SECTION START =*=-->