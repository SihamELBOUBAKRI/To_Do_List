$(document).ready(function(){
    $('.upd').on('click', function(){
        var $form = $(this).closest('.form');
        var $updateF = $form.find('.updateF');

        $(this).hide();
        $updateF.show();
    });

    $(document).on('click', '.cancel', function(){
        var $form = $(this).closest('.form');
        var $updateF = $form.find('.updateF');
        var $updatebtn = $form.find('.upd');

        $updateF.hide();
        $updatebtn.show();
    });

    $(document).on('click', '.save', function(){

        var $form = $(this).closest('.form');
        var $updateF = $form.find('.updateF');
        var $updatebtn = $form.find('.upd');

        $updateF.hide();
        $updatebtn.show();

    });
});
