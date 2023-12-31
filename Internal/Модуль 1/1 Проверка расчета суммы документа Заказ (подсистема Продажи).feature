﻿#language: ru


Функционал: изменение количества и цены в документе 

Как Менеджер по продажам я хочу
изменить количество и цену в документе
чтобы изменилась сумма документа  

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: изменение количества и цены в документе 
* Открытие формы документа
	И В командном интерфейсе я выбираю 'Продажи' 'Заказы'
	Тогда открылось окно 'Заказы товаров'
	И в таблице "Список" я перехожу к строке:
		| 'Автор'                | 'Вид цен'      | 'Дата'                | 'Номер'     | 'Организация'        | 'Покупатель'                | 'Склад'   | 'Состояние заказа' |
		| 'Менеджер по продажам' | 'Мелкооптовая' | '17.08.2023 16:58:01' | '000000023' | 'ООО "1000 мелочей"' | 'Магазин "Бытовая техника"' | 'Большой' | 'Открыт'           |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Заказ * от *'
* Изменение табличной части документа
	И в таблице "Товары" я перехожу к строке:
		| 'Количество' | 'Сумма'      | 'Товар'    | 'Цена'      |
		| '12'         | '192 000,00' | 'Veko67NE' | '16 000,00' |
	И в таблице "Товары" я активизирую поле с именем "ТоварыЦена"
	И в таблице "Товары" я выбираю текущую строку
	И в таблице "Товары" в поле с именем 'ТоварыЦена' я ввожу текст '18 000,00'
	И в таблице "Товары" я завершаю редактирование строки
	И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
	И в таблице "Товары" я выбираю текущую строку
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '10'
	И в таблице "Товары" я завершаю редактирование строки
* Проверка изменения суммы документа
	Тогда элемент формы с именем "ТоварыИтогСумма" стал равен '335 000'	
* Проведение документа
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
	И я жду закрытия окна 'Заказ * от * *' в течение 20 секунд