#include <stdio.h>
#include <stdint.h>
#include "audio_preprocessor_tensors.h"
#include "printf.h"
#include "arm_nn_types.h"

uint8_t *AUDIO_PREPROCESSOR_get_tensor(const AUDIO_PREPROCESSOR_Tensors *tensors, int index){
    uint32_t sizes[43] = {0,
sizeof(tensors->tensor_0),
sizeof(tensors->tensor_1) + sizeof(tensors->tensor_0),
sizeof(tensors->tensor_2) + sizeof(tensors->tensor_0) + sizeof(tensors->tensor_1),
sizeof(tensors->tensor_3) + sizeof(tensors->tensor_0) + sizeof(tensors->tensor_1) + sizeof(tensors->tensor_2),
sizeof(tensors->tensor_4) + sizeof(tensors->tensor_0) + sizeof(tensors->tensor_1) + sizeof(tensors->tensor_2) + sizeof(tensors->tensor_3),
sizeof(tensors->tensor_5) + sizeof(tensors->tensor_0) + sizeof(tensors->tensor_1) + sizeof(tensors->tensor_2) + sizeof(tensors->tensor_3) + sizeof(tensors->tensor_4),
sizeof(tensors->tensor_6) + sizeof(tensors->tensor_0) + sizeof(tensors->tensor_1) + sizeof(tensors->tensor_2) + sizeof(tensors->tensor_3) + sizeof(tensors->tensor_4) + sizeof(tensors->tensor_5),
sizeof(tensors->tensor_7) + sizeof(tensors->tensor_0) + sizeof(tensors->tensor_1) + sizeof(tensors->tensor_2) + sizeof(tensors->tensor_3) + sizeof(tensors->tensor_4) + sizeof(tensors->tensor_5) + sizeof(tensors->tensor_6),
sizeof(tensors->tensor_8) + sizeof(tensors->tensor_0) + sizeof(tensors->tensor_1) + sizeof(tensors->tensor_2) + sizeof(tensors->tensor_3) + sizeof(tensors->tensor_4) + sizeof(tensors->tensor_5) + sizeof(tensors->tensor_6) + sizeof(tensors->tensor_7),
sizeof(tensors->tensor_9) + sizeof(tensors->tensor_0) + sizeof(tensors->tensor_1) + sizeof(tensors->tensor_2) + sizeof(tensors->tensor_3) + sizeof(tensors->tensor_4) + sizeof(tensors->tensor_5) + sizeof(tensors->tensor_6) + sizeof(tensors->tensor_7) + sizeof(tensors->tensor_8),
sizeof(tensors->tensor_10) + sizeof(tensors->tensor_0) + sizeof(tensors->tensor_1) + sizeof(tensors->tensor_2) + sizeof(tensors->tensor_3) + sizeof(tensors->tensor_4) + sizeof(tensors->tensor_5) + sizeof(tensors->tensor_6) + sizeof(tensors->tensor_7) + sizeof(tensors->tensor_8) + sizeof(tensors->tensor_9),
sizeof(tensors->tensor_11) + sizeof(tensors->tensor_0) + sizeof(tensors->tensor_1) + sizeof(tensors->tensor_2) + sizeof(tensors->tensor_3) + sizeof(tensors->tensor_4) + sizeof(tensors->tensor_5) + sizeof(tensors->tensor_6) + sizeof(tensors->tensor_7) + sizeof(tensors->tensor_8) + sizeof(tensors->tensor_9) + sizeof(tensors->tensor_10),
sizeof(tensors->tensor_12) + sizeof(tensors->tensor_0) + sizeof(tensors->tensor_1) + sizeof(tensors->tensor_2) + sizeof(tensors->tensor_3) + sizeof(tensors->tensor_4) + sizeof(tensors->tensor_5) + sizeof(tensors->tensor_6) + sizeof(tensors->tensor_7) + sizeof(tensors->tensor_8) + sizeof(tensors->tensor_9) + sizeof(tensors->tensor_10) + sizeof(tensors->tensor_11),
sizeof(tensors->tensor_13) + sizeof(tensors->tensor_0) + sizeof(tensors->tensor_1) + sizeof(tensors->tensor_2) + sizeof(tensors->tensor_3) + sizeof(tensors->tensor_4) + sizeof(tensors->tensor_5) + sizeof(tensors->tensor_6) + sizeof(tensors->tensor_7) + sizeof(tensors->tensor_8) + sizeof(tensors->tensor_9) + sizeof(tensors->tensor_10) + sizeof(tensors->tensor_11) + sizeof(tensors->tensor_12),
sizeof(tensors->tensor_14) + sizeof(tensors->tensor_0) + sizeof(tensors->tensor_1) + sizeof(tensors->tensor_2) + sizeof(tensors->tensor_3) + sizeof(tensors->tensor_4) + sizeof(tensors->tensor_5) + sizeof(tensors->tensor_6) + sizeof(tensors->tensor_7) + sizeof(tensors->tensor_8) + sizeof(tensors->tensor_9) + sizeof(tensors->tensor_10) + sizeof(tensors->tensor_11) + sizeof(tensors->tensor_12) + sizeof(tensors->tensor_13),
sizeof(tensors->tensor_15) + sizeof(tensors->tensor_0) + sizeof(tensors->tensor_1) + sizeof(tensors->tensor_2) + sizeof(tensors->tensor_3) + sizeof(tensors->tensor_4) + sizeof(tensors->tensor_5) + sizeof(tensors->tensor_6) + sizeof(tensors->tensor_7) + sizeof(tensors->tensor_8) + sizeof(tensors->tensor_9) + sizeof(tensors->tensor_10) + sizeof(tensors->tensor_11) + sizeof(tensors->tensor_12) + sizeof(tensors->tensor_13) + sizeof(tensors->tensor_14),
sizeof(tensors->tensor_16) + sizeof(tensors->tensor_0) + sizeof(tensors->tensor_1) + sizeof(tensors->tensor_2) + sizeof(tensors->tensor_3) + sizeof(tensors->tensor_4) + sizeof(tensors->tensor_5) + sizeof(tensors->tensor_6) + sizeof(tensors->tensor_7) + sizeof(tensors->tensor_8) + sizeof(tensors->tensor_9) + sizeof(tensors->tensor_10) + sizeof(tensors->tensor_11) + sizeof(tensors->tensor_12) + sizeof(tensors->tensor_13) + sizeof(tensors->tensor_14) + sizeof(tensors->tensor_15),
sizeof(tensors->tensor_17) + sizeof(tensors->tensor_0) + sizeof(tensors->tensor_1) + sizeof(tensors->tensor_2) + sizeof(tensors->tensor_3) + sizeof(tensors->tensor_4) + sizeof(tensors->tensor_5) + sizeof(tensors->tensor_6) + sizeof(tensors->tensor_7) + sizeof(tensors->tensor_8) + sizeof(tensors->tensor_9) + sizeof(tensors->tensor_10) + sizeof(tensors->tensor_11) + sizeof(tensors->tensor_12) + sizeof(tensors->tensor_13) + sizeof(tensors->tensor_14) + sizeof(tensors->tensor_15) + sizeof(tensors->tensor_16),
sizeof(tensors->tensor_18) + sizeof(tensors->tensor_0) + sizeof(tensors->tensor_1) + sizeof(tensors->tensor_2) + sizeof(tensors->tensor_3) + sizeof(tensors->tensor_4) + sizeof(tensors->tensor_5) + sizeof(tensors->tensor_6) + sizeof(tensors->tensor_7) + sizeof(tensors->tensor_8) + sizeof(tensors->tensor_9) + sizeof(tensors->tensor_10) + sizeof(tensors->tensor_11) + sizeof(tensors->tensor_12) + sizeof(tensors->tensor_13) + sizeof(tensors->tensor_14) + sizeof(tensors->tensor_15) + sizeof(tensors->tensor_16) + sizeof(tensors->tensor_17),
sizeof(tensors->tensor_19) + sizeof(tensors->tensor_0) + sizeof(tensors->tensor_1) + sizeof(tensors->tensor_2) + sizeof(tensors->tensor_3) + sizeof(tensors->tensor_4) + sizeof(tensors->tensor_5) + sizeof(tensors->tensor_6) + sizeof(tensors->tensor_7) + sizeof(tensors->tensor_8) + sizeof(tensors->tensor_9) + sizeof(tensors->tensor_10) + sizeof(tensors->tensor_11) + sizeof(tensors->tensor_12) + sizeof(tensors->tensor_13) + sizeof(tensors->tensor_14) + sizeof(tensors->tensor_15) + sizeof(tensors->tensor_16) + sizeof(tensors->tensor_17) + sizeof(tensors->tensor_18),
sizeof(tensors->tensor_20) + sizeof(tensors->tensor_0) + sizeof(tensors->tensor_1) + sizeof(tensors->tensor_2) + sizeof(tensors->tensor_3) + sizeof(tensors->tensor_4) + sizeof(tensors->tensor_5) + sizeof(tensors->tensor_6) + sizeof(tensors->tensor_7) + sizeof(tensors->tensor_8) + sizeof(tensors->tensor_9) + sizeof(tensors->tensor_10) + sizeof(tensors->tensor_11) + sizeof(tensors->tensor_12) + sizeof(tensors->tensor_13) + sizeof(tensors->tensor_14) + sizeof(tensors->tensor_15) + sizeof(tensors->tensor_16) + sizeof(tensors->tensor_17) + sizeof(tensors->tensor_18) + sizeof(tensors->tensor_19),
sizeof(tensors->tensor_21) + sizeof(tensors->tensor_0) + sizeof(tensors->tensor_1) + sizeof(tensors->tensor_2) + sizeof(tensors->tensor_3) + sizeof(tensors->tensor_4) + sizeof(tensors->tensor_5) + sizeof(tensors->tensor_6) + sizeof(tensors->tensor_7) + sizeof(tensors->tensor_8) + sizeof(tensors->tensor_9) + sizeof(tensors->tensor_10) + sizeof(tensors->tensor_11) + sizeof(tensors->tensor_12) + sizeof(tensors->tensor_13) + sizeof(tensors->tensor_14) + sizeof(tensors->tensor_15) + sizeof(tensors->tensor_16) + sizeof(tensors->tensor_17) + sizeof(tensors->tensor_18) + sizeof(tensors->tensor_19) + sizeof(tensors->tensor_20),
sizeof(tensors->tensor_22) + sizeof(tensors->tensor_0) + sizeof(tensors->tensor_1) + sizeof(tensors->tensor_2) + sizeof(tensors->tensor_3) + sizeof(tensors->tensor_4) + sizeof(tensors->tensor_5) + sizeof(tensors->tensor_6) + sizeof(tensors->tensor_7) + sizeof(tensors->tensor_8) + sizeof(tensors->tensor_9) + sizeof(tensors->tensor_10) + sizeof(tensors->tensor_11) + sizeof(tensors->tensor_12) + sizeof(tensors->tensor_13) + sizeof(tensors->tensor_14) + sizeof(tensors->tensor_15) + sizeof(tensors->tensor_16) + sizeof(tensors->tensor_17) + sizeof(tensors->tensor_18) + sizeof(tensors->tensor_19) + sizeof(tensors->tensor_20) + sizeof(tensors->tensor_21),
sizeof(tensors->tensor_23) + sizeof(tensors->tensor_0) + sizeof(tensors->tensor_1) + sizeof(tensors->tensor_2) + sizeof(tensors->tensor_3) + sizeof(tensors->tensor_4) + sizeof(tensors->tensor_5) + sizeof(tensors->tensor_6) + sizeof(tensors->tensor_7) + sizeof(tensors->tensor_8) + sizeof(tensors->tensor_9) + sizeof(tensors->tensor_10) + sizeof(tensors->tensor_11) + sizeof(tensors->tensor_12) + sizeof(tensors->tensor_13) + sizeof(tensors->tensor_14) + sizeof(tensors->tensor_15) + sizeof(tensors->tensor_16) + sizeof(tensors->tensor_17) + sizeof(tensors->tensor_18) + sizeof(tensors->tensor_19) + sizeof(tensors->tensor_20) + sizeof(tensors->tensor_21) + sizeof(tensors->tensor_22),
sizeof(tensors->tensor_24) + sizeof(tensors->tensor_0) + sizeof(tensors->tensor_1) + sizeof(tensors->tensor_2) + sizeof(tensors->tensor_3) + sizeof(tensors->tensor_4) + sizeof(tensors->tensor_5) + sizeof(tensors->tensor_6) + sizeof(tensors->tensor_7) + sizeof(tensors->tensor_8) + sizeof(tensors->tensor_9) + sizeof(tensors->tensor_10) + sizeof(tensors->tensor_11) + sizeof(tensors->tensor_12) + sizeof(tensors->tensor_13) + sizeof(tensors->tensor_14) + sizeof(tensors->tensor_15) + sizeof(tensors->tensor_16) + sizeof(tensors->tensor_17) + sizeof(tensors->tensor_18) + sizeof(tensors->tensor_19) + sizeof(tensors->tensor_20) + sizeof(tensors->tensor_21) + sizeof(tensors->tensor_22) + sizeof(tensors->tensor_23),
sizeof(tensors->tensor_25) + sizeof(tensors->tensor_0) + sizeof(tensors->tensor_1) + sizeof(tensors->tensor_2) + sizeof(tensors->tensor_3) + sizeof(tensors->tensor_4) + sizeof(tensors->tensor_5) + sizeof(tensors->tensor_6) + sizeof(tensors->tensor_7) + sizeof(tensors->tensor_8) + sizeof(tensors->tensor_9) + sizeof(tensors->tensor_10) + sizeof(tensors->tensor_11) + sizeof(tensors->tensor_12) + sizeof(tensors->tensor_13) + sizeof(tensors->tensor_14) + sizeof(tensors->tensor_15) + sizeof(tensors->tensor_16) + sizeof(tensors->tensor_17) + sizeof(tensors->tensor_18) + sizeof(tensors->tensor_19) + sizeof(tensors->tensor_20) + sizeof(tensors->tensor_21) + sizeof(tensors->tensor_22) + sizeof(tensors->tensor_23) + sizeof(tensors->tensor_24),
sizeof(tensors->tensor_26) + sizeof(tensors->tensor_0) + sizeof(tensors->tensor_1) + sizeof(tensors->tensor_2) + sizeof(tensors->tensor_3) + sizeof(tensors->tensor_4) + sizeof(tensors->tensor_5) + sizeof(tensors->tensor_6) + sizeof(tensors->tensor_7) + sizeof(tensors->tensor_8) + sizeof(tensors->tensor_9) + sizeof(tensors->tensor_10) + sizeof(tensors->tensor_11) + sizeof(tensors->tensor_12) + sizeof(tensors->tensor_13) + sizeof(tensors->tensor_14) + sizeof(tensors->tensor_15) + sizeof(tensors->tensor_16) + sizeof(tensors->tensor_17) + sizeof(tensors->tensor_18) + sizeof(tensors->tensor_19) + sizeof(tensors->tensor_20) + sizeof(tensors->tensor_21) + sizeof(tensors->tensor_22) + sizeof(tensors->tensor_23) + sizeof(tensors->tensor_24) + sizeof(tensors->tensor_25),
sizeof(tensors->tensor_27) + sizeof(tensors->tensor_0) + sizeof(tensors->tensor_1) + sizeof(tensors->tensor_2) + sizeof(tensors->tensor_3) + sizeof(tensors->tensor_4) + sizeof(tensors->tensor_5) + sizeof(tensors->tensor_6) + sizeof(tensors->tensor_7) + sizeof(tensors->tensor_8) + sizeof(tensors->tensor_9) + sizeof(tensors->tensor_10) + sizeof(tensors->tensor_11) + sizeof(tensors->tensor_12) + sizeof(tensors->tensor_13) + sizeof(tensors->tensor_14) + sizeof(tensors->tensor_15) + sizeof(tensors->tensor_16) + sizeof(tensors->tensor_17) + sizeof(tensors->tensor_18) + sizeof(tensors->tensor_19) + sizeof(tensors->tensor_20) + sizeof(tensors->tensor_21) + sizeof(tensors->tensor_22) + sizeof(tensors->tensor_23) + sizeof(tensors->tensor_24) + sizeof(tensors->tensor_25) + sizeof(tensors->tensor_26),
sizeof(tensors->tensor_28) + sizeof(tensors->tensor_0) + sizeof(tensors->tensor_1) + sizeof(tensors->tensor_2) + sizeof(tensors->tensor_3) + sizeof(tensors->tensor_4) + sizeof(tensors->tensor_5) + sizeof(tensors->tensor_6) + sizeof(tensors->tensor_7) + sizeof(tensors->tensor_8) + sizeof(tensors->tensor_9) + sizeof(tensors->tensor_10) + sizeof(tensors->tensor_11) + sizeof(tensors->tensor_12) + sizeof(tensors->tensor_13) + sizeof(tensors->tensor_14) + sizeof(tensors->tensor_15) + sizeof(tensors->tensor_16) + sizeof(tensors->tensor_17) + sizeof(tensors->tensor_18) + sizeof(tensors->tensor_19) + sizeof(tensors->tensor_20) + sizeof(tensors->tensor_21) + sizeof(tensors->tensor_22) + sizeof(tensors->tensor_23) + sizeof(tensors->tensor_24) + sizeof(tensors->tensor_25) + sizeof(tensors->tensor_26) + sizeof(tensors->tensor_27),
sizeof(tensors->tensor_29) + sizeof(tensors->tensor_0) + sizeof(tensors->tensor_1) + sizeof(tensors->tensor_2) + sizeof(tensors->tensor_3) + sizeof(tensors->tensor_4) + sizeof(tensors->tensor_5) + sizeof(tensors->tensor_6) + sizeof(tensors->tensor_7) + sizeof(tensors->tensor_8) + sizeof(tensors->tensor_9) + sizeof(tensors->tensor_10) + sizeof(tensors->tensor_11) + sizeof(tensors->tensor_12) + sizeof(tensors->tensor_13) + sizeof(tensors->tensor_14) + sizeof(tensors->tensor_15) + sizeof(tensors->tensor_16) + sizeof(tensors->tensor_17) + sizeof(tensors->tensor_18) + sizeof(tensors->tensor_19) + sizeof(tensors->tensor_20) + sizeof(tensors->tensor_21) + sizeof(tensors->tensor_22) + sizeof(tensors->tensor_23) + sizeof(tensors->tensor_24) + sizeof(tensors->tensor_25) + sizeof(tensors->tensor_26) + sizeof(tensors->tensor_27) + sizeof(tensors->tensor_28),
sizeof(tensors->tensor_30) + sizeof(tensors->tensor_0) + sizeof(tensors->tensor_1) + sizeof(tensors->tensor_2) + sizeof(tensors->tensor_3) + sizeof(tensors->tensor_4) + sizeof(tensors->tensor_5) + sizeof(tensors->tensor_6) + sizeof(tensors->tensor_7) + sizeof(tensors->tensor_8) + sizeof(tensors->tensor_9) + sizeof(tensors->tensor_10) + sizeof(tensors->tensor_11) + sizeof(tensors->tensor_12) + sizeof(tensors->tensor_13) + sizeof(tensors->tensor_14) + sizeof(tensors->tensor_15) + sizeof(tensors->tensor_16) + sizeof(tensors->tensor_17) + sizeof(tensors->tensor_18) + sizeof(tensors->tensor_19) + sizeof(tensors->tensor_20) + sizeof(tensors->tensor_21) + sizeof(tensors->tensor_22) + sizeof(tensors->tensor_23) + sizeof(tensors->tensor_24) + sizeof(tensors->tensor_25) + sizeof(tensors->tensor_26) + sizeof(tensors->tensor_27) + sizeof(tensors->tensor_28) + sizeof(tensors->tensor_29),
sizeof(tensors->tensor_31) + sizeof(tensors->tensor_0) + sizeof(tensors->tensor_1) + sizeof(tensors->tensor_2) + sizeof(tensors->tensor_3) + sizeof(tensors->tensor_4) + sizeof(tensors->tensor_5) + sizeof(tensors->tensor_6) + sizeof(tensors->tensor_7) + sizeof(tensors->tensor_8) + sizeof(tensors->tensor_9) + sizeof(tensors->tensor_10) + sizeof(tensors->tensor_11) + sizeof(tensors->tensor_12) + sizeof(tensors->tensor_13) + sizeof(tensors->tensor_14) + sizeof(tensors->tensor_15) + sizeof(tensors->tensor_16) + sizeof(tensors->tensor_17) + sizeof(tensors->tensor_18) + sizeof(tensors->tensor_19) + sizeof(tensors->tensor_20) + sizeof(tensors->tensor_21) + sizeof(tensors->tensor_22) + sizeof(tensors->tensor_23) + sizeof(tensors->tensor_24) + sizeof(tensors->tensor_25) + sizeof(tensors->tensor_26) + sizeof(tensors->tensor_27) + sizeof(tensors->tensor_28) + sizeof(tensors->tensor_29) + sizeof(tensors->tensor_30),
sizeof(tensors->tensor_32) + sizeof(tensors->tensor_0) + sizeof(tensors->tensor_1) + sizeof(tensors->tensor_2) + sizeof(tensors->tensor_3) + sizeof(tensors->tensor_4) + sizeof(tensors->tensor_5) + sizeof(tensors->tensor_6) + sizeof(tensors->tensor_7) + sizeof(tensors->tensor_8) + sizeof(tensors->tensor_9) + sizeof(tensors->tensor_10) + sizeof(tensors->tensor_11) + sizeof(tensors->tensor_12) + sizeof(tensors->tensor_13) + sizeof(tensors->tensor_14) + sizeof(tensors->tensor_15) + sizeof(tensors->tensor_16) + sizeof(tensors->tensor_17) + sizeof(tensors->tensor_18) + sizeof(tensors->tensor_19) + sizeof(tensors->tensor_20) + sizeof(tensors->tensor_21) + sizeof(tensors->tensor_22) + sizeof(tensors->tensor_23) + sizeof(tensors->tensor_24) + sizeof(tensors->tensor_25) + sizeof(tensors->tensor_26) + sizeof(tensors->tensor_27) + sizeof(tensors->tensor_28) + sizeof(tensors->tensor_29) + sizeof(tensors->tensor_30) + sizeof(tensors->tensor_31),
sizeof(tensors->tensor_33) + sizeof(tensors->tensor_0) + sizeof(tensors->tensor_1) + sizeof(tensors->tensor_2) + sizeof(tensors->tensor_3) + sizeof(tensors->tensor_4) + sizeof(tensors->tensor_5) + sizeof(tensors->tensor_6) + sizeof(tensors->tensor_7) + sizeof(tensors->tensor_8) + sizeof(tensors->tensor_9) + sizeof(tensors->tensor_10) + sizeof(tensors->tensor_11) + sizeof(tensors->tensor_12) + sizeof(tensors->tensor_13) + sizeof(tensors->tensor_14) + sizeof(tensors->tensor_15) + sizeof(tensors->tensor_16) + sizeof(tensors->tensor_17) + sizeof(tensors->tensor_18) + sizeof(tensors->tensor_19) + sizeof(tensors->tensor_20) + sizeof(tensors->tensor_21) + sizeof(tensors->tensor_22) + sizeof(tensors->tensor_23) + sizeof(tensors->tensor_24) + sizeof(tensors->tensor_25) + sizeof(tensors->tensor_26) + sizeof(tensors->tensor_27) + sizeof(tensors->tensor_28) + sizeof(tensors->tensor_29) + sizeof(tensors->tensor_30) + sizeof(tensors->tensor_31) + sizeof(tensors->tensor_32),
sizeof(tensors->tensor_34) + sizeof(tensors->tensor_0) + sizeof(tensors->tensor_1) + sizeof(tensors->tensor_2) + sizeof(tensors->tensor_3) + sizeof(tensors->tensor_4) + sizeof(tensors->tensor_5) + sizeof(tensors->tensor_6) + sizeof(tensors->tensor_7) + sizeof(tensors->tensor_8) + sizeof(tensors->tensor_9) + sizeof(tensors->tensor_10) + sizeof(tensors->tensor_11) + sizeof(tensors->tensor_12) + sizeof(tensors->tensor_13) + sizeof(tensors->tensor_14) + sizeof(tensors->tensor_15) + sizeof(tensors->tensor_16) + sizeof(tensors->tensor_17) + sizeof(tensors->tensor_18) + sizeof(tensors->tensor_19) + sizeof(tensors->tensor_20) + sizeof(tensors->tensor_21) + sizeof(tensors->tensor_22) + sizeof(tensors->tensor_23) + sizeof(tensors->tensor_24) + sizeof(tensors->tensor_25) + sizeof(tensors->tensor_26) + sizeof(tensors->tensor_27) + sizeof(tensors->tensor_28) + sizeof(tensors->tensor_29) + sizeof(tensors->tensor_30) + sizeof(tensors->tensor_31) + sizeof(tensors->tensor_32) + sizeof(tensors->tensor_33),
sizeof(tensors->tensor_35) + sizeof(tensors->tensor_0) + sizeof(tensors->tensor_1) + sizeof(tensors->tensor_2) + sizeof(tensors->tensor_3) + sizeof(tensors->tensor_4) + sizeof(tensors->tensor_5) + sizeof(tensors->tensor_6) + sizeof(tensors->tensor_7) + sizeof(tensors->tensor_8) + sizeof(tensors->tensor_9) + sizeof(tensors->tensor_10) + sizeof(tensors->tensor_11) + sizeof(tensors->tensor_12) + sizeof(tensors->tensor_13) + sizeof(tensors->tensor_14) + sizeof(tensors->tensor_15) + sizeof(tensors->tensor_16) + sizeof(tensors->tensor_17) + sizeof(tensors->tensor_18) + sizeof(tensors->tensor_19) + sizeof(tensors->tensor_20) + sizeof(tensors->tensor_21) + sizeof(tensors->tensor_22) + sizeof(tensors->tensor_23) + sizeof(tensors->tensor_24) + sizeof(tensors->tensor_25) + sizeof(tensors->tensor_26) + sizeof(tensors->tensor_27) + sizeof(tensors->tensor_28) + sizeof(tensors->tensor_29) + sizeof(tensors->tensor_30) + sizeof(tensors->tensor_31) + sizeof(tensors->tensor_32) + sizeof(tensors->tensor_33) + sizeof(tensors->tensor_34),
sizeof(tensors->tensor_36) + sizeof(tensors->tensor_0) + sizeof(tensors->tensor_1) + sizeof(tensors->tensor_2) + sizeof(tensors->tensor_3) + sizeof(tensors->tensor_4) + sizeof(tensors->tensor_5) + sizeof(tensors->tensor_6) + sizeof(tensors->tensor_7) + sizeof(tensors->tensor_8) + sizeof(tensors->tensor_9) + sizeof(tensors->tensor_10) + sizeof(tensors->tensor_11) + sizeof(tensors->tensor_12) + sizeof(tensors->tensor_13) + sizeof(tensors->tensor_14) + sizeof(tensors->tensor_15) + sizeof(tensors->tensor_16) + sizeof(tensors->tensor_17) + sizeof(tensors->tensor_18) + sizeof(tensors->tensor_19) + sizeof(tensors->tensor_20) + sizeof(tensors->tensor_21) + sizeof(tensors->tensor_22) + sizeof(tensors->tensor_23) + sizeof(tensors->tensor_24) + sizeof(tensors->tensor_25) + sizeof(tensors->tensor_26) + sizeof(tensors->tensor_27) + sizeof(tensors->tensor_28) + sizeof(tensors->tensor_29) + sizeof(tensors->tensor_30) + sizeof(tensors->tensor_31) + sizeof(tensors->tensor_32) + sizeof(tensors->tensor_33) + sizeof(tensors->tensor_34) + sizeof(tensors->tensor_35),
sizeof(tensors->tensor_37) + sizeof(tensors->tensor_0) + sizeof(tensors->tensor_1) + sizeof(tensors->tensor_2) + sizeof(tensors->tensor_3) + sizeof(tensors->tensor_4) + sizeof(tensors->tensor_5) + sizeof(tensors->tensor_6) + sizeof(tensors->tensor_7) + sizeof(tensors->tensor_8) + sizeof(tensors->tensor_9) + sizeof(tensors->tensor_10) + sizeof(tensors->tensor_11) + sizeof(tensors->tensor_12) + sizeof(tensors->tensor_13) + sizeof(tensors->tensor_14) + sizeof(tensors->tensor_15) + sizeof(tensors->tensor_16) + sizeof(tensors->tensor_17) + sizeof(tensors->tensor_18) + sizeof(tensors->tensor_19) + sizeof(tensors->tensor_20) + sizeof(tensors->tensor_21) + sizeof(tensors->tensor_22) + sizeof(tensors->tensor_23) + sizeof(tensors->tensor_24) + sizeof(tensors->tensor_25) + sizeof(tensors->tensor_26) + sizeof(tensors->tensor_27) + sizeof(tensors->tensor_28) + sizeof(tensors->tensor_29) + sizeof(tensors->tensor_30) + sizeof(tensors->tensor_31) + sizeof(tensors->tensor_32) + sizeof(tensors->tensor_33) + sizeof(tensors->tensor_34) + sizeof(tensors->tensor_35) + sizeof(tensors->tensor_36),
sizeof(tensors->tensor_38) + sizeof(tensors->tensor_0) + sizeof(tensors->tensor_1) + sizeof(tensors->tensor_2) + sizeof(tensors->tensor_3) + sizeof(tensors->tensor_4) + sizeof(tensors->tensor_5) + sizeof(tensors->tensor_6) + sizeof(tensors->tensor_7) + sizeof(tensors->tensor_8) + sizeof(tensors->tensor_9) + sizeof(tensors->tensor_10) + sizeof(tensors->tensor_11) + sizeof(tensors->tensor_12) + sizeof(tensors->tensor_13) + sizeof(tensors->tensor_14) + sizeof(tensors->tensor_15) + sizeof(tensors->tensor_16) + sizeof(tensors->tensor_17) + sizeof(tensors->tensor_18) + sizeof(tensors->tensor_19) + sizeof(tensors->tensor_20) + sizeof(tensors->tensor_21) + sizeof(tensors->tensor_22) + sizeof(tensors->tensor_23) + sizeof(tensors->tensor_24) + sizeof(tensors->tensor_25) + sizeof(tensors->tensor_26) + sizeof(tensors->tensor_27) + sizeof(tensors->tensor_28) + sizeof(tensors->tensor_29) + sizeof(tensors->tensor_30) + sizeof(tensors->tensor_31) + sizeof(tensors->tensor_32) + sizeof(tensors->tensor_33) + sizeof(tensors->tensor_34) + sizeof(tensors->tensor_35) + sizeof(tensors->tensor_36) + sizeof(tensors->tensor_37),
sizeof(tensors->tensor_39) + sizeof(tensors->tensor_0) + sizeof(tensors->tensor_1) + sizeof(tensors->tensor_2) + sizeof(tensors->tensor_3) + sizeof(tensors->tensor_4) + sizeof(tensors->tensor_5) + sizeof(tensors->tensor_6) + sizeof(tensors->tensor_7) + sizeof(tensors->tensor_8) + sizeof(tensors->tensor_9) + sizeof(tensors->tensor_10) + sizeof(tensors->tensor_11) + sizeof(tensors->tensor_12) + sizeof(tensors->tensor_13) + sizeof(tensors->tensor_14) + sizeof(tensors->tensor_15) + sizeof(tensors->tensor_16) + sizeof(tensors->tensor_17) + sizeof(tensors->tensor_18) + sizeof(tensors->tensor_19) + sizeof(tensors->tensor_20) + sizeof(tensors->tensor_21) + sizeof(tensors->tensor_22) + sizeof(tensors->tensor_23) + sizeof(tensors->tensor_24) + sizeof(tensors->tensor_25) + sizeof(tensors->tensor_26) + sizeof(tensors->tensor_27) + sizeof(tensors->tensor_28) + sizeof(tensors->tensor_29) + sizeof(tensors->tensor_30) + sizeof(tensors->tensor_31) + sizeof(tensors->tensor_32) + sizeof(tensors->tensor_33) + sizeof(tensors->tensor_34) + sizeof(tensors->tensor_35) + sizeof(tensors->tensor_36) + sizeof(tensors->tensor_37) + sizeof(tensors->tensor_38),
sizeof(tensors->tensor_40) + sizeof(tensors->tensor_0) + sizeof(tensors->tensor_1) + sizeof(tensors->tensor_2) + sizeof(tensors->tensor_3) + sizeof(tensors->tensor_4) + sizeof(tensors->tensor_5) + sizeof(tensors->tensor_6) + sizeof(tensors->tensor_7) + sizeof(tensors->tensor_8) + sizeof(tensors->tensor_9) + sizeof(tensors->tensor_10) + sizeof(tensors->tensor_11) + sizeof(tensors->tensor_12) + sizeof(tensors->tensor_13) + sizeof(tensors->tensor_14) + sizeof(tensors->tensor_15) + sizeof(tensors->tensor_16) + sizeof(tensors->tensor_17) + sizeof(tensors->tensor_18) + sizeof(tensors->tensor_19) + sizeof(tensors->tensor_20) + sizeof(tensors->tensor_21) + sizeof(tensors->tensor_22) + sizeof(tensors->tensor_23) + sizeof(tensors->tensor_24) + sizeof(tensors->tensor_25) + sizeof(tensors->tensor_26) + sizeof(tensors->tensor_27) + sizeof(tensors->tensor_28) + sizeof(tensors->tensor_29) + sizeof(tensors->tensor_30) + sizeof(tensors->tensor_31) + sizeof(tensors->tensor_32) + sizeof(tensors->tensor_33) + sizeof(tensors->tensor_34) + sizeof(tensors->tensor_35) + sizeof(tensors->tensor_36) + sizeof(tensors->tensor_37) + sizeof(tensors->tensor_38) + sizeof(tensors->tensor_39),
sizeof(tensors->tensor_41) + sizeof(tensors->tensor_0) + sizeof(tensors->tensor_1) + sizeof(tensors->tensor_2) + sizeof(tensors->tensor_3) + sizeof(tensors->tensor_4) + sizeof(tensors->tensor_5) + sizeof(tensors->tensor_6) + sizeof(tensors->tensor_7) + sizeof(tensors->tensor_8) + sizeof(tensors->tensor_9) + sizeof(tensors->tensor_10) + sizeof(tensors->tensor_11) + sizeof(tensors->tensor_12) + sizeof(tensors->tensor_13) + sizeof(tensors->tensor_14) + sizeof(tensors->tensor_15) + sizeof(tensors->tensor_16) + sizeof(tensors->tensor_17) + sizeof(tensors->tensor_18) + sizeof(tensors->tensor_19) + sizeof(tensors->tensor_20) + sizeof(tensors->tensor_21) + sizeof(tensors->tensor_22) + sizeof(tensors->tensor_23) + sizeof(tensors->tensor_24) + sizeof(tensors->tensor_25) + sizeof(tensors->tensor_26) + sizeof(tensors->tensor_27) + sizeof(tensors->tensor_28) + sizeof(tensors->tensor_29) + sizeof(tensors->tensor_30) + sizeof(tensors->tensor_31) + sizeof(tensors->tensor_32) + sizeof(tensors->tensor_33) + sizeof(tensors->tensor_34) + sizeof(tensors->tensor_35) + sizeof(tensors->tensor_36) + sizeof(tensors->tensor_37) + sizeof(tensors->tensor_38) + sizeof(tensors->tensor_39) + sizeof(tensors->tensor_40)};
    return (uint8_t *)tensors + sizes[index];
}

