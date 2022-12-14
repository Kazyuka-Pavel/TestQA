#language: ru

@tree

Функционал: Создание документа поступление товаров

Как Менеджер по закупкам я хочу
Создание документ Поступление товаров
чтобы поставить товар на учет
Контекст:
Дано Я открыл новый сеанс TestClient или подключил уже существующий
// Создание
Сценарий: Создание документа поступление товаров
* Открытие документа Поступление
	Когда В панели разделов я выбираю 'Главное'
	И В командном интерфейсе я выбираю 'Закупки' 'Поступления товаров'
	Тогда открылось окно 'Поступления товаров'
	И в таблице "Список" я перехожу к строке:
		| 'Дата'        |
		| 'Мосхлеб ОАО' |
	И в таблице "Список" я разворачиваю текущую строку
	И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюСоздать' на элементе формы с именем "Список"
	Тогда открылось окно 'Поступление товара (создание)'
* Заполение шапки документа
	И из выпадающего списка с именем "Организация" я выбираю точное значение 'ООО "1000 мелочей"'
	И из выпадающего списка с именем "Склад" я выбираю точное значение 'Малый'
	И из выпадающего списка с именем "Поставщик" я выбираю точное значение 'Мосхлеб ОАО'
* Заполение таблицы товары
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" из выпадающего списка с именем "ТоварыТовар" я выбираю точное значение 'Хлеб'
	И я перехожу к следующему реквизиту
	И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '10,00'
	И я перехожу к следующему реквизиту
	И в таблице "Товары" я завершаю редактирование строки
* Запись и проведение
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
	И я жду закрытия окна 'Поступление товара (создание) *' в течение 20 секунд
