/**
 * Customizer enhancements for a better user experience.
 *
 * Contains handlers to make Customizer preview reload changes asynchronously.
 * Things like site title and description changes.
 */

( function( $ ) {
	// Add button back to top
    backtotop = $('<a href="#Top" class="btn-top" title="Back to Top" id="button-top" style="display: inline;"><span aria-hidden="true" class="glyphicon glyphicon-arrow-up"></span></a>');
    backtotop.appendTo('body');
    // hide #back-top first
    backtotop.hide();
    // fade in #back-top
    $(function () {
        $(window).scroll(function () {
          if ($(this).scrollTop() > 100) {
            backtotop.fadeIn();
          } else {
            backtotop.fadeOut();
          }
        });

        // scroll body to 0px on click
        backtotop.click(function () {
          $('body,html').animate({
            scrollTop: 0
          }, 800);
          return false;
        });
    });

    $('#primary-menu li:last-child').click(function(){
      $('#searchPrice').modal('show');
    });

    $('#orderId').click(function(event){
        this.select();
    });
    
    /*============================== Shop's customer feedback ==============================*/

    $('#feedback_type_id').on('change', function (e) {
        var optionSelected = $(this).find("option:selected").val();
        if($.inArray(optionSelected,['1','2','8']) !== -1)
        {
            //feedback cho đơn hàng
            $('.feedback').show();
            $('.consult').hide();
        }
        else
        {
            //tư vấn dịch vụ
            $('.feedback').hide();
            $('.consult').show();
        }
    });

//    $('#customer-feedback').click(function(){
//        jQuery('[data-toggle="tooltip"]').tooltip('hide');
//        resetFeedbackForm();
//        $('#feedback-message-modal').hide();
//        $("#send-feedback-modal").modal();
//    });

    function resetFeedbackForm()
    {
        $('#feedback_type_id').val('0');
        $('textarea[name=feedback_content],textarea[name=consult_content],#package_alias').val('');
        $('input[name="station"]').prop('checked', false);
        $('.feedback').hide();
        $('.consult').show();
    }
    $('#submit-feedback-form').click(function(){
        var consult = 0;
        var feedback_content = $('.feedback_content').val();
        var optionSelected = $("#feedback_type_id option:selected").val();
        var station = (typeof $('input[name=station]:checked').val() !== 'undefined' )?$('input[name=station]:checked').val():'';

        if($.inArray(optionSelected,['1','2','8']) == -1){
            // trường hợp tư vấn và khác
            consult = 1;
            feedback_content = $('.consult_content').val()
        }
        $.ajax({
             url : '//khachhang.giaohangtietkiem.vn/khach-hang/khach-hang-shop-dang-phan-hoi',
             crossDomain: true,
             jsonpCallback: "jsonpCallback",
             dataType: 'jsonp',
             data : {
                 feedback_type_id : $('#feedback_type_id option:selected').val(),
                 package_alias: $('#package_alias').val(),
                 consult: consult,
                 station: station,
                 feedback_content: feedback_content,
                 source: $('#is_mobile').val()?'mobile_portal':'web_portal',
             },
             success: function(data) {
                 var html = '';
                 if(data.status === true){
                     html = '<div class="alert alert-success" role="alert">' + data.msg + '</div>';
                     resetFeedbackForm();
                 } else {
                     html = '<div class="alert alert-error" role="alert">' + data.msg + '</div>';
                 }
                 $('#feedback-message-modal').html(html).show();
             },
             error: function(XMLHttpRequest, textStatus, errorThrown) {
                 var html = '<div class="alert alert-error" role="alert">Chúng tôi rất tiếc khi hệ thống GHTK gặp lỗi. Vui lòng liên hệ với GHTK để được hỗ trợ.</div>';
                 $('#feedback-message-modal').html(html).show();
                console.log('Error' + errorThrown);
             }
        });
    });

    $('.cat-item a[href="index-5.htm"/*tpa=https://giaohangtietkiem.vn/category/blog/*/]').text('Tất cả');
    $(document).ready(function() {
        $('[data-toggle="tooltip"]').tooltip('show');
        $('#close-ctm-fb-btn').on('click', function(event) {
            event.preventDefault();
            $('[data-toggle="tooltip"]').tooltip('hide');
            return false;
        });
    });

    $(window).load(function() {

        if( $(".flipbook-currentPageHolder").length ) {
            $(".flipbook-currentPageHolder").each(function () {
                $(this).wrap('<div class="customize-page-number container"></div>'); // trying to add
            });
        }

        if( $(".flipbook-bookLayer .flipbook-nav").length ) {
            $(".flipbook-bookLayer .flipbook-nav").wrapAll( "<div class='custom-nav-ghtk' />");
        }
    });
    
    $('.carousel[data-type="multi"] .item').each(function(){
        var next = $(this).next();
        if (!next.length) {
            next = $(this).siblings(':first');
        }
        next.children(':first-child').clone().appendTo($(this));

        for (var i=0;i<4;i++) {
            next = next.next();
            if (!next.length) {
                next = $(this).siblings(':first');
                }
            next.children(':first-child').clone().appendTo($(this));
        }
    });

} )( jQuery );
function onloadCallback() {
    var orderInfo = document.getElementById('orderInfo');
    var orderId = document.getElementById('orderId').value;
    var response = grecaptcha && grecaptcha.getResponse && grecaptcha.getResponse();
    var eleFbsearch = document.getElementById('feedback-search');
    orderInfo.innerHTML = '';
    grecaptcha.execute();
    if(response && response.length == 0) {
        grecaptcha.execute();
    } else {
        jQuery.ajax({
            type: "POST",
            url: ghtk_ajax_obj.ajaxurl,
            data: {
                'action' : 'search_package_api',
                'orderId' : orderId,
                'responseRecaptcha' : response
            },
            success: function(data){
                grecaptcha && grecaptcha.reset();
                orderInfo.innerHTML = data;
                eleFbsearch.style.background = '#136132';
                eleFbsearch.style.pointerEvents = 'unset';
            },
            error: function() {
                grecaptcha && grecaptcha.reset();
                orderInfo.innerHTML = '<div class="alert alert-warning" role="alert">Có lỗi trong quá trình kiểm tra vận đơn. Hãy liên hệ GHTK qua email admin@ghtk.vn để được hỗ trợ.</div>';
            }
        });
    }
}