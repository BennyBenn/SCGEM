

--MATERIAS PARA LOS GRUPOS, SE DEBE CONSERVAR SIMPLICIDAD EN LA MATRICULA AL PRINCIPIO, PARA QUE SE VEA AQUI MAMALON,    PD:INSEERTAR MATERIAS MEDIO DE PELICULA DE DISNEY 
--PARA QUE AL ENSEñAR SE VEA AQUI ESOTERICO 
--INSERT INTO MATERIAS VALUES('AA123','ABECEDARIO ARABE-INDIO-AFRICANO','');



--PROFESORES A DAR CLASES
--INSERT INTO PROFESORES VALUES('SEX69','DOCTOR VALDOMERO ESPINOZA','6969696969','DOCTORVALDOMERO@TAXI.TURK','01/01/01');



--HORARIOS A DARSE
-- QUE SEAN COHERENTES SUS HORAS, ANDO VIENDO QUE SALGAN COMO EN LA PAGINA Y NO TODO DE ASI CACA 
--INSERT INTO HORARIOS VALUES('AA123','001C','SEX69','2025-12-12 09:00:00','2025-12-12 11:00:00','2025-12-12 07:00:00','2025-12-12 14:00:00','2025-12-12 13:00:00');


--ALUMNOS A INGRESAR
--INSERT INTO ALUMNOS VALUES('KBR','TURISMO xD','6','KEVIN KALEB DE JESUS MARIA',973,'DEREALDEJESUSYMARIA@KALEBK.COM','2025-03-25 00:00:00');




----GRUPOS A LOS QUE PROFESORES DAN CLASES 
--INSERT INTO MATERIASPROFESORES VALUES('SEX69','ALGO1');


--GRUPOS DE ALUMNOS
--EL ULTIMO ARGUMENTO ES A LIBRE ALBEDRIO,LMITADO A LONGITUD 5
--INSERT INTO GRUPOALUMNOS VALUES('BB456','KBR','ALGO1');





--NUEVAS--NUEVAS--NUEVAS--NUEVAS--NUEVAS--NUEVAS--NUEVAS--NUEVAS
--NUEVAS--NUEVAS--NUEVAS--NUEVAS--NUEVAS--NUEVAS--NUEVAS--NUEVAS
--NUEVAS--NUEVAS--NUEVAS--NUEVAS--NUEVAS--NUEVAS--NUEVAS--NUEVAS
--NUEVAS--NUEVAS--NUEVAS--NUEVAS--NUEVAS--NUEVAS--NUEVAS--NUEVAS

---CALIFICACIONES
--INSERT INTO CALIFICACIONES VALUES('BB456','matricula de alumnos asociada ',7,5,9,'AGO24-DIC24');


--ASISTENCIAS
--INSERT INTO ASISTENCIAS('matricula de alumno asociada','CODIGO_ASISTENCIA(DEBE SER NUMERICO Y LETRAS HASTA LONGITUD 10','UNA FECHA EN TIPO TIMESTAMP QUE SEA 2025-03-13 09:57:12 POR EJEMPLO');

--PAGOS

/*
SE OCUPA ESTE QUERY PARA GENERAR LAS FECHAS DE PAGO AUTOMATICAMENETE

    SELECT 
    DATE_FORMAT(p.fecha_vencimiento, '%M') AS MES,  -- Extracts month name
    p.pago_mensual AS CANTIDAD,
    p.fecha_vencimiento AS FECHA_CORTE,
    CASE 
        WHEN p.fecha_pago IS NULL THEN 'Pendiente'
        WHEN DAY(p.fecha_pago) BETWEEN 1 AND 5 THEN 'Descuento 5%'
        WHEN DAY(p.fecha_pago) BETWEEN 6 AND 15 THEN 'Normal'
        WHEN DAY(p.fecha_pago) > 15 THEN 'Recargo 5%'
    END AS ESTADO,
    CASE 
        WHEN p.fecha_pago IS NULL THEN 'Por pagar'
        ELSE 'Pagado'
    END AS ACCION

  FROM PAGOS p
  JOIN ALUMNOS on ALUMNOS.matricula = p.matricula
  where ALUMNOS.matricula = ?;

*/
--el primer campo es del alumno asociado
---AJUSTESE EL INSERT AL FORMATO QUE SE NECESITA SEGUN EL QUERY DE ARRIBA


-------INGRESO DE NUEVOS PROFESORES
--INSERT INTO PROFESORES VALUES('PDF25','WINNIE THE POO','2215649875','ILOVEHONEY@POT.COM','2025-03-27 01:43:00');



--INGRESO DE USUARIOS, DEBEN ESTAR RELACIOINADOS DIRECTAMENTE A LOS ALUMNOS PUES ASI SON, Y RECORDAR QUE HAY ROLES DE USUARIO QUE SE AJUSTAN A LA DESCRIPCION QUE AJUSTA ENTRE 
--ESTUDIANTE(1), PROFESOR(2), ADMINISTRATIVO(3) Y SUPERADMIN(99)
--INSERT INTO USUARIOS VALUES('ILVSX25','6969','SEX69','2');
