const words = ['cook', 'save', 'taste', 'aves', 'vase', 'state', 'map'];
function groupAnagrams(words) {
    const anagramGroups = {};

    for (let word of words) {
        const sortedWord = word.split('').sort().join('');
        if (!anagramGroups[sortedWord]) {
            anagramGroups[sortedWord] = [word];
        } else {
            anagramGroups[sortedWord].push(word);
        }
    }

    return Object.values(anagramGroups);
}

const result = groupAnagrams(words);
console.log(result);