void AUDIO_PREPROCESSOR_get_tensor_size_0(AUDIO_PREPROCESSOR_Tensors *tensors, cmsis_nn_dims *dims){
    dims->n = ((AUDIO_PREPROCESSOR_Tensor_0 *)AUDIO_PREPROCESSOR_get_tensor(tensors, 0))->shape[0];
    dims->h = ((AUDIO_PREPROCESSOR_Tensor_0 *)AUDIO_PREPROCESSOR_get_tensor(tensors, 0))->shape[1];
}

void AUDIO_PREPROCESSOR_get_tensor_size_1(AUDIO_PREPROCESSOR_Tensors *tensors, cmsis_nn_dims *dims){
    dims->n = ((AUDIO_PREPROCESSOR_Tensor_1 *)AUDIO_PREPROCESSOR_get_tensor(tensors, 1))->shape[0];
}

void AUDIO_PREPROCESSOR_get_tensor_size_2(AUDIO_PREPROCESSOR_Tensors *tensors, cmsis_nn_dims *dims){
    dims->n = ((AUDIO_PREPROCESSOR_Tensor_2 *)AUDIO_PREPROCESSOR_get_tensor(tensors, 2))->shape[0];
}

void AUDIO_PREPROCESSOR_get_tensor_size_3(AUDIO_PREPROCESSOR_Tensors *tensors, cmsis_nn_dims *dims){
    dims->n = ((AUDIO_PREPROCESSOR_Tensor_3 *)AUDIO_PREPROCESSOR_get_tensor(tensors, 3))->shape[0];
}

