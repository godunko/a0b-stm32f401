# STM32F401 Base Support Package

Provides base support for STM32F401 family, including:
 * SVD file
 * data type to access peripheral's registers
 * startup utilities
 * binding information for [A0B Tools](https://github.com/godunko/a0b-tools)

## System' Clock Configuration Parameters

 * "dt:&flash:latency" flash controller latency
 * "dt:&pwr:vos" voltage scale mode
 * "dt:&pll:div-m" PLL's M divider
 * "dt:&pll:mul-n" PLL's N multiplier
 * "dt:&pll:div-p" PLL's P divider
 * "dt:&pll:div-q" PLL's Q divider
 * "dt:&rcc:ahb-prescaler" AHB prescaler
 * "dt:&rcc:apb1-prescaler" APB1 prescaler
 * "dt:&rcc:apb2-prescaler" APB2 prescaler

## Typical configuration parameter values

### System's clock configuration

| Parameter                  | CPU @84MHz HSE 25MHz | CPU @84MHz HSE 8MHz |
| :------------------------: | :------------------: | :-----------------: |
| `dt:&cpu0:clock-frequency` | 84_000_000           | 84_000_000          |
| `dt:&flash:latency`        | 2                    | 2                   |
| `dt:&pwr:vos`              | 2                    | 2                   |
| `dt:&pll:div-m`            | 25                   | 8                   |
| `dt:&pll:mul-n`            | 336                  | 336                 |
| `dt:&pll:div-p`            | 4                    | 4                   |
| `dt:&pll:div-q`            | 7                    | 7                   |
| `dt:&rcc:ahb-prescaler`    | 1                    | 1                   |
| `dt:&rcc:apb1-prescaler`   | 2                    | 2                   |
| `dt:&rcc:apb2-prescaler`   | 1                    | 1                   |

### Memory configuration

| Parameter                  | STM32F401xB                    | STM32F401xC                    | STM32F401xD                    | STM32F401xE                    | 
| :------------------------: | :----------------------------: | :----------------------------: | :----------------------------: | :----------------------------: |
| `dt:/chosen/a0b,flash:reg` | "0x08000000", "DT_SIZE_K(128)" | "0x08000000", "DT_SIZE_K(256)" | "0x08000000", "DT_SIZE_K(384)" | "0x08000000", "DT_SIZE_K(512)" |
| `dt:/chosen/a0b,sram:reg`  | "0x20000000", "DT_SIZE_K(64)"  | "0x20000000", "DT_SIZE_K(64)"  | "0x20000000", "DT_SIZE_K(96)"  | "0x20000000", "DT_SIZE_K(96)"  |
