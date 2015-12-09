#ifndef VOLUME_PAD_H
#define VOLUME_PAD_H

#include <Wire.h>
#include <EEPROM/EEPROM.h>

#include "../DrumMaster.h"
#include "../hardware.h"
#include "Menu.h"

namespace digitalcave {

	class VolumePad : public Menu {
	
		private:
			
		public:
			static void loadPadVolumesFromEeprom();
			static void savePadVolumesToEeprom();
			
			int16_t value;
			uint8_t pad;

			VolumePad();
			Menu* handleAction();
	};
}

#endif