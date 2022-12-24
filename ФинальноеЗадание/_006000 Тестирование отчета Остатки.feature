﻿#language: ru

@tree

Функционал: _006000 Тестирование отчета Остатки

Как тетсироващик я хочу
првоерить работу отчета Остатки
чтобы убедиться в корреткности работы 

Контекст:
	И Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: _006010 Подготовительный

	И я закрываю все окна клиентского приложения
	И _000010 Загрузка констант Demo
	И _000060 Загрузка Прихода для _007000 и _006000
		
	Дано Я открываю навигационную ссылку "e1cib/data/Документ.ПриходТовара?ref=8e09000d8843cd1b11de0e199953e14c"
	Когда открылось окно 'Поступление товара * от *'
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
	И я жду закрытия окна 'Поступление товара * от *' в течение 20 секунд	

//	И я выполняю код встроенного языка на сервере
//	"""bsl
//		ВыборкаДокументов = Документы.ПриходТовара.Выбрать();
//		Пока ВыборкаДокументов.Следующий() Цикл
//			Если НЕ ВыборкаДокументов.ПометкаУдаления тогда
//				ВыборкаДокументов.Ссылка.ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);
//			КонецЕсли;
//		КонецЦикла;
//		ВыборкаДокументов = Документы.РасходТовара.Выбрать();
//		Пока ВыборкаДокументов.Следующий() Цикл
//			Если НЕ ВыборкаДокументов.ПометкаУдаления тогда
//				ВыборкаДокументов.Ссылка.ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);
//			КонецЕсли;
//		КонецЦикла;
//	"""

Сценарий: _006020 Проверка отчета Остатки

	И я закрываю все окна клиентского приложения
	Дано Я открываю навигационную ссылку "e1cib/app/Отчет.ОстаткиТоваровНаСкладах"
	Когда открылось окно 'Остатки товаров'
	И я нажимаю на кнопку с именем 'ФормаЗагрузитьВариант'
	Тогда открылось окно 'Выбор варианта отчета'
	И в таблице "СписокНастроек" я перехожу к строке
		| 'Представление' |
		| 'Основной' |		
	И я нажимаю на кнопку с именем 'Загрузить'
	Тогда открылось окно 'Остатки товаров'
	И я нажимаю на кнопку с именем 'ФормаСформировать'
	И Табличный документ "Результат" равен макету "_006021.mxl" по шаблону
	И я закрываю все окна клиентского приложения
	