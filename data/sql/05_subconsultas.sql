-- ============================================
-- SQL Employee Analytics
-- 05 - Subconsultas
-- ============================================


-- Consulta 1:
-- Empleados cuyo sueldo está por encima
-- del sueldo promedio general.

SELECT e.nombre,
       e.sueldo
FROM empleados AS e
WHERE e.sueldo > (
    SELECT AVG(sueldo)
    FROM empleados
)
ORDER BY e.sueldo DESC;


-- Consulta 2:
-- Empleado(s) que tienen el sueldo máximo
-- de toda la empresa.

SELECT e.nombre,
       e.sueldo
FROM empleados AS e
WHERE e.sueldo = (
    SELECT MAX(sueldo)
    FROM empleados
);


-- Consulta 3:
-- Empleados que pertenecen a las áreas
-- de Ventas o Logística.

SELECT e.nombre,
       e.sueldo
FROM empleados AS e
WHERE e.id_area IN (
    SELECT a.id_area
    FROM areas AS a
    WHERE a.nombre_area IN ('Ventas', 'Logística')
)
ORDER BY e.sueldo DESC;


-- Consulta 4:
-- Empleados que NO pertenecen a Ventas
-- ni a Logística.

SELECT e.nombre,
       e.sueldo
FROM empleados AS e
WHERE e.id_area NOT IN (
    SELECT a.id_area
    FROM areas AS a
    WHERE a.nombre_area IN ('Ventas', 'Logística')
)
ORDER BY e.sueldo DESC;


-- Consulta 5:
-- Áreas que tienen al menos un empleado.

SELECT a.nombre_area
FROM areas AS a
WHERE EXISTS (
    SELECT 1
    FROM empleados AS e
    WHERE e.id_area = a.id_area
);


-- Consulta 6:
-- Áreas que no tienen ningún empleado.

SELECT a.nombre_area
FROM areas AS a
WHERE NOT EXISTS (
    SELECT 1
    FROM empleados AS e
    WHERE e.id_area = a.id_area
);
