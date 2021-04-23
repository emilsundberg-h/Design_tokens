import { getTokens, camelCase } from "../utils";

const getSpace = (layerName, stylesArtboard) => {
  const palette = { space: {} };
  const decorator = (element) => {
    const { name, absoluteBoundingBox } = element;
    const tokens = {
      [camelCase(name)]: { value: `${absoluteBoundingBox.width}px` },
    };
    Object.assign(palette.space, tokens);
  };

  return getTokens(layerName, stylesArtboard, palette, decorator);
};

export default getSpace;
