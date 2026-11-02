#include <whb/proc.h>
#include <coreinit/thread.h>
#include <vpad/vpad.h>

int main(int argc, char **argv) {
    WHBProcInit();
    VPADInit(); // Inicializar el subsistema del GamePad

    while (WHBProcIsRunning()) {
        VPADData vpad;
        VPADStatus status;
        
        // Leer el estado del GamePad (Control 0)
        VPADRead(VPAD_CHAN_0, &vpad, 1, &status);

        // Si se presiona el botón HOME o PLUS, se sale de la aplicación
        if (vpad.trigger & VPAD_BUTTON_PLUS) {
            break;
        }

        OSSleepTicks(OSMillisecondsToTicks(16)); // ~60 FPS
    }

    WHBProcShutdown();
    return 0;
}