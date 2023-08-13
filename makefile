db_build:
	docker run --name task_flow_database -e POSTGRES_PASSWORD=root -e POSTGRES_USER=root -e POSTGRES_DB=task_flow_database -v "task_flow_database_data:/var/lib/postgresql/data" -p "5432:5432" -d postgres

all_start:
	docker start todo_laravel_database && php artisan serve