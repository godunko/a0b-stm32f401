pragma Style_Checks (Off);

--  This spec has been automatically generated from STM32F401.svd

pragma Restrictions (No_Elaboration_Code);

with A0B.Types.SVD;
with System;

package A0B.STM32F401.SVD.IWDG is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype KR_KEY_Field is A0B.Types.SVD.UInt16;

   --  Key register
   type KR_Register is record
      --  Write-only. Key value
      KEY            : KR_KEY_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : A0B.Types.SVD.UInt16 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for KR_Register use record
      KEY            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PR_PR_Field is A0B.Types.SVD.UInt3;

   --  Prescaler register
   type PR_Register is record
      --  Prescaler divider
      PR            : PR_PR_Field := 16#0#;
      --  unspecified
      Reserved_3_31 : A0B.Types.SVD.UInt29 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for PR_Register use record
      PR            at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype RLR_RL_Field is A0B.Types.SVD.UInt12;

   --  Reload register
   type RLR_Register is record
      --  Watchdog counter reload value
      RL             : RLR_RL_Field := 16#FFF#;
      --  unspecified
      Reserved_12_31 : A0B.Types.SVD.UInt20 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for RLR_Register use record
      RL             at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  Status register
   type SR_Register is record
      --  Read-only. Watchdog prescaler value update
      PVU           : Boolean;
      --  Read-only. Watchdog counter reload value update
      RVU           : Boolean;
      --  unspecified
      Reserved_2_31 : A0B.Types.SVD.UInt30;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for SR_Register use record
      PVU           at 0 range 0 .. 0;
      RVU           at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Independent watchdog
   type IWDG_Peripheral is record
      --  Key register
      KR  : aliased KR_Register;
      pragma Volatile_Full_Access (KR);
      --  Prescaler register
      PR  : aliased PR_Register;
      pragma Volatile_Full_Access (PR);
      --  Reload register
      RLR : aliased RLR_Register;
      pragma Volatile_Full_Access (RLR);
      --  Status register
      SR  : aliased SR_Register;
      pragma Volatile_Full_Access (SR);
   end record
     with Volatile;

   for IWDG_Peripheral use record
      KR  at 16#0# range 0 .. 31;
      PR  at 16#4# range 0 .. 31;
      RLR at 16#8# range 0 .. 31;
      SR  at 16#C# range 0 .. 31;
   end record;

   --  Independent watchdog
   IWDG_Periph : aliased IWDG_Peripheral
     with Import, Address => IWDG_Base;

end A0B.STM32F401.SVD.IWDG;
