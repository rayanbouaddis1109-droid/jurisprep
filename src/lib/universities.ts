// Universités et établissements d'enseignement supérieur de France.
// Source : data.enseignementsup-recherche.gouv.fr, jeu « Principaux établissements
// d'enseignement supérieur » (ministère de l'Enseignement supérieur), consulté le 13 octobre 2026.

export interface University {
  name: string;
  city: string;
}

export const UNIVERSITIES: University[] = [
  { name: "Aix-Marseille Université", city: "Marseille 7e" },
  { name: "Avignon Université", city: "Avignon" },
  { name: "CY Cergy Paris Université", city: "Cergy" },
  { name: "Institut catholique de Lille", city: "Lille" },
  { name: "Institut catholique de Lyon", city: "Lyon 2e" },
  { name: "Institut catholique de Paris", city: "Paris 6e" },
  { name: "Institut catholique de Rennes", city: "Bruz" },
  { name: "Institut catholique de Toulouse", city: "Toulouse" },
  { name: "Institut national universitaire Jean-François Champollion", city: "Albi" },
  { name: "La Rochelle Université", city: "La Rochelle" },
  { name: "Le Mans Université", city: "Le Mans" },
  { name: "Université Claude Bernard - Lyon 1", city: "Villeurbanne" },
  { name: "Nantes Université", city: "Nantes" },
  { name: "Nîmes université", city: "Nîmes" },
  { name: "Sciences Po", city: "Paris 7e" },
  { name: "Sciences Po Aix", city: "Aix-en-Provence" },
  { name: "Sciences Po Bordeaux", city: "Pessac" },
  { name: "Sciences Po Lyon", city: "Lyon 7e" },
  { name: "Sciences Po Toulouse", city: "Toulouse" },
  { name: "Sorbonne Université", city: "Paris 6e" },
  { name: "Université Bordeaux Montaigne", city: "Pessac" },
  { name: "Université Bourgogne Europe", city: "Dijon" },
  { name: "Université Bretagne Sud", city: "Lorient" },
  { name: "Université Clermont Auvergne", city: "Clermont-Ferrand" },
  { name: "Université Côte d'Azur", city: "Nice" },
  { name: "Université d'Angers", city: "Angers" },
  { name: "Université d'Artois", city: "Arras" },
  { name: "Université d'Orléans", city: "Orléans" },
  { name: "Université de Bordeaux", city: "Talence" },
  { name: "Université de Bretagne Occidentale", city: "Brest" },
  { name: "Université de Caen Normandie", city: "Caen" },
  { name: "Université de Corse Pasquale Paoli", city: "Corte" },
  { name: "Université de Guyane", city: "Cayenne" },
  { name: "Université de Haute-Alsace", city: "Mulhouse" },
  { name: "Université de la Nouvelle-Calédonie", city: "Nouméa" },
  { name: "Université de la Polynésie Française", city: "Punaauia" },
  { name: "Université de La Réunion", city: "Saint-Denis" },
  { name: "Université de Lille", city: "Lille" },
  { name: "Université de Limoges", city: "Limoges" },
  { name: "Université de Lorraine", city: "Nancy" },
  { name: "Université de Mayotte", city: "Dembeni" },
  { name: "Université de Montpellier", city: "Montpellier" },
  { name: "Université de Montpellier Paul-Valéry", city: "Montpellier" },
  { name: "Université de Pau et des Pays de l'Adour", city: "Pau" },
  { name: "Université de Perpignan Via Domitia", city: "Perpignan" },
  { name: "Université de Picardie Jules Verne", city: "Amiens" },
  { name: "Université de Poitiers", city: "Poitiers" },
  { name: "Université de Reims Champagne-Ardenne", city: "Reims" },
  { name: "Université de Rennes", city: "Rennes" },
  { name: "Université de Rouen Normandie", city: "Mont-Saint-Aignan" },
  { name: "Université de Strasbourg", city: "Strasbourg" },
  { name: "Université de Toulon", city: "La Garde" },
  { name: "Université de Toulouse", city: "Toulouse" },
  { name: "Université de Tours", city: "Tours" },
  { name: "Université de Versailles Saint-Quentin-en-Yvelines", city: "Versailles" },
  { name: "Université des Antilles", city: "Pointe-à-Pitre" },
  { name: "Université du Littoral Côte d'Opale", city: "Dunkerque" },
  { name: "Université Grenoble Alpes", city: "Saint-Martin-d'Hères" },
  { name: "Université Gustave Eiffel", city: "Champs-sur-Marne" },
  { name: "Université Jean Monnet - Saint-Etienne", city: "Saint-Étienne" },
  { name: "Université Jean Moulin - Lyon 3", city: "Lyon 8e" },
  { name: "Université Le Havre Normandie", city: "Le Havre" },
  { name: "Université Lumière - Lyon 2", city: "Lyon 7e" },
  { name: "Université Marie et Louis Pasteur", city: "Besançon" },
  { name: "Université Paris 1 - Panthéon Sorbonne", city: "Paris 5e" },
  { name: "Université Paris 8", city: "Saint-Denis" },
  { name: "Université Paris Cité", city: "Paris 6e" },
  { name: "Université Paris Nanterre", city: "Nanterre" },
  { name: "Université Paris sciences et lettres", city: "Paris 6e" },
  { name: "Université Paris-Est Créteil", city: "Créteil" },
  { name: "Université Paris-Panthéon-Assas", city: "Paris 5e" },
  { name: "Université Paris-Saclay", city: "Gif-sur-Yvette" },
  { name: "Université Polytechnique Hauts-de-France", city: "Aulnoy-lez-Valenciennes" },
  { name: "Université Rennes 2", city: "Rennes" },
  { name: "Université Savoie Mont Blanc", city: "Chambéry" },
  { name: "Université Sorbonne Nouvelle", city: "Paris 12e" },
  { name: "Université Sorbonne Paris Nord", city: "Villetaneuse" },
  { name: "Université Toulouse - Jean Jaurès", city: "Toulouse" },
  { name: "Université Toulouse Capitole", city: "Toulouse" },
  { name: "Université Évry Paris-Saclay", city: "Évry-Courcouronnes" },
];

