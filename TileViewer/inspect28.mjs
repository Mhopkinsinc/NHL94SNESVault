import { readFileSync } from 'fs';
import { decompressFB30 } from '../tmpbuild/decompress-fb30.js';

const filePath = process.argv[2];
const compressedData = new Uint8Array(readFileSync(filePath));
try {
    const result = decompressFB30(compressedData);
    const data = result.data;
    console.log('Decompressed size:', data.length);
    
    const pointerTableCount = data[0] | (data[1] << 8);
    console.log('Frame count (Pointer table entry count):', pointerTableCount);

    if (pointerTableCount > 28) {
        const offset0 = data[2] | (data[3] << 8);
        const offset28 = data[2 + 28 * 2] | (data[2 + 28 * 2 + 1] << 8);
        
        console.log('Slot 0 pointer: 0x' + offset0.toString(16));
        console.log('Slot 28 pointer: 0x' + offset28.toString(16));
        console.log('Slot 28 shares slot 0 pointer:', offset0 === offset28);

        const nextOffset28 = (28 + 1 < pointerTableCount) ? (data[2 + (28 + 1) * 2] | (data[2 + (28 + 1) * 2 + 1] << 8)) : data.length;
        const len28 = nextOffset28 - offset28;
        console.log('Slot 28 frame length:', len28);

        const slot28Data = data.slice(offset28, offset28 + len28);
        if (len28 >= 6) {
            const numSprites = slot28Data[0] | (slot28Data[1] << 8);
            const flag = slot28Data[2] | (slot28Data[3] << 8);
            const numTiles = slot28Data[4] | (slot28Data[5] << 8);
            const dataLength = (len28 >= 8) ? (slot28Data[6] | (slot28Data[7] << 8)) : 'N/A';
            
            console.log('Slot 28 header:');
            console.log('  numSprites:', numSprites);
            console.log('  flag:', '0x' + flag.toString(16));
            console.log('  numTiles:', numTiles);
            console.log('  dataLength:', dataLength);
        }
    }
} catch (e) {
    console.error('Error:', e);
}
