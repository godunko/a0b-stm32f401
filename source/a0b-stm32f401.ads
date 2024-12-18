--
--  Copyright (C) 2024, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

with A0B.ARMv7M;
private with A0B.Types;

package A0B.STM32F401
  with Preelaborate, No_Elaboration_Code_All
is

   subtype Interrupt_Number is
     A0B.ARMv7M.External_Interrupt_Number range 0 .. 84;

   WWDG                 : constant Interrupt_Number := 0;
   EXTI16_PVD           : constant Interrupt_Number := 1;
   EXTI21_TAMP_STAMP    : constant Interrupt_Number := 2;
   EXTI22_RTC_WKUP      : constant Interrupt_Number := 3;
   FLASH                : constant Interrupt_Number := 4;
   RCC                  : constant Interrupt_Number := 5;
   EXTI0                : constant Interrupt_Number := 6;
   EXTI1                : constant Interrupt_Number := 7;
   EXTI2                : constant Interrupt_Number := 8;
   EXTI3                : constant Interrupt_Number := 9;
   EXTI4                : constant Interrupt_Number := 10;
   DMA1_Stream0         : constant Interrupt_Number := 11;
   DMA1_Stream1         : constant Interrupt_Number := 12;
   DMA1_Stream2         : constant Interrupt_Number := 13;
   DMA1_Stream3         : constant Interrupt_Number := 14;
   DMA1_Stream4         : constant Interrupt_Number := 15;
   DMA1_Stream5         : constant Interrupt_Number := 16;
   DMA1_Stream6         : constant Interrupt_Number := 17;
   ADC                  : constant Interrupt_Number := 18;
   EXTI9_5              : constant Interrupt_Number := 23;
   TIM1_BRK_TIM9        : constant Interrupt_Number := 24;
   TIM1_UP_TIM10        : constant Interrupt_Number := 25;
   TIM1_TRG_COM_TIM11   : constant Interrupt_Number := 26;
   TIM1_CC              : constant Interrupt_Number := 27;
   TIM2                 : constant Interrupt_Number := 28;
   TIM3                 : constant Interrupt_Number := 29;
   TIM4                 : constant Interrupt_Number := 30;
   I2C1_EV              : constant Interrupt_Number := 31;
   I2C1_ER              : constant Interrupt_Number := 32;
   I2C2_EV              : constant Interrupt_Number := 33;
   I2C2_ER              : constant Interrupt_Number := 34;
   SPI1                 : constant Interrupt_Number := 35;
   SPI2                 : constant Interrupt_Number := 36;
   USART1               : constant Interrupt_Number := 37;
   USART2               : constant Interrupt_Number := 38;
   EXTI15_10            : constant Interrupt_Number := 40;
   EXTI17_RTC_Alarm     : constant Interrupt_Number := 41;
   EXTI18_OTG_FS_Wakeup : constant Interrupt_Number := 42;
   DMA1_Stream7         : constant Interrupt_Number := 47;
   SDIO                 : constant Interrupt_Number := 49;
   TIM5                 : constant Interrupt_Number := 50;
   SPI3                 : constant Interrupt_Number := 51;
   DMA2_Stream0         : constant Interrupt_Number := 56;
   DMA2_Stream1         : constant Interrupt_Number := 57;
   DMA2_Stream2         : constant Interrupt_Number := 58;
   DMA2_Stream3         : constant Interrupt_Number := 59;
   DMA2_Stream4         : constant Interrupt_Number := 60;
   OTG_FS               : constant Interrupt_Number := 67;
   DMA2_Stream5         : constant Interrupt_Number := 68;
   DMA2_Stream6         : constant Interrupt_Number := 69;
   DMA2_Stream7         : constant Interrupt_Number := 70;
   USART6               : constant Interrupt_Number := 71;
   I2C3_EV              : constant Interrupt_Number := 72;
   I2C3_ER              : constant Interrupt_Number := 73;
   FPU                  : constant Interrupt_Number := 81;
   SPI4                 : constant Interrupt_Number := 84;

   type GPIO_Controller_Identifier is (A, B, C, D, E, H)
     with Size => 4;
   for GPIO_Controller_Identifier use
     (A => 0, B => 1, C => 2, D => 3, E => 4, H => 7);

   type GPIO_Line_Identifier is range 0 .. 15;

   type Function_Line_Descriptor (<>) is limited private
     with Preelaborable_Initialization;

private

   type GPIO_Alternative_Function is mod 2 ** 4;

   type Function_Line_Configuration is record
      Controller           : GPIO_Controller_Identifier;
      Line                 : GPIO_Line_Identifier;
      Alternative_Function : GPIO_Alternative_Function;
   end record with Pack;

   type Function_Line_Descriptor is
     array (A0B.Types.Unsigned_8 range <>) of Function_Line_Configuration;

end A0B.STM32F401;
