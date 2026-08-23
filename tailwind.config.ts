import type { Config } from "tailwindcss";

const config: Config = {
  content: ["./src/**/*.{js,ts,jsx,tsx,mdx}"],
  theme: {
    extend: {
      colors: {
        ink: {
          50: "#f8fafc",
          100: "#f1f5f9",
          200: "#e2e8f0",
          300: "#cbd5e1",
          400: "#94a3b8",
          500: "#64748b",
          600: "#475569",
          700: "#334155",
          800: "#1e293b",
          900: "#0f172a",
        },
      },
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
