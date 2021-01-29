 $(document).ready(function() {
 	$('.count').each(function () {
        $(this).prop('Counter',0).animate({
            Counter: $(this).text()
        }, {
            duration: 2300,
            easing: 'swing',
            step: function (now) {
                $(this).text(Math.ceil(now).toLocaleString());
            }
        });
     });

	$('.countCash').each(function () {
        $(this).prop('Counter',0).animate({
            Counter: $(this).text()
        }, {
            duration: 2300,
            easing: 'swing',
            step: function (now) {
                $(this).text('$ ' + Math.ceil(now).toLocaleString());
            }
        });
     });

 });
