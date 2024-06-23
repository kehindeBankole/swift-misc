import Cocoa

// group similar titles
let titles = ["duel", "dule","speed", "spede", "deul", "cars"]

// Function to preprocess the titles into a dictionary of anagram groups
func preprocessTitles(_ titles: [String]) -> [String: [String]] {
    var anagramGroups = [String: [String]]()
    
    for title in titles {
        let key = String(title.sorted())
        if (anagramGroups[key] != nil) {
            anagramGroups[key]?.append(title)
        } else {
            anagramGroups[key] = [title]
        }
    }
    print(anagramGroups)
    return anagramGroups
}

let anagramGroups = preprocessTitles(titles)
print(anagramGroups)

func findTitles(searchString: String, in anagramGroups: [String: [String]]) -> [String] {
    let key = String(searchString.sorted())
    return anagramGroups[key] ?? []
}

// Example search
let searchString = "spede"
let matchingTitles = findTitles(searchString:searchString, in: anagramGroups)
print("Search results for '\(searchString)': \(matchingTitles)")
