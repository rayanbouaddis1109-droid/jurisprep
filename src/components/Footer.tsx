export function Footer() {
  return (
    <footer className="mt-16 border-t border-ink-200 bg-white">
      <div className="mx-auto max-w-6xl px-4 py-8 text-sm text-ink-600">
        <div className="flex flex-col items-start justify-between gap-4 sm:flex-row sm:items-center">
          <div>
            <p className="font-semibold text-ink-900">JurisPrép</p>
            <p>La plateforme tout-en-un pour réussir ses études de droit.</p>
          </div>
          <div className="text-xs">
            © {new Date().getFullYear()} JurisPrép — Contenu pédagogique original.
          </div>
        </div>
      </div>
    </footer>
  );
}
