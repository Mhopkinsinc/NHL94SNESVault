import { readFileSync, writeFileSync } from 'fs';
import { decompressFB30 } from '../tmpbuild/decompress-fb30.js';

const compressedData = new Uint8Array(readFileSync('c:/Users/mhopkins/Desktop/banner_text_changes/setup_logo_seattle_fb30.bin'));
try {
    const result = decompressFB30(compressedData);
    console.log('Decompressed size:', result.data.length);
    const data = result.data;
    const pointerTableCount = data[0] | (data[1] << 8);
    console.log('Pointer table entry count:', pointerTableCount);
    
    if (pointerTableCount > 28) {
        const offset0 = data[2] | (data[3] << 8);
        const offset28 = data[2 + 28 * 2] | (data[2 + 28 * 2 + 1] << 8);
        console.log('Pointer 0 (Slot 0):', '0x' + offset0.toString(16));
        console.log('Pointer 28 (Slot 28):', '0x' + offset28.toString(16));
        
        // Find lengths of the slots
        const nextOffset0 = data[4] | (data[5] << 8);
        const nextOffset28 = (28 + 1 < pointerTableCount) ? (data[2 + (28 + 1) * 2] | (data[2 + (28 + 1) * 2 + 1] << 8)) : data.length;
        
        const len0 = nextOffset0 - offset0;
        const len28 = nextOffset28 - offset28;
        
        console.log('Slot 0 length:', len0);
        console.log('Slot 28 length:', len28);
        
        const frame0 = data.slice(offset0, offset0 + len0);
        const frame28 = data.slice(offset28, offset28 + len28);
        
        const isDuplicate = (len0 === len28) && frame0.every((val, index) => val === frame28[index]);
        console.log('Slot 28 is duplicate of Slot 0:', isDuplicate);
    } else {
        console.log('Insufficient pointer table entries:', pointerTableCount);
    }
} catch (e) {
    console.error('Error during decompression:', e);
}
