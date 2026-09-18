
-- General LSP setup
-- vim.lsp.config['*'] = {
--     capabilities = { textDocument = { semanticTokens = { multilineTokenSupport = true } } },
--     root_markers = { '.git' },
-- }
-- vim.diagnostic.config({ virtual_lines = true })

vim.lsp.config['harper_ls'] = {
  settings = {
    ['harper-ls'] = {
      userDictPath = "",
      workspaceDictPath = "",
      fileDictPath = "",
      linters = {
        SpellCheck = true,
        SpelledNumbers = false,
        AnA = true,
        SentenceCapitalization = true,
        UnclosedQuotes = true,
        WrongQuotes = false,
        LongSentences = true,
        RepeatedWords = true,
        Spaces = true,
        Matcher = true,
        CorrectNumberSuffix = true
      },
      codeActions = {
        ForceStable = false
      },
      markdown = {
        IgnoreLinkTitle = false
      },
      diagnosticSeverity = "hint",
      isolateEnglish = false,
      dialect = "British",
      maxFileLength = 120000,
      ignoredLintsPath = "",
      excludePatterns = {}
    },
  },
}

return {}
