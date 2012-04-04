#include "main.h"

#include "segment/segment.h"

// projector switch on; project advance; camera switch on; camera shutter;
#define T0 255
#define T1 2048
#define T2 255
#define T3 512


int main() {
	
	shift_init();
	button_init(&PORT_BUTTON_PLAY_PAUSE, PIN_BUTTON_PLAY_PAUSE, &PORT_BUTTON_SLIDE_COUNT, PIN_BUTTON_SLIDE_COUNT);
	timer_init();
	sei();
	
	uint8_t step = 0;
	uint16_t delay = T0;
	uint8_t play = 0;
	uint8_t slide_count = 80;
	uint32_t prev_ms = 0;
	uint32_t ms = 0;
	
	uint8_t digit = 0;
	uint8_t segments[4];

	// DDR output
	*(&PORT_RELAY_1 - 0x1) |= _BV(PIN_RELAY_1);
	*(&PORT_RELAY_2 - 0x1) |= _BV(PIN_RELAY_2);
	
	while(1) {
		ms = timer_millis();
		
		if (ms != prev_ms) {
			uint8_t temp = slide_count;
			uint8_t a = 0;
			uint8_t b = 0;
			uint8_t c = 0;
			while (temp > 99) {
				a += 1;
				temp -= 100;
			}
			while (temp > 9) {
				b += 1;
				temp -= 10;
			}
			c = temp;

			if (a == 0) {
				segments[1] = segment_character(' ');
				if (b == 0) {
					segments[2] = segment_character(' ');
				}
			}
			segments[1] = segment_decimal(a);
			segments[2] = segment_decimal(b);
			segments[3] = segment_decimal(c);
			
			if (play) {
				if (delay > 0) delay--;
				segments[0] = segment_character('^');
		
				if (step == 0) {
					PORT_RELAY_1 |= _BV(PIN_RELAY_1);
					PORT_RELAY_2 &= ~_BV(PIN_RELAY_2);
					if (delay == 0) {
						step++;
						delay = T1;
					}
				} else if (step == 1) {
					PORT_RELAY_1 &= ~_BV(PIN_RELAY_1);
					PORT_RELAY_2 &= ~_BV(PIN_RELAY_2);
					if (delay == 0) {
						step++;
						delay = T2;
					}
				} else if (step == 2) {
					PORT_RELAY_1 &= ~_BV(PIN_RELAY_1);
					PORT_RELAY_2 |= _BV(PIN_RELAY_2);
					if (delay == 0) {
						step++;
						delay = T3;
					}
				} else {
					PORT_RELAY_1 &= ~_BV(PIN_RELAY_1);
					PORT_RELAY_2 &= ~_BV(PIN_RELAY_2);
					if (delay == 0) {
						slide_count--;
						step = 0;
						delay = T0;
						
						if (slide_count == 0) {
							play = 0;
						}
					}
				}
			} else {
				PORT_RELAY_1 &= ~_BV(PIN_RELAY_1);
				PORT_RELAY_2 &= ~_BV(PIN_RELAY_2);
				segments[0] = segment_character('_');
			}
			
			shift_set(segments[digit], digit++);
			if (digit == 4) digit = 0;

			button_sample();
			uint8_t changed = button_changed();
			uint8_t state = button_state();
			if ((changed & _BV(BUTTON_PLAY_PAUSE)) && (state & _BV(BUTTON_PLAY_PAUSE))) {
				play = ~play;
			}
			if ((changed & _BV(BUTTON_SLIDE_COUNT)) && (state & _BV(BUTTON_SLIDE_COUNT))) {
				play = 0;
				
				if (slide_count < 36) {
					slide_count = 36;
				} else if (slide_count < 80) {
					slide_count = 80;
				} else if (slide_count < 144) {
					slide_count = 144;
				} else {
					slide_count = 36;
				}
			}
		}
				
		prev_ms = ms;
	}
}