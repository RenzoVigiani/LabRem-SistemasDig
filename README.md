# Laboratorios de Sistemas digitales
En este readme se detallan las partes mas importantes del proyecto de remotización del laboratorio de **Sistemas digitales**, haciendo énfacis en el hardware.

## Protocolo para los laboratorios de "Sistemas Digitales"
Para poder establecer una comunicación entre al api web, generada por el equipo de software del proyecto, y los dispositivos en el laboratorio establecemos un protocolo en común. 

El procedimiento de comunicación es el siguiente.
Cada vez que se quiere modificar algun dato en el laboratorio. El Servidor debe enviar un...

```Ruby 
POST /HTTP/1.1 + <JSON a enviar>
```

##### Json a enviar (ejemplo)

```Ruby
{"Estado": [ 0, 1, 0],"velocidad": 9600, "Pulsadores": [0,1,1,0], "Serial": "Mensaje serial"}
```

Y para obtener avances de los datos o reporte de los datos debe enviar un:

```Ruby
GET /HTTP/1.1
```

De esta forma el Arduino responde ante una petición.

##### Json a recibir (ejemplo)

```Ruby
{"Estado": [ 0, true, false], "Velocidad":9600,"Indicadores": [false,false,false,false], "Serial": "Mensaje serial","Error":0}
```

## Sintaxis

**Estado**
Es un array conformado por 3 elementos en el siguiente orden: [Laboratorio, SubLab, Inicio del experimento]

|Laboratorio  | Sub Laboratorio  | Inicio del experimento | Laboratorio Seleccionado | Estado del experimento|
|-|-----|-----|------------------|--------|
|0|true |true |Comunicación UART |Inicia  |
|0|true |false|Comunicación UART |Finaliza|
|0|false|true |Comunicación I2C  |Inicia  |
|0|false|false|Comunicación I2C  |Finaliza|

>**Nota:** Los valores booleanos se los puede recibir en cualquier forma, es decir, <span style="color: green">_true=1=HIGH_ </span> y <span style="color: red">_false=0=LOW_</span>

**Velocidad**
Es un dato tipo entero que indica la velocidad de comunicación deseada.
*_ej: 9600, 115200, etc._

**Elementos por Laboratorio**
Laboratorio de UART

  - Utiliza **FPGA Cyclone II**    
    Nombre: Altera_FPGA_Board_EP2C8Q208C8 Cyclone II
    <img alt="Esquematico general" src="https://raw.githubusercontent.com/RenzoVigiani/LabRem-SistemasDig/main/Imagenes/cyclone-ii.png" width="1920">
  - Pulsadores: [Pulsador1, Pulsador2, Pulsador3, Pulsador4]
  - Indicadores: [indicador1, indicador2, indicador3, indicador4]

Laboratorio de I2C

  - Utiliza **FPGA Cyclone IV**
    Nombre: Altera_FPGA_Board_EP4CE6E22C8 Cyclone IV
    <img alt="Esquematico general" src="https://raw.githubusercontent.com/RenzoVigiani/LabRem-SistemasDig/main/Imagenes/cyclone-iv.png" width="1920">
    
  - Pulsadores: [Pulsador1, Pulsador2,Pulsador3,Pulsador4 ]
  - Indicadores:  [indicador1, indicador2, indicador3, indicador4]

>Los mismos son utilizados para representar en la API lo que se ve por la WebCam.

**Serial:** Es un dato del tipo "string" con un tamaño maximo de 100 caracteres.

**Error:** Es una variable numerica que representa un mensaje de error.

| Tipo de error                         |  Valor  |
| ----------------------------------    |---------|
| Sin errores                           |    0    |
| Error limites de angulo de azimut.    |    1    |
| Error limites de angulo de elevación  |    2    |
| Error de laboratorio incorrecto       |    3    |

## Diagramas

**Esquematico general**
<img alt="Esquematico general" src="https://raw.githubusercontent.com/RenzoVigiani/LabRem-SistemasDig/main/Imagenes/Esquematico_gral.png" width="1920">

**Esquematico**
<img alt="Esquematico" src="https://raw.githubusercontent.com/RenzoVigiani/LabRem-SistemasDig/main/Imagenes/Esquematico.png" width="1920">

**Arduino Mega 2560: Pin Out**
 <img alt = "Arduino Mega" src="https://raw.githubusercontent.com/RenzoVigiani/LabRem-SistemasDig/main/Imagenes/Arduino-Mega-Pinout.png" width=1920>

 **Adaptadores de nivel**
   <img alt = "Pin Out Adaptador de Nivel" src="https://raw.githubusercontent.com/RenzoVigiani/LabRem-SistemasDig/main/Imagenes/digitales_3D/level-pin-out.png" width=1920>


## *Diseños 3D*
Para cada una de las placas se realizaron bases y soportes para las placas para poder identificar a cada una y que se pueda diferencias con facilidad desde el usuario.

||||
|-|-|-|
||<img alt = "Arduino Mega" src="https://raw.githubusercontent.com/RenzoVigiani/LabRem-SistemasDig/main/Imagenes/digitales_3D/skp_Cyclone-2.png" width=1920>||
||<img alt = "Arduino Mega" src="https://raw.githubusercontent.com/RenzoVigiani/LabRem-SistemasDig/main/Imagenes/digitales_3D/Cyclone-2_3.jpg" width=1920>||
||<img alt = "Arduino Mega" src="https://raw.githubusercontent.com/RenzoVigiani/LabRem-SistemasDig/main/Imagenes/digitales_3D/skp_Cyclone-4.png" width=1920>||
||<img alt = "Arduino Mega" src="https://raw.githubusercontent.com/RenzoVigiani/LabRem-SistemasDig/main/Imagenes/digitales_3D/Cyclone-4.jpg" width=1920>||

**Datasheets**
- [Recopilación de Datasheets](https://renzovigiani.notion.site/adea4f735c994faaa2f919a7e5105e9d?v=83070c8c05d34c02905fc370e37b802a)
- [Altera Cyclone II](https://pdf.utmel.com/r/datasheets/altera-ep2c8q208c8n-datasheets-8218.pdf)
- [Altera Cyclone IV](https://docs.rs-online.com/6ee7/0900766b80f69ead.pdf)
- [Adaptadores de Nivel 1](https://www.ti.com/lit/ds/symlink/txs0108e.pdf?ts=1659067269078&ref_url=https%253A%252F%252Fwww.ti.com%252Fproduct%252FTXS0108E)
- [Adaptadores de Nivel 2](https://components101.com/modules/txs0108e-bi-directional-logic-level-converter-module)