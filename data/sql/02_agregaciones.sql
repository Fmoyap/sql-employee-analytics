-- ============================================
-- SQL Employee Analytics
-- 02 - Agregaciones
-- ============================================


-- Consulta 1:
-- Cantidad de empleados por área.

SELECT id_area,
       COUNT(*) AS cantidad_empleados
FROM empleados
GROUP BY id_area
ORDER BY cantidad_empleados DESC;


-- Consulta 2:
-- Sueldo promedio por área.

SELECT id_area,
       AVG(sueldo) AS sueldo_promedio
FROM empleados
GROUP BY id_area
ORDER BY sueldo_promedio DESC;


-- Consulta 3:
-- Cantidad de empleados y sueldo promedio por área.

SELECT id_area,
       COUNT(*) AS cantidad_empleados,
       AVG(sueldo) AS sueldo_promedio
FROM empleados
GROUP BY id_area
ORDER BY sueldo_promedio DESC;


-- Consulta 4:
-- Áreas con al menos 5 empleados
-- y sueldo promedio superior a S/3500.

SELECT id_area,
       COUNT(*) AS cantidad_empleados,
       AVG(sueldo) AS sueldo_promedio
FROM empleados
GROUP BY id_area
HAVING COUNT(*) >= 5
   AND AVG(sueldo) > 3500
ORDER BY sueldo_promedio DESC;


-- Consulta 5:
-- Empleados con sueldo mayor a S/2500,
-- agrupados por área.
-- Solo se muestran áreas con al menos 3 empleados
-- y sueldo promedio superior a S/3200.

SELECT id_area,
       COUNT(*) AS cantidad_empleados,
       AVG(sueldo) AS sueldo_promedio
FROM empleados
WHERE sueldo > 2500
GROUP BY id_area
HAVING COUNT(*) >= 3
   AND AVG(sueldo) > 3200
ORDER BY sueldo_promedio DESC;
