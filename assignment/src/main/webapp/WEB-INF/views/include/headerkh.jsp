<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<header class="header"> <nav class="navbar navbar-default"
	role="navigation">
<div class="container">
	<div class="row">
		<div class="navbar-header">
			<a class="navbar-brand logo" href="resource/index.htm"> <span>Giaohanncham</span>
			</a>
		</div>
		<div class="navbar-collapse collapse">
			<div class="menu-menu-top-container">
				<ul id="primary-menu" class="nav navbar-nav">
					<li id="menu-item-5"
						class="menu-item menu-item-type-custom menu-item-object-custom current-menu-item current_page_item menu-item-home menu-item-5">
						<a href="resource/index.htm">TRANG CHỦ</a>
					</li>
					<li id="menu-item-15"
						class="menu-item menu-item-type-post_type menu-item-object-page menu-item-15"><a
						href="resource/index-2.htm">VỀ CHÚNG TÔI</a></li>
					<li id="menu-item-684"
						class="menu-item menu-item-type-post_type menu-item-object-page menu-item-684"><a
						href="resource/index-6.htm">HỎI ĐÁP</a></li>
				</ul>
			</div>
			<!-- Modal -->
			<div class="fade my-modal" id="searchPrice" tabindex="-1"
				role="dialog" aria-labelledby="searchPriceLabel"
				style="display: none; outline: none">
				<div class="modal-dialog modal-lg" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
							<h4 class="modal-title" id="searchPriceLabel">Tra cứu đơn
								hàng vận chuyển</h4>
						</div>
						<div class="modal-body">
							<form method="post" id="SearchPackagesByCode">
								<div class="form-group">
									<label>Mời bạn nhập mã đơn hàng vận chuyển để tra cứu
										thông tin</label>
									<div class="row">
										<div class="col-xs-10 col-sm-10">
											<input type="text" class="form-control" name="orderId"
												id="orderId" maxlength="50" />
										</div>
										<div class="col-xs-2 col-sm-2">
											<button type="submit" id="checkOrderButton"
												class="g-recaptcha btn btn-primary btn-100">
												<span>Tìm đơn</span>
											</button>
										</div>
									</div>
								</div>
							</form>
							<div id="orderStatusRow" class="row">
								<div class="col-xs-12 col-sm-12" id="orderInfo"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- End modal -->
		</div>
	</div>
</div>
</nav> </header>
<!-- End Header -->