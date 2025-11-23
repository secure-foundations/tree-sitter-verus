import XCTest
import SwiftTreeSitter
import TreeSitterVerus

final class TreeSitterVerusTests: XCTestCase {
    func testCanLoadGrammar() throws {
        let parser = Parser()
        let language = Language(language: tree_sitter_verus())
        XCTAssertNoThrow(try parser.setLanguage(language),
                         "Error loading Verus grammar")
    }
}
