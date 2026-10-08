// Fiches ouvertes à tout le monde, y compris aux moteurs de recherche.
// Liste fermée : seules ces fiches (premier chapitre d'une matière) sont servies
// sans compte. Le reste du contenu reste réservé aux comptes.
export const FREE_SAMPLES = [
  { niveau: "lyceen", label: "Lycéen", subjectSlug: "lyceen-methodologie", order: 1 },
  { niveau: "l1", label: "L1", subjectSlug: "l1-introduction-generale-au-droit", order: 1 },
  { niveau: "l2", label: "L2", subjectSlug: "l2-droit-des-contrats", order: 1 },
  { niveau: "l3", label: "L3", subjectSlug: "l3-droit-international-public", order: 1 },
] as const;

export type FreeSample = (typeof FREE_SAMPLES)[number];

export function findSample(niveau: string): FreeSample | undefined {
  return FREE_SAMPLES.find((s) => s.niveau === niveau);
}
