-- ============================================
-- SQL Employee Analytics
-- 04 - CASE WHEN
-- ============================================


-- Consulta 1:
-- Clasificar a cada empleado según su sueldo.

SELECT e.nombre,
       e.sueldo,
       CASE
           WHEN e.sueldo >= 4000 THEN 'Alto'
           WHEN e.sueldo BETWEEN 3000 AND 3999 THEN 'Medio'
           ELSE 'Bajo'
       END AS nivel_sueldo
FROM empleados AS e
ORDER BY e.sueldo DESC;


-- Consulta 2:
-- Contar empleados por nivel salarial dentro de cada área.

SELECT a.nombre_area AS area,
       COUNT(CASE
                 WHEN e.sueldo >= 4000 THEN 1
             END) AS alto,
       COUNT(CASE
                 WHEN e.sueldo BETWEEN 3000 AND 3999 THEN 1
             END) AS medio,
       COUNT(CASE
                 WHEN e.sueldo < 3000 THEN 1
             END) AS bajo
FROM areas AS a
INNER JOIN empleados AS e
    ON a.id_area = e.id_area
GROUP BY a.nombre_area
ORDER BY area;


-- Consulta 3:
-- Mostrar el total de empleados por área
-- y cuántos ganan S/3000 o más.

SELECT a.nombre_area AS area,
       COUNT(e.id) AS total_empleados,
       COUNT(CASE
                 WHEN e.sueldo >= 3000 THEN 1
             END) AS empleados_mayor_igual_3000
FROM areas AS a
INNER JOIN empleados AS e
    ON a.id_area = e.id_area
GROUP BY a.nombre_area
ORDER BY total_empleados DESC;


-- Consulta 4:
-- Calcular el porcentaje de empleados
-- que ganan S/3000 o más por área.

SELECT a.nombre_area AS area,
       COUNT(e.id) AS total_empleados,
       COUNT(CASE
                 WHEN e.sueldo >= 3000 THEN 1
             END) AS empleados_mayor_igual_3000,
       ROUND(
           COUNT(CASE
                     WHEN e.sueldo >= 3000 THEN 1
                 END) * 100.0 / COUNT(e.id),
           2
       ) AS porcentaje_mayor_igual_3000
FROM areas AS a
INNER JOIN empleados AS e
    ON a.id_area = e.id_area
GROUP BY a.nombre_area
ORDER BY porcentaje_mayor_igual_3000 DESC;


-- Consulta 5:
-- Calcular la masa salarial de empleados
-- con sueldo >= 3000 y < 3000 por área.

SELECT a.nombre_area AS area,
       SUM(
           CASE
               WHEN e.sueldo >= 3000 THEN e.sueldo
               ELSE 0
           END
       ) AS masa_salarial_mayor_igual_3000,
       SUM(
           CASE
               WHEN e.sueldo < 3000 THEN e.sueldo
               ELSE 0
           END
       ) AS masa_salarial_menor_3000
FROM areas AS a
INNER JOIN empleados AS e
    ON a.id_area = e.id_area
GROUP BY a.nombre_area
ORDER BY area;
