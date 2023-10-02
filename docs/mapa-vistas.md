# Mapa de como llegar a cada vista

```mermaid
flowchart TD
  A[Splash screen] --> B[Pantalla de acuerdos];
  B --> C[Inicio de sesion];
  B --> D[Creacion de cuenta];
  C --> E[Menu principal];
  D --> E[Menu principal];
  E --> F[Lista medicamentos];
  E --> G[Lista centros];
  F --> H[Detalle medicamento];
  G --> I[Detalle centro];
  I --> J[Apple maps];
  H --> K[Lista con centros que tienen dicho medicamento]
  I --> L[Lista con medicamentos que tiene dicho centro]
```

[Informacion](https://github.blog/2022-02-14-include-diagrams-markdown-files-mermaid/) de como hice el diagrama