void AUDIO_PREPROCESSOR_get_tensor_size_4(AUDIO_PREPROCESSOR_Tensors *tensors, cmsis_nn_dims *dims){
}

void AUDIO_PREPROCESSOR_get_tensor_size_5(AUDIO_PREPROCESSOR_Tensors *tensors, cmsis_nn_dims *dims){
    dims->n = ((AUDIO_PREPROCESSOR_Tensor_5 *)AUDIO_PREPROCESSOR_get_tensor(tensors, 5))->shape[0];
}

void AUDIO_PREPROCESSOR_get_tensor_size_6(AUDIO_PREPROCESSOR_Tensors *tensors, cmsis_nn_dims *dims){
    dims->n = ((AUDIO_PREPROCESSOR_Tensor_6 *)AUDIO_PREPROCESSOR_get_tensor(tensors, 6))->shape[0];
}

void AUDIO_PREPROCESSOR_get_tensor_size_7(AUDIO_PREPROCESSOR_Tensors *tensors, cmsis_nn_dims *dims){
    dims->n = ((AUDIO_PREPROCESSOR_Tensor_7 *)AUDIO_PREPROCESSOR_get_tensor(tensors, 7))->shape[0];
}

void AUDIO_PREPROCESSOR_get_tensor_size_8(AUDIO_PREPROCESSOR_Tensors *tensors, cmsis_nn_dims *dims){
    dims->n = ((AUDIO_PREPROCESSOR_Tensor_8 *)AUDIO_PREPROCESSOR_get_tensor(tensors, 8))->shape[0];
}

