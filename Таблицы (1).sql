-- Создание таблицы клиентов
CREATE TABLE clients (
    client_code SERIAL PRIMARY KEY,
    last_name VARCHAR(50) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    patronymic VARCHAR(50),
    birth_date DATE,
    company_representative BOOLEAN,
    address TEXT,
    phone VARCHAR(20)
);

-- Создание таблицы заказов
CREATE TABLE orders (
    order_number SERIAL PRIMARY KEY,
    client_code INTEGER NOT NULL,
    order_date DATE NOT NULL DEFAULT CURRENT_DATE,
    assembly_deadline DATE,
    delivery_info TEXT,
    delivery_address TEXT NOT NULL,
    -- Определение внешнего ключа
    CONSTRAINT fk_client 
        FOREIGN KEY (client_code) 
        REFERENCES clients (client_code)
);