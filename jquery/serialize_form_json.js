//How to serialize an HTML form to a JSON object using jQuery

//$form is jquery form object
function serializeFormJson($form){
	return $form.serializeArray().reduce(function(object, current, index){ object[current.name] = current.value; return object; }, {});
}