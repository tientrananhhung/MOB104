<%-- 
    Document   : adddepart
    Created on : 28-Mar-2018, 02:27:14
    Author     : tgdd
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div id="main-wrapper">
            <jsp:include page="header.jsp"></jsp:include><br/><br/>
            <jsp:include page="left-sidebar.jsp"></jsp:include>
            <div class="page-wrapper">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12">
                            <h2 class="box-title m-t-40">Tiếp nhận đơn hàng</h2>
                            <hr style="background-color: #F2711C; height: 2px">
                            <br/>
                            <!--/row-->
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group row">
                                        <label class="control-label text-right col-md-3">Mã đơn hàng</label>
                                        <div class="col-md-9">
                                            <input type="text" class="form-control" style="border-color: #00a400">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group row">
                                        <label class="control-label text-right col-md-3">Tên mặt hàng</label>
                                        <div class="col-md-9">
                                            <input type="text" class="form-control" style="border-color: #00a400">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group row">
                                        <label class="control-label text-right col-md-3">Tên người nhận</label>
                                        <div class="col-md-9">
                                            <input type="text" class="form-control" style="border-color: #00a400">
                                        </div>
                                    </div>
                                </div>
                                <!--/span-->
                                <div class="col-md-6">
                                    <div class="form-group row">
                                        <label class="control-label text-right col-md-3">Địa chỉ người nhận</label>
                                        <div class="col-md-9">
                                            <input type="text" class="form-control" style="border-color: #00a400">
                                        </div>
                                    </div>
                                </div>
                                <!--/span-->
                            </div>
                            <!--/row-->
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group row">
                                        <label class="control-label text-right col-md-3">SĐT người nhận</label>
                                        <div class="col-md-9">
                                            <input type="number" class="form-control" style="border-color: #00a400"> 
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="form-group row">
                                        <label class="control-label text-right col-md-3">Trọng lượng</label>
                                        <div class="col-md-9">
                                            <input type="number" class="form-control" style="border-color: #00a400"> 
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group row">
                                        <label class="control-label text-right col-md-3">Phí vận chuyển</label>
                                        <div class="col-md-9">
                                            <input type="number" class="form-control" style="border-color: #00a400">
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="form-group row">
                                        <label class="control-label text-right col-md-3">Cách thức trả phí</label>
                                        <div class="col-md-9">
                                            <label><input type="radio" name="optradio"> Chuyển khoản</label><br/>
                                            <label><input type="radio" name="optradio"> Nhận hàng rồi thanh toán</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--/span-->
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group row">
                                        <label class="control-label text-right col-md-3">Thu hộ</label>
                                        <div class="col-md-9">
                                            <input type="number" class="form-control" style="border-color: #00a400">
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="form-group row">
                                        <label class="control-label text-right col-md-3">Mã khách hàng</label>
                                        <div class="col-md-9">
                                            <input type="text" class="form-control" style="border-color: #00a400">
                                        </div>
                                    </div>
                                </div>
                                <!--/span-->
                            </div>
                            <!--/row-->
                        </div>
                        <hr>
                        <div class="form-actions">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="row">
                                        <div class="col-md-offset-3 col-md-9">
                                            <button type="submit" class="btn btn-success">Submit</button><br/><br/>
                                            <button type="button" class="btn btn-inverse">Cancel</button>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6"> </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <footer class="footer"> © 2018 All rights reserved. Template designed by <a href="https://www.facebook.com/profile.php?id=100010754627040">Chu Thái</a></footer>
    <script src="abc/js/lib/jquery/jquery.min.js"></script>
    <!-- Bootstrap tether Core JavaScript -->
    <script src="abc/js/lib/bootstrap/js/popper.min.js"></script>
    <script src="abc/js/lib/bootstrap/js/bootstrap.min.js"></script>
    <!-- slimscrollbar scrollbar JavaScript -->
    <script src="abc/js/jquery.slimscroll.js"></script>
    <!--Menu sidebar -->
    <script src="abc/js/sidebarmenu.js"></script>
    <!--stickey kit -->
    <script src="abc/js/lib/sticky-kit-master/dist/sticky-kit.min.js"></script>
    <!--Custom JavaScript -->
    <script src="abc/js/custom.min.js"></script>


    <script src="abc/js/lib/datatables/datatables.min.js"></script>
    <script src="abc/js/lib/datatables/cdn.datatables.net/buttons/1.2.2/js/dataTables.buttons.min.js"></script>
    <script src="abc/js/lib/datatables/cdn.datatables.net/buttons/1.2.2/js/buttons.flash.min.js"></script>
    <script src="abc/js/lib/datatables/cdnjs.cloudflare.com/ajax/libs/jszip/2.5.0/jszip.min.js"></script>
    <script src="abc/js/lib/datatables/cdn.rawgit.com/bpampuch/pdfmake/0.1.18/build/pdfmake.min.js"></script>
    <script src="abc/js/lib/datatables/cdn.rawgit.com/bpampuch/pdfmake/0.1.18/build/vfs_fonts.js"></script>
    <script src="abc/js/lib/datatables/cdn.datatables.net/buttons/1.2.2/js/buttons.html5.min.js"></script>
    <script src="abc/js/lib/datatables/cdn.datatables.net/buttons/1.2.2/js/buttons.print.min.js"></script>
    <script src="abc/js/lib/datatables/datatables-init.js"></script>
</body>
</html>
