const defaultTheme = require("tailwindcss/defaultTheme");
module.exports = {
  content: ["index.html"],
  theme: {
    screens: {
      xs: "350px",
      ...defaultTheme.screens,
    },
    extend: {
      colors: {
        primary: "#2a1cc7",
        secondary: "#5713cf",
      },
      fontFamily: {
        riot: ["Protest Riot"],
      },
    },
  },
  plugins: [],
};
