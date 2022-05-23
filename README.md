# Protocolo para los laboratorios de "Sistemas Digitales"

## Json a enviar

    {"Estado": [ 0, true, false], "Pulsadores": [false,false,false,false], "Serial": "Mensaje serial"}

## Json a recibir

    {"Estado": [ 0, true, false], "Indicadores": [false,false,false,false], "Serial": "Mensaje serial"}

## Sintaxis

**Estado**
Es un array conformado por 3 elementos en el siguiente orden: [Laboratorio, SubLab, Inicio del experimento]

|Laboratorio  | Sub Laboratorio  | Inicio del experimento | Laboratorio Seleccionado | Estado del experimento|
|-|-----|-----|------------------|--------|
|0|true |true |Comunicación UART |Inicia  |
|0|true |false|Comunicación UART |Finaliza|
|0|false|true |Comunicación I2C  |Inicia  |
|0|false|false|Comunicación I2C  |Finaliza|

**Elementos por Laboratorio**
Ambos Laboratorios

- Pulsadores: [Pulsador1, Pulsador2,Pulsador3,Pulsador4 ]
- Indicadores:  [indicador1, indicador2, indicador3, indicador4]
  - Los mismos son utilizados para representar en la API lo que se ve por la WebCam.

**Serial**
Es un dato del tipo "string" con un tamaño maximo de 100 caracteres.

## Diagramas

**Esquematico general**
<img alt="Esquematico general" src="https://raw.githubusercontent.com/RenzoVigiani/Laboratorios-Remotos/SistemasDigitales/Imagenes/Esquematico.png" width="1920">

**Arduino Mega**

Pin Out

 <img alt = "Arduino Mega" src="https://raw.githubusercontent.com/RenzoVigiani/Laboratorios-Remotos/SistemasDigitales/Imagenes/Arduino-Mega-Pinout.png" width=1920>

**FPGA Cyclone II**
Nombre: Altera_FPGA_Board_EP2C8Q208C8 Cyclone II

<img  alt="Cyclone II" src="https://raw.githubusercontent.com/RenzoVigiani/Laboratorios-Remotos/SistemasDigitales/Imagenes/cyclone_ii.png" width="1920">

**FPGA Cyclone IV**
Nombre: Altera_FPGA_Board_EP4CE6E22C8 Cyclone IV

<img  alt="Cyclone IV" src="https://raw.githubusercontent.com/RenzoVigiani/Laboratorios-Remotos/SistemasDigitales/Imagenes/cyclone-iv.png" width="1920"> 
