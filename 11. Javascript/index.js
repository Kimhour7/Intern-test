function countWorkingDays(year) {
    const holidays = [
        `${year}-01-07`, `${year}-04-13`, 
        `${year}-04-14`, `${year}-04-15`, `${year}-11-09`
    ];

    let days = 0;
    const start = new Date(year, 0, 1);
    const end = new Date(year, 11, 31);

    for (let d = new Date(start); d <= end; d.setDate(d.getDate() + 1)) {
        const day = d.getDay();
        const dateStr = d.toISOString().split('T')[0];
    
        if (holidays.includes(dateStr) || day === 0) continue;
        days += day === 6 ? 0.5 : 1;
    }
    return days;
}

const year = 2024;
console.log(`Working days in ${year}: ${countWorkingDays(year)}`);