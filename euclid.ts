function gcd(a: number, b: number): number {
    let r = a%b;
    while (r>0) {
        a = b;
        b = r;
        r = a%b;
    }
    return b;
}

console.log(gdc(3395,5432));