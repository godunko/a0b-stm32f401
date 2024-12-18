pragma Style_Checks (Off);

--  This spec has been automatically generated from STM32F401.svd


with A0B.Types.SVD;
with System;

package A0B.STM32F401.SVD.RCC is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype CR_HSITRIM_Field is A0B.Types.SVD.UInt5;
   subtype CR_HSICAL_Field is A0B.Types.SVD.Byte;

   --  clock control register
   type CR_Register is record
      --  Internal high-speed clock enable
      HSION          : Boolean := True;
      --  Read-only. Internal high-speed clock ready flag
      HSIRDY         : Boolean := True;
      --  unspecified
      Reserved_2_2   : A0B.Types.SVD.Bit := 16#0#;
      --  Internal high-speed clock trimming
      HSITRIM        : CR_HSITRIM_Field := 16#10#;
      --  Read-only. Internal high-speed clock calibration
      HSICAL         : CR_HSICAL_Field := 16#0#;
      --  HSE clock enable
      HSEON          : Boolean := False;
      --  Read-only. HSE clock ready flag
      HSERDY         : Boolean := False;
      --  HSE clock bypass
      HSEBYP         : Boolean := False;
      --  Clock security system enable
      CSSON          : Boolean := False;
      --  unspecified
      Reserved_20_23 : A0B.Types.SVD.UInt4 := 16#0#;
      --  Main PLL (PLL) enable
      PLLON          : Boolean := False;
      --  Read-only. Main PLL (PLL) clock ready flag
      PLLRDY         : Boolean := False;
      --  PLLI2S enable
      PLLI2SON       : Boolean := False;
      --  Read-only. PLLI2S clock ready flag
      PLLI2SRDY      : Boolean := False;
      --  unspecified
      Reserved_28_31 : A0B.Types.SVD.UInt4 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for CR_Register use record
      HSION          at 0 range 0 .. 0;
      HSIRDY         at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      HSITRIM        at 0 range 3 .. 7;
      HSICAL         at 0 range 8 .. 15;
      HSEON          at 0 range 16 .. 16;
      HSERDY         at 0 range 17 .. 17;
      HSEBYP         at 0 range 18 .. 18;
      CSSON          at 0 range 19 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      PLLON          at 0 range 24 .. 24;
      PLLRDY         at 0 range 25 .. 25;
      PLLI2SON       at 0 range 26 .. 26;
      PLLI2SRDY      at 0 range 27 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  PLLCFGR_PLLM array
   type PLLCFGR_PLLM_Field_Array is array (0 .. 5) of Boolean
     with Component_Size => 1, Size => 6;

   --  Type definition for PLLCFGR_PLLM
   type PLLCFGR_PLLM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PLLM as a value
            Val : A0B.Types.SVD.UInt6;
         when True =>
            --  PLLM as an array
            Arr : PLLCFGR_PLLM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 6;

   for PLLCFGR_PLLM_Field use record
      Val at 0 range 0 .. 5;
      Arr at 0 range 0 .. 5;
   end record;

   --  PLLCFGR_PLLN array
   type PLLCFGR_PLLN_Field_Array is array (0 .. 8) of Boolean
     with Component_Size => 1, Size => 9;

   --  Type definition for PLLCFGR_PLLN
   type PLLCFGR_PLLN_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PLLN as a value
            Val : A0B.Types.SVD.UInt9;
         when True =>
            --  PLLN as an array
            Arr : PLLCFGR_PLLN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 9;

   for PLLCFGR_PLLN_Field use record
      Val at 0 range 0 .. 8;
      Arr at 0 range 0 .. 8;
   end record;

   --  PLLCFGR_PLLP array
   type PLLCFGR_PLLP_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for PLLCFGR_PLLP
   type PLLCFGR_PLLP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PLLP as a value
            Val : A0B.Types.SVD.UInt2;
         when True =>
            --  PLLP as an array
            Arr : PLLCFGR_PLLP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for PLLCFGR_PLLP_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  PLLCFGR_PLLQ array
   type PLLCFGR_PLLQ_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for PLLCFGR_PLLQ
   type PLLCFGR_PLLQ_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PLLQ as a value
            Val : A0B.Types.SVD.UInt4;
         when True =>
            --  PLLQ as an array
            Arr : PLLCFGR_PLLQ_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PLLCFGR_PLLQ_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  PLL configuration register
   type PLLCFGR_Register is record
      --  Division factor for the main PLL (PLL) and audio PLL (PLLI2S) input
      --  clock
      PLLM           : PLLCFGR_PLLM_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Main PLL (PLL) multiplication factor for VCO
      PLLN           : PLLCFGR_PLLN_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_15_15 : A0B.Types.SVD.Bit := 16#0#;
      --  Main PLL (PLL) division factor for main system clock
      PLLP           : PLLCFGR_PLLP_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_18_21 : A0B.Types.SVD.UInt4 := 16#0#;
      --  Main PLL(PLL) and audio PLL (PLLI2S) entry clock source
      PLLSRC         : Boolean := False;
      --  unspecified
      Reserved_23_23 : A0B.Types.SVD.Bit := 16#0#;
      --  Main PLL (PLL) division factor for USB OTG FS, SDIO and random number
      --  generator clocks
      PLLQ           : PLLCFGR_PLLQ_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_28_31 : A0B.Types.SVD.UInt4 := 16#2#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for PLLCFGR_Register use record
      PLLM           at 0 range 0 .. 5;
      PLLN           at 0 range 6 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      PLLP           at 0 range 16 .. 17;
      Reserved_18_21 at 0 range 18 .. 21;
      PLLSRC         at 0 range 22 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      PLLQ           at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  CFGR_SW array
   type CFGR_SW_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for CFGR_SW
   type CFGR_SW_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SW as a value
            Val : A0B.Types.SVD.UInt2;
         when True =>
            --  SW as an array
            Arr : CFGR_SW_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CFGR_SW_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  CFGR_SWS array
   type CFGR_SWS_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for CFGR_SWS
   type CFGR_SWS_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SWS as a value
            Val : A0B.Types.SVD.UInt2;
         when True =>
            --  SWS as an array
            Arr : CFGR_SWS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CFGR_SWS_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype CFGR_HPRE_Field is A0B.Types.SVD.UInt4;
   --  CFGR_PPRE array element
   subtype CFGR_PPRE_Element is A0B.Types.SVD.UInt3;

   --  CFGR_PPRE array
   type CFGR_PPRE_Field_Array is array (1 .. 2) of CFGR_PPRE_Element
     with Component_Size => 3, Size => 6;

   --  Type definition for CFGR_PPRE
   type CFGR_PPRE_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PPRE as a value
            Val : A0B.Types.SVD.UInt6;
         when True =>
            --  PPRE as an array
            Arr : CFGR_PPRE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 6;

   for CFGR_PPRE_Field use record
      Val at 0 range 0 .. 5;
      Arr at 0 range 0 .. 5;
   end record;

   subtype CFGR_RTCPRE_Field is A0B.Types.SVD.UInt5;
   subtype CFGR_MCO1_Field is A0B.Types.SVD.UInt2;
   subtype CFGR_MCO1PRE_Field is A0B.Types.SVD.UInt3;
   subtype CFGR_MCO2PRE_Field is A0B.Types.SVD.UInt3;
   subtype CFGR_MCO2_Field is A0B.Types.SVD.UInt2;

   --  clock configuration register
   type CFGR_Register is record
      --  System clock switch
      SW           : CFGR_SW_Field := (As_Array => False, Val => 16#0#);
      --  Read-only. System clock switch status
      SWS          : CFGR_SWS_Field := (As_Array => False, Val => 16#0#);
      --  AHB prescaler
      HPRE         : CFGR_HPRE_Field := 16#0#;
      --  unspecified
      Reserved_8_9 : A0B.Types.SVD.UInt2 := 16#0#;
      --  APB Low speed prescaler (APB1)
      PPRE         : CFGR_PPRE_Field := (As_Array => False, Val => 16#0#);
      --  HSE division factor for RTC clock
      RTCPRE       : CFGR_RTCPRE_Field := 16#0#;
      --  Microcontroller clock output 1
      MCO1         : CFGR_MCO1_Field := 16#0#;
      --  I2S clock selection
      I2SSRC       : Boolean := False;
      --  MCO1 prescaler
      MCO1PRE      : CFGR_MCO1PRE_Field := 16#0#;
      --  MCO2 prescaler
      MCO2PRE      : CFGR_MCO2PRE_Field := 16#0#;
      --  Microcontroller clock output 2
      MCO2         : CFGR_MCO2_Field := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for CFGR_Register use record
      SW           at 0 range 0 .. 1;
      SWS          at 0 range 2 .. 3;
      HPRE         at 0 range 4 .. 7;
      Reserved_8_9 at 0 range 8 .. 9;
      PPRE         at 0 range 10 .. 15;
      RTCPRE       at 0 range 16 .. 20;
      MCO1         at 0 range 21 .. 22;
      I2SSRC       at 0 range 23 .. 23;
      MCO1PRE      at 0 range 24 .. 26;
      MCO2PRE      at 0 range 27 .. 29;
      MCO2         at 0 range 30 .. 31;
   end record;

   --  clock interrupt register
   type CIR_Register is record
      --  Read-only. LSI ready interrupt flag
      LSIRDYF        : Boolean := False;
      --  Read-only. LSE ready interrupt flag
      LSERDYF        : Boolean := False;
      --  Read-only. HSI ready interrupt flag
      HSIRDYF        : Boolean := False;
      --  Read-only. HSE ready interrupt flag
      HSERDYF        : Boolean := False;
      --  Read-only. Main PLL (PLL) ready interrupt flag
      PLLRDYF        : Boolean := False;
      --  Read-only. PLLI2S ready interrupt flag
      PLLI2SRDYF     : Boolean := False;
      --  unspecified
      Reserved_6_6   : A0B.Types.SVD.Bit := 16#0#;
      --  Read-only. Clock security system interrupt flag
      CSSF           : Boolean := False;
      --  LSI ready interrupt enable
      LSIRDYIE       : Boolean := False;
      --  LSE ready interrupt enable
      LSERDYIE       : Boolean := False;
      --  HSI ready interrupt enable
      HSIRDYIE       : Boolean := False;
      --  HSE ready interrupt enable
      HSERDYIE       : Boolean := False;
      --  Main PLL (PLL) ready interrupt enable
      PLLRDYIE       : Boolean := False;
      --  PLLI2S ready interrupt enable
      PLLI2SRDYIE    : Boolean := False;
      --  unspecified
      Reserved_14_15 : A0B.Types.SVD.UInt2 := 16#0#;
      --  Write-only. LSI ready interrupt clear
      LSIRDYC        : Boolean := False;
      --  Write-only. LSE ready interrupt clear
      LSERDYC        : Boolean := False;
      --  Write-only. HSI ready interrupt clear
      HSIRDYC        : Boolean := False;
      --  Write-only. HSE ready interrupt clear
      HSERDYC        : Boolean := False;
      --  Write-only. Main PLL(PLL) ready interrupt clear
      PLLRDYC        : Boolean := False;
      --  Write-only. PLLI2S ready interrupt clear
      PLLI2SRDYC     : Boolean := False;
      --  unspecified
      Reserved_22_22 : A0B.Types.SVD.Bit := 16#0#;
      --  Write-only. Clock security system interrupt clear
      CSSC           : Boolean := False;
      --  unspecified
      Reserved_24_31 : A0B.Types.SVD.Byte := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for CIR_Register use record
      LSIRDYF        at 0 range 0 .. 0;
      LSERDYF        at 0 range 1 .. 1;
      HSIRDYF        at 0 range 2 .. 2;
      HSERDYF        at 0 range 3 .. 3;
      PLLRDYF        at 0 range 4 .. 4;
      PLLI2SRDYF     at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      CSSF           at 0 range 7 .. 7;
      LSIRDYIE       at 0 range 8 .. 8;
      LSERDYIE       at 0 range 9 .. 9;
      HSIRDYIE       at 0 range 10 .. 10;
      HSERDYIE       at 0 range 11 .. 11;
      PLLRDYIE       at 0 range 12 .. 12;
      PLLI2SRDYIE    at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      LSIRDYC        at 0 range 16 .. 16;
      LSERDYC        at 0 range 17 .. 17;
      HSIRDYC        at 0 range 18 .. 18;
      HSERDYC        at 0 range 19 .. 19;
      PLLRDYC        at 0 range 20 .. 20;
      PLLI2SRDYC     at 0 range 21 .. 21;
      Reserved_22_22 at 0 range 22 .. 22;
      CSSC           at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  AHB1 peripheral reset register
   type AHB1RSTR_Register is record
      --  IO port A reset
      GPIOARST       : Boolean := False;
      --  IO port B reset
      GPIOBRST       : Boolean := False;
      --  IO port C reset
      GPIOCRST       : Boolean := False;
      --  IO port D reset
      GPIODRST       : Boolean := False;
      --  IO port E reset
      GPIOERST       : Boolean := False;
      --  unspecified
      Reserved_5_6   : A0B.Types.SVD.UInt2 := 16#0#;
      --  IO port H reset
      GPIOHRST       : Boolean := False;
      --  unspecified
      Reserved_8_11  : A0B.Types.SVD.UInt4 := 16#0#;
      --  CRC reset
      CRCRST         : Boolean := False;
      --  unspecified
      Reserved_13_20 : A0B.Types.SVD.Byte := 16#0#;
      --  DMA2 reset
      DMA1RST        : Boolean := False;
      --  DMA2 reset
      DMA2RST        : Boolean := False;
      --  unspecified
      Reserved_23_31 : A0B.Types.SVD.UInt9 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for AHB1RSTR_Register use record
      GPIOARST       at 0 range 0 .. 0;
      GPIOBRST       at 0 range 1 .. 1;
      GPIOCRST       at 0 range 2 .. 2;
      GPIODRST       at 0 range 3 .. 3;
      GPIOERST       at 0 range 4 .. 4;
      Reserved_5_6   at 0 range 5 .. 6;
      GPIOHRST       at 0 range 7 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      CRCRST         at 0 range 12 .. 12;
      Reserved_13_20 at 0 range 13 .. 20;
      DMA1RST        at 0 range 21 .. 21;
      DMA2RST        at 0 range 22 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  AHB2 peripheral reset register
   type AHB2RSTR_Register is record
      --  unspecified
      Reserved_0_6  : A0B.Types.SVD.UInt7 := 16#0#;
      --  USB OTG FS module reset
      OTGFSRST      : Boolean := False;
      --  unspecified
      Reserved_8_31 : A0B.Types.SVD.UInt24 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for AHB2RSTR_Register use record
      Reserved_0_6  at 0 range 0 .. 6;
      OTGFSRST      at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  APB1 peripheral reset register
   type APB1RSTR_Register is record
      --  TIM2 reset
      TIM2RST        : Boolean := False;
      --  TIM3 reset
      TIM3RST        : Boolean := False;
      --  TIM4 reset
      TIM4RST        : Boolean := False;
      --  TIM5 reset
      TIM5RST        : Boolean := False;
      --  unspecified
      Reserved_4_10  : A0B.Types.SVD.UInt7 := 16#0#;
      --  Window watchdog reset
      WWDGRST        : Boolean := False;
      --  unspecified
      Reserved_12_13 : A0B.Types.SVD.UInt2 := 16#0#;
      --  SPI 2 reset
      SPI2RST        : Boolean := False;
      --  SPI 3 reset
      SPI3RST        : Boolean := False;
      --  unspecified
      Reserved_16_16 : A0B.Types.SVD.Bit := 16#0#;
      --  USART 2 reset
      UART2RST       : Boolean := False;
      --  unspecified
      Reserved_18_20 : A0B.Types.SVD.UInt3 := 16#0#;
      --  I2C 1 reset
      I2C1RST        : Boolean := False;
      --  I2C 2 reset
      I2C2RST        : Boolean := False;
      --  I2C3 reset
      I2C3RST        : Boolean := False;
      --  unspecified
      Reserved_24_27 : A0B.Types.SVD.UInt4 := 16#0#;
      --  Power interface reset
      PWRRST         : Boolean := False;
      --  unspecified
      Reserved_29_31 : A0B.Types.SVD.UInt3 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for APB1RSTR_Register use record
      TIM2RST        at 0 range 0 .. 0;
      TIM3RST        at 0 range 1 .. 1;
      TIM4RST        at 0 range 2 .. 2;
      TIM5RST        at 0 range 3 .. 3;
      Reserved_4_10  at 0 range 4 .. 10;
      WWDGRST        at 0 range 11 .. 11;
      Reserved_12_13 at 0 range 12 .. 13;
      SPI2RST        at 0 range 14 .. 14;
      SPI3RST        at 0 range 15 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      UART2RST       at 0 range 17 .. 17;
      Reserved_18_20 at 0 range 18 .. 20;
      I2C1RST        at 0 range 21 .. 21;
      I2C2RST        at 0 range 22 .. 22;
      I2C3RST        at 0 range 23 .. 23;
      Reserved_24_27 at 0 range 24 .. 27;
      PWRRST         at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  APB2 peripheral reset register
   type APB2RSTR_Register is record
      --  TIM1 reset
      TIM1RST        : Boolean := False;
      --  unspecified
      Reserved_1_3   : A0B.Types.SVD.UInt3 := 16#0#;
      --  USART1 reset
      USART1RST      : Boolean := False;
      --  USART6 reset
      USART6RST      : Boolean := False;
      --  unspecified
      Reserved_6_7   : A0B.Types.SVD.UInt2 := 16#0#;
      --  ADC interface reset (common to all ADCs)
      ADCRST         : Boolean := False;
      --  unspecified
      Reserved_9_10  : A0B.Types.SVD.UInt2 := 16#0#;
      --  SDIO reset
      SDIORST        : Boolean := False;
      --  SPI 1 reset
      SPI1RST        : Boolean := False;
      --  unspecified
      Reserved_13_13 : A0B.Types.SVD.Bit := 16#0#;
      --  System configuration controller reset
      SYSCFGRST      : Boolean := False;
      --  unspecified
      Reserved_15_15 : A0B.Types.SVD.Bit := 16#0#;
      --  TIM9 reset
      TIM9RST        : Boolean := False;
      --  TIM10 reset
      TIM10RST       : Boolean := False;
      --  TIM11 reset
      TIM11RST       : Boolean := False;
      --  unspecified
      Reserved_19_31 : A0B.Types.SVD.UInt13 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for APB2RSTR_Register use record
      TIM1RST        at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      USART1RST      at 0 range 4 .. 4;
      USART6RST      at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      ADCRST         at 0 range 8 .. 8;
      Reserved_9_10  at 0 range 9 .. 10;
      SDIORST        at 0 range 11 .. 11;
      SPI1RST        at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      SYSCFGRST      at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      TIM9RST        at 0 range 16 .. 16;
      TIM10RST       at 0 range 17 .. 17;
      TIM11RST       at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  AHB1 peripheral clock register
   type AHB1ENR_Register is record
      --  IO port A clock enable
      GPIOAEN        : Boolean := False;
      --  IO port B clock enable
      GPIOBEN        : Boolean := False;
      --  IO port C clock enable
      GPIOCEN        : Boolean := False;
      --  IO port D clock enable
      GPIODEN        : Boolean := False;
      --  IO port E clock enable
      GPIOEEN        : Boolean := False;
      --  unspecified
      Reserved_5_6   : A0B.Types.SVD.UInt2 := 16#0#;
      --  IO port H clock enable
      GPIOHEN        : Boolean := False;
      --  unspecified
      Reserved_8_11  : A0B.Types.SVD.UInt4 := 16#0#;
      --  CRC clock enable
      CRCEN          : Boolean := False;
      --  unspecified
      Reserved_13_20 : A0B.Types.SVD.Byte := 16#80#;
      --  DMA1 clock enable
      DMA1EN         : Boolean := False;
      --  DMA2 clock enable
      DMA2EN         : Boolean := False;
      --  unspecified
      Reserved_23_31 : A0B.Types.SVD.UInt9 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for AHB1ENR_Register use record
      GPIOAEN        at 0 range 0 .. 0;
      GPIOBEN        at 0 range 1 .. 1;
      GPIOCEN        at 0 range 2 .. 2;
      GPIODEN        at 0 range 3 .. 3;
      GPIOEEN        at 0 range 4 .. 4;
      Reserved_5_6   at 0 range 5 .. 6;
      GPIOHEN        at 0 range 7 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      CRCEN          at 0 range 12 .. 12;
      Reserved_13_20 at 0 range 13 .. 20;
      DMA1EN         at 0 range 21 .. 21;
      DMA2EN         at 0 range 22 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  AHB2 peripheral clock enable register
   type AHB2ENR_Register is record
      --  unspecified
      Reserved_0_6  : A0B.Types.SVD.UInt7 := 16#0#;
      --  USB OTG FS clock enable
      OTGFSEN       : Boolean := False;
      --  unspecified
      Reserved_8_31 : A0B.Types.SVD.UInt24 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for AHB2ENR_Register use record
      Reserved_0_6  at 0 range 0 .. 6;
      OTGFSEN       at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  APB1 peripheral clock enable register
   type APB1ENR_Register is record
      --  TIM2 clock enable
      TIM2EN         : Boolean := False;
      --  TIM3 clock enable
      TIM3EN         : Boolean := False;
      --  TIM4 clock enable
      TIM4EN         : Boolean := False;
      --  TIM5 clock enable
      TIM5EN         : Boolean := False;
      --  unspecified
      Reserved_4_10  : A0B.Types.SVD.UInt7 := 16#0#;
      --  Window watchdog clock enable
      WWDGEN         : Boolean := False;
      --  unspecified
      Reserved_12_13 : A0B.Types.SVD.UInt2 := 16#0#;
      --  SPI2 clock enable
      SPI2EN         : Boolean := False;
      --  SPI3 clock enable
      SPI3EN         : Boolean := False;
      --  unspecified
      Reserved_16_16 : A0B.Types.SVD.Bit := 16#0#;
      --  USART 2 clock enable
      USART2EN       : Boolean := False;
      --  unspecified
      Reserved_18_20 : A0B.Types.SVD.UInt3 := 16#0#;
      --  I2C1 clock enable
      I2C1EN         : Boolean := False;
      --  I2C2 clock enable
      I2C2EN         : Boolean := False;
      --  I2C3 clock enable
      I2C3EN         : Boolean := False;
      --  unspecified
      Reserved_24_27 : A0B.Types.SVD.UInt4 := 16#0#;
      --  Power interface clock enable
      PWREN          : Boolean := False;
      --  unspecified
      Reserved_29_31 : A0B.Types.SVD.UInt3 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for APB1ENR_Register use record
      TIM2EN         at 0 range 0 .. 0;
      TIM3EN         at 0 range 1 .. 1;
      TIM4EN         at 0 range 2 .. 2;
      TIM5EN         at 0 range 3 .. 3;
      Reserved_4_10  at 0 range 4 .. 10;
      WWDGEN         at 0 range 11 .. 11;
      Reserved_12_13 at 0 range 12 .. 13;
      SPI2EN         at 0 range 14 .. 14;
      SPI3EN         at 0 range 15 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      USART2EN       at 0 range 17 .. 17;
      Reserved_18_20 at 0 range 18 .. 20;
      I2C1EN         at 0 range 21 .. 21;
      I2C2EN         at 0 range 22 .. 22;
      I2C3EN         at 0 range 23 .. 23;
      Reserved_24_27 at 0 range 24 .. 27;
      PWREN          at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  APB2 peripheral clock enable register
   type APB2ENR_Register is record
      --  TIM1 clock enable
      TIM1EN         : Boolean := False;
      --  unspecified
      Reserved_1_3   : A0B.Types.SVD.UInt3 := 16#0#;
      --  USART1 clock enable
      USART1EN       : Boolean := False;
      --  USART6 clock enable
      USART6EN       : Boolean := False;
      --  unspecified
      Reserved_6_7   : A0B.Types.SVD.UInt2 := 16#0#;
      --  ADC1 clock enable
      ADC1EN         : Boolean := False;
      --  unspecified
      Reserved_9_10  : A0B.Types.SVD.UInt2 := 16#0#;
      --  SDIO clock enable
      SDIOEN         : Boolean := False;
      --  SPI1 clock enable
      SPI1EN         : Boolean := False;
      --  unspecified
      Reserved_13_13 : A0B.Types.SVD.Bit := 16#0#;
      --  System configuration controller clock enable
      SYSCFGEN       : Boolean := False;
      --  unspecified
      Reserved_15_15 : A0B.Types.SVD.Bit := 16#0#;
      --  TIM9 clock enable
      TIM9EN         : Boolean := False;
      --  TIM10 clock enable
      TIM10EN        : Boolean := False;
      --  TIM11 clock enable
      TIM11EN        : Boolean := False;
      --  unspecified
      Reserved_19_31 : A0B.Types.SVD.UInt13 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for APB2ENR_Register use record
      TIM1EN         at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      USART1EN       at 0 range 4 .. 4;
      USART6EN       at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      ADC1EN         at 0 range 8 .. 8;
      Reserved_9_10  at 0 range 9 .. 10;
      SDIOEN         at 0 range 11 .. 11;
      SPI1EN         at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      SYSCFGEN       at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      TIM9EN         at 0 range 16 .. 16;
      TIM10EN        at 0 range 17 .. 17;
      TIM11EN        at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  AHB1 peripheral clock enable in low power mode register
   type AHB1LPENR_Register is record
      --  IO port A clock enable during sleep mode
      GPIOALPEN      : Boolean := True;
      --  IO port B clock enable during Sleep mode
      GPIOBLPEN      : Boolean := True;
      --  IO port C clock enable during Sleep mode
      GPIOCLPEN      : Boolean := True;
      --  IO port D clock enable during Sleep mode
      GPIODLPEN      : Boolean := True;
      --  IO port E clock enable during Sleep mode
      GPIOELPEN      : Boolean := True;
      --  unspecified
      Reserved_5_6   : A0B.Types.SVD.UInt2 := 16#3#;
      --  IO port H clock enable during Sleep mode
      GPIOHLPEN      : Boolean := True;
      --  unspecified
      Reserved_8_11  : A0B.Types.SVD.UInt4 := 16#1#;
      --  CRC clock enable during Sleep mode
      CRCLPEN        : Boolean := True;
      --  unspecified
      Reserved_13_14 : A0B.Types.SVD.UInt2 := 16#0#;
      --  Flash interface clock enable during Sleep mode
      FLITFLPEN      : Boolean := True;
      --  SRAM 1interface clock enable during Sleep mode
      SRAM1LPEN      : Boolean := True;
      --  unspecified
      Reserved_17_20 : A0B.Types.SVD.UInt4 := 16#3#;
      --  DMA1 clock enable during Sleep mode
      DMA1LPEN       : Boolean := True;
      --  DMA2 clock enable during Sleep mode
      DMA2LPEN       : Boolean := True;
      --  unspecified
      Reserved_23_31 : A0B.Types.SVD.UInt9 := 16#FC#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for AHB1LPENR_Register use record
      GPIOALPEN      at 0 range 0 .. 0;
      GPIOBLPEN      at 0 range 1 .. 1;
      GPIOCLPEN      at 0 range 2 .. 2;
      GPIODLPEN      at 0 range 3 .. 3;
      GPIOELPEN      at 0 range 4 .. 4;
      Reserved_5_6   at 0 range 5 .. 6;
      GPIOHLPEN      at 0 range 7 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      CRCLPEN        at 0 range 12 .. 12;
      Reserved_13_14 at 0 range 13 .. 14;
      FLITFLPEN      at 0 range 15 .. 15;
      SRAM1LPEN      at 0 range 16 .. 16;
      Reserved_17_20 at 0 range 17 .. 20;
      DMA1LPEN       at 0 range 21 .. 21;
      DMA2LPEN       at 0 range 22 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  AHB2 peripheral clock enable in low power mode register
   type AHB2LPENR_Register is record
      --  unspecified
      Reserved_0_6  : A0B.Types.SVD.UInt7 := 16#71#;
      --  USB OTG FS clock enable during Sleep mode
      OTGFSLPEN     : Boolean := True;
      --  unspecified
      Reserved_8_31 : A0B.Types.SVD.UInt24 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for AHB2LPENR_Register use record
      Reserved_0_6  at 0 range 0 .. 6;
      OTGFSLPEN     at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  APB1 peripheral clock enable in low power mode register
   type APB1LPENR_Register is record
      --  TIM2 clock enable during Sleep mode
      TIM2LPEN       : Boolean := True;
      --  TIM3 clock enable during Sleep mode
      TIM3LPEN       : Boolean := True;
      --  TIM4 clock enable during Sleep mode
      TIM4LPEN       : Boolean := True;
      --  TIM5 clock enable during Sleep mode
      TIM5LPEN       : Boolean := True;
      --  unspecified
      Reserved_4_10  : A0B.Types.SVD.UInt7 := 16#1F#;
      --  Window watchdog clock enable during Sleep mode
      WWDGLPEN       : Boolean := True;
      --  unspecified
      Reserved_12_13 : A0B.Types.SVD.UInt2 := 16#0#;
      --  SPI2 clock enable during Sleep mode
      SPI2LPEN       : Boolean := True;
      --  SPI3 clock enable during Sleep mode
      SPI3LPEN       : Boolean := True;
      --  unspecified
      Reserved_16_16 : A0B.Types.SVD.Bit := 16#0#;
      --  USART2 clock enable during Sleep mode
      USART2LPEN     : Boolean := True;
      --  unspecified
      Reserved_18_20 : A0B.Types.SVD.UInt3 := 16#7#;
      --  I2C1 clock enable during Sleep mode
      I2C1LPEN       : Boolean := True;
      --  I2C2 clock enable during Sleep mode
      I2C2LPEN       : Boolean := True;
      --  I2C3 clock enable during Sleep mode
      I2C3LPEN       : Boolean := True;
      --  unspecified
      Reserved_24_27 : A0B.Types.SVD.UInt4 := 16#6#;
      --  Power interface clock enable during Sleep mode
      PWRLPEN        : Boolean := True;
      --  unspecified
      Reserved_29_31 : A0B.Types.SVD.UInt3 := 16#1#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for APB1LPENR_Register use record
      TIM2LPEN       at 0 range 0 .. 0;
      TIM3LPEN       at 0 range 1 .. 1;
      TIM4LPEN       at 0 range 2 .. 2;
      TIM5LPEN       at 0 range 3 .. 3;
      Reserved_4_10  at 0 range 4 .. 10;
      WWDGLPEN       at 0 range 11 .. 11;
      Reserved_12_13 at 0 range 12 .. 13;
      SPI2LPEN       at 0 range 14 .. 14;
      SPI3LPEN       at 0 range 15 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      USART2LPEN     at 0 range 17 .. 17;
      Reserved_18_20 at 0 range 18 .. 20;
      I2C1LPEN       at 0 range 21 .. 21;
      I2C2LPEN       at 0 range 22 .. 22;
      I2C3LPEN       at 0 range 23 .. 23;
      Reserved_24_27 at 0 range 24 .. 27;
      PWRLPEN        at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  APB2 peripheral clock enabled in low power mode register
   type APB2LPENR_Register is record
      --  TIM1 clock enable during Sleep mode
      TIM1LPEN       : Boolean := True;
      --  unspecified
      Reserved_1_3   : A0B.Types.SVD.UInt3 := 16#1#;
      --  USART1 clock enable during Sleep mode
      USART1LPEN     : Boolean := True;
      --  USART6 clock enable during Sleep mode
      USART6LPEN     : Boolean := True;
      --  unspecified
      Reserved_6_7   : A0B.Types.SVD.UInt2 := 16#0#;
      --  ADC1 clock enable during Sleep mode
      ADC1LPEN       : Boolean := True;
      --  unspecified
      Reserved_9_10  : A0B.Types.SVD.UInt2 := 16#3#;
      --  SDIO clock enable during Sleep mode
      SDIOLPEN       : Boolean := True;
      --  SPI 1 clock enable during Sleep mode
      SPI1LPEN       : Boolean := True;
      --  unspecified
      Reserved_13_13 : A0B.Types.SVD.Bit := 16#0#;
      --  System configuration controller clock enable during Sleep mode
      SYSCFGLPEN     : Boolean := True;
      --  unspecified
      Reserved_15_15 : A0B.Types.SVD.Bit := 16#0#;
      --  TIM9 clock enable during sleep mode
      TIM9LPEN       : Boolean := True;
      --  TIM10 clock enable during Sleep mode
      TIM10LPEN      : Boolean := True;
      --  TIM11 clock enable during Sleep mode
      TIM11LPEN      : Boolean := True;
      --  unspecified
      Reserved_19_31 : A0B.Types.SVD.UInt13 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for APB2LPENR_Register use record
      TIM1LPEN       at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      USART1LPEN     at 0 range 4 .. 4;
      USART6LPEN     at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      ADC1LPEN       at 0 range 8 .. 8;
      Reserved_9_10  at 0 range 9 .. 10;
      SDIOLPEN       at 0 range 11 .. 11;
      SPI1LPEN       at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      SYSCFGLPEN     at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      TIM9LPEN       at 0 range 16 .. 16;
      TIM10LPEN      at 0 range 17 .. 17;
      TIM11LPEN      at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  BDCR_RTCSEL array
   type BDCR_RTCSEL_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for BDCR_RTCSEL
   type BDCR_RTCSEL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RTCSEL as a value
            Val : A0B.Types.SVD.UInt2;
         when True =>
            --  RTCSEL as an array
            Arr : BDCR_RTCSEL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for BDCR_RTCSEL_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Backup domain control register
   type BDCR_Register is record
      --  External low-speed oscillator enable
      LSEON          : Boolean := False;
      --  Read-only. External low-speed oscillator ready
      LSERDY         : Boolean := False;
      --  External low-speed oscillator bypass
      LSEBYP         : Boolean := False;
      --  unspecified
      Reserved_3_7   : A0B.Types.SVD.UInt5 := 16#0#;
      --  RTC clock source selection
      RTCSEL         : BDCR_RTCSEL_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_10_14 : A0B.Types.SVD.UInt5 := 16#0#;
      --  RTC clock enable
      RTCEN          : Boolean := False;
      --  Backup domain software reset
      BDRST          : Boolean := False;
      --  unspecified
      Reserved_17_31 : A0B.Types.SVD.UInt15 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for BDCR_Register use record
      LSEON          at 0 range 0 .. 0;
      LSERDY         at 0 range 1 .. 1;
      LSEBYP         at 0 range 2 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      RTCSEL         at 0 range 8 .. 9;
      Reserved_10_14 at 0 range 10 .. 14;
      RTCEN          at 0 range 15 .. 15;
      BDRST          at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  clock control & status register
   type CSR_Register is record
      --  Internal low-speed oscillator enable
      LSION         : Boolean := False;
      --  Read-only. Internal low-speed oscillator ready
      LSIRDY        : Boolean := False;
      --  unspecified
      Reserved_2_23 : A0B.Types.SVD.UInt22 := 16#0#;
      --  Remove reset flag
      RMVF          : Boolean := False;
      --  BOR reset flag
      BORRSTF       : Boolean := True;
      --  PIN reset flag
      PADRSTF       : Boolean := True;
      --  POR/PDR reset flag
      PORRSTF       : Boolean := True;
      --  Software reset flag
      SFTRSTF       : Boolean := False;
      --  Independent watchdog reset flag
      WDGRSTF       : Boolean := False;
      --  Window watchdog reset flag
      WWDGRSTF      : Boolean := False;
      --  Low-power reset flag
      LPWRRSTF      : Boolean := False;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for CSR_Register use record
      LSION         at 0 range 0 .. 0;
      LSIRDY        at 0 range 1 .. 1;
      Reserved_2_23 at 0 range 2 .. 23;
      RMVF          at 0 range 24 .. 24;
      BORRSTF       at 0 range 25 .. 25;
      PADRSTF       at 0 range 26 .. 26;
      PORRSTF       at 0 range 27 .. 27;
      SFTRSTF       at 0 range 28 .. 28;
      WDGRSTF       at 0 range 29 .. 29;
      WWDGRSTF      at 0 range 30 .. 30;
      LPWRRSTF      at 0 range 31 .. 31;
   end record;

   subtype SSCGR_MODPER_Field is A0B.Types.SVD.UInt13;
   subtype SSCGR_INCSTEP_Field is A0B.Types.SVD.UInt15;

   --  spread spectrum clock generation register
   type SSCGR_Register is record
      --  Modulation period
      MODPER         : SSCGR_MODPER_Field := 16#0#;
      --  Incrementation step
      INCSTEP        : SSCGR_INCSTEP_Field := 16#0#;
      --  unspecified
      Reserved_28_29 : A0B.Types.SVD.UInt2 := 16#0#;
      --  Spread Select
      SPREADSEL      : Boolean := False;
      --  Spread spectrum modulation enable
      SSCGEN         : Boolean := False;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for SSCGR_Register use record
      MODPER         at 0 range 0 .. 12;
      INCSTEP        at 0 range 13 .. 27;
      Reserved_28_29 at 0 range 28 .. 29;
      SPREADSEL      at 0 range 30 .. 30;
      SSCGEN         at 0 range 31 .. 31;
   end record;

   subtype PLLI2SCFGR_PLLI2SNx_Field is A0B.Types.SVD.UInt9;
   subtype PLLI2SCFGR_PLLI2SRx_Field is A0B.Types.SVD.UInt3;

   --  PLLI2S configuration register
   type PLLI2SCFGR_Register is record
      --  unspecified
      Reserved_0_5   : A0B.Types.SVD.UInt6 := 16#0#;
      --  PLLI2S multiplication factor for VCO
      PLLI2SNx       : PLLI2SCFGR_PLLI2SNx_Field := 16#C0#;
      --  unspecified
      Reserved_15_27 : A0B.Types.SVD.UInt13 := 16#0#;
      --  PLLI2S division factor for I2S clocks
      PLLI2SRx       : PLLI2SCFGR_PLLI2SRx_Field := 16#2#;
      --  unspecified
      Reserved_31_31 : A0B.Types.SVD.Bit := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for PLLI2SCFGR_Register use record
      Reserved_0_5   at 0 range 0 .. 5;
      PLLI2SNx       at 0 range 6 .. 14;
      Reserved_15_27 at 0 range 15 .. 27;
      PLLI2SRx       at 0 range 28 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Reset and clock control
   type RCC_Peripheral is record
      --  clock control register
      CR         : aliased CR_Register;
      pragma Volatile_Full_Access (CR);
      --  PLL configuration register
      PLLCFGR    : aliased PLLCFGR_Register;
      pragma Volatile_Full_Access (PLLCFGR);
      --  clock configuration register
      CFGR       : aliased CFGR_Register;
      pragma Volatile_Full_Access (CFGR);
      --  clock interrupt register
      CIR        : aliased CIR_Register;
      pragma Volatile_Full_Access (CIR);
      --  AHB1 peripheral reset register
      AHB1RSTR   : aliased AHB1RSTR_Register;
      pragma Volatile_Full_Access (AHB1RSTR);
      --  AHB2 peripheral reset register
      AHB2RSTR   : aliased AHB2RSTR_Register;
      pragma Volatile_Full_Access (AHB2RSTR);
      --  APB1 peripheral reset register
      APB1RSTR   : aliased APB1RSTR_Register;
      pragma Volatile_Full_Access (APB1RSTR);
      --  APB2 peripheral reset register
      APB2RSTR   : aliased APB2RSTR_Register;
      pragma Volatile_Full_Access (APB2RSTR);
      --  AHB1 peripheral clock register
      AHB1ENR    : aliased AHB1ENR_Register;
      pragma Volatile_Full_Access (AHB1ENR);
      --  AHB2 peripheral clock enable register
      AHB2ENR    : aliased AHB2ENR_Register;
      pragma Volatile_Full_Access (AHB2ENR);
      --  APB1 peripheral clock enable register
      APB1ENR    : aliased APB1ENR_Register;
      pragma Volatile_Full_Access (APB1ENR);
      --  APB2 peripheral clock enable register
      APB2ENR    : aliased APB2ENR_Register;
      pragma Volatile_Full_Access (APB2ENR);
      --  AHB1 peripheral clock enable in low power mode register
      AHB1LPENR  : aliased AHB1LPENR_Register;
      pragma Volatile_Full_Access (AHB1LPENR);
      --  AHB2 peripheral clock enable in low power mode register
      AHB2LPENR  : aliased AHB2LPENR_Register;
      pragma Volatile_Full_Access (AHB2LPENR);
      --  APB1 peripheral clock enable in low power mode register
      APB1LPENR  : aliased APB1LPENR_Register;
      pragma Volatile_Full_Access (APB1LPENR);
      --  APB2 peripheral clock enabled in low power mode register
      APB2LPENR  : aliased APB2LPENR_Register;
      pragma Volatile_Full_Access (APB2LPENR);
      --  Backup domain control register
      BDCR       : aliased BDCR_Register;
      pragma Volatile_Full_Access (BDCR);
      --  clock control & status register
      CSR        : aliased CSR_Register;
      pragma Volatile_Full_Access (CSR);
      --  spread spectrum clock generation register
      SSCGR      : aliased SSCGR_Register;
      pragma Volatile_Full_Access (SSCGR);
      --  PLLI2S configuration register
      PLLI2SCFGR : aliased PLLI2SCFGR_Register;
      pragma Volatile_Full_Access (PLLI2SCFGR);
   end record
     with Volatile;

   for RCC_Peripheral use record
      CR         at 16#0# range 0 .. 31;
      PLLCFGR    at 16#4# range 0 .. 31;
      CFGR       at 16#8# range 0 .. 31;
      CIR        at 16#C# range 0 .. 31;
      AHB1RSTR   at 16#10# range 0 .. 31;
      AHB2RSTR   at 16#14# range 0 .. 31;
      APB1RSTR   at 16#20# range 0 .. 31;
      APB2RSTR   at 16#24# range 0 .. 31;
      AHB1ENR    at 16#30# range 0 .. 31;
      AHB2ENR    at 16#34# range 0 .. 31;
      APB1ENR    at 16#40# range 0 .. 31;
      APB2ENR    at 16#44# range 0 .. 31;
      AHB1LPENR  at 16#50# range 0 .. 31;
      AHB2LPENR  at 16#54# range 0 .. 31;
      APB1LPENR  at 16#60# range 0 .. 31;
      APB2LPENR  at 16#64# range 0 .. 31;
      BDCR       at 16#70# range 0 .. 31;
      CSR        at 16#74# range 0 .. 31;
      SSCGR      at 16#80# range 0 .. 31;
      PLLI2SCFGR at 16#84# range 0 .. 31;
   end record;

   --  Reset and clock control
   RCC_Periph : aliased RCC_Peripheral
     with Import, Address => RCC_Base;

end A0B.STM32F401.SVD.RCC;