void AUDIO_PREPROCESSOR_get_tensor_size_9(AUDIO_PREPROCESSOR_Tensors *tensors, cmsis_nn_dims *dims){
    dims->n = ((AUDIO_PREPROCESSOR_Tensor_9 *)AUDIO_PREPROCESSOR_get_tensor(tensors, 9))->shape[0];
}

void AUDIO_PREPROCESSOR_get_tensor_size_10(AUDIO_PREPROCESSOR_Tensors *tensors, cmsis_nn_dims *dims){
    dims->n = ((AUDIO_PREPROCESSOR_Tensor_10 *)AUDIO_PREPROCESSOR_get_tensor(tensors, 10))->shape[0];
}

void AUDIO_PREPROCESSOR_get_tensor_size_11(AUDIO_PREPROCESSOR_Tensors *tensors, cmsis_nn_dims *dims){
    dims->n = ((AUDIO_PREPROCESSOR_Tensor_11 *)AUDIO_PREPROCESSOR_get_tensor(tensors, 11))->shape[0];
}

void AUDIO_PREPROCESSOR_get_tensor_size_12(AUDIO_PREPROCESSOR_Tensors *tensors, cmsis_nn_dims *dims){
    dims->n = ((AUDIO_PREPROCESSOR_Tensor_12 *)AUDIO_PREPROCESSOR_get_tensor(tensors, 12))->shape[0];
}

