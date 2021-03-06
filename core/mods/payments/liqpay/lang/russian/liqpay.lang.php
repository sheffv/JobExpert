<?php
/********************************************************
	JobExpert v1.0
	powered by Script Developers Group (SD-Group)
	email: info@sd-group.org.ua
	url: http://sd-group.org.ua/
	Copyright 2010-2015 (c) SD-Group
	All rights reserved
=========================================================
	RUS LiqPay - User
********************************************************/
/**
 * @package
 * @todo
 */

(!defined('SDG')) ? die ('Triple protection!') : null;

/***** ФОРМА ОПЛАТЫ *****/
define('LIQPAY_PAY_FORM_HEAD', 'Форма оплаты LiqPay');

define('LIQPAY_PAY_NUMBER', 'Номер платежа');

define('LIQPAY_PAY_AMOUNT', 'Сумма платежа');

define('LIQPAY_PAY_DESCRIPTION', 'Описание платежа');

define('LIQPAY_FAIL_FORM_HEAD', 'В процессе оплаты возникла ошибка!');

define('LIQPAY_FAIL_MESSAGE', 'В процессе оплаты возникла ошибка! Вернитесь к выбору платежных систем и попробуйте оплатить снова. Если у Вас возникли какие-либо вопросы, обращайтесь к админстрации ресурса. В обращении обязательно указывайте данные оплаты.');

define('LIQPAY_WAIT_SECURE_FORM_HEAD', 'Ваш платеж находится в обработке!');

define('LIQPAY_WAIT_SECURE_MESSAGE', 'Ваш платеж находится в обработке! После того как платеж будет обработан, если оплата пройдет успешно, выбранная вами услуга будет автоматически обработана. Обработка платежа может занять неопределенное количество времени (зависит от обработки платежа сервисом http://liqpay.com/). Попробуйте проверить результат обработки выбранной услуги через 1-2 часа. Если у Вас возникли какие-либо вопросы, обращайтесь к админстрации ресурса. В обращении обязательно указывайте данные оплаты.');

/***** ERRORS *****/
define('LIQPAY_PAY_ANSWER_ERROR_UNMATCHED', 'Ошибка! Несовпадение отправленных и принятых данных! Эта ошибка возникла из-за того, что данные, отправленные с сайта не соответствуют данным, принятым от оператора (платежной системы). В большинстве случаев эта ошибка свидетельствует о том, что Вы хотели нас обмануть!'); 

