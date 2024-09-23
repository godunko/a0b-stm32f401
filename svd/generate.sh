#!/bin/sh

svd2ada STM32F401.svd \
  --output ../source/svd \
  --package A0B.STM32F401.SVD \
  --base-types-package A0B.Types.SVD \
  --boolean \
  --no-vfa-on-types
