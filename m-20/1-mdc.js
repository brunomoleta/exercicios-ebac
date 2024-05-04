const mdc = (a, b) => {
    const message = 'Por favor inserir apenas números inteiros maiores que 0'
    if (!a || !b) {
        return message
    }
    if (!Number.isInteger(a) || !Number.isInteger(b)) {
        return message
    }
    if (a < 0 || b < 0) {
        return message
    }

    const divisibleA = []
    const divisibleB = []

    for (let i = 1; i <= a; i++) {
        if (a % i === 0) {
            divisibleA.push(i);
        }
    }

    for (let i = 1; i <= b; i++) {
        if (b % i === 0) {
            divisibleB.push(i);
        }
    }

    const mdc = divisibleA.filter(value => divisibleB.includes(value));
    return Math.max(...mdc);
}

console.log(mdc(12350,854120))