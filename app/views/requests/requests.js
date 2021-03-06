$(document).ready(function()
{
  	console.log('requests.js.erb');
  //Использование параметра completed
	$('.phone').each(function() { 
		$(this).mask("8(999) 999-99-99"); 
	});


	//console.log('ready!')
	$('#request_name, #request_phone').blur( function()
	{
	 	checkCorrect(this);
	});



	$("#submit-request, #submit-request-fast").click(function(event){ 
		console.log('clicked!');
		if (checkCorrect($('#request_name')) && checkCorrect($('#request_phone')))
			console.log('sumbiting');
		//else			event.preventDefault();
	 });

	$("#submit-request-fast").click(function(event){ 
		//event.preventDefault();
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

var checkCorrect = function(elem)
{
   	//console.log('Entered');
   	var rv_name = /^[a-zA-Zа-яА-Я0-9]+$/; // используем регулярное выражение
   	var rv_phone = /^8\([\d]{3}\)[ ]\d{3}\-\d{2}\-\d{2}$/;
        // Eсли длина имени больше 2 символов, оно не пустое и удовлетворяет рег. выражению,
        // то добавляем этому полю класс .not_error,
        // и ниже в контейнер для ошибок выводим слово " Принято", т.е. валидация для этого поля пройдена успешно
 	var id = $(elem).attr('id');
	var val = $(elem).val();
	switch (id)
	{
        case 'request_name' :
	        if(val.length > 2 && val != '' && rv_name.test(val))
	        {
	        	console.log('ОК!');
	        	$(elem).css('color', 'green');
	        	paintEror(elem, 'Принято', false);
	        	return true;
	        }
	          // Иначе, мы удаляем класс not-error и заменяем его на класс error, говоря о том что поле содержит ошибку валидации,
	          // и ниже в наш контейнер выводим сообщение об ошибке и параметры для верной валидации
	        else
	        {
	        	paintEror(elem, 'Длина имени должна быть не менее 3 символов и не больше 30', true);
	        	$(elem).css('color', 'red');
	        }
	    break;
	    case 'request_phone' :
	    	if(rv_phone.test(val))
	    	{
	    		$(elem).css('color', 'green');
	    		paintEror(elem, 'Принято', false);
	    		return true;
	    	}
	    	else
	    	{
	    		paintEror(elem, 'Неверный формат телефона!\n+7(999) 999-99-99', true);
	    		$(elem).css('color', 'red');
	    	}
	    break;	
	}
		//$("#submit-request").style.color = 'red'	
}