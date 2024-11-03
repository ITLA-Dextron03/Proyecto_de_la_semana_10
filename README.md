# SELECTOR DE ESTUDIANTES

Este proyecto es una aplicación interactiva que permite seleccionar estudiantes de una lista de manera aleatoria o manual y jugar un juego de tres en raya. La aplicación está diseñada para ejecutar ambas funciones de forma intuitiva, proporcionando instrucciones en cada paso.

## Funcionalidades

### 1. Selección de Estudiantes
La aplicación contiene una lista de 25 estudiantes y ofrece las siguientes opciones para su selección:
   - **Selección aleatoria:** Elige un estudiante al azar de la lista.
   - **Selección manual:** Permite al usuario seleccionar un estudiante especificando el índice en la lista.
   - **Ver historial de seleccionados:** Muestra un historial de todos los estudiantes seleccionados hasta el momento, evitando repeticiones hasta que todos hayan sido elegidos.
   - **Salir:** Finaliza la aplicación cuando el usuario lo desee.

### 2. Juego de Tres en Raya (Tic-Tac-Toe)
La aplicación incluye un mini-juego de tres en raya para dos jugadores. En esta modalidad:
   - Cada jugador se representa con el símbolo "X" o "O".
   - El tablero se muestra después de cada turno, permitiendo a los jugadores elegir la fila y columna donde quieren jugar.
   - El juego finaliza al encontrar un ganador (tres símbolos iguales en línea, columna o diagonal) o si se llena el tablero sin que haya un ganador, lo que resulta en empate.

## Instrucciones de Uso

1. Al ejecutar la aplicación, se mostrará un menú con las siguientes opciones:
   - `1`: Seleccionar un estudiante aleatoriamente.
   - `2`: Seleccionar un estudiante manualmente por índice.
   - `3`: Ver el historial de estudiantes seleccionados.
   - `4`: Iniciar el juego de tres en raya.
   - `Q`: Salir de la aplicación.

2. El usuario puede seguir las instrucciones del menú para realizar la acción deseada.
3. En el juego de tres en raya, los jugadores ingresan las posiciones en el tablero por fila y columna para hacer sus movimientos.

## Estructura del Código

El proyecto está organizado en el archivo principal `proyecto_semana10`, que contiene:
   - **Lista de estudiantes:** Inicializada con los nombres de 25 estudiantes.
   - **Menú interactivo:** Permite al usuario seleccionar estudiantes y acceder al juego.
   - **Juego de tres en raya:** Contiene la lógica para manejar el turno de cada jugador, actualizar el tablero y verificar el estado del juego.

## Ejecución

Para ejecutar la aplicación, asegúrate de tener un entorno compatible y corre el archivo principal. La aplicación mostrará el menú y podrás interactuar siguiendo las opciones disponibles.
