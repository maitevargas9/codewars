/*
Description

The rgb function is incomplete. Complete it so that passing in RGB decimal values will result in a hexadecimal representation 
being returned. Valid decimal values for RGB are 0 - 255. Any values that fall out of that range must be rounded to the closest 
valid value.

Note: Your answer should always be 6 characters long, the shorthand with 3 will not work here.

Examples (input --> output):
255, 255, 255 --> "FFFFFF"
255, 255, 300 --> "FFFFFF"
0, 0, 0       --> "000000"
148, 0, 211   --> "9400D3"
*/

export function rgb(r: number, g: number, b: number): string {
  function decToHex(c: number): string {
    return c > 255
      ? "FF"
      : c < 0
      ? "00"
      : c.toString(16).padStart(2, "0").toUpperCase();
  }
  return decToHex(r) + decToHex(g) + decToHex(b);
}
