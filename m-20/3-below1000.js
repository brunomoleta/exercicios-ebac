const below1000 = () => {
    const arr = []
    for (let i = 0; i < 1000; i++) {
        if (i % 5 === 0 || i % 7 === 0) {
            arr.push(i)
        }
    }
    const sum = arr.reduce((partialSum, currentValue)=> (partialSum + currentValue), 0)

    return sum
}

module.exports = below1000;