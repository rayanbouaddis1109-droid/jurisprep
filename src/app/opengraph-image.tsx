import { ImageResponse } from "next/og";

export const runtime = "edge";
export const alt = "JurisPrép — Réussir ses études de droit";
export const size = { width: 1200, height: 630 };
export const contentType = "image/png";

export default function Image() {
  return new ImageResponse(
    <div
      style={{
        background: "#FFF8EE",
        width: "100%",
        height: "100%",
        display: "flex",
        flexDirection: "column",
        alignItems: "flex-start",
        justifyContent: "center",
        padding: "80px",
        fontFamily: "system-ui, sans-serif",
      }}
    >
      <div style={{ display: "flex", alignItems: "center", gap: "16px", marginBottom: "36px" }}>
        <div
          style={{
            background: "#E07B39",
            borderRadius: "12px",
            width: "60px",
            height: "60px",
            display: "flex",
            alignItems: "center",
            justifyContent: "center",
            color: "white",
            fontWeight: 800,
            fontSize: "22px",
          }}
        >
          JP
        </div>
        <span style={{ fontSize: "34px", fontWeight: 800, color: "#2C1810" }}>JurisPrép</span>
      </div>

      <div
        style={{
          fontSize: "68px",
          fontWeight: 800,
          color: "#2C1810",
          lineHeight: 1.05,
          letterSpacing: "-3px",
          marginBottom: "36px",
        }}
      >
        Réussir ses études
        <br />
        <span style={{ color: "#E07B39" }}>de droit, vraiment.</span>
      </div>

      <div style={{ display: "flex", gap: "16px" }}>
        {["1 440 flashcards", "80+ fiches", "150+ arrêts", "Assistant IA"].map((s) => (
          <div
            key={s}
            style={{
              background: "#FFFDF8",
              border: "1.5px solid #EDE0CC",
              borderRadius: "24px",
              padding: "10px 20px",
              fontSize: "18px",
              color: "#7A5C4A",
              fontWeight: 500,
            }}
          >
            {s}
          </div>
        ))}
      </div>
    </div>,
    { ...size }
  );
}
