// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require jquery3
//= require jquery_ujs
//= require bootstrap
//= require twitter/bootstrap
//= require_tree 
//= require requests


$(document).ready(function()
{
  //Использование параметра completed
	$('#request_phone').mask("8(999) 999-99-99");

	console.log('ready!')
	$('#request_name, #request_phone').blur( function()
	{
       	console.log('Entered');
       	var rv_name = /^[a-zA-Zа-яА-Я0-9]+$/; // используем регулярное выражение
       	var rv_phone = /^8\([\d]{3}\)[ ]\d{3}\-\d{2}\-\d{2}$/;
            // Eсли длина имени больше 2 символов, оно не пустое и удовлетворяет рег. выражению,
            // то добавляем этому полю класс .not_error,
            // и ниже в контейнер для ошибок выводим слово " Принято", т.е. валидация для этого поля пройдена успешно
     	var id = $(this).attr('id');
    	var val = $(this).val();
    	switch (id)
    	{
	        case 'request_name' :
		        if(val.length > 2 && val != '' && rv_name.test(val))
		        	paintEror(this, 'Принято', false);
		          // Иначе, мы удаляем класс not-error и заменяем его на класс error, говоря о том что поле содержит ошибку валидации,
		          // и ниже в наш контейнер выводим сообщение об ошибке и параметры для верной валидации
		        else
		        	paintEror(this, 'Поле обязательно для заполнения, длина имени должна быть не менее 3 символов', true);
		    break;
		    case 'request_phone' :
		    	if(rv_phone.test(val))
		    		paintEror(this, 'Принято', false);
		    	else
		    		paintEror(this, 'Неверный формат телефона!\n+7(999) 999-99-99', true);
		    break;	
    	}
   	});
	$("#submit-request").click(function(event){ 
		console.log('clicked!');
	 	event.preventDefault();
		//$("#submit-request").style.color = 'red'
	});

 });

var paintEror = function(elem, text, error)
{
    if (error)
    	$(elem).removeClass('not_error').addClass('error');
   	else
    	$(elem).addClass('not_error');
    $(elem).next('.error-box').text(text)
                              .css('color',error ? 'red' : 'green')
                              .animate({'paddingLeft':'10px'},400)
                              .animate({'paddingLeft':'5px'},400);  		                 
}
