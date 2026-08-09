-- ============================================
-- SQL Employee Analytics
-- 01 - Consultas básicas
-- ============================================

-- Consulta 1:
-- Mostrar empleados con sueldo mayor o igual a S/3000.
-- Ordenados de mayor a menor sueldo.

SELECT nombre,
       sueldo
FROM empleados
WHERE sueldo >= 3000
ORDER BY sueldo DESC;


-- Consulta 2:
-- Mostrar los empleados cuyo sueldo está entre S/2500 y S/4000.

SELECT nombre,
       sueldo
FROM empleados
WHERE sueldo BETWEEN 2500 AND 4000
ORDER BY sueldo DESC;