// Choix possibles hors liste.
export const OTHER_CHOICES: string[] = [
  "Autre établissement (école, prépa, IPAG, IEP...)",
  "Lycée (je suis lycéen)",
  "Je ne suis pas étudiant",
];

// Noms d'usage, pour retrouver une fac avec le mot que les étudiants emploient.
const ALIASES: Record<string, string> = {
  "Université Paris-Panthéon-Assas": "assas paris 2 paris ii",
  "Université Paris 1 - Panthéon Sorbonne": "paris 1 paris i sorbonne pantheon",
  "Université Paris Nanterre": "nanterre paris 10 paris x",
  "Université Paris-Est Créteil": "upec creteil paris 12 paris xii",
  "Université Paris Cité": "paris cite paris 5 descartes paris 7 diderot",
  "Université Sorbonne Nouvelle": "paris 3 paris iii sorbonne nouvelle",
  "Université Paris 8": "paris 8 vincennes saint-denis",
  "Université Sorbonne Paris Nord": "paris 13 paris xiii villetaneuse bobigny",
  "Université Toulouse Capitole": "toulouse 1 capitole ut1",
  "Université Jean Moulin - Lyon 3": "lyon 3 lyon iii",
  "Université Lumière - Lyon 2": "lyon 2 lyon ii",
  "Aix-Marseille Université": "amu aix marseille aix en provence",
  "Université de Lille": "lille 2 lille droit",
  "Université de Versailles Saint-Quentin-en-Yvelines": "uvsq versailles saint quentin",
  "Université Évry Paris-Saclay": "evry uevey paris saclay",
  "Université de Montpellier": "montpellier droit um",
  "Université Bourgogne Europe": "dijon bourgogne",
  "Université Marie et Louis Pasteur": "besancon franche comte",
};

export function universityAliases(u: University): string {
  return ALIASES[u.name] ?? "";
}

export function universityLabel(u: University): string {
  return `${u.name} (${u.city})`;
}

export const ALL_UNIVERSITY_LABELS: string[] = [
  ...UNIVERSITIES.map(universityLabel),
  ...OTHER_CHOICES,
];
