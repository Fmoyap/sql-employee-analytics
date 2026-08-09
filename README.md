# SQL Employee Analytics

Proyecto personal de análisis de datos desarrollado utilizando SQL.

El objetivo es analizar información de empleados y áreas para obtener
indicadores relacionados con distribución de personal, niveles salariales
y masa salarial.

El proyecto se desarrolla progresivamente, incorporando diferentes
conceptos de SQL a medida que avanza el análisis.

---

## Objetivos del análisis

- Analizar la distribución de empleados por área.
- Calcular el sueldo promedio por área.
- Identificar empleados según rangos salariales.
- Analizar la concentración de empleados con sueldo >= S/3000.
- Calcular indicadores porcentuales.
- Analizar la masa salarial por segmento.
- Practicar consultas SQL orientadas a problemas de negocio.

---

## Dataset

El proyecto utiliza dos tablas principales:

### 'areas'

Contiene información de las áreas de la empresa.

| Campo | Descripción |
|---|---|
| 'id_area' | Identificador del área |
| 'nombre_area' | Nombre del área |

### 'empleados'

Contiene información de los empleados.

| Campo | Descripción |
|---|---|
| 'id' | Identificador del empleado |
| 'nombre' | Nombre del empleado |
| 'id_area' | Área a la que pertenece |
| 'sueldo' | Sueldo del empleado |

El dataset contiene 250 registros ficticios de empleados.

---

## 🛠️ Tecnologías

- SQL
- Git
- GitHub

---

## Conceptos SQL utilizados

### Consultas básicas

- 'SELECT'
- 'FROM'
- 'WHERE'
- 'ORDER BY'
- 'IN'
- 'BETWEEN'

### Agregaciones

- 'COUNT'
- 'AVG'
- 'SUM'
- 'GROUP BY'
- 'HAVING'

### Relaciones entre tablas

- 'INNER JOIN'
- 'LEFT JOIN'
- 'ON'

### Transformación y análisis

- 'CASE WHEN'
- Agregaciones condicionales
- Cálculo de porcentajes
- Segmentación salarial
-------------------------------------
## Estructura del proyecto

```text
sql-employee-analytics/
│
├── README.md
│
├── data/
│   ├── areas.csv
│   └── empleados.csv
│
└── sql/
    ├── 01_basicos.sql
    ├── 02_agregaciones.sql
    ├── 03_joins.sql
    └── 04_case_when.sql
