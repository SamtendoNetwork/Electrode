//
// Created by ash on 21/11/24.
//

#include "lang.h"

config_strings get_config_strings(nn::swkbd::LanguageType language) {
    switch (language) {
        case nn::swkbd::LanguageType::English:
        default: return {
#include "en_US.lang"
            };
    }
}
