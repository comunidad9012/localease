<?php 
	const BASE_URL = "http://localhost/tienda_virtual";
	//const BASE_URL = "https://abelosh.com/tiendavirtual";

	//Zona horaria
	date_default_timezone_set('America/Argentina/Mendoza');

	//Datos de conexión a Base de Datos
	const DB_HOST = "localhost";
	const DB_NAME = "db_tiendavirtual";
	const DB_USER = "root";
	const DB_PASSWORD = "";
	const DB_CHARSET = "utf8";

	//Para envío de correo
	const ENVIRONMENT = 0; // Local: 0, Produccón: 1;

	//Deliminadores decimal y millar Ej. 24,1989.00
	const SPD = ",";
	const SPM = ".";

	//Simbolo de moneda
	const SMONEY = "$";
	const CURRENCY = "ARS";

	//Api PayPal
	//SANDBOX PAYPAL
	const URLPAYPAL = "https://api-m.sandbox.paypal.com";
	const IDCLIENTE = "";
	const SECRET = "";
	//LIVE PAYPAL
	//const URLPAYPAL = "https://api-m.paypal.com";
	//const IDCLIENTE = "";
	//const SECRET = "";

	//Datos envio de correo
	const NOMBRE_REMITENTE = "LocalEase";
	const EMAIL_REMITENTE = "localease2023@gmail.com";
	const NOMBRE_EMPESA = "LocalEase";
	const WEB_EMPRESA = "www.localease.com";

	const DESCRIPCION = "El poder de tu tienda a un solo clic.";
	const SHAREDHASH = "LocalEase";

	//Datos Empresa
	const DIRECCION = "Dr. Carlos Pellegrini 74, San Rafael";
	const TELEMPRESA = "+(54)02604011404";
	const WHATSAPP = "+54-02604011404";
	const EMAIL_EMPRESA = "localease2023@gmail.com";
	const EMAIL_PEDIDOS = "localease2023@gmail.com"; 
	const EMAIL_SUSCRIPCION = "localease2023@gmail.com";
	const EMAIL_CONTACTO = "localease2023@gmail.com";

	const CAT_SLIDER = "1,2,3";
	const CAT_BANNER = "4,5,6";
	const CAT_FOOTER = "1,2,3,4,5";

	//Datos para Encriptar / Desencriptar
	const KEY = 'localease';
	const METHODENCRIPT = "AES-128-ECB";

	//Envío
	const COSTOENVIO = 1000;

	//Módulos
	const MDASHBOARD = 1;
	const MUSUARIOS = 2;
	const MCLIENTES = 3;
	const MPRODUCTOS = 4;
	const MPEDIDOS = 5;
	const MCATEGORIAS = 6;
	const MSUSCRIPTORES = 10;
	const MDCONTACTOS = 8;
	const MDPAGINAS = 9;

	//Páginas
	const PINICIO = 1;
	const PTIENDA = 2;
	const PCARRITO = 3;
	const PNOSOTROS = 4;
	const PCONTACTO = 5;
	const PPREGUNTAS = 6;
	const PTERMINOS = 7;
	const PSUCURSALES = 8;
	const PERROR = 9;

	//Roles
	const RADMINISTRADOR = 1;
	const RSUPERVISOR = 2;
	const RVENDEDOR = 3;
	const RCLIENTES = 7;

	const STATUS = array('Completo','Aprobado, sin enviar','Entregado','Cancelado','Reembolsado','Pendiente');

	//Productos por página
	const CANTPORDHOME = 8;
	const PROPORPAGINA = 4;
	const PROCATEGORIA = 4;
	const PROBUSCAR = 4;

	//REDES SOCIALES
	const FACEBOOK = "https://www.facebook.com/";
	const INSTAGRAM = "https://www.instagram.com/";
	

 ?>