$(function(){
    $('.payments_option h5').click(function(){
        var a = $(this.parent).find('label')
        $(this.parent).siblings().show();
    });
});