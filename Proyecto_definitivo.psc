Funcion EscribirSeleccionado(estudiante)
    Escribir "*-----------------------------------------------*";
    Escribir "| Estudiante seleccionado: ", estudiante, " |";
    Escribir "*-----------------------------------------------*";
FinFuncion

Funcion MostrarTablero(tablero)
	Definir i, j Como Entero;
	
	Limpiar Pantalla;
    Para i <- 0 Hasta 2 Hacer
        Para j <- 0 Hasta 2 Hacer
            Escribir Sin Saltar tablero[i,j], " | ";
        FinPara;
        Escribir "";
    FinPara;
FinFuncion

Funcion EscribirErrorMensaje(mensaje)
    Limpiar Pantalla;
    Escribir "*-----------------------------------------*";
    Escribir "| ", mensaje, "|";
    Escribir "*-----------------------------------------*";
FinFuncion

Funcion estudianteSeleccionadoA <- SeleccionAleatoria(listaDeEstudiantes, listaSeleccionados)
    Definir estudianteSeleccionado Como Caracter;
	Definir  i Como Entero;
    
    Repetir
        i <- azar(24);
    Hasta Que listaSeleccionados[i] = ""; // Asegura que no haya sido seleccionado
    
    estudianteSeleccionado <- listaDeEstudiantes[i];
    listaSeleccionados[i] <- estudianteSeleccionado;
    estudianteSeleccionadoA <- estudianteSeleccionado;
FinFuncion

Funcion estudianteSeleccionadoM <- SeleccionManual(listaDeEstudiantes, listaSeleccionados)
    Definir  estudianteSeleccionado Como Caracter;
	Definir indiceManual Como Entero;
    
    Repetir
        Escribir "Ingrese el índice (0-23) del estudiante que desea seleccionar:";
        Para i<-0 Hasta 23 Con Paso 1 Hacer
            Escribir i, ".", listaDeEstudiantes[i];
        FinPara
        Leer indiceManual;
    Hasta Que indiceManual >= 0 y indiceManual <= 23;
    
    Si listaSeleccionados[indiceManual] = "" Entonces
        estudianteSeleccionado <- listaDeEstudiantes[indiceManual];
        listaSeleccionados[indiceManual] <- estudianteSeleccionado;
        estudianteSeleccionadoM <- estudianteSeleccionado;
    Sino
        EscribirErrorMensaje("Este estudiante ya ha sido seleccionado.");
        estudianteSeleccionadoM <- "";
    FinSi
FinFuncion

