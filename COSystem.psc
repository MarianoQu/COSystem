Algoritmo COSystem
	// Defino variables globales a utilizar
	Definir Lista_New, Nom_Afi_New, Nom_Ape_New, Nueva_Ficha Como Cadena
	Definir categoria, Lista_Dni, Dni, Metodo_Pago Como Entero
	Dimensionar Lista_Dni(20)
	Dimensionar Lista_New(20)
	// Comienzo la codificaci�n de la interfaz con el usuario
	Escribir 'Hola, en que te puedo ayudar?'
	Escribir 'Presione: [1] para Afiliaciones - [2] para Consulta de planes - [3] para Carga de afiliado (s�lo para empleados)'
	Leer categoria
	Seg�n categoria Hacer
		1:
			Escribir 'Desea afiliarse? (S/N)'
			Leer Nueva_Ficha
			Si Nueva_Ficha=S Entonces
				Escribir 'Ingrese su n�mero de documento'
				Leer Dni
				Para i<-1 Hasta 20 Con Paso 1 Hacer
					Si Lista_Dni[i]=Dni Entonces
						Escribir 'Ya se encuentra registrado'
						i <- i+1
					SiNo
						Escribir 'Ingrese su nombre y apellido'
						Leer Nom_Ape_New
						Escribir 'Ingrese m�todo de pago:'
						Escribir 'Presione [1] para Pago en efectivo en COS'
						Escribir 'Presione [2] para Cobro en domicilio'
						Leer Metodo_Pago
					FinSi
				FinPara
				Escribir 'Detalle de nueva afilici�n:'
				Escribir Nom_Ape_New
				Escribir Dni
				Escribir Metodo_Pago
			SiNo
				Si Nueva_Ficha=N Entonces
					Escribir 'Gracias por utilizar nuestro canal de atenci�n'
				SiNo
					Escribir 'Usted ha ingresado un valor incorrecto'
				FinSi
			FinSi
		2:
			Escribir 'Planes para afiliaciones:'
			Escribir 'P100: Cobertura de plan dental seg�n Plan Odontol�gico Obligatorio (POO) - Costo mensual: $500'
			Escribir 'P250: Cobertura seg�n POO, m�s pr�tesis al 50 % - Costo mensual: $1100'
			Escribir 'P500: Cobertura seg�n POO, m�s pr�tesis al 70%. Adem�s incluye atenci�n gratuita en Guardias odontol�gicas - Costo mensual: $1400'
			Escribir 'P1000: Cobertura completa: cubre lo mismo que el plan P500, pero adem�s incluye tratamientos est�ticos - Costo mensual de $2500'
			Escribir 'Los costos son por persona. Consulte por menores de 12 a�os y grupos familiares'
		3:
			Escribir 'Desea cargar afiliados?'
			Leer decision
			Si decision=S Entonces
				Escribir 'Ingrese nombre y apellido del nuevo afiliado'
				Leer Nom_Afi_New
				Lista_New[i] <- Nom_Afi_New
			FinSi
		De Otro Modo:
			Escribir 'Ha oprimido una tecla err�nea'
	FinSeg�n
FinAlgoritmo
