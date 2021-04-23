import fs from "fs";
import fetch from "node-fetch";
import getColors from "./types/getColors";
import getTypography from "./types/getTypography";
import getSpace from "./types/getSpace";
import getShadows from "./types/getShadows";
import getBreakpoints from "./types/getBreakpoints";
import getRadius from "./types/getRadius";

const genFile = (name, tokens, outDir) =>
  fs.writeFile(
    `${outDir}/${name}.json`,
    JSON.stringify(tokens, null, 2),
    (err) => {
      if (err) {
        throw new Error(`\x1b[31m\n\n ${err}\n\n`);
      }
    }
  );

const genTokens = (apikey, id, outDir) => {
  // eslint-disable-next-line no-console
  console.log("\x1b[40m Create SL Design Tokens \x1b[0m\n");
  const FETCH_URL = `https://api.figma.com/v1/files/${id}`;
  const FETCH_DATA = {
    method: "GET",
    headers: {
      "X-Figma-Token": apikey,
    },
  };

  try {
    fetch(FETCH_URL, FETCH_DATA)
      .then((response) => {
        // eslint-disable-next-line no-console
        console.log(" Connection with Figma is successful\n");
        return response.json();
      })
      .then((styles) => {
        if (styles.status !== 403 && styles.status !== 404) {
          const figmaTree = styles.document.children[0].children;

          genFile("color", getColors("Colors", figmaTree), outDir);
          genFile("space", getSpace("Space", figmaTree), outDir);
          genFile("typography", getTypography("Typography", figmaTree), outDir);
          genFile("shadow", getShadows("Shadows", figmaTree), outDir);
          genFile("radius", getRadius("Radius", figmaTree), outDir);
          genFile(
            "breakpoint",
            getBreakpoints("Breakpoints", figmaTree),
            outDir
          );
        }
      })
      .catch((err) => {
        throw new Error(`\x1b[31m\n\n ${err}\n\n`);
      });
  } catch (err) {
    throw new Error(`\x1b[31m\n\n ${err}\n\n`);
  }
};

export default genTokens;
