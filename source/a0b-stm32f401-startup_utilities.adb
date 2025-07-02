--
--  Copyright (C) 2025, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

with A0B.STM32F401.SVD.FLASH; use A0B.STM32F401.SVD.FLASH;
with A0B.STM32F401.SVD.PWR;   use A0B.STM32F401.SVD.PWR;
with A0B.STM32F401.SVD.RCC;   use A0B.STM32F401.SVD.RCC;

package body A0B.STM32F401.Startup_Utilities is

   -------------------------------------
   -- Generic_Configure_System_Clocks --
   -------------------------------------

   procedure Generic_Configure_System_Clocks is
      use type A0B.Types.Unsigned_2;
      use type A0B.Types.Unsigned_3;

   begin
      --  Enable PWR peripheral.

      declare
         Aux_APB1ENR : APB1ENR_Register;

      begin
         RCC_Periph.APB1ENR.PWREN := True;
         Aux_APB1ENR := RCC_Periph.APB1ENR;
      end;

      --  Set Flash Latancy first (CPU clock frequency is going to be
      --  increased)

      FLASH_Periph.ACR.LATENCY := A0B.Types.Unsigned_3 (FLASH_LATENCY);

      while FLASH_Periph.ACR.LATENCY
              /= A0B.Types.Unsigned_3 (FLASH_LATENCY)
      loop
         --  Wait till it is taken into account

         null;
      end loop;

      --  Set regulator voltage scaling to run @84 MHz

      PWR_Periph.CR.VOS := A0B.Types.Unsigned_2 (VOS_SCALE);

      --  Wait till selected VOS is activated.

      while PWR_Periph.CR.VOS /= A0B.Types.Unsigned_2 (VOS_SCALE) loop
         null;
      end loop;

      --  Enable HSE and wait till it is ready.

      RCC_Periph.CR.HSEON := True;

      while not RCC_Periph.CR.HSERDY loop
         null;
      end loop;

      --  Configure PLL

      declare
         Aux : PLLCFGR_Register := RCC_Periph.PLLCFGR;

      begin
         Aux.PLLSRC   := True;  --  HSE oscillator clock selected as PLL
         Aux.PLLM.Val := A0B.Types.Unsigned_6 (PLL_M);
         Aux.PLLN.Val := A0B.Types.Unsigned_9 (PLL_N);
         Aux.PLLP.Val :=
           (case PLL_P is
               when 2      => 2#00#,
               when 4      => 2#01#,
               when 6      => 2#10#,
               when 8      => 2#11#,
               when others => raise Constraint_Error);
         Aux.PLLQ.Val := A0B.Types.Unsigned_4 (PLL_Q);

         RCC_Periph.PLLCFGR := Aux;
      end;

      --  Enable PLL and wait till it is ready.

      RCC_Periph.CR.PLLON := True;

      while not RCC_Periph.CR.PLLRDY loop
         null;
      end loop;

      --  Configure AHB/APB1/APB2 prescalers

      declare
         Aux : CFGR_Register := RCC_Periph.CFGR;

      begin
         Aux.HPRE     :=
           (case AHB is
               when 1      => 2#0000#,
               when 2      => 2#1000#,
               when 4      => 2#1001#,
               when 8      => 2#1010#,
               when 16     => 2#1011#,
               when 64     => 2#1100#,
               when 128    => 2#1101#,
               when 256    => 2#1110#,
               when 512    => 2#1111#,
               when others => raise Constraint_Error);
         Aux.PPRE.Val :=
           (case APB1 is
               when 1      => 2#000#,
               when 2      => 2#100#,
               when 4      => 2#101#,
               when 8      => 2#110#,
               when 16     => 2#111#,
               when others => raise Constraint_Error)
              or
           (case APB2 is
               when 1      => 2#000_000#,
               when 2      => 2#100_000#,
               when 4      => 2#101_000#,
               when 8      => 2#110_000#,
               when 16     => 2#111_000#,
               when others => raise Constraint_Error);

         RCC_Periph.CFGR := Aux;
      end;

      --  Switch system clock source to PLL and wait when it is completed.

      RCC_Periph.CFGR.SW.Val := 2#10#;

      while RCC_Periph.CFGR.SW.Val /= 2#10# loop
         null;
      end loop;

      --  Enable Instruction and Data cache in the Embedded Flash memory
      --  interface
      --
      --  Note: as recommended by [ES0299] 2.2.8, prefetch is disabled to
      --  minimize internal noise impacting ADC accuracy.

      declare
         Aux : ACR_Register := FLASH_Periph.ACR;

      begin
         Aux.ICEN   := True;
         Aux.DCEN   := True;
         Aux.PRFTEN := False;

         FLASH_Periph.ACR := Aux;
      end;
   end Generic_Configure_System_Clocks;

end A0B.STM32F401.Startup_Utilities;
