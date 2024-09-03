import Cocoa

enum passwordError: Error {
    case higherLower, noMatch
}

func root(of zahl: Int) throws -> String {
    for i in 1...100 {
        if zahl > 1 || zahl < 10000 {
            throw passwordError.higherLower
        }
        for i in 1...100 {
            if zahl == i * i {
                return "\(i)"
            } else {
            }
        }
        return "Help"
    }
    
    do {
        let result = try root (of: 8)
        print("The root is \(result)")
    } catch passwordError.higherLower {
        print("Out of bounds")
    } catch passwordError.noMatch {
        print("No Root")
    } catch {
        print("Help")
    }
}
