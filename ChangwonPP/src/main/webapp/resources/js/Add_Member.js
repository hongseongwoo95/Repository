$(document).ready(function() {
    $('form').on('submit', function(event) {
        event.preventDefault();
        var id = $('input[name="m_id"]').val();
        var regex = /^[a-zA-Z0-9]*$/;
        var errorContainer = $('.error-message');
        
        if (!regex.test(id)) {
            errorContainer.html("아이디는 영문자와 숫자만 입력 가능합니다.").fadeIn(500);
        } else {
            $('form').unbind('submit').submit();
        }
    });
});