void AUDIO_PREPROCESSOR_get_tensor_size_13(AUDIO_PREPROCESSOR_Tensors *tensors, cmsis_nn_dims *dims){
    dims->n = ((AUDIO_PREPROCESSOR_Tensor_13 *)AUDIO_PREPROCESSOR_get_tensor(tensors, 13))->shape[0];
}

void AUDIO_PREPROCESSOR_get_tensor_size_14(AUDIO_PREPROCESSOR_Tensors *tensors, cmsis_nn_dims *dims){
}

void AUDIO_PREPROCESSOR_get_tensor_size_15(AUDIO_PREPROCESSOR_Tensors *tensors, cmsis_nn_dims *dims){
    dims->n = ((AUDIO_PREPROCESSOR_Tensor_15 *)AUDIO_PREPROCESSOR_get_tensor(tensors, 15))->shape[0];
}

void AUDIO_PREPROCESSOR_get_tensor_size_16(AUDIO_PREPROCESSOR_Tensors *tensors, cmsis_nn_dims *dims){
}

void AUDIO_PREPROCESSOR_get_tensor_size_17(AUDIO_PREPROCESSOR_Tensors *tensors, cmsis_nn_dims *dims){
}

void AUDIO_PREPROCESSOR_get_tensor_size_18(AUDIO_PREPROCESSOR_Tensors *tensors, cmsis_nn_dims *dims){
}

