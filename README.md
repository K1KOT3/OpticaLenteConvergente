# Simulación de Lente Convergente en Processing

Este repositorio contiene un programa desarrollado en **Processing** que simula un sistema óptico sencillo con una lente convergente. Permite visualizar cómo un objeto genera su imagen, mostrando su posición, tamaño y si es real o virtual.

## Funcionalidades

1. **Simulación óptica interactiva**:
   - Mueve un objeto (representado por una flecha azul) con el ratón.
   - Calcula y dibuja en tiempo real la imagen generada por la lente convergente (flecha verde).
   - Representación visual de las propiedades ópticas, como posición y tamaño del objeto e imagen.

2. **Cálculos ópticos implementados**:
   - Ecuación de la lente delgada:
     ```math
     1/f = 1/do + 1/di
     ```
   - Magnificación para determinar el tamaño de la imagen:
     ```math
     m = -di/do
     ```

3. **Indicadores en pantalla**:
   - Muestra las posiciones y tamaños del objeto e imagen.
   - Indica si la imagen es real o virtual.

## Requisitos

- [Processing IDE](https://processing.org/download) instalado en tu computadora.

## Uso

1. Clona este repositorio:
   ```bash
   git clone https://github.com/k1kot3/OpticaLenteConvergente.git
   ```
2. Abre el archivo OpticaLenteConvergente.pde en el IDE de Processing.
3. Ejecuta el programa.
4. Utiliza el ratón para mover el objeto en la pantalla y observa cómo cambia la imagen en tiempo real.

## Personalización

El programa puede ampliarse para incluir:

- Diferentes colores según si la imagen es real o virtual.
- Representación de los rayos ópticos que forman la imagen.
- Configuración interactiva de la distancia focal y otros parámetros ópticos.

Las contribuciones son bienvenidas :)
