<?
	//Тут получаем $id элемента и узнаём полный алиас по всем надразделам и разделу рекурсивно и записываем его в поле fullalias
	//Ещё сюда можно записать вычисление depth
	//А ещё можно проверять значение parent_id и menu_id и устранять коллизию, если она случится
	
	if (!HelperList::helper_isset('sitepage')) {
		return;
	}
	
	SitePage::set_full_aliases_in_current_and_sub($element_id,$table);
	
?>
