import Foundation
import ProjLintKit
import SwiftCLI

// MARK: - CLI
let cli = CLI(name: "projlint", version: "0.1.1", description: "Project Linter to lint & autocorrect your non-code best practices.")
cli.commands = [CorrectCommand(), LintCommand()]
cli.globalOptions.append(contentsOf: GlobalOptions.all)
cli.goAndExit()
