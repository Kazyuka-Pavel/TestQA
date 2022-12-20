﻿#language: ru

@tree

Функционал: _05500 Тест ПопыткаИсключение

Как тестировщик я хочу
хочу првоерить работы попытка исключение
чтобы првоерить корректность заполнения

Контекст:
	И Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: _05510 Тест Веб - Севиса

	И в поле с именем 'ПроверитьГод' я ввожу текст '2012'
	И Я запоминаю в переменную "СоединениеУстановлено" значение "Нет"
	И я делаю 5 раз
		Если переменная "СоединениеУстановлено" имеет значение "Нет" Тогда
			Попытка			
				И я нажимаю на кнопку с именем 'ФормаПолучитьДанные'
				И элемент формы 'Год высокосный' стал равен 'Да'
				И Я запоминаю в переменную "СоединениеУстановлено" значение "Да"
			Исключение
				И Пауза 10
		Иначе
			И я вывожу значение переменной "СоединениеУстановлено"
			//Тогда я прерываю цикл
	Если переменная "СоединениеУстановлено" имеет значение "Нет" Тогда
		И я останавливаю выполнение сценария "Skipped"
		
	И В командном интерфейсе я выбираю 'Казначейство' 'Кассы\банковские счета'
		
Сценарий: _05520 Регистрация нескольких ошибок

	Попытка
		И Я подключаю клиент тестирования "ИмяПрофиляTestClient1" из таблицы клиентов тестирования
	Исключение
		И я регистрирую ошибку "Первая ошибка" по данным исключения

	И Пауза 2

	Попытка
		И Я подключаю клиент тестирования "ИмяПрофиляTestClient2"из таблицы клиентов тестирования
	Исключение
		И я регистрирую ошибку "Вторая ошибка" по данным исключения