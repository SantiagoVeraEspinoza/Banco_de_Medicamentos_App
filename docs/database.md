```mermaid
erDiagram
  centros {
    int id PK
    string nombre
    string descripcion
    decimal latitud
    decimal longitud
    img string
  }
  medicamentos {
    int id PK
    string nombre
    string descripcion
    bool prescripcion
    string img
  }
  inventario {
    int id PK
    int id_centro FK
    int id_medicamento FK
    bool disponible
    bool peligro
  }
  usuario {
    int id PK
    string email
    string password
  }
  centros ||--|{ inventario:tiene
  medicamentos ||--|{ inventario:tiene
```

[Informacion](https://github.blog/2022-02-14-include-diagrams-markdown-files-mermaid/) de como hice el diagrama
