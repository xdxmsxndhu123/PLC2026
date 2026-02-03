// Create list of ints from a to b (inclusive)
function arrFunc(a, b) {
    let arr = [];
    for (let i = a; i <= b; i++) {
        arr.push(i);
    }
    return arr;
}

// applicatorFunc: takes a function, start, end, and choice ('s' or 'a')
function applicatorFunc(inpFunc, a, b, choice) {
    const arr = inpFunc(a, b);
    const sum = arr.reduce((accumulator, currentValue) => accumulator + currentValue, 0);

    if (choice === 's') {
        return sum;
    } else if (choice === 'a') {
        return sum / arr.length;
    } else {
        throw new Error("Invalid choice! Use 's' for sum or 'a' for average.");
    }
}

// ===== User Input Section =====
const readline = require('readline').createInterface({
    input: process.stdin,
    output: process.stdout
});

readline.question("Enter start of range (a): ", aStr => {
    readline.question("Enter end of range (b): ", bStr => {
        readline.question("Enter 's' for sum or 'a' for average: ", choiceStr => {
            const a = parseInt(aStr);
            const b = parseInt(bStr);
            const choice = choiceStr.trim().toLowerCase();

            try {
                const result = applicatorFunc(arrFunc, a, b, choice);
                if (choice === 's') {
                    console.log(`Sum = ${result}`);
                } else {
                    console.log(`Average = ${result}`);
                }
            } catch (err) {
                console.error(err.message);
            }

            readline.close();
        });
    });
});