void AUDIO_PREPROCESSOR_get_tensor_size_19(AUDIO_PREPROCESSOR_Tensors *tensors, cmsis_nn_dims *dims){
    dims->n = ((AUDIO_PREPROCESSOR_Tensor_19 *)AUDIO_PREPROCESSOR_get_tensor(tensors, 19))->shape[0];
    dims->h = ((AUDIO_PREPROCESSOR_Tensor_19 *)AUDIO_PREPROCESSOR_get_tensor(tensors, 19))->shape[1];
}

void AUDIO_PREPROCESSOR_get_tensor_size_20(AUDIO_PREPROCESSOR_Tensors *tensors, cmsis_nn_dims *dims){
    dims->n = ((AUDIO_PREPROCESSOR_Tensor_20 *)AUDIO_PREPROCESSOR_get_tensor(tensors, 20))->shape[0];
}

void AUDIO_PREPROCESSOR_get_tensor_size_21(AUDIO_PREPROCESSOR_Tensors *tensors, cmsis_nn_dims *dims){
    dims->n = ((AUDIO_PREPROCESSOR_Tensor_21 *)AUDIO_PREPROCESSOR_get_tensor(tensors, 21))->shape[0];
}

void AUDIO_PREPROCESSOR_get_tensor_size_22(AUDIO_PREPROCESSOR_Tensors *tensors, cmsis_nn_dims *dims){
}

