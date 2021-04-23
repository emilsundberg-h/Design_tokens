import { getTokens, camelCase } from "../utils";

const getBorderRadius = (layerName, stylesArtboard) => {
  const palette = { borderRadius: {} };
  const decorator = (element) => {
    const { name } = element;
    const { cornerRadius } = element.children[0];
    const tokens = {
      [camelCase(name)]: { value: `${cornerRadius}px` },
    };
    Object.assign(palette.borderRadius, tokens);
  };

  return getTokens(layerName, stylesArtboard, palette, decorator);
};

export default getBorderRadius;
