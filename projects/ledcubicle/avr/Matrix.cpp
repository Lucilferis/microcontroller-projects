#include "Matrix.h"

using namespace digitalcave;

Matrix::Matrix() {
//	twi_init();
}

Matrix::~Matrix() {
}

void Matrix::setColor(uint8_t gr) {
	color = gr;
}
void Matrix::setColor(uint8_t red, uint8_t green) {
	color = ((green / 16) << 4) | (red / 16);
}

void Matrix::setPixel(int16_t x, int16_t y) {
	changed = 1;
	
	if (x >= MATRIX_WIDTH || y >= MATRIX_HEIGHT || x < 0 || y < 0) return;  //Bounds check

	uint16_t index = x * MATRIX_HEIGHT + y + 1;
	if (overlay == DRAW_OVERLAY_REPLACE){
		buffer[index] = color;
	}
	else if (overlay == DRAW_OVERLAY_OR){
		buffer[index] |= color;
	}
	else if (overlay == DRAW_OVERLAY_NAND){
		buffer[index] &= ~color;
	}
	else if (overlay == DRAW_OVERLAY_XOR){
		buffer[index] ^= color;
	}
}

void Matrix::flush() {
	if (changed) {
		twi_write_to(MATRIX_DRIVER_SLAVE_ADDRESS, buffer, MATRIX_BUFFER_LENGTH, TWI_BLOCK, TWI_STOP);
		changed = 0;
	}
}