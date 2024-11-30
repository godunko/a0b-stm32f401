pragma Style_Checks (Off);

--  This spec has been automatically generated from STM32F401.svd


with A0B.Types.SVD;
with System;

package A0B.STM32F401.SVD.CRC is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype IDR_IDR_Field is A0B.Types.SVD.Byte;

   --  Independent Data register
   type IDR_Register is record
      --  Independent Data register
      IDR           : IDR_IDR_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : A0B.Types.SVD.UInt24 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for IDR_Register use record
      IDR           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Control register
   type CR_Register is record
      --  Write-only. Control regidter
      CR            : Boolean := False;
      --  unspecified
      Reserved_1_31 : A0B.Types.SVD.UInt31 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for CR_Register use record
      CR            at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Cryptographic processor
   type CRC_Peripheral is record
      --  Data register
      DR  : aliased A0B.Types.SVD.UInt32;
      --  Independent Data register
      IDR : aliased IDR_Register;
      pragma Volatile_Full_Access (IDR);
      --  Control register
      CR  : aliased CR_Register;
      pragma Volatile_Full_Access (CR);
   end record
     with Volatile;

   for CRC_Peripheral use record
      DR  at 16#0# range 0 .. 31;
      IDR at 16#4# range 0 .. 31;
      CR  at 16#8# range 0 .. 31;
   end record;

   --  Cryptographic processor
   CRC_Periph : aliased CRC_Peripheral
     with Import, Address => CRC_Base;

end A0B.STM32F401.SVD.CRC;