Proceso proyecto_semana10
    Definir listaDeEstudiantes, listaSeleccionados, usuario, estudianteSeleccionado, jugador, tablero Como Caracter;
    Definir fueSeleccionado, ganador Como Logico;
    Definir i, j, turno, fila, columna, indiceManual, contadorSeleccionados, a Como Entero;
    Dimension listaDeEstudiantes[24], listaSeleccionados[24]; 
    Dimension tablero[3,3];
    
	listaDeEstudiantes[0] <- "Adam Steven Herrera Medina";
    listaDeEstudiantes[1] <- "Alexis Dawry Encarnacion Encarnacion";
    listaDeEstudiantes[2] <- "Andres Pascual Manzueta Miranda";
    listaDeEstudiantes[3] <- "Ashley Bello Acosta";
    listaDeEstudiantes[4] <- "Bello Junior Correa Encarnacion";
    listaDeEstudiantes[5] <- "Braily Roman Seberino";
    listaDeEstudiantes[6] <- "Cesar Reyes";
    listaDeEstudiantes[7] <- "Derek Perez Moreno";
    listaDeEstudiantes[8] <- "Enmanuel Marte";
    listaDeEstudiantes[9] <- "Fernando Holguin Feliz";
    listaDeEstudiantes[10] <- "Heycel Miguel Sencion Matos";
    listaDeEstudiantes[11] <- "Jhosua Placencia";
    listaDeEstudiantes[12] <- "Jonathan David Suardi Nivar";
    listaDeEstudiantes[13] <- "Lucas Alexander Lafleur Valera";
    listaDeEstudiantes[14] <- "Luisa Cristina Cruz De La Cruz";
    listaDeEstudiantes[15] <- "Michael Manuel Cotes Aquino";
    listaDeEstudiantes[16] <- "Raul Santiago Castro Santana";
    listaDeEstudiantes[17] <- "Rebeca Pérez";
    listaDeEstudiantes[18] <- "Rocelyn Rosario Nuez";
    listaDeEstudiantes[19] <- "Rubi Pérez";
    listaDeEstudiantes[20] <- "Victor Vladimir Guzman Mendoza";
    listaDeEstudiantes[21] <- "Viensy Perez";
    listaDeEstudiantes[22] <- "Winder Andres Valdez Del Orbe";
    listaDeEstudiantes[23] <- "David Jonathan Suardi Nivar";
	
    Para i <- 0 Hasta 23 Hacer
        listaSeleccionados[i] <- "";
    FinPara;
    contadorSeleccionados <- 0;
    
    Repetir
        Escribir "Seleccione una de las siguientes opciones:";
        Escribir "1. Seleccionar aleatoriamente.";
        Escribir "2. Seleccionar manualmente por índice.";
        Escribir "3. Ver historial de seleccionados.";
        Escribir "4. Mouske Herramienta Misteriosa.";
        Escribir "Presiona Q para salir.";
        Leer usuario;
        Limpiar Pantalla;
        
        Si usuario = "Q" o usuario = "q" Entonces
            Escribir " ";
            Escribir "----------------------------------------------";
            Escribir "|          Has presionado la letra Q.         |";    
            Escribir "|   Hasta luego, gracias por usar el programa |";    
            Escribir "----------------------------------------------";
            Escribir " ";
        Sino
            Si usuario = "1" Entonces
                // Selección aleatoria de estudiante con animación
                Si contadorSeleccionados < 23 Entonces
                    Escribir "Seleccionando estudiante al azar, por favor espere...";
                    
                    // Animación de selección
                    Para a <- 0 Hasta 10 Hacer  // Número de iteraciones para la animación
                        Limpiar Pantalla;
                        i <- azar(24);  // Selección aleatoria temporal para animación
                        Escribir "*====================================================*";
                        Escribir "| Estudiante posible: ", listaDeEstudiantes[i], " |";
                        Escribir "*====================================================*";
                        Esperar 1 Segundos;
                    FinPara;
                    
                    // Selección final de estudiante
                    Repetir
                        i <- azar(24);
                    Hasta Que listaSeleccionados[i] = "";  // Asegurar que no haya sido seleccionado
                    
                    estudianteSeleccionado <- listaDeEstudiantes[i];
                    listaSeleccionados[i] <- estudianteSeleccionado;
                    contadorSeleccionados <- contadorSeleccionados + 1;
                    
                    // Llamamos a la función EscribirSeleccionado
                    EscribirSeleccionado(estudianteSeleccionado);
                Sino
					EscribirErrorMensaje("Todos los estudiantes ya han sido seleccionados.");
                FinSi
            FinSi
			
            Si usuario = "2" Entonces
                // Selección manual de estudiante por índice
                Si contadorSeleccionados < 23 Entonces
                    Repetir
                        Escribir "Ingrese el índice (0-24) del estudiante que desea seleccionar:"; // Cambiar a 24
                        Para i<-0 Hasta 23 Con Paso 1 Hacer
                            Escribir i,".",listaDeEstudiantes[i];
                        FinPara
                        Leer indiceManual;
                    Hasta Que indiceManual >= 0 y indiceManual <= 23;
                    
                    Si listaSeleccionados[indiceManual] = "" Entonces
                        estudianteSeleccionado <- listaDeEstudiantes[indiceManual];
                        listaSeleccionados[indiceManual] <- estudianteSeleccionado;
                        contadorSeleccionados <- contadorSeleccionados + 1;
                        Limpiar Pantalla;
                        
                        // Llamamos a la función EscribirSeleccionado
                        EscribirSeleccionado(estudianteSeleccionado);
                    Sino
                        Limpiar Pantalla;
                        EscribirErrorMensaje("Este estudiante ya ha sido seleccionado.");
                    FinSi
                Sino
					EscribirErrorMensaje("Todos los estudiantes ya han sido seleccionados.");
                FinSi
            FinSi
            
            Si usuario = "3" Entonces
                Escribir "Historial de estudiantes seleccionados:";
                Para i <- 0 Hasta 23 Hacer
                    Si listaSeleccionados[i] <> "" Entonces
                        Escribir "- ", listaSeleccionados[i];
                    FinSi;
                FinPara;
                Escribir "";
            FinSi
            
            Si usuario = "4" Entonces
                // Iniciar juego de tres en raya
                turno <- 1;
                ganador <- Falso;
                
                // Inicializar tablero vacío
                Para i <- 0 Hasta 2 Hacer
                    Para j <- 0 Hasta 2 Hacer
                        tablero[i,j] <- " ";
                    FinPara;
                FinPara;
                
                Repetir
                    // Determinar jugador actual
                    Si turno % 2 = 1 Entonces
                        jugador <- "X";
                    Sino
                        jugador <- "O";
                    FinSi;
                    
                    // Llamamos a la función MostrarTablero
                    MostrarTablero(tablero);
                    
                    // Solicitar posición
                    Escribir "Turno de jugador ", jugador;
                    Repetir
                        Escribir "Ingresa fila (0-2): ";
                        Leer fila;
                        Escribir "Ingresa columna (0-2): ";
                        Leer columna;
                        
                        Si tablero[fila, columna] <> " " Entonces
                            Escribir "*----------------------------*";
                            Escribir "|Esa casilla ya está ocupada.|";
                            Escribir "*----------------------------*";
                        FinSi;
                    Hasta Que tablero[fila, columna] = " ";
                    
                    // Actualizar tablero
                    tablero[fila, columna] <- jugador;
                    
                    // Verificar si hay ganador
                    Para i <- 0 Hasta 2 Hacer
                        Si (tablero[i,0] = jugador Y tablero[i,1] = jugador Y tablero[i,2] = jugador) Entonces
                            ganador <- Verdadero;
                        FinSi;
                        Si (tablero[0,i] = jugador Y tablero[1,i] = jugador Y tablero[2,i] = jugador) Entonces
                            ganador <- Verdadero;
                        FinSi;
                    FinPara;
                    
                    // Verificar diagonales
                    Si (tablero[0,0] = jugador Y tablero[1,1] = jugador Y tablero[2,2] = jugador) Entonces
                        ganador <- Verdadero;
                    FinSi;
                    Si (tablero[0,2] = jugador Y tablero[1,1] = jugador Y tablero[2,0] = jugador) Entonces
                        ganador <- Verdadero;
                    FinSi;
                    
                    Si ganador Entonces
						MostrarTablero(tablero);
                        Escribir "*------------------------*";
                        Escribir "|¡El jugador ", jugador, " ha ganado!|";
                        Escribir "*------------------------*";
                    FinSi;
                    
                    turno <- turno + 1;
                Hasta Que ganador O turno > 9;
                
                Si No ganador Entonces
                    Escribir "*--------------*";
                    Escribir "|¡Es un empate!|";
                    Escribir "*--------------*";
                FinSi;
            FinSi;
        FinSi;    Hasta Que usuario = "Q" o usuario = "q";
Fin Proceso
