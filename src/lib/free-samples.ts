// Fiches ouvertes à tout le monde, y compris aux moteurs de recherche.
// Liste fermée : seules ces fiches (premier chapitre d'une matière) sont servies
// sans compte, identifiées par leur id pour qu'aucune autre fiche ne devienne publique par erreur. Le reste du contenu reste réservé aux comptes.
export const FREE_SAMPLES = [
  { niveau: "lyceen", sheetId: "8a486b4e-d16d-4b74-927a-decc0f8014b6", label: "Lycéen", subjectSlug: "lyceen-methodologie", order: 1 },
  { niveau: "l1", sheetId: "1fb6c65d-ac0c-44c5-a89e-b93bbaea15cd", label: "L1", subjectSlug: "l1-introduction-generale-au-droit", order: 1 },
  { niveau: "l2", sheetId: "3843c3cf-95f2-432d-a0a4-4e81105cf15f", label: "L2", subjectSlug: "l2-droit-des-contrats", order: 1 },
  { niveau: "l3", sheetId: "a6a6f351-6ea3-4a2d-ba7e-e9b92e6bf267", label: "L3", subjectSlug: "l3-droit-international-public", order: 1 },
] as const;

export type FreeSample = (typeof FREE_SAMPLES)[number];

export function findSample(niveau: string): FreeSample | undefined {
  return FREE_SAMPLES.find((s) => s.niveau === niveau);
}
