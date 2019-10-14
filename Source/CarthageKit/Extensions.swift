import Foundation

extension Scanner {
    func scanPastTo(_ string: String) -> Bool {
        return scanString(string, into: nil) || (scanUpTo(string, into: nil) && scanString(string, into: nil))
    }
}
