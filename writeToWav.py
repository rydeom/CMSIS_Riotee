from scipy.io.wavfile import write
import numpy as np
import struct

data = []

with open('screenlog.0', 'rb') as f:
    while True:
        c = f.read(1)
        if not c:
            break
        if c == b'U':
            if f.read(1) == b'U':
                binary_str = f.read(2000)
                data.extend(list(struct.unpack('<1000h', binary_str)))
                # data.append(struct.unpack('<360h', binary_str))
    print(len(data))
    samplerate = 8000
    write("example.wav", samplerate, np.asarray(data, dtype=np.int16))