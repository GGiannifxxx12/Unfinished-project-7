// kernel.c
void main() {
    char* video_memory = (char*) 0xb8000;
    const char* message = "Welcome to Playboi OS";
    for (int i = 0; message[i] != '\0'; ++i) {
        video_memory[i * 2] = message[i];
        video_memory[i * 2 + 1] = 0x07; // Light grey on black text
    }
}