void AUDIO_PREPROCESSOR_get_tensor_size_23(AUDIO_PREPROCESSOR_Tensors *tensors, cmsis_nn_dims *dims){
    dims->n = ((AUDIO_PREPROCESSOR_Tensor_23 *)AUDIO_PREPROCESSOR_get_tensor(tensors, 23))->shape[0];
}

void AUDIO_PREPROCESSOR_get_tensor_size_24(AUDIO_PREPROCESSOR_Tensors *tensors, cmsis_nn_dims *dims){
    dims->n = ((AUDIO_PREPROCESSOR_Tensor_24 *)AUDIO_PREPROCESSOR_get_tensor(tensors, 24))->shape[0];
}

void AUDIO_PREPROCESSOR_get_tensor_size_25(AUDIO_PREPROCESSOR_Tensors *tensors, cmsis_nn_dims *dims){
    dims->n = ((AUDIO_PREPROCESSOR_Tensor_25 *)AUDIO_PREPROCESSOR_get_tensor(tensors, 25))->shape[0];
}

void AUDIO_PREPROCESSOR_get_tensor_size_26(AUDIO_PREPROCESSOR_Tensors *tensors, cmsis_nn_dims *dims){
    dims->n = ((AUDIO_PREPROCESSOR_Tensor_26 *)AUDIO_PREPROCESSOR_get_tensor(tensors, 26))->shape[0];
}

void AUDIO_PREPROCESSOR_get_tensor_size_27(AUDIO_PREPROCESSOR_Tensors *tensors, cmsis_nn_dims *dims){
    dims->n = ((AUDIO_PREPROCESSOR_Tensor_27 *)AUDIO_PREPROCESSOR_get_tensor(tensors, 27))->shape[0];
}

void AUDIO_PREPROCESSOR_get_tensor_size_28(AUDIO_PREPROCESSOR_Tensors *tensors, cmsis_nn_dims *dims){
    dims->n = ((AUDIO_PREPROCESSOR_Tensor_28 *)AUDIO_PREPROCESSOR_get_tensor(tensors, 28))->shape[0];
}

void AUDIO_PREPROCESSOR_get_tensor_size_29(AUDIO_PREPROCESSOR_Tensors *tensors, cmsis_nn_dims *dims){
    dims->n = ((AUDIO_PREPROCESSOR_Tensor_29 *)AUDIO_PREPROCESSOR_get_tensor(tensors, 29))->shape[0];
}

void AUDIO_PREPROCESSOR_get_tensor_size_30(AUDIO_PREPROCESSOR_Tensors *tensors, cmsis_nn_dims *dims){
    dims->n = ((AUDIO_PREPROCESSOR_Tensor_30 *)AUDIO_PREPROCESSOR_get_tensor(tensors, 30))->shape[0];
}

void AUDIO_PREPROCESSOR_get_tensor_size_31(AUDIO_PREPROCESSOR_Tensors *tensors, cmsis_nn_dims *dims){
    dims->n = ((AUDIO_PREPROCESSOR_Tensor_31 *)AUDIO_PREPROCESSOR_get_tensor(tensors, 31))->shape[0];
}

void AUDIO_PREPROCESSOR_get_tensor_size_32(AUDIO_PREPROCESSOR_Tensors *tensors, cmsis_nn_dims *dims){
    dims->n = ((AUDIO_PREPROCESSOR_Tensor_32 *)AUDIO_PREPROCESSOR_get_tensor(tensors, 32))->shape[0];
}

void AUDIO_PREPROCESSOR_get_tensor_size_33(AUDIO_PREPROCESSOR_Tensors *tensors, cmsis_nn_dims *dims){
    dims->n = ((AUDIO_PREPROCESSOR_Tensor_33 *)AUDIO_PREPROCESSOR_get_tensor(tensors, 33))->shape[0];
}

void AUDIO_PREPROCESSOR_get_tensor_size_34(AUDIO_PREPROCESSOR_Tensors *tensors, cmsis_nn_dims *dims){
    dims->n = ((AUDIO_PREPROCESSOR_Tensor_34 *)AUDIO_PREPROCESSOR_get_tensor(tensors, 34))->shape[0];
}

void AUDIO_PREPROCESSOR_get_tensor_size_35(AUDIO_PREPROCESSOR_Tensors *tensors, cmsis_nn_dims *dims){
    dims->n = ((AUDIO_PREPROCESSOR_Tensor_35 *)AUDIO_PREPROCESSOR_get_tensor(tensors, 35))->shape[0];
}

void AUDIO_PREPROCESSOR_get_tensor_size_36(AUDIO_PREPROCESSOR_Tensors *tensors, cmsis_nn_dims *dims){
    dims->n = ((AUDIO_PREPROCESSOR_Tensor_36 *)AUDIO_PREPROCESSOR_get_tensor(tensors, 36))->shape[0];
}

