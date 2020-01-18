<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- footer -->
<footer class="footer">
	<div class="footer_top">
		<div class="container">
			<div class="row">
				<div class="col-xl-3 col-md-6 col-lg-3">
					<div class="footer_widget">
						<div class="footer_logo">
							<a href="#"> <img src="img/logo.png" alt="">
							</a>
						</div>
						<p class="footer_text doanar">
							<a class="first" href="#">+10 783 467 3789 </a> <br> <a href="#">hostza@support.com</a>
						</p>
						<div class="socail_links">
							<ul>
								<li><a href="#"> <i class="fa fa-facebook-square"></i>
								</a></li>
								<li><a href="#"> <i class="fa fa-twitter"></i>
								</a></li>
								<li><a href="#"> <i class="fa fa-instagram"></i>
								</a></li>
							</ul>
						</div>

					</div>
				</div>
				<div class="col-xl-3 col-md-6 col-lg-3">
					<div class="footer_widget">
						<h3 class="footer_title">service</h3>
						<ul>
							<li><a href="#">Hosting</a></li>
							<li><a href="#">Domain</a></li>
							<li><a href="#">Wordpress</a></li>
							<li><a href="#">Shared Hosting</a></li>
						</ul>

					</div>
				</div>
				<div class="col-xl-2 col-md-6 col-lg-2">
					<div class="footer_widget">
						<h3 class="footer_title">Navigation</h3>
						<ul>
							<li><a href="#">Home</a></li>
							<li><a href="#">Rooms</a></li>
							<li><a href="#">About</a></li>
							<li><a href="#">News</a></li>
						</ul>
					</div>
				</div>
				<div class="col-xl-4 col-md-6 col-lg-4">
					<div class="footer_widget">
						<h3 class="footer_title">Newsletter</h3>
						<form action="#" class="newsletter_form">
							<input type="text" placeholder="Enter your mail">
							<button type="submit">Sign Up</button>
						</form>
						<p class="newsletter_text">Subscribe newsletter to get updates</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="copy-right_text">
		<div class="container">
			<div class="footer_border"></div>
			<div class="row">
				<div class="col-xl-12">
					<p class="copy_right text-center">
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						Copyright &copy;
						<script>document.write(new Date().getFullYear());</script>
						All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					</p>
				</div>
			</div>
		</div>
	</div>
</footer>
<!-- footer -->
<!-- link that opens popup -->

<!-- form itself end-->
<div id="test-form" class="white-popup-block mfp-hide">
	<div class="popup_box ">
		<div class="popup_inner">
			<div class="logo text-center">
				<a href="#"> <img src="img/form-logo.png" alt="">
				</a>
			</div>
			<h3>Sign in</h3>
			<form action="/user?cmd=loginProc" method="post">
				<div class="row">
					<div class="col-xl-12 col-md-12">
						<input name="username" type="text" placeholder="Enter username">
					</div>
					<div class="col-xl-12 col-md-12">
						<input name="password" type="password" placeholder="Password">
					</div>
					<div class="col-xl-12">
						<button type="submit" class="boxed_btn_green">Sign in</button>
					</div>
				</div>
			</form>
			<p class="doen_have_acc">
				Don’t have an account? <a class="dont-hav-acc" href="#test-form2">Sign Up</a>
			</p>
		</div>
	</div>
</div>
<!-- form itself end -->

<!-- form itself end-->
<div id="test-form2" class="white-popup-block mfp-hide">
	<div class="popup_box ">
		<div class="popup_inner">
			<div class="logo text-center">
				<a href="#"> <img src="img/form-logo.png" alt="">
				</a>
			</div>
			<h3>Resistration</h3>
			<form action="/user?cmd=joinProc" method="post">
				<div class="row">
				<div class="col-xl-12 col-md-12">
						<input name="username" type="text" placeholder="Enter username">
					</div>
					<div class="col-xl-12 col-md-12">
						<input name="email" type="email" placeholder="Enter email">
					</div>
					<div class="col-xl-12 col-md-12">
						<input name="password" type="password" placeholder="Password">
					</div>
					<div class="col-xl-12 col-md-12">
						<input type="Password" placeholder="Confirm password">
					</div>
					<div class="col-xl-12">
						<button type="submit" class="boxed_btn_green">Sign Up</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>
<!-- form itself end -->


<!-- JS here -->
<script src="js/vendor/modernizr-3.5.0.min.js"></script>
<script src="js/vendor/jquery-1.12.4.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/isotope.pkgd.min.js"></script>
<script src="js/ajax-form.js"></script>
<script src="js/waypoints.min.js"></script>
<script src="js/jquery.counterup.min.js"></script>
<script src="js/imagesloaded.pkgd.min.js"></script>
<script src="js/scrollIt.js"></script>
<script src="js/jquery.scrollUp.min.js"></script>
<script src="js/wow.min.js"></script>
<script src="js/nice-select.min.js"></script>
<script src="js/jquery.slicknav.min.js"></script>
<script src="js/jquery.magnific-popup.min.js"></script>
<script src="js/plugins.js"></script>
<script src="js/gijgo.min.js"></script>

<!--contact js-->
<script src="js/contact.js"></script>
<script src="js/jquery.ajaxchimp.min.js"></script>
<script src="js/jquery.form.js"></script>
<script src="js/jquery.validate.min.js"></script>
<script src="js/mail-script.js"></script>

<script src="js/main.js"></script>
</body>

</html>