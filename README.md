# AULAS

*  https://docs.google.com/spreadsheets/d/1LBcIomlrF6BhQFsLCKpgb7yDfaSvZATgmquDRjUzVL8/edit?gid=663425706#gid=663425706*

# DOCKER

*  http://files.cod3r.com.br/apostila-docker.pdf*

# Rubra
sistema de criação de fichas de rpg

{
  // Visit https://aka.ms/tsconfig to read more about this file
  "compilerOptions": {
    // File Layout
    "rootDir": "./src",
    "outDir": "./dist",

    // Environment Settings
    // See also https://aka.ms/tsconfig/module
    "module": "commonjs",
    "target": "es2020",
    // "types": [],
    // For nodejs:
    // "lib": ["esnext"],
    "types": ["node"],
    // and npm install -D @types/node

    // Other Outputs
    "sourceMap": true,
    "declaration": true,
    "declarationMap": true,

    // Stricter Typechecking Options
    "noUncheckedIndexedAccess": true,
    "exactOptionalPropertyTypes": true,

    // Style Options
    // "noImplicitReturns": true,
    // "noImplicitOverride": true,
    // "noUnusedLocals": true,
    // "noUnusedParameters": true,
    // "noFallthroughCasesInSwitch": true,
    // "noPropertyAccessFromIndexSignature": true,

    // Recommended Options
    "strict": true,
    "jsx": "react-jsx",
    "verbatimModuleSyntax": false,
    "isolatedModules": true,
    // "noUncheckedSideEffectImports": true,
    "moduleDetection": "force",
    "skipLibCheck": true,
    "esModuleInterop": true,
  }
}


neon{
  SELECT 
  p.id,
  ip.quantidade,
  i.*
FROM techskills.pedido AS p
JOIN techskills.item_pedido AS ip
  ON p.id = ip.pedido_id AND  p.id = 27
JOIN techskills.itens AS i
  ON ip.item_id = i.id;
}
