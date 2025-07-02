--
--  Copyright (C) 2025, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

--  Startup utilities for STM32F401

with A0B.Types;

package A0B.STM32F401.Startup_Utilities
  with Preelaborate, No_Elaboration_Code_All
is

   generic
      FLASH_LATENCY : A0B.Types.Unsigned_32;
      VOS_SCALE     : A0B.Types.Unsigned_32;
      PLL_M         : A0B.Types.Unsigned_32;
      PLL_N         : A0B.Types.Unsigned_32;
      PLL_P         : A0B.Types.Unsigned_32;
      PLL_Q         : A0B.Types.Unsigned_32;
      AHB           : A0B.Types.Unsigned_32;
      APB1          : A0B.Types.Unsigned_32;
      APB2          : A0B.Types.Unsigned_32;

   procedure Generic_Configure_System_Clocks;
   --  Do system clocks initialization:
   --   - configure FLASH
   --   - configure VOS
   --   - enable HSE
   --   - configure PLL
   --   - enable PLL
   --   - configure AHB/APB clocks
   --   - enable HSE+PLL as system clock
   --   - enable instruction and data cache in FLASH controller

end A0B.STM32F401.Startup_Utilities;
