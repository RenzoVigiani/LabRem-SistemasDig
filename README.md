## Protocolo para los laboratorios de "Sistemas Digitales"

#### Json a enviar 
	
	{
	"Estado": [ 0, true, false],
	"Pulsadores": [ false,	false,	false,	false	],
	"Indicadores": [	false,	false,	false,	false	],
	"Serial": "Mensaje serial"
	}

**Sintaxis**
#### Estado: [Laboratorio, SubLab, Inicio del experimento]

|Laboratorio  | Sub Laboratorio  | Estado del Experimento |
| ------------ | ------------ | ------------ |
| 0  | true  | Sistemas Digitales: UART  |
| 0  | false  | Sistemas Digitales: I2C  |

#### Inicio del experimento:

- true: Inicia el experimento
- false: Finaliza el experimento

#### Serial

Es un string con un tamaño maximo de 100 caracteres.


### Elementos por Laboratorio
**Sistemas digitales**

- Ambos Laboratorios
  - Pulsadores: [Pulsador1, Pulsador2,Pulsador3,Pulsador4 ]
  - Indicadores:  [indicador1, indicador2, indicador3, indicador4] 
	- Los mismos son utilizados para representar en la API lo que se ve por la WebCam.

**Esquematico general**
### Diagrama:
<img alt="Esquematico general" src="https://raw.githubusercontent.com/RenzoVigiani/Laboratorios-Remotos/SistemasDigitales/Imagenes/Esquematico.png" width="1920">

**Arduino Mega**
### PIN OUT

 <img alt = "Arduino Mega" src="https://raw.githubusercontent.com/RenzoVigiani/Laboratorios-Remotos/SistemasDigitales/Imagenes/Arduino-Mega-Pinout.png" width=1920>


**FPGA Cyclone II**

Nombre: Altera_FPGA_Board_EP2C8Q208C8 Cyclone II

<img  alt="Cyclone II" src="https://raw.githubusercontent.com/RenzoVigiani/Laboratorios-Remotos/SistemasDigitales/Imagenes/cyclone_ii.png" width="1920">

**FPGA Cyclone IV**

Nombre: Altera_FPGA_Board_EP4CE6E22C8 Cyclone IV

<img  alt="Cyclone IV" src="https://raw.githubusercontent.com/RenzoVigiani/Laboratorios-Remotos/SistemasDigitales/Imagenes/cyclone-iv.png" width="1920">