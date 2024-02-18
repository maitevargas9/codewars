export const reverseSeq = (n: number): number[] => {
    let result : number[] = [];
    for (let i = n; i > 0; i--) {
        result.push(i);
    }
    return result;
};