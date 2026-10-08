import type { Config } from "tailwindcss";

const config: Config = {
  content: ["./src/**/*.{js,ts,jsx,tsx,mdx}"],
  theme: {
    extend: {
      fontFamily: {
        jakarta: ["var(--font-jakarta)", "system-ui", "sans-serif"],
        serif: ["Georgia", "Cambria", "Times New Roman", "serif"],
      },
      colors: {
        cream: {
          DEFAULT: "#FFF8EE",
          dark: "#F5E8D0",
        },
        ink: {
          DEFAULT: "#2C1810",
          muted: "#7A5C4A",
          border: "#EDE0CC",
        },
        amber: {
          warm: "#E07B39",
        },
      },
    },
  },
  plugins: [],
};

export default config;
