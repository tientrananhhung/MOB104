<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Giao Hang Chậm - Chậm Mà Chắc</title>
<base href="${pageContext.servletContext.contextPath}/" />
<link rel="stylesheet" type="text/css"
	href="<c:url value="resources/css/styleindex.css" />">
<link rel="stylesheet" type="text/css"
	href="<c:url value="resources/css/lib/bootstrap/bootstrap.min.css" />">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<jsp:include page="include/headerkh.jsp" />

	<!-- Main -->
	<main id="main" class="site-main" style="min-height: 500px;"> <section
		class="title-page-st title-page">
	<div class="container">
		<h1 class="mashead-title text-center">Quản lý đơn hàng</h1>
		<h3>
			Xin chào!
			<c:out value="${thongtindangnhap.tenKhachHang}" />
		</h3>
		<div class="dropdown">
			<button class="btn btn-secondary dropdown-toggle btn-dropdown-kh"
				type="button" id="dropdownMenuButton" data-toggle="dropdown"
				aria-haspopup="true" aria-expanded="false">Sửa thông tin
				khách hàng</button>
			<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
				<a class="dropdown-item" href="#">Đổi thông tin khách hàng</a> <a
					class="dropdown-item" href="#">Thoát</a>
			</div>
		</div>
	</div>
	</section>
	<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12">
						<div class="card">
							<h2 class="box-title m-t-40">
							  <c:choose>
         <c:when test = "${action == 'taodonhang'}">
           Tạo Đơn Hàng
         </c:when>
         <c:otherwise>
           Sửa Đơn Hàng
         </c:otherwise>
      </c:choose>
							</h2>
							<hr style="background-color: #F2711C; height: 2px">
							<br />
							<!--/row-->
							<div class="card-body" style="margin-left: 20px;">
								<div class="col-lg-12">
									<div class="form-validation">
										<f:form cssClass="form-valide" action="${action}"
											method="POST" modelAttribute="donhang">
											<f:hidden path="maDonHang" />
											<div class="row">
												<div class="col-md-6">
													<f:input path="tenMatHang" type="text"
														cssClass="form-control" placeholder="Tên mặt hàng.." />
												</div>
												<div class="col-md-6">
													<f:input path="tenNguoiNhan" type="text"
														cssClass="form-control" placeholder="Tên người nhận.." />
												</div>
											</div>
											<br />
											<div class="row">
												<div class="col-md-6">
													<f:input path="sdtNguoiNhan" type="number"
														cssClass="form-control"
														placeholder="Số điện thoại người nhận.." />
												</div>
												<div class="col-md-6">
													<f:input path="diaChiNguoiNhan" type="text"
														cssClass="form-control" placeholder="Địa chỉ người nhận.." />
												</div>
											</div>
											<br />
											<div class="card-body" style="margin-left: 60px;">
												<div class="form-group row">
													<label class="col-lg-2 col-form-label"
														for="val-suggestions">Trọng lượng :</label>
													<div class="col-lg-9">
														<f:input id="trongluong" path="trongLuong" type="number"
															cssClass="form-control" placeholder="Kilogam" />
													</div>
												</div>
												<div class="form-group row">
													<label class="col-lg-2 col-form-label" for="val-currency">Phí
														vận chuyển :</label>
													<div class="col-lg-9">
														<f:input id="phivanchuyen" path="phiVanChuyen"
															type="number" cssClass="form-control" readonly="true" />
													</div>
												</div>
												
												<div class="form-group row">
													<label class="col-lg-2 col-form-label" for="val-currency">Tên người gửi :</label>
													<div class="col-lg-9">
															<input class="form-control" value="${thongtindangnhap.tenKhachHang}" readonly="readonly">
													</div>
												</div>
												
												<div class="form-group row">
													<label class="col-lg-2 col-form-label" for="val-currency">SDT người gửi :</label>
													<div class="col-lg-9">
															<input class="form-control" value="${thongtindangnhap.soDienThoai}" readonly="readonly">
													</div>
												</div>
												
												<div class="form-group row">
													<label class="col-lg-2 col-form-label" for="val-skill">Địa
														chỉ gửi :</label>
													<div class="col-lg-9">
														<f:select path="diaChiKhachHang.maDiaChi"
															cssClass="form-control" name="val-skill">
															<f:options items="${diachi}" />
														</f:select>
													</div>
												</div>
												<div class="form-group row">
													<label class="col-lg-2 col-form-label" for="val-skill">Cách
														trả phí :</label>
													<div class="col-lg-9">
														<f:select id="cachthuc" path="cachThucTraPhi" cssClass="form-control"
															name="val-skill">
															<f:option value="0">Người gửi trả</f:option>
															<f:option value="1">Người nhận trả</f:option>
														</f:select>
													</div>
												</div>
												<div class="form-group row">
													<label class="col-lg-2 col-form-label" for="val-currency">Thu
														hộ :</label>
													<div class="col-lg-9">
														<input id="thuho" type="number"
															class="form-control" placeholder="VNĐ" />
													</div>
												</div>
												<div class="form-group row">
													<label class="col-lg-2 col-form-label" for="val-currency">Tổng người nhận phải trả :</label>
													<div class="col-lg-9">
														<f:input id="tongthanhtoan" path="tienThuHo" type="number"
															cssClass="form-control" readonly="true" />
													</div>
												</div>
												<div class="form-group row">
													<label class="col-lg-2 col-form-label" for="val-currency">Ghi
														chú :</label>
													<div class="col-lg-9">
														<f:textarea path="ghiChu" type="text"
															cssClass="form-control" placeholder="..." />
													</div>
												</div>
											</div>
											<br />
											<hr style="background-color: #00a400">
											<br />
											<div class="form-actions">
												<div class="row">
													<div class="col-md-12">
														<div style="float: left; margin-left: 80px">
															<button style="width: 220px" type="submit"
																class="btn btn-success">Submit</button>
														</div>
													</div>
												</div>
											</div>
											<br />
										</f:form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
	</main>
	<!-- End Main -->
	<jsp:include page="include/footerkh.jsp" />
	<!-- Script -->
	
	<script src="<c:url value="resources/js/lib/jquery/jquery.min.js" />"></script>
	<script
		src="<c:url value="resources/js/lib/datatables/datatables.min.js" />"></script>
	<script type="text/javascript"
		src="<c:url value="resources/js/lib/bootstrap/js/popper.min.js" />"></script>
	<script type="text/javascript"
		src="<c:url value="resources/js/lib/bootstrap/js/bootstrap.min.js" />"></script>
	<!-- End Script -->
	<script>
		// When the user scrolls down 20px from the top of the document, show the button
		window.onscroll = function() {
			scrollFunction()
		};

		function scrollFunction() {
			if (document.body.scrollTop > 20
					|| document.documentElement.scrollTop > 20) {
				document.getElementById("myBtn").style.display = "block";
			} else {
				document.getElementById("myBtn").style.display = "none";
			}
		}

		// When the user clicks on the button, scroll to the top of the document
		function topFunction() {
			document.body.scrollTop = 0;
			document.documentElement.scrollTop = 0;
		}
		
		
		$(document).ready(function() {
			$.ajax({
		        url: '/assignment/api/donhang/${maKhachHang}',
		        type: 'GET',
		      })
		      .done(function(data) {
		        console.log(data);
		        $('tbody').empty();
		       	$.each(data, function(index, val) {
		    		$.each(val.donHang, function(index, val1) {
		    			var a = val1.cachThucTraPhi;
		    			var b;
		    			if(a){
		    				b = 'Người nhận';
		    			}else{
		    				b = 'Người gửi';
		    			}
		    			  $('tbody').append(
		    			  	'<tr>'+
		        			'<td>'+val1.maDonHang+'</td>'+
		        			'<td>'+val1.tenMatHang+'</td>'+
		        			'<td>'+val1.tenNguoiNhan+'</td>'+
		        			'<td>'+val1.sdtNguoiNhan+'</td>'+
		        			'<td>'+val1.trongLuong+'</td>'+
		        			'<td>'+val1.phiVanChuyen+'</td>'+
		        			'<td>'+b+'</td>'+
		        			'<td>'+val1.tienThuHo+'</td>'+
		        			'<td>'+val1.ghiChu+'</td>'+
		        			'<td><center> <a href="suadonhang/'+val1.maDonHang+'" class="btn btn-warning m-b-10 m-l-5"><i class="fa fa-cog"></i></a> <a href="huydonhang/'+val1.maDonHang+'" class="btn btn-danger m-b-10 m-l-5"><i class="fa fa-trash"></i></a></center></td>'+
		        			'</tr>'
			        		);
		    		 });
	    		});
		        
		      })
		      .fail(function() {
		      })
		      .always(function() {
		      });
		});
		
		$("#trongluong").bind("change paste keyup", function() {
		       $("#phivanchuyen").val($(this).val()*40000);
		       if($("#cachthuc").val() == 0){
		    	   $("#tongthanhtoan").val(parseFloat($("#thuho").val()));
		       } else {
		    	   $("#tongthanhtoan").val(parseFloat($("#thuho").val()) + parseFloat($("#phivanchuyen").val()));
		       }
		 });
		  $("#thuho").bind("change paste keyup", function() {
			  if($("#cachthuc").val() == 0){
		    	   $("#tongthanhtoan").val(parseFloat($(this).val()));
		       } else {
		    	   $("#tongthanhtoan").val(parseFloat($(this).val()) + parseFloat($("#phivanchuyen").val()));
		       }
		  });
			  $("#cachthuc").bind("change paste keyup", function() {
				  if($("#cachthuc").val() == 0){
			    	   $("#tongthanhtoan").val(parseFloat($("#thuho").val()));
			       } else {
			    	   $("#tongthanhtoan").val(parseFloat($("#thuho").val()) + parseFloat($("#phivanchuyen").val()));
			       }
		 });
	</script>
</body>
</html>