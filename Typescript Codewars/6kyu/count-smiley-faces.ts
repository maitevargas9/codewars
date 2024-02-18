export function countSmileys(arr: string[]): number {
    return arr.filter(face => /[:;]{1}[-~]?[)D]{1}/.test(face)).length;
}