void AUDIO_PREPROCESSOR_get_tensor_size_37(AUDIO_PREPROCESSOR_Tensors *tensors, cmsis_nn_dims *dims){
    dims->n = ((AUDIO_PREPROCESSOR_Tensor_37 *)AUDIO_PREPROCESSOR_get_tensor(tensors, 37))->shape[0];
}

void AUDIO_PREPROCESSOR_get_tensor_size_38(AUDIO_PREPROCESSOR_Tensors *tensors, cmsis_nn_dims *dims){
    dims->n = ((AUDIO_PREPROCESSOR_Tensor_38 *)AUDIO_PREPROCESSOR_get_tensor(tensors, 38))->shape[0];
}

void AUDIO_PREPROCESSOR_get_tensor_size_39(AUDIO_PREPROCESSOR_Tensors *tensors, cmsis_nn_dims *dims){
    dims->n = ((AUDIO_PREPROCESSOR_Tensor_39 *)AUDIO_PREPROCESSOR_get_tensor(tensors, 39))->shape[0];
}

void AUDIO_PREPROCESSOR_get_tensor_size_40(AUDIO_PREPROCESSOR_Tensors *tensors, cmsis_nn_dims *dims){
    dims->n = ((AUDIO_PREPROCESSOR_Tensor_40 *)AUDIO_PREPROCESSOR_get_tensor(tensors, 40))->shape[0];
}

void AUDIO_PREPROCESSOR_get_tensor_size_41(AUDIO_PREPROCESSOR_Tensors *tensors, cmsis_nn_dims *dims){
    dims->n = ((AUDIO_PREPROCESSOR_Tensor_41 *)AUDIO_PREPROCESSOR_get_tensor(tensors, 41))->shape[0];
}

void AUDIO_PREPROCESSOR_get_tensor_size_42(AUDIO_PREPROCESSOR_Tensors *tensors, cmsis_nn_dims *dims){
    dims->n = ((AUDIO_PREPROCESSOR_Tensor_42 *)AUDIO_PREPROCESSOR_get_tensor(tensors, 42))->shape[0];
}

void AUDIO_PREPROCESSOR_get_tensor_size(AUDIO_PREPROCESSOR_Tensors *tensors, cmsis_nn_dims *dims, int index){
    switch(index){
        case 0:
            AUDIO_PREPROCESSOR_get_tensor_size_0(tensors, dims);
            break;
        case 1:
            AUDIO_PREPROCESSOR_get_tensor_size_1(tensors, dims);
            break;
        case 2:
            AUDIO_PREPROCESSOR_get_tensor_size_2(tensors, dims);
            break;
        case 3:
            AUDIO_PREPROCESSOR_get_tensor_size_3(tensors, dims);
            break;
        case 4:
            AUDIO_PREPROCESSOR_get_tensor_size_4(tensors, dims);
            break;
        case 5:
            AUDIO_PREPROCESSOR_get_tensor_size_5(tensors, dims);
            break;
        case 6:
            AUDIO_PREPROCESSOR_get_tensor_size_6(tensors, dims);
            break;
        case 7:
            AUDIO_PREPROCESSOR_get_tensor_size_7(tensors, dims);
            break;
        case 8:
            AUDIO_PREPROCESSOR_get_tensor_size_8(tensors, dims);
            break;
        case 9:
            AUDIO_PREPROCESSOR_get_tensor_size_9(tensors, dims);
            break;
        case 10:
            AUDIO_PREPROCESSOR_get_tensor_size_10(tensors, dims);
            break;
        case 11:
            AUDIO_PREPROCESSOR_get_tensor_size_11(tensors, dims);
            break;
        case 12:
            AUDIO_PREPROCESSOR_get_tensor_size_12(tensors, dims);
            break;
        case 13:
            AUDIO_PREPROCESSOR_get_tensor_size_13(tensors, dims);
            break;
        case 14:
            AUDIO_PREPROCESSOR_get_tensor_size_14(tensors, dims);
            break;
        case 15:
            AUDIO_PREPROCESSOR_get_tensor_size_15(tensors, dims);
            break;
        case 16:
            AUDIO_PREPROCESSOR_get_tensor_size_16(tensors, dims);
            break;
        case 17:
            AUDIO_PREPROCESSOR_get_tensor_size_17(tensors, dims);
            break;
        case 18:
            AUDIO_PREPROCESSOR_get_tensor_size_18(tensors, dims);
            break;
        case 19:
            AUDIO_PREPROCESSOR_get_tensor_size_19(tensors, dims);
            break;
        case 20:
            AUDIO_PREPROCESSOR_get_tensor_size_20(tensors, dims);
            break;
        case 21:
            AUDIO_PREPROCESSOR_get_tensor_size_21(tensors, dims);
            break;
        case 22:
            AUDIO_PREPROCESSOR_get_tensor_size_22(tensors, dims);
            break;
        case 23:
            AUDIO_PREPROCESSOR_get_tensor_size_23(tensors, dims);
            break;
        case 24:
            AUDIO_PREPROCESSOR_get_tensor_size_24(tensors, dims);
            break;
        case 25:
            AUDIO_PREPROCESSOR_get_tensor_size_25(tensors, dims);
            break;
        case 26:
            AUDIO_PREPROCESSOR_get_tensor_size_26(tensors, dims);
            break;
        case 27:
            AUDIO_PREPROCESSOR_get_tensor_size_27(tensors, dims);
            break;
        case 28:
            AUDIO_PREPROCESSOR_get_tensor_size_28(tensors, dims);
            break;
        case 29:
            AUDIO_PREPROCESSOR_get_tensor_size_29(tensors, dims);
            break;
        case 30:
            AUDIO_PREPROCESSOR_get_tensor_size_30(tensors, dims);
            break;
        case 31:
            AUDIO_PREPROCESSOR_get_tensor_size_31(tensors, dims);
            break;
        case 32:
            AUDIO_PREPROCESSOR_get_tensor_size_32(tensors, dims);
            break;
        case 33:
            AUDIO_PREPROCESSOR_get_tensor_size_33(tensors, dims);
            break;
        case 34:
            AUDIO_PREPROCESSOR_get_tensor_size_34(tensors, dims);
            break;
        case 35:
            AUDIO_PREPROCESSOR_get_tensor_size_35(tensors, dims);
            break;
        case 36:
            AUDIO_PREPROCESSOR_get_tensor_size_36(tensors, dims);
            break;
        case 37:
            AUDIO_PREPROCESSOR_get_tensor_size_37(tensors, dims);
            break;
        case 38:
            AUDIO_PREPROCESSOR_get_tensor_size_38(tensors, dims);
            break;
        case 39:
            AUDIO_PREPROCESSOR_get_tensor_size_39(tensors, dims);
            break;
        case 40:
            AUDIO_PREPROCESSOR_get_tensor_size_40(tensors, dims);
            break;
        case 41:
            AUDIO_PREPROCESSOR_get_tensor_size_41(tensors, dims);
            break;
        case 42:
            AUDIO_PREPROCESSOR_get_tensor_size_42(tensors, dims);
            break;
    }
}

