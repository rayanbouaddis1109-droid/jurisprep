import { ImageResponse } from "next/og";
import { readFileSync } from "node:fs";
import { join } from "node:path";

export const alt = "JurisPrép — Réussir ses études de droit";
export const size = { width: 1200, height: 630 };
export const contentType = "image/png";

const logo = `data:image/svg+xml;base64,${readFileSync(join(process.cwd(), "public", "logo.svg")).toString("base64")}`;

export default function Image() {
  return new ImageResponse(
    <div
      style={{
        background: "#FFF8EE",
        width: "100%",
        height: "100%",
        display: "flex",
        alignItems: "center",
        padding: "70px 90px",
        fontFamily: "system-ui, sans-serif",
      }}
    >
      {/* eslint-disable-next-line @next/next/no-img-element */}
      <img src={logo} width={380} height={380} alt="" style={{ borderRadius: "84px" }} />

      <div style={{ display: "flex", flexDirection: "column", marginLeft: "70px" }}>
        <div
          style={{
            display: "flex",
            fontSize: "100px",
            fontWeight: 800,
            color: "#2C1810",
            letterSpacing: "-4px",
            lineHeight: 1,
          }}
        >
          <span>Juris</span>
          <span style={{ color: "#E07B39" }}>Prép</span>
        </div>
        <div
          style={{
            display: "flex",
            fontSize: "40px",
            fontWeight: 600,
            color: "#7A5C4A",
            marginTop: "26px",
            lineHeight: 1.2,
          }}
        >
          Réussir ses études de droit
        </div>
        <div style={{ display: "flex", gap: "12px", marginTop: "40px" }}>
          {["Fiches", "Vidéos", "Quiz", "Flashcards"].map((s) => (
            <div
              key={s}
              style={{
                display: "flex",
                background: "#FFFDF8",
                border: "2px solid #EDE0CC",
                borderRadius: "28px",
                padding: "10px 24px",
                fontSize: "26px",
                color: "#7A5C4A",
                fontWeight: 600,
              }}
            >
              {s}
            </div>
          ))}
        </div>
      </div>
    </div>,
    { ...size }
  );
}
