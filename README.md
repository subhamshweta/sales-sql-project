# Sales & Revenue Analysis using MySQL
This project analyzes customer orders and sales performance using SQL.

## Key Insights:
- Monthly revenue trend
- Top customers by total spent
- Region-wise revenue breakdown

## 📂 Files:
- `schema.sql`: Table creation
- `data.sql`: Sample data
- `analysis_queries.sql`: Insights
## ER Diagram

```mermaid
erDiagram
    regions {
        INT region_id PK
        VARCHAR region_name
    }
    customer {
        INT customer_id PK
        VARCHAR customer_name
        INT region_id FK
    }
    products {
        INT product_id PK
        VARCHAR product_name
        DECIMAL price
    }
    orders {
        INT order_id PK
        INT customer_id FK
        DATE order_date
    }
    order_items {
        INT order_item_id PK
        INT order_id FK
        INT product_id FK
        INT quantity
    }
    customer ||--o{ regions : region_id
    orders ||--o{ customer : customer_id
    order_items ||--o{ orders : order_id
    order_items ||--o{ products : product_id
