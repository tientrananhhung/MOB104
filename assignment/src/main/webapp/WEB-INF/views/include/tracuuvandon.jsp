<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- Modal -->
<div class="modal fade bd-example-modal-lg" id="exampleModal"
	tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
	aria-hidden="true">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">Tra Cứu Vận Đơn</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body" id="phaDo">
				Mời quý khách nhập mã vận đơn để tra cứu (VD: 123456789)
				<div class="input-group mb-3">
					<input type="text" class="form-control" id="maHoaDon"
						placeholder="Nhập mã vận đơn" aria-label="Recipient's username"
						aria-describedby="basic-addon2">
					<div class="input-group-append">
						<button id="timHoaDon" class="btn btn-outline-secondary"
							type="button"
							style="padding: 7px; border-radius: 0px 5px 5px 0px;">TÌM
							ĐƠN</button>
					</div>
				</div>
				<div class="daPho"></div>
				<table class="table table-bordered tt-kh">

				</table>
				<table class="table table-bordered log-kh">

				</table>
			</div>
		</div>
	</div>
</div>
<!-- End Modal -->