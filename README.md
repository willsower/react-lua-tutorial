### React Lua Tutorial

#### Setup

1. Create the GitHub Repo + Clone
2. In terminal run: `rojo init <your-project-name>` which creates rojo project structure
3. `cd <your-project-name>`
4. Run `brew install wally` (there are other ways to install wally too (go to wally website to see other ways))
5. Run `wally init` (ensure `wally.toml` is already added as per below)
6. To install the React Lua via Wally, on the wally website copy the thing that looks similiar (may be different based on version): `react = "jsdotlua/react@17.1.0"` and put in the `wally.toml` under `[dependencies]`

**Add Packages With Wally**

Wally is the package manager (like how npm is for javascript).

1. If `wally.toml` does not exist in project root directroy, create it (should already be added when you did `wally init` from above though)
2. Find packages you want intstalled and add them to the `wally.toml` under `[dependencies]` section
3. Run `wally install` to download the pacakges into a `Packages` folder

**Update Rojo to sync your packages properly**

You need to add the following to the `default.project.json` under the already existing, where when we add in the `Packages` section, it tells us that when we do `wally install` it will have the packages folder which allows us to use them in our React Lua code.

```
"ReplicatedStorage": {
  "Shared": {
    "$path": "src/shared"
  },
  "Packages": {
    "$path": "Packages"
  }
},
```

**Connect Rojo to Roblox Studio**

This step does the wiring between rojo and roblox studio. This is so my dependencies in `Packages` and other `src/` contents will appear in roblox studio.

1. In Roblox Studio ensure you have the rojo plugin added already 
2. Need to enable HTTP apis so in roblox studio (file -> game settings -> security -> allow http requests)
3. In the terminal in VSCode run: `rojo serve`, you'll see soemthing like address port, and url for localhost:portNumber. Leave this running in terminal
4. In roblox studio, connect to this server. (In plugins, click Rojo -> Connect (it should pick up the local server automatically) -> And accept (this shows what files it sees alredy))

#### Resources

- Wally: https://wally.run/install
- Rojo: https://rojo.space/