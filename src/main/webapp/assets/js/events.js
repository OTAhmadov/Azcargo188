/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(function (e) {
    try {
        $('body').on('click', '#main-menu a', function(e) {
            e.preventDefault();
            alert();
            $(this).parents('ul li').each(function() {
                $(this).removeClass('active');
            })
            $(this).addClass('active');
        })
    }
    catch (err) {
        console.error(err);
    }
});
