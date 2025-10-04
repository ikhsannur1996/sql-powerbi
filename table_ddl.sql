-- public.factory_production definition

-- Drop table

-- DROP TABLE public.factory_production;

CREATE TABLE public.factory_production (
	fact_id serial4 NOT NULL,
	factory_id int4 NOT NULL,
	factory_name varchar(100) NULL,
	"location" varchar(100) NULL,
	industry_type varchar(100) NULL,
	factory_size varchar(20) NULL,
	number_of_employees int4 NULL,
	manager_name varchar(100) NULL,
	certification varchar(50) NULL,
	main_products varchar(100) NULL,
	"year" int4 NULL,
	total_units_produced int4 NULL,
	defective_units int4 NULL,
	operational_cost_idr int8 NULL,
	maintenance_cost_idr int8 NULL,
	total_hours_worked int4 NULL,
	overtime_hours int4 NULL,
	energy_consumed_kwh int8 NULL,
	safety_incidents varchar(20) NULL,
	employee_performance float8 NULL,
	defect_rate float8 NULL,
	cost_per_unit_idr float8 NULL,
	energy_efficiency_kwh_per_unit float8 NULL,
	shift_type varchar(20) NULL,
	employee_satisfaction int4 NULL,
	production_line varchar(20) NULL,
	machine_downtime_hours int4 NULL,
	waste_generated_kg int4 NULL,
	CONSTRAINT factory_production_pkey PRIMARY KEY (fact_id)
);
