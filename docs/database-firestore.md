```mermaid
flowchart TD
  A["📕BancoDeMedicamentos, Collection"] --> B["📄 fI6Pke7q2ZhMboi5HkC1, Document"]
  B --> C["📕Medicamento, Collection"]
  B --> D["📕Inventario, Collection"]
  B --> E["📕Centro, Collection"]
  C --> F["📄oKIjqgNFGsJ81NV98gQK, Document
            descripcion: Aspirina es uno de los medicamentos más...
            imageUrl: https://www.aspirina.co...
            nombre: Aspirina
            prescripcion: false"]
  E --> G["📄ImMQGZrYKCY9NbFUgIim, Document
          descripcion: Centro especializado en...
          latitud: 20.736272
          longitud: -103.400907
          nombre: DIF Zapopan
          urlImagen: https://difzapopan.go..."]
  D --> H["📄G3oT7wIi0IpmE0hzkD7d, Document
          idCentro: ImMQGZrYKCY9NbFUgIim
          idMedicamento: oKIjqgNFGsJ81NV98gQK
          peligro: true"]
  H --> F
  H --> G
  
```

[Informacion](https://github.blog/2022-02-14-include-diagrams-markdown-files-mermaid/) de como hice el diagrama
