#language: ru

@tree

Функционал: _0501000 Задание1Модуль5

Как тестировщик я хочу
создать элементы номенклатуры
чтобы проверить корректность работы программы

Контекст: 
	И Я запускаю сценарий открытия TestClient или подключаю уже существующий
	
Сценарий: _0501010 Создание элементов номенклатуры

	И я закрываю все окна клиентского приложения
	И Я запоминаю значение выражения '0' в переменную "Шаг"
	И я делаю 10 раз
		И Я запоминаю значение выражения '$Шаг$ + 1' в переменную "Шаг"
		И Я запоминаю значение выражения '"Номенклатура " + $Шаг$' в переменную "Номенклатура"
		И я проверяю или создаю для справочника "Items" объекты с обмен данными загрузка истина:
		| 'Ref'                                                                | 'DeletionMark' | 'Code' | 'ItemType'                                                          | 'Unit'                                                          | 'MainPricture'                          | 'Vendor'                                                           | 'ItemID' | 'PackageUnit' | 'Description_en' | 'Description_hash' | 'Description_ru' | 'Description_tr' | 'Height' | 'Length' | 'Volume' | 'Weight' | 'Width' |
		| '{!"e1cib/data/Catalog.Items?ref=" + StrReplace(New UUID, "-", "")}' | 'False'        | 2      | 'e1cib/data/Catalog.ItemTypes?ref=b762b13668d0905011eb76684b9f6879' | 'e1cib/data/Catalog.Units?ref=b762b13668d0905011eb76684b9f687b' | 'ValueStorage:AQEIAAAAAAAAAO+7v3siVSJ9' | 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d794d' | '58792'  | ''            | '$Номенклатура$' | ''                 | ''               | ''               |          |          |          |          |         |