[![](https://vsmarketplacebadge.apphb.com/version/ms-vscode.vscode-typescript-tslint-plugin.svg)](https://marketplace.visualstudio.com/items?itemName=ms-vscode.vscode-typescript-tslint-plugin)

Adds [tslint](https://github.com/palantir/tslint) to VS Code using the [TypeScript TSLint language service plugin](https://github.com/Microsoft/typescript-tslint-plugin).

Please refer to the [tslint documentation](https://github.com/palantir/tslint) for how to configure the linting rules.

## Usage

> ❗ **Important**: If you also have the [vscode-tslint][vscode-tslint] extension in VS Code installed, please disable it to avoid linting files twice.*

This extension works using VS Code's built-in version of TypeScript and a local or global install of tslint. You do not need to configure the plugin in your `tsconfig.json` if you are using VS Code's version of TypeScript.

If you are using VS Code 1.30 or older and are [using a workspace version of typescript](https://code.visualstudio.com/Docs/languages/typescript#_using-newer-typescript-versions), you must currently configure the TS Server plugin manually by following [these instructions][configuration]

## Configuration

You can either configure the TSLint extension using a `tsconfig` or `jsconfig` as described [here][configuration], or configure it with VS Code settings. This requires VS Code 1.30+ and TS 3.2+. Note the VS Code based configuration overrides the `tsconfig` or `jsconfig` configuration.

 * `tslint.configFile` - The configuration file that tslint should use instead of the default tslint.json. A relative file path is resolved relative to the project root.

 * `tslint.jsEnable` - Enable/disable tslint for `.js` files. Default is `false`.

 * `tslint.ignoreDefinitionFiles` - Control if TypeScript definition files should be ignored. Default is `true`.

 * `tslint.exclude` - A glob or an array of globs. Any file matching these globs will not be linted.

 * `tslint.alwaysShowRuleFailuresAsWarnings` - Always show rule failures as warnings, ignoring the severity configuration in the tslint.json configuration.

 * `tslint.suppressWhileTypeErrorsPresent` - Suppress tslint errors from being reported while other errors are present.

### Auto fix and auto fix on save

Some simple errors can be automatically fixed by tslint using the `source.fixAll.tslint` source code action in VS Code. To run this, either run the `Source Action...` command in the command palette or right click in the TS file and select `Source Action...` from the context menu:

![Source Action context menu](https://github.com/Microsoft/vscode-typescript-tslint-plugin/raw/master/docs/sourceAction.png)

To enable auto fixing tslint errors on save, In VS Code set:

```json
"editor.codeActionsOnSave": {
    "source.fixAll.tslint": true
}
```

You can also setup a keybinding for tslint auto fix:

```json
{
  "key": "cmd+k f",
  "command": "editor.action.codeAction",
  "args": {
    "kind": "source.fixAll.tslint",
    "apply": "first"
  }
}
```

### Allowing comments in `tslint.json` files
TSlint allows `// comments` in `tsconfig.json` files but it does not allow trailing commas. In order to help you catch errors with trailing commas, this extension opts to treat `tslint.json` files as standard json by default. However this also means that you will see errors report for comments.

If you use comments in your `tsconfig.json`, you can configure VS Code to treat the file as json+comments by setting:

```json
"files.associations": {
    "tslint.json": "jsonc"
}
```

However keep in mind that VS Code's json+comments mode will not report errors for trailing commas which will cause TSLint to error when loading the `tsconfig.json`.

## Differences with the [vscode-TSLint][vscode-tslint] extension

- The implementation as a TypeScript server plugin enables sharing the program representation with TypeScript. This is more efficient than the current `vscode-tslint` implementation. The current TSLint implementation needs to reanalyze a document that has already been analyzed by the TypeScript language server. 

- `vscode-tslint` can only lint one file a time. It therefore cannot support [semantic tslint rules](https://palantir.github.io/tslint/usage/type-checking/) that require the type checker. The language service plugin doesn't have this limitation. To overcome this limitation is a key motivation for reimplementing the extension.

[vscode-tslint]: https://marketplace.visualstudio.com/items?itemName=eg2.tslint
[configuration]: https://github.com/Microsoft/typescript-tslint-plugin#configuration-options
