# Godot, programación orgánica
Serie de tutoriales para la introducción a la programación orgánica con Godot. Mediante el uso de algoritmo generativos verás la forma de crear paisajes y escenarios con apariencia natural.

## Temas
### 00 Aleatoriedad

<https://github.com/programautas/godot-programacion-organica/tree/main/projects/00_aleatoriedad>

Es un concepto que refiere a la ocurrencia de eventos que no tienen una causa predecible o un patrón definido, por el contrario de las experiencias deterministas que afirman qeu cada evento es rastreable a un origen específico. En la práctica, aunque un fenómeno sea macroscópicamente determinista, si el resultado es muy difícil de predecir lo consideramos aleatorio. El término aleatoriedad se utiliza para referirse a propiedades estadísticas medibles como la ausencia de tendencias, patrones o correlaciones.

#### Generador lineal congruencial

Cuando hablamos de generación de números al azar decimos que son pseudoaleatorios porque en realidad producen una sucesión de valores que pueden ser predichos por su estado, pero que tienen una variación y frecuencia que sirven para simular una secuencia aparentemente aleatoria.
El generador lineal congruencial es una de las primeras técnicas usadas en informática para crear este tipo de secuencias pseudoaleatorias, es reconocido por su sencillez y rapidez de cálculo. A la vez que logra una buena sucesión de números con una imprevisibilidad aceptable.
#### Distribución uniforme

Para evaluar si una secuencia de números pseudoaleatorios es buena tiene que cumplir las premisas de la distribución uniforme. Es decir que cada valor posible tenga la misma frecuencia de ocurrencia.
Más sencillo si tengo cuatro resultados posibles y genero una secuencia de cien valores, idealmente cada uno debería aparecer veinte y cinco veces. De esta manera cumpliría con la probabilidad que cada valor tiene una chance de salir igual a 1/n, donde n es la cantidad de resultados posibles.


## ⚖️ Aviso Legal y Licencia (Legal Disclaimer)

### 🚫 Descargo de Responsabilidad (AS-IS)

Este software se proporciona **"tal cual" (AS IS)**, con fines estrictamente **educativos y de demostración**. 
* **Sin Garantías:** El autor no otorga ninguna garantía sobre el funcionamiento o exactitud del código.
* **No apto para Producción:** Este proyecto no debe utilizarse en entornos críticos o comerciales. Es un material pedagógico que puede contener errores o prácticas simplificadas.
* **Limitación de Responsabilidad:** El autor no se hace responsable de cualquier daño, pérdida de datos o fallo resultante del uso de este software. El uso corre bajo el **total riesgo del usuario**.

### 🔴 Restricciones de Uso (Anti-IA y Cursos Espejo)

Este repositorio está protegido bajo la licencia **Creative Commons Atribución-NoComercial-CompartirIgual 4.0 Internacional (CC BY-NC-SA 4.0)**.
* **Uso Humano:** Contenido creado por y para humanos. Se prohíbe su uso para el entrenamiento o validación de modelos de IA generativa comerciales.
* **Prohibición de Lucro:** No se permite la redistribución de este código o su documentación en cursos de pago, sitios espejo o plataformas monetizadas sin autorización expresa.

### 🤖 Reconocimiento de Marcas (Trademarks)

* **Godot Engine:** El nombre "Godot", el logo de Godot y el motor de videojuegos son marcas registradas de **Juan Linietsky, Ariel Manzur** y la comunidad de Godot. Este proyecto es una creación independiente y no está afiliado ni respaldado oficialmente por la Fundación Godot.
* **GDScript:** Lenguaje nativo de Godot Engine utilizado aquí bajo los términos de su licencia original (MIT).
* El uso del logo de Godot en este repositorio es puramente ilustrativo y se rige por las guías de uso de la comunidad de Godot.

---
*Para consultas sobre licencias comerciales o permisos especiales, contactar vía GitHub Issues.*

> [!IMPORTANT]
> Al utilizar este código, aceptas los términos de la licencia **CC BY-NC-SA 4.0**. Si detectas este contenido siendo vendido o plagiado, por favor repórtalo.


