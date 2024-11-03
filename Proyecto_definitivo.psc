Proceso proyecto_semana10
    Definir listaDeEstudiantes, listaSeleccionados, usuario, estudianteSeleccionado, jugador, tablero Como Caracter;
    Definir fueSeleccionado, ganador Como Logico;
    Definir i, j, turno, fila, columna, indiceManual, contadorSeleccionados Como Entero;
    Dimension listaDeEstudiantes[25], listaSeleccionados[25]; // Aumentar tamaño a 25
    Dimension tablero[3,3];
    
    // Inicializar lista de estudiantes
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
	
    // Inicializar lista de seleccionados y contador de seleccionados
    Para i <- 0 Hasta 24 Hacer
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
                // Selección aleatoria de estudiante
                Si contadorSeleccionados < 23 Entonces
                    Repetir
                        i <- azar(24);
                    Hasta Que listaSeleccionados[i] = ""; // Repite hasta encontrar uno no seleccionado
					
                    estudianteSeleccionado <- listaDeEstudiantes[i];
                    listaSeleccionados[i] <- estudianteSeleccionado;
                    contadorSeleccionados <- contadorSeleccionados + 1;
                    
                    Escribir "*------------------------------------------------------*";
                    Escribir "| Estudiante seleccionado aleatoriamente: ", estudianteSeleccionado, " |";
                    Escribir "*------------------------------------------------------*";
                Sino
                    Escribir "*-------------------------------------------------*";
                    Escribir "| Todos los estudiantes ya han sido seleccionados. |";
                    Escribir "*-------------------------------------------------*";
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
                        Escribir "*------------------------------------------------------*";
                        Escribir "| Estudiante seleccionado manualmente: ", estudianteSeleccionado, " |";
                        Escribir "*------------------------------------------------------*";
                    Sino
						Limpiar Pantalla;
                        Escribir "*------------------------------------------------*";
                        Escribir "| Este estudiante ya ha sido seleccionado.        |";
                        Escribir "*------------------------------------------------*";
                    FinSi
                Sino
                    Escribir "*-------------------------------------------------*";
                    Escribir "| Todos los estudiantes ya han sido seleccionados. |";
                    Escribir "*-------------------------------------------------*";
                FinSi
            FinSi
            
            Si usuario = "3" Entonces
                // Mostrar historial de seleccionados
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
                    
                    // Mostrar tablero
                    Limpiar Pantalla;
                    Para i <- 0 Hasta 2 Hacer
                        
                        Para j <- 0 Hasta 2 Hacer
                            Escribir Sin Saltar tablero[i,j], " | ";
                        FinPara;
                        Escribir "";
                    FinPara;
                    
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
                        Limpiar Pantalla;
                        Escribir "*------------------------------------*";
                        Escribir "|¡El jugador ", jugador, " ha ganado!|";
                        Escribir "*------------------------------------*";
                        Para i <- 0 Hasta 2 Hacer
                            Escribir "";
                            Para j <- 0 Hasta 2 Hacer
                                Escribir Sin Saltar tablero[i,j], " | ";
                            FinPara;
                            Escribir "";
                        FinPara;
                    FinSi;
                    
                    turno <- turno + 1;
                Hasta Que ganador O turno > 9;
                
                Si No ganador Entonces
                    Escribir "*--------------*";
                    Escribir "|¡Es un empate!|";
                    Escribir "*--------------*";
                FinSi;
            FinSi;
        FinSi;
    Hasta Que usuario = "Q" o usuario = "q";
Fin Proceso
