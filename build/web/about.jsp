<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="en">
    <head>
        <title>About</title>
        <%@include file="include/header1.jsp" %>


	<!-- Title page -->
	<section class="bg-img1 txt-center p-lr-15 p-tb-92" style="background-image: url('images/bg-01.jpg');">
		<h2 class="ltext-105 cl0 txt-center">
			About
		</h2>
	</section>	


	<!-- Content page -->
	<!-- Content page -->
	<section class="bg0 p-t-75 p-b-120">
		<div class="container">
			<div class="row p-b-148">
				<div class="col-md-7 col-lg-8">
					<div class="p-t-7 p-r-85 p-r-15-lg p-r-0-md">
						<h3 class="mtext-111 cl2 p-b-16">
							Our Story
						</h3>

						<p class="stext-113 cl6 p-b-26">
							Our group is ShopDDee, an online fashion retail brand established in 2010 in Danang, Vietnam. We started as a small store, but with a passion for fashion and a desire to deliver quality products to our customers, we have continuously grown and expanded.

ShopDDee focuses on creating unique designs that reflect modern fashion trends while maintaining the brand’s distinctive features. We believe that everyone has their own style and we want to help them express it through clothing.
						</p>

						<p class="stext-113 cl6 p-b-26">
							We take pride in using high-quality and sustainable materials, providing our customers with high-quality products at affordable prices. Each of our products is meticulously cared for from the design stage to production.

							Moreover, we also take social and environmental responsibility seriously. We commit to using recycled and reusable materials whenever possible, and always look for more efficient ways to work to minimize our impact on the environment.
						</p>

						<p class="stext-113 cl6 p-b-26">
							If you have any questions, let us know at our store at FPT University, Danang, Vietnam or call us at (+84) 924484470.
						</p>
					</div>
				</div>

				<div class="col-11 col-md-5 col-lg-4 m-lr-auto">
					<div class="how-bor1 ">
						<div class="hov-img0">
							<img src="images/about-01.jpg" alt="IMG">
						</div>
					</div>
				</div>
			</div>
 </div>
			<div class="row">
				<div class="order-md-2 col-md-7 col-lg-8 p-b-30">
					<div class="p-t-7 p-l-85 p-l-15-lg p-l-0-md">
						<h3 class="mtext-111 cl2 p-b-16">
							Our Mission
						</h3>

						<p class="stext-113 cl6 p-b-26">
							Our mission at ShopDDee is to create an online shopping space where individuals can explore and express their personal style. We believe that fashion is more than just clothes - it’s a part of who we are, a way we present ourselves to the world.

							We are committed to delivering high-quality products that are creatively and uniquely designed. We always keep up with the latest fashion trends and offer a variety of styles to suit all styles and occasions.

							Moreover, we believe that creativity is not just about connecting the dots. When you ask creative people how they did something, they feel a little guilty because they didn’t really do it, they just saw something. It seemed obvious to them after a while.
						</p>

						<div class="bor16 p-l-29 p-b-9 m-t-22">
							<p class="stext-114 cl6 p-r-40 p-b-11">
	
		
                                                    </div>     
                                                </div>
                                     </div>
                             </div>
            </section>
	<!-- Footer -->
        <%@include file="include/footer.jsp" %>
<!--===============================================================================================-->	
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
	<script>
		$(".js-select2").each(function(){
			$(this).select2({
				minimumResultsForSearch: 20,
				dropdownParent: $(this).next('.dropDownSelect2')
			});
		})
	</script>
<!--===============================================================================================-->
	<script src="vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script>
		$('.js-pscroll').each(function(){
			$(this).css('position','relative');
			$(this).css('overflow','hidden');
			var ps = new PerfectScrollbar(this, {
				wheelSpeed: 1,
				scrollingThreshold: 1000,
				wheelPropagation: false,
			});

			$(window).on('resize', function(){
				ps.update();
			})
		});
	</script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>
	<jsp:include page="include/footer.jsp"/>
</body>
</html>