#language: ru

@tree

Функционал: _05250 Продолжение теста переменных

Как тестировщик я хочу
хочу првоерить переменные
чтобы првоерить корректность заполнения

Контекст:
	И Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: _05260 Продолжение теста переменных

	// Откроем навигационную ссылку из глобальной переменной предидущего сценария
	Дано Я открываю навигационную ссылку "$$СсылкаНаТоварБезХарактеристик$$"