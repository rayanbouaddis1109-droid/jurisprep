/**
 * Seed script — L1 quizzes, flashcards & exercises
 * Run:  node scripts/seed-l1-content.mjs
 * Needs: SUPABASE_URL and SUPABASE_SERVICE_ROLE_KEY in env (or edit the vars below)
 *
 * With only the anon key, RLS will likely block inserts from a script.
 * Go to Supabase Dashboard → Settings → API → copy the "service_role" key.
 */

import { createClient } from "@supabase/supabase-js";
import * as dotenv from "dotenv";
import { readFileSync } from "fs";

// Load .env.local if present
try {
  const envContent = readFileSync(
    new URL("../.env.local", import.meta.url),
    "utf-8"
  );
  const lines = envContent.split("\n");
  for (const line of lines) {
    const [k, ...rest] = line.split("=");
    if (k && rest.length) process.env[k.trim()] = rest.join("=").trim();
  }
} catch {}

const SUPABASE_URL =
  process.env.NEXT_PUBLIC_SUPABASE_URL ||
  process.env.SUPABASE_URL ||
  "REMPLACER_PAR_VOTRE_URL";

const SUPABASE_KEY =
  process.env.SUPABASE_SERVICE_ROLE_KEY ||
  process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY ||
  "REMPLACER_PAR_VOTRE_CLE_SERVICE_ROLE";

if (
  SUPABASE_URL.includes("REMPLACER") ||
  SUPABASE_KEY.includes("REMPLACER")
) {
  console.error(
    "❌  Définissez SUPABASE_URL et SUPABASE_SERVICE_ROLE_KEY dans .env.local"
  );
  process.exit(1);
}

const supabase = createClient(SUPABASE_URL, SUPABASE_KEY);

// ─────────────────────────────────────────────────────────────────
// STEP 1 : fetch L1 subject ids
// ─────────────────────────────────────────────────────────────────
const { data: subjects, error: subErr } = await supabase
  .from("subjects")
  .select("id, slug, name")
  .eq("level", "L1");

if (subErr) {
  console.error("Erreur Supabase (subjects) :", subErr.message);
  process.exit(1);
}

if (!subjects?.length) {
  console.error(
    "Aucune matière L1 trouvée. Créez-les d'abord dans le dashboard Supabase."
  );
  process.exit(1);
}

console.log(
  "✅  Matières L1 trouvées :",
  subjects.map((s) => s.slug)
);

function id(slug) {
  const s = subjects.find(
    (s) =>
      s.slug === slug ||
      s.slug.includes(slug) ||
      s.name.toLowerCase().includes(slug.toLowerCase())
  );
  if (!s) {
    console.warn(`⚠️  Matière introuvable pour le slug "${slug}"`);
    return null;
  }
  return s.id;
}

// ─────────────────────────────────────────────────────────────────
// CONTENT
// ─────────────────────────────────────────────────────────────────

// Slug mapping — adapt to your actual DB slugs
const IGD_ID = id("introduction-generale-droit") || id("intro-droit") || id("introduction-droit");
const IHD_ID = id("introduction-historique-droit") || id("histoire-droit") || id("historique");
const DC_ID  = id("droit-constitutionnel") || id("constitutionnel");
const IJ_ID  = id("institutions-juridictionnelles") || id("institutions") || id("juridictionnelles");

console.log({ IGD_ID, IHD_ID, DC_ID, IJ_ID });

// ═══════════════════════════════════════════════════════════════
// QUIZZES
// ═══════════════════════════════════════════════════════════════

const quizzes = [
  // ── INTRODUCTION GÉNÉRALE AU DROIT ──────────────────────────
  ...(IGD_ID
    ? [
        {
          subject_id: IGD_ID,
          title: "La règle de droit — fondamentaux",
          chapter: "La règle de droit",
          difficulty: "facile",
          description: "Quiz sur les caractères et la nature de la règle de droit.",
          questions: [
            {
              question: "Quel caractère distingue fondamentalement la règle de droit des règles morales ?",
              choices: [
                "Son caractère général",
                "Son caractère obligatoire assorti d'une sanction étatique",
                "Son caractère abstrait",
                "Son caractère permanent",
              ],
              correct_index: 1,
              explanation:
                "La règle de droit est sanctionnée par l'État (police, tribunaux), ce qui la distingue des règles morales dont la sanction est interne (remords).",
            },
            {
              question: "La règle de droit est dite « générale et abstraite ». Qu'est-ce que cela signifie ?",
              choices: [
                "Elle s'applique uniquement aux personnes morales",
                "Elle vise des catégories de personnes et non des individus déterminés",
                "Elle n'est applicable que sur l'ensemble du territoire",
                "Elle est rédigée en termes vagues sans portée pratique",
              ],
              correct_index: 1,
              explanation:
                "La règle de droit est générale : elle s'adresse à tous ou à une catégorie abstraite (les locataires, les commerçants…), pas à une personne nommément désignée.",
            },
            {
              question: "Comment appelle-t-on les règles de droit auxquelles les parties ne peuvent pas déroger ?",
              choices: [
                "Règles supplétives",
                "Règles impératives (ou d'ordre public)",
                "Règles dispositives",
                "Règles facultatives",
              ],
              correct_index: 1,
              explanation:
                "Les règles impératives s'imposent aux particuliers : toute clause contraire est nulle. Ex. : règles du Code du travail sur le SMIC.",
            },
            {
              question: "Quelle est la différence entre le droit objectif et les droits subjectifs ?",
              choices: [
                "Le droit objectif est écrit, les droits subjectifs sont coutumiers",
                "Le droit objectif désigne l'ensemble des règles, les droits subjectifs sont les prérogatives reconnues à un individu",
                "Le droit objectif vise les personnes morales, les droits subjectifs les personnes physiques",
                "Il n'y a pas de différence réelle",
              ],
              correct_index: 1,
              explanation:
                "Le droit objectif (Le Droit) = corpus de règles. Les droits subjectifs (des droits) = prérogatives individuelles (droit de propriété, de créance…).",
            },
            {
              question: "La distinction droit public / droit privé repose principalement sur :",
              choices: [
                "La nature écrite ou orale des règles",
                "La présence ou non de l'État comme partie à la relation juridique",
                "Le montant des litiges en jeu",
                "Le caractère national ou international des règles",
              ],
              correct_index: 1,
              explanation:
                "Le droit public régit les relations entre l'État (ou ses démembrements) et les particuliers, ou entre personnes publiques. Le droit privé régit les relations entre particuliers.",
            },
            {
              question: "Qu'est-ce qu'une règle de droit supplétive ?",
              choices: [
                "Une règle qui s'impose toujours, quoi qu'en pensent les parties",
                "Une règle qui s'applique à défaut de convention contraire des parties",
                "Une règle récemment créée par le législateur",
                "Une règle réservée aux contrats commerciaux",
              ],
              correct_index: 1,
              explanation:
                "Les règles supplétives (de volonté) comblent le silence des parties. Celles-ci peuvent choisir de les écarter par convention.",
            },
            {
              question: "Lequel de ces éléments N'EST PAS un caractère classique de la règle de droit ?",
              choices: [
                "Généralité",
                "Abstraction",
                "Gratuité",
                "Obligatoriété",
              ],
              correct_index: 2,
              explanation:
                "La gratuité n'est pas un caractère de la règle de droit. Ses caractères traditionnels sont : généralité, abstraction, permanence et obligatoriété.",
            },
          ],
        },
        {
          subject_id: IGD_ID,
          title: "Sources du droit — loi, coutume, jurisprudence",
          chapter: "Les sources du droit",
          difficulty: "moyen",
          description: "Quiz sur la hiérarchie des normes et les sources formelles du droit.",
          questions: [
            {
              question: "Dans la hiérarchie des normes de Kelsen, quel acte se situe au sommet en droit français ?",
              choices: [
                "La loi ordinaire",
                "La Constitution",
                "Le règlement",
                "Le traité international",
              ],
              correct_index: 1,
              explanation:
                "La Constitution est la norme suprême de l'ordre juridique français. Toutes les autres normes lui sont subordonnées.",
            },
            {
              question: "Quel organe vérifie la conformité des lois à la Constitution en France ?",
              choices: [
                "La Cour de cassation",
                "Le Conseil d'État",
                "Le Conseil constitutionnel",
                "La Cour des comptes",
              ],
              correct_index: 2,
              explanation:
                "Le Conseil constitutionnel exerce le contrôle de constitutionnalité des lois (a priori et, depuis 2010, a posteriori via la QPC).",
            },
            {
              question: "La coutume (ou usage) est source de droit en France. Quelle condition est nécessaire pour qu'un usage devienne obligatoire ?",
              choices: [
                "Être codifié dans un texte législatif",
                "Présenter un élément matériel (pratique répétée et générale) ET un élément psychologique (opinio juris)",
                "Être reconnu par un arrêt de la Cour de cassation",
                "Avoir été pratiqué pendant au moins 50 ans",
              ],
              correct_index: 1,
              explanation:
                "La coutume requiert : (1) un usage constant, général et prolongé (élément matériel) ; (2) la conviction d'obéir à une règle obligatoire (opinio juris — élément psychologique).",
            },
            {
              question: "La jurisprudence est-elle officiellement une source de droit en droit français ?",
              choices: [
                "Oui, c'est la première source de droit",
                "Non, les juges n'ont pas le droit de créer du droit",
                "En théorie non (interdiction des arrêts de règlement), mais en pratique elle joue un rôle normatif important",
                "Oui, depuis la réforme de 1958",
              ],
              correct_index: 2,
              explanation:
                "L'art. 5 C. civ. interdit les arrêts de règlement. Mais la jurisprudence, notamment celle de la Cour de cassation et du Conseil d'État, crée de facto des règles générales.",
            },
            {
              question: "Qu'est-ce que la question prioritaire de constitutionnalité (QPC) ?",
              choices: [
                "Une procédure permettant au gouvernement de faire valider ses lois avant leur promulgation",
                "Un mécanisme permettant à tout justiciable de contester la constitutionnalité d'une disposition légale applicable à son litige",
                "Une question posée par le Parlement au Conseil d'État",
                "Une révision de la Constitution par référendum",
              ],
              correct_index: 1,
              explanation:
                "Introduite en 2010 (art. 61-1 Const.), la QPC permet à tout justiciable de demander l'abrogation d'une disposition législative contraire aux droits garantis par la Constitution.",
            },
            {
              question: "Un règlement contraire à une loi est :",
              choices: [
                "Valide si le gouvernement l'a signé",
                "Illégal et susceptible d'annulation par le juge administratif",
                "Valide car le règlement est supérieur à la loi",
                "Valide dans les matières réservées au pouvoir réglementaire",
              ],
              correct_index: 1,
              explanation:
                "Le règlement est inférieur à la loi dans la hiérarchie des normes. Un règlement contraire à la loi est illégal ; le Conseil d'État peut l'annuler pour excès de pouvoir.",
            },
          ],
        },
        {
          subject_id: IGD_ID,
          title: "La preuve en droit civil",
          chapter: "La preuve",
          difficulty: "moyen",
          description: "Quiz sur le régime de la preuve, les modes de preuve et la charge de la preuve.",
          questions: [
            {
              question: "En droit civil, à qui incombe la charge de la preuve selon l'article 1353 du Code civil ?",
              choices: [
                "Au défendeur",
                "Au demandeur (actori incumbit probatio)",
                "Au juge d'office",
                "Au Ministère public",
              ],
              correct_index: 1,
              explanation:
                "« Celui qui réclame l'exécution d'une obligation doit la prouver. » (art. 1353 C. civ.). C'est le demandeur qui supporte la charge de la preuve.",
            },
            {
              question: "L'acte authentique présente quel avantage probatoire ?",
              choices: [
                "Il est réputé faux jusqu'à preuve du contraire",
                "Il fait foi jusqu'à inscription en faux quant aux énonciations de l'officier public",
                "Il peut être contesté par simple témoignage",
                "Il n'a aucune valeur probante supérieure à l'acte sous seing privé",
              ],
              correct_index: 1,
              explanation:
                "L'acte authentique (notarié, acte d'état civil…) fait foi jusqu'à inscription en faux. Sa contestation impose une procédure spéciale (l'inscription en faux).",
            },
            {
              question: "En matière civile, quel est le système de preuve applicable aux actes juridiques supérieurs à 1 500 € ?",
              choices: [
                "Preuve libre (tous modes admis)",
                "Preuve légale (écrit exigé)",
                "Preuve par témoins uniquement",
                "Preuve par aveu uniquement",
              ],
              correct_index: 1,
              explanation:
                "Au-dessus de 1 500 € (seuil fixé par décret), la preuve d'un acte juridique exige un écrit (art. 1359 C. civ.). C'est le système de la preuve légale.",
            },
            {
              question: "Qu'est-ce qu'une présomption légale irréfragable ?",
              choices: [
                "Une présomption que le juge peut toujours renverser",
                "Une présomption contre laquelle aucune preuve contraire n'est admise",
                "Une présomption fondée sur un raisonnement inductif du juge",
                "Une présomption valable uniquement en matière pénale",
              ],
              correct_index: 1,
              explanation:
                "La présomption irréfragable (juris et de jure) ne peut être combattue par aucun moyen de preuve. Ex. : l'autorité de la chose jugée.",
            },
            {
              question: "La preuve des faits juridiques est soumise à :",
              choices: [
                "La preuve littérale obligatoire",
                "La liberté de la preuve (tous modes admis)",
                "L'aveu judiciaire exclusivement",
                "La présomption légale",
              ],
              correct_index: 1,
              explanation:
                "Les faits juridiques (accidents, naissances…) se prouvent par tous moyens : témoignages, présomptions, expertises, etc. Seuls les actes juridiques sont soumis à la preuve littérale.",
            },
          ],
        },
      ]
    : []),

  // ── INTRODUCTION HISTORIQUE AU DROIT ────────────────────────
  ...(IHD_ID
    ? [
        {
          subject_id: IHD_ID,
          title: "Droit romain — fondements",
          chapter: "Le droit romain",
          difficulty: "facile",
          description: "Quiz sur les grandes institutions et sources du droit romain.",
          questions: [
            {
              question: "Quel est le texte fondateur du droit romain (451-450 av. J.-C.) ?",
              choices: [
                "Le Code de Justinien",
                "La Loi des XII Tables",
                "Les Institutes de Gaius",
                "Le Digeste",
              ],
              correct_index: 1,
              explanation:
                "La Loi des XII Tables (Lex duodecim tabularum) est la première codification écrite du droit romain. Gravées sur des tables de bronze, elles fixaient le droit civil, pénal et la procédure.",
            },
            {
              question: "Qu'est-ce que le Corpus Juris Civilis de Justinien ?",
              choices: [
                "Un recueil de coutumes germaniques",
                "La codification du droit romain classique par l'Empereur Justinien au VIe siècle",
                "Un traité sur le droit canonique médiéval",
                "Le premier code civil français",
              ],
              correct_index: 1,
              explanation:
                "Le Corpus Juris Civilis (528-534) réunit le Code (constitutions impériales), le Digeste (extraits de jurisconsultes), les Institutes (manuel) et les Novelles. Il est la base du droit civil moderne.",
            },
            {
              question: "En droit romain, quelle distinction entre personae était fondamentale ?",
              choices: [
                "Riches / pauvres",
                "Citoyens romains / non-citoyens et libres / esclaves",
                "Patriciens / plébéiens seulement",
                "Prêtres / laïcs",
              ],
              correct_index: 1,
              explanation:
                "Le droit romain distinguait : libres / esclaves (les esclaves étaient des res, des choses) et citoyens / non-citoyens (peregrins). Cette distinction conditionnait la capacité juridique.",
            },
            {
              question: "Le droit romain classique distingue l'actio in rem et l'actio in personam. Quelle est la différence ?",
              choices: [
                "L'actio in rem vise une chose, l'actio in personam vise une personne déterminée",
                "L'actio in rem est civile, l'actio in personam est pénale",
                "L'actio in rem est orale, l'actio in personam est écrite",
                "Il n'y a aucune différence pratique",
              ],
              correct_index: 0,
              explanation:
                "L'actio in rem protège un droit réel (ex. : propriété) opposable à tous. L'actio in personam protège un droit de créance opposable à une personne déterminée (débiteur).",
            },
            {
              question: "Quelle est la signification de la formule romaine « pacta sunt servanda » ?",
              choices: [
                "Les pactes ne sont pas obligatoires",
                "Les pactes doivent être respectés",
                "Seuls les contrats écrits sont valables",
                "La coutume prime sur les accords privés",
              ],
              correct_index: 1,
              explanation:
                "« Les pactes doivent être tenus » — principe fondateur de la force obligatoire des contrats, repris par tous les systèmes juridiques modernes.",
            },
          ],
        },
        {
          subject_id: IHD_ID,
          title: "Moyen Âge et Ancien Régime juridique",
          chapter: "Du Moyen Âge à l'Ancien Régime",
          difficulty: "moyen",
          description: "Quiz sur la pluralité des droits médiévaux et la construction du droit royal.",
          questions: [
            {
              question: "Qu'est-ce que la reception du droit romain en France médiévale ?",
              choices: [
                "La traduction des textes romains en latin médiéval",
                "Le mouvement par lequel les juristes médiévaux réintroduisirent le Corpus Juris Civilis comme source du droit à partir du XIe siècle",
                "L'adoption par les Carolingiens des lois romaines",
                "L'intégration du droit romain dans le Code Napoléon",
              ],
              correct_index: 1,
              explanation:
                "À partir du XIe siècle, l'école de Bologne (Irnerius) redécouvre le Digeste et diffuse le droit romain savant dans toute l'Europe. En France, le Sud devient pays de droit écrit (romain) et le Nord pays de coutumes.",
            },
            {
              question: "Quelle différence fondamentale sépare le « pays de droit écrit » et le « pays de coutumes » en France médiévale ?",
              choices: [
                "Le pays de droit écrit est au Nord, le pays de coutumes au Sud",
                "Le pays de droit écrit (Sud) applique le droit romain, le pays de coutumes (Nord) applique des coutumes locales",
                "Le pays de droit écrit relève du Parlement de Paris, l'autre du Parlement de Toulouse",
                "Il s'agit uniquement d'une distinction entre droit civil et droit pénal",
              ],
              correct_index: 1,
              explanation:
                "La Loire constitue grossièrement la frontière : au Nord, prédominent les coutumes (droit coutumier) ; au Sud, le droit romain reste la principale référence (pays de droit écrit).",
            },
            {
              question: "Les Parlements sous l'Ancien Régime étaient :",
              choices: [
                "Des assemblées législatives élues par le peuple",
                "Des cours de justice souveraines compétentes pour enregistrer les ordonnances royales",
                "Des chambres de commerce",
                "Des conseils consultatifs au roi sans pouvoir juridictionnel",
              ],
              correct_index: 1,
              explanation:
                "Les Parlements (Paris, Bordeaux, Toulouse…) étaient des cours de justice souveraines. Leur pouvoir d'enregistrement (et de remontrances) leur donnait une influence politique considérable.",
            },
            {
              question: "L'Ordonnance civile de Colbert (1667) est importante parce qu'elle :",
              choices: [
                "Abolit le servage en France",
                "Unifia la procédure civile dans tout le royaume",
                "Créa les premières juridictions pénales",
                "Introduisit la codification napoléonienne",
              ],
              correct_index: 1,
              explanation:
                "L'Ordonnance sur la procédure civile de 1667 (dite « Code Louis ») unifiait la procédure civile à l'échelle du royaume, préfigurant l'effort de codification de l'État monarchique.",
            },
            {
              question: "Qu'est-ce que la « Grande Coutume » en droit médiéval français ?",
              choices: [
                "Une loi royale qui primait sur toutes les coutumes locales",
                "La Coutume de Paris, devenue la principale référence dans les pays de coutumes après sa rédaction officielle en 1510",
                "Un recueil de droit canonique",
                "Les décisions du Parlement de Paris compilées en un volume",
              ],
              correct_index: 1,
              explanation:
                "La Coutume de Paris, rédigée officiellement en 1510 puis réformée en 1580, acquit une autorité quasi nationale. Elle influencera directement le Code civil de 1804.",
            },
          ],
        },
      ]
    : []),

  // ── DROIT CONSTITUTIONNEL ───────────────────────────────────
  ...(DC_ID
    ? [
        {
          subject_id: DC_ID,
          title: "Désignation des gouvernants & référendum",
          chapter: "La désignation des gouvernants",
          difficulty: "facile",
          description: "Quiz sur les modes de désignation et le référendum en droit constitutionnel.",
          questions: [
            {
              question: "Quelle est la principale critique adressée au tirage au sort comme mode de désignation des gouvernants ?",
              choices: [
                "Son coût excessif",
                "Il ne sélectionne pas sur la compétence et peut produire des gouvernants incompétents",
                "Il viole le principe d'égalité",
                "Il est interdit par la Constitution française",
              ],
              correct_index: 1,
              explanation:
                "Le tirage au sort (procédé démocratique athénien) ne filtre pas la compétence. L'élection, au contraire, est censée sélectionner les plus aptes via le suffrage.",
            },
            {
              question: "Quel article de la Constitution de 1958 organise le référendum législatif ?",
              choices: [
                "Article 3",
                "Article 11",
                "Article 49-3",
                "Article 89",
              ],
              correct_index: 1,
              explanation:
                "L'article 11 permet au Président de la République, sur proposition du gouvernement ou des assemblées, de soumettre au référendum certains projets de loi (organisation des pouvoirs publics, réformes économiques…).",
            },
            {
              question: "Le référendum constituant de l'article 89 se distingue du référendum législatif de l'article 11 car :",
              choices: [
                "L'article 89 peut être déclenché par n'importe quel citoyen",
                "L'article 89 porte sur la révision de la Constitution et peut être remplacé par un vote du Congrès à 3/5e",
                "L'article 11 permet de modifier la Constitution",
                "L'article 89 n'existe plus depuis 2008",
              ],
              correct_index: 1,
              explanation:
                "L'art. 89 organise la révision constitutionnelle : adopté par les deux chambres en termes identiques, le projet est soumis au référendum OU au Congrès (majorité des 3/5e des suffrages exprimés).",
            },
            {
              question: "La responsabilité politique du gouvernement devant l'Assemblée nationale se traduit par :",
              choices: [
                "La dissolution automatique du gouvernement",
                "La motion de censure (art. 49 al. 3) permettant à l'Assemblée de renverser le gouvernement",
                "Un référendum obligatoire",
                "L'intervention du Conseil constitutionnel",
              ],
              correct_index: 1,
              explanation:
                "L'Assemblée nationale peut voter une motion de censure (art. 49 al. 3 Const.) à la majorité absolue de ses membres. Si adoptée, le Premier ministre doit remettre la démission du gouvernement.",
            },
            {
              question: "Qu'est-ce qu'une mutation constitutionnelle (au sens de Jellineck) ?",
              choices: [
                "Une révision formelle de la Constitution votée par le Congrès",
                "Un changement de fait du contenu d'une norme constitutionnelle sans modification du texte",
                "Un coup d'État",
                "Une dissolution de l'Assemblée nationale",
              ],
              correct_index: 1,
              explanation:
                "Les mutations constitutionnelles (Verfassungswandlung) désignent les transformations pratiques de la Constitution sans que son texte soit modifié : par la coutume, la jurisprudence ou la pratique des institutions.",
            },
            {
              question: "Le suffrage universel direct en France a été pleinement établi (pour les hommes et les femmes) en :",
              choices: ["1789", "1848", "1944", "1962"],
              correct_index: 2,
              explanation:
                "Le suffrage universel masculin date de 1848 (IIe République). Les femmes obtiennent le droit de vote par l'ordonnance du 21 avril 1944. Le suffrage est donc pleinement universel à partir de 1944.",
            },
          ],
        },
        {
          subject_id: DC_ID,
          title: "Révision et mutation constitutionnelles",
          chapter: "Les mutations constitutionnelles",
          difficulty: "difficile",
          description: "Quiz approfondi sur la révision constitutionnelle et ses limites.",
          questions: [
            {
              question: "Quelles sont les limites matérielles à la révision de la Constitution de 1958 ?",
              choices: [
                "La révision ne peut pas modifier les droits fondamentaux",
                "La forme républicaine du gouvernement ne peut faire l'objet d'une révision (art. 89 al. 5)",
                "La révision ne peut intervenir en période de cohabitation",
                "Toute révision requiert l'accord du Sénat",
              ],
              correct_index: 1,
              explanation:
                "L'article 89 al. 5 pose une limite absolue : « La forme républicaine du gouvernement ne peut faire l'objet d'une révision. » Il existe aussi une limite temporelle : pas de révision en cas d'atteinte à l'intégrité du territoire (art. 89 al. 4).",
            },
            {
              question: "De Gaulle a utilisé l'article 11 pour réviser la Constitution en 1962 (élection du Président au SUD). Cette pratique est-elle constitutionnellement orthodoxe ?",
              choices: [
                "Oui, l'article 11 permet toute révision constitutionnelle",
                "Non, la révision doit emprunter la voie de l'article 89 ; l'usage de l'art. 11 à cette fin est contesté",
                "Oui, le Conseil constitutionnel l'a validé explicitement",
                "Non, mais cela n'a aucune conséquence juridique",
              ],
              correct_index: 1,
              explanation:
                "En 1962, De Gaulle contourne l'art. 89 en utilisant l'art. 11. Le Conseil constitutionnel s'est déclaré incompétent pour contrôler les lois référendaires. Cette pratique reste une controverse doctrinale majeure.",
            },
            {
              question: "La théorie du pouvoir constituant dérivé (ou institué) désigne :",
              choices: [
                "Le pouvoir du peuple de créer ex nihilo une Constitution",
                "Le pouvoir des organes constitués de réviser la Constitution dans les formes qu'elle prévoit",
                "Le pouvoir judiciaire d'interpréter la Constitution",
                "Le pouvoir du gouvernement de légiférer par ordonnances",
              ],
              correct_index: 1,
              explanation:
                "Le pouvoir constituant originaire crée la Constitution (rupture avec l'ordre précédent). Le pouvoir constituant dérivé (ou de révision) la modifie selon les procédures qu'elle fixe elle-même.",
            },
          ],
        },
      ]
    : []),

  // ── INSTITUTIONS JURIDICTIONNELLES ──────────────────────────
  ...(IJ_ID
    ? [
        {
          subject_id: IJ_ID,
          title: "Organisation et principes de la justice",
          chapter: "Principes d'organisation judiciaire",
          difficulty: "facile",
          description: "Quiz sur les grands principes d'organisation et de compétence des juridictions françaises.",
          questions: [
            {
              question: "La France a deux ordres juridictionnels distincts. Lesquels ?",
              choices: [
                "Ordre civil et ordre pénal",
                "Ordre judiciaire et ordre administratif",
                "Ordre national et ordre européen",
                "Ordre constitutionnel et ordre ordinaire",
              ],
              correct_index: 1,
              explanation:
                "La dualité de juridictions est un principe fondamental : l'ordre judiciaire (tribunaux judiciaires, cours d'appel, Cour de cassation) et l'ordre administratif (tribunaux administratifs, cours administratives d'appel, Conseil d'État).",
            },
            {
              question: "Quel est le rôle du Tribunal des conflits ?",
              choices: [
                "Juger les conflits entre salariés et employeurs",
                "Résoudre les conflits de compétence entre l'ordre judiciaire et l'ordre administratif",
                "Arbitrer les conflits entre les deux assemblées parlementaires",
                "Juger les conflits internationaux",
              ],
              correct_index: 1,
              explanation:
                "Le Tribunal des conflits tranche les conflits de compétence (positif ou négatif) entre les juridictions judiciaires et administratives.",
            },
            {
              question: "Qu'est-ce que le principe du double degré de juridiction ?",
              choices: [
                "L'obligation de saisir deux juges en même temps",
                "Le droit pour tout justiciable de faire rejuger son affaire par une juridiction supérieure (appel)",
                "La possibilité de se pourvoir en cassation",
                "L'obligation d'avoir un avocat en première instance et en appel",
              ],
              correct_index: 1,
              explanation:
                "Le double degré garantit à chaque partie le droit à un réexamen de son affaire en fait et en droit par une juridiction d'appel. C'est un principe directeur du procès civil et pénal.",
            },
            {
              question: "La Cour de cassation est :",
              choices: [
                "Un troisième degré de juridiction qui rejuge les faits",
                "Une juridiction de droit qui contrôle uniquement la bonne application de la loi",
                "La juridiction suprême de l'ordre administratif",
                "Un tribunal spécialisé dans les affaires pénales",
              ],
              correct_index: 1,
              explanation:
                "La Cour de cassation ne juge pas les faits : elle vérifie que les juridictions inférieures ont correctement appliqué le droit. En cas de cassation, l'affaire est renvoyée devant une cour de renvoi.",
            },
            {
              question: "Qu'est-ce que la compétence « ratione materiae » ?",
              choices: [
                "La compétence géographique (territoire) d'une juridiction",
                "La compétence d'une juridiction définie par la nature de l'affaire (matière civile, commerciale, pénale…)",
                "La compétence fondée sur la personnalité des parties",
                "La compétence en fonction du montant du litige",
              ],
              correct_index: 1,
              explanation:
                "La compétence ratione materiae (ou d'attribution) désigne la répartition des affaires entre juridictions selon leur nature : le tribunal judiciaire pour les affaires civiles, le tribunal de commerce pour les affaires commerciales, etc.",
            },
            {
              question: "Depuis la réforme de 2019, quel tribunal a remplacé le tribunal de grande instance et le tribunal d'instance ?",
              choices: [
                "Le tribunal supérieur civil",
                "Le tribunal judiciaire",
                "Le tribunal de première instance",
                "Le tribunal de droit commun",
              ],
              correct_index: 1,
              explanation:
                "La loi du 23 mars 2019 a fusionné le TGI et le TI en un seul Tribunal judiciaire (TJ). Il est la juridiction de droit commun de première instance de l'ordre judiciaire.",
            },
            {
              question: "Le principe de la collégialité signifie que :",
              choices: [
                "Tous les juges doivent appartenir au même barreau",
                "Les décisions sont rendues par plusieurs juges siégeant ensemble",
                "Le justiciable peut choisir son juge",
                "Les audiences se tiennent en public",
              ],
              correct_index: 1,
              explanation:
                "La collégialité implique que la juridiction statue à plusieurs juges (par opposition au juge unique). Elle est censée garantir l'impartialité et la qualité des décisions.",
            },
          ],
        },
        {
          subject_id: IJ_ID,
          title: "Les juridictions françaises — approfondissement",
          chapter: "Les différentes juridictions",
          difficulty: "moyen",
          description: "Quiz sur la structure et les compétences des principales juridictions françaises.",
          questions: [
            {
              question: "Le Conseil d'État cumule deux fonctions principales. Lesquelles ?",
              choices: [
                "Fonction législative et fonction judiciaire",
                "Fonction consultative (avis au gouvernement) et fonction juridictionnelle (juge administratif suprême)",
                "Fonction de police et fonction judiciaire",
                "Fonction d'audit et fonction de révision constitutionnelle",
              ],
              correct_index: 1,
              explanation:
                "Le Conseil d'État est à la fois le conseiller juridique du gouvernement (il donne des avis sur les projets de loi et de décrets) et la juridiction suprême de l'ordre administratif.",
            },
            {
              question: "Qu'est-ce que l'excès de pouvoir, fondement du recours pour excès de pouvoir (REP) ?",
              choices: [
                "Tout acte administratif illégal permettant à un particulier de demander son annulation devant le juge administratif",
                "Une sanction pénale pour acte arbitraire",
                "Un recours exercé par le Parlement contre le gouvernement",
                "Une procédure d'urgence devant le Conseil d'État",
              ],
              correct_index: 0,
              explanation:
                "Le recours pour excès de pouvoir (REP) permet à tout intéressé de demander au juge administratif d'annuler un acte administratif illégal (incompétence, vice de forme, violation de la loi, détournement de pouvoir).",
            },
            {
              question: "La Cour d'assises est compétente pour juger :",
              choices: [
                "Les délits punis de plus de 2 ans d'emprisonnement",
                "Les crimes (infractions passibles de plus de 10 ans de réclusion)",
                "Les contraventions graves",
                "Les affaires familiales",
              ],
              correct_index: 1,
              explanation:
                "La Cour d'assises (ou depuis 2021, le tribunal criminel départemental pour certains crimes) est compétente pour juger les crimes punis de plus de 10 ans de réclusion. Elle est composée de magistrats professionnels et d'un jury populaire.",
            },
            {
              question: "Quelle est la différence entre un jugement et un arrêt ?",
              choices: [
                "Le jugement est rendu en première instance, l'arrêt par une cour (appel, cassation, d'assises…)",
                "Le jugement est civil, l'arrêt est pénal",
                "Le jugement est définitif, l'arrêt peut être réformé",
                "Il n'y a aucune différence terminologique",
              ],
              correct_index: 0,
              explanation:
                "Les décisions de première instance s'appellent jugements. Les décisions des cours (cours d'appel, Cour de cassation, Conseil d'État…) s'appellent arrêts.",
            },
          ],
        },
      ]
    : []),
];

// ═══════════════════════════════════════════════════════════════
// FLASHCARDS
// ═══════════════════════════════════════════════════════════════

const flashcards = [
  // ── INTRODUCTION GÉNÉRALE AU DROIT ──────────────────────────
  ...(IGD_ID
    ? [
        { subject_id: IGD_ID, deck_name: "Règle de droit", front: "Qu'est-ce que la règle de droit ?", back: "Norme générale, abstraite, obligatoire et sanctionnée par l'État, qui régit les rapports sociaux.", difficulty: "facile", tags: ["fondamentaux", "définition"] },
        { subject_id: IGD_ID, deck_name: "Règle de droit", front: "Différence entre règle impérative et règle supplétive ?", back: "La règle impérative s'impose absolument (les parties ne peuvent y déroger). La règle supplétive s'applique seulement si les parties n'ont pas prévu autre chose.", difficulty: "facile", tags: ["classification"] },
        { subject_id: IGD_ID, deck_name: "Règle de droit", front: "Qu'est-ce que l'ordre public en droit privé ?", back: "Ensemble de règles impératives qui protègent l'intérêt général ; toute clause contraire est nulle de plein droit.", difficulty: "moyen", tags: ["ordre public"] },
        { subject_id: IGD_ID, deck_name: "Sources du droit", front: "Quelles sont les 4 principales sources formelles du droit français ?", back: "1. La Constitution ; 2. La loi (au sens large : textes du Parlement) ; 3. Le règlement (actes de l'exécutif) ; 4. La jurisprudence (valeur normative indirecte). + La coutume et la doctrine.", difficulty: "facile", tags: ["sources"] },
        { subject_id: IGD_ID, deck_name: "Sources du droit", front: "Qu'est-ce que la hiérarchie des normes (Kelsen) ?", back: "Théorie selon laquelle les normes s'ordonnent en pyramide : chaque norme doit être conforme à la norme supérieure. Au sommet : la Constitution ; puis les traités, les lois, les règlements.", difficulty: "moyen", tags: ["hiérarchie", "Kelsen"] },
        { subject_id: IGD_ID, deck_name: "Sources du droit", front: "Définir la coutume (ou usage) comme source de droit.", back: "Pratique générale, constante et ancienne (élément matériel) accompagnée de la conviction d'obéir à une règle obligatoire (opinio juris – élément psychologique).", difficulty: "moyen", tags: ["coutume"] },
        { subject_id: IGD_ID, deck_name: "Sources du droit", front: "Qu'est-ce qu'une QPC ?", back: "Question Prioritaire de Constitutionnalité (art. 61-1 Const., réforme 2008) : mécanisme permettant à tout justiciable de contester la constitutionnalité d'une loi applicable à son litige.", difficulty: "moyen", tags: ["QPC", "constitutionnel"] },
        { subject_id: IGD_ID, deck_name: "Droits subjectifs", front: "Distinguer droits réels et droits personnels.", back: "Droit réel : droit sur une chose, opposable à tous (erga omnes). Ex. : propriété, usufruit.\nDroit personnel (ou droit de créance) : droit contre une personne déterminée (débiteur). Ex. : créance, obligation contractuelle.", difficulty: "moyen", tags: ["droits subjectifs"] },
        { subject_id: IGD_ID, deck_name: "Droits subjectifs", front: "Qu'est-ce que la capacité juridique ?", back: "Aptitude à être titulaire de droits (capacité de jouissance) et à les exercer soi-même (capacité d'exercice). Toute personne physique a la capacité de jouissance ; la capacité d'exercice peut être limitée (mineur, majeur protégé).", difficulty: "facile", tags: ["capacité"] },
        { subject_id: IGD_ID, deck_name: "Droits subjectifs", front: "Qu'est-ce qu'une personne morale ?", back: "Groupement de personnes ou de biens auquel le droit reconnaît la personnalité juridique : associations, sociétés, syndicats, collectivités publiques…", difficulty: "facile", tags: ["personnes morales"] },
        { subject_id: IGD_ID, deck_name: "La preuve", front: "Que signifie « actori incumbit probatio » ?", back: "« La preuve incombe au demandeur. » Principe général de la charge de la preuve (art. 1353 C. civ.) : c'est celui qui réclame quelque chose qui doit le prouver.", difficulty: "facile", tags: ["preuve", "latin"] },
        { subject_id: IGD_ID, deck_name: "La preuve", front: "Quels sont les principaux modes de preuve en matière civile ?", back: "1. La preuve littérale (écrit) ; 2. Le témoignage (preuve testimoniale) ; 3. Les présomptions ; 4. L'aveu ; 5. Le serment.", difficulty: "moyen", tags: ["modes de preuve"] },
        { subject_id: IGD_ID, deck_name: "La preuve", front: "Différence entre présomption simple et présomption irréfragable ?", back: "Simple (juris tantum) : peut être renversée par la preuve contraire.\nIrréfragable (juris et de jure) : aucune preuve contraire n'est admise. Ex. : autorité de la chose jugée.", difficulty: "difficile", tags: ["présomption"] },
        { subject_id: IGD_ID, deck_name: "La preuve", front: "Qu'est-ce qu'un acte authentique ?", back: "Acte reçu par un officier public compétent (notaire, officier d'état civil…), qui fait foi jusqu'à inscription en faux. Il a la plus haute force probante.", difficulty: "moyen", tags: ["acte authentique"] },
      ]
    : []),

  // ── INTRODUCTION HISTORIQUE AU DROIT ────────────────────────
  ...(IHD_ID
    ? [
        { subject_id: IHD_ID, deck_name: "Droit romain", front: "Qu'est-ce que le Corpus Juris Civilis ?", back: "Codification du droit romain par Justinien (528-534) composée du Code (constitutions impériales), du Digeste (jurisconsultes), des Institutes (manuel) et des Novelles (nouvelles constitutions).", difficulty: "facile", tags: ["Rome", "Justinien"] },
        { subject_id: IHD_ID, deck_name: "Droit romain", front: "Que sont les XII Tables ?", back: "Premier texte de droit romain écrit (451-450 av. J.-C.), gravé sur bronze ; elles fixaient le droit civil, pénal et la procédure pour mettre fin à l'arbitraire des patriciens.", difficulty: "facile", tags: ["Rome", "XII Tables"] },
        { subject_id: IHD_ID, deck_name: "Droit romain", front: "Qu'est-ce qu'un jurisconsulte romain ?", back: "Juriste spécialisé qui donnait des consultations (responsa) aux juges et aux particuliers ; leurs écrits forment l'essentiel du Digeste. Parmi les plus célèbres : Gaius, Ulpien, Papinien.", difficulty: "moyen", tags: ["jurisconsultes"] },
        { subject_id: IHD_ID, deck_name: "Droit médiéval", front: "Qu'est-ce que la « réception » du droit romain en Europe médiévale ?", back: "Mouvement de redécouverte et de réintégration du Corpus Juris Civilis à partir du XIe siècle (école de Bologne, glossateurs), qui fit du droit romain le droit savant commun de l'Europe.", difficulty: "moyen", tags: ["réception", "Moyen Âge"] },
        { subject_id: IHD_ID, deck_name: "Droit médiéval", front: "Qu'est-ce que le droit canonique ?", back: "Droit de l'Église catholique, codifié dans le Décret de Gratien (v. 1140) puis les Décrétales. Régissait le mariage, la famille, les successions… et avait une grande influence au Moyen Âge.", difficulty: "moyen", tags: ["droit canonique"] },
        { subject_id: IHD_ID, deck_name: "Droit médiéval", front: "Qu'est-ce que le droit féodal ?", back: "Système juridique médiéval fondé sur les relations de vassalité (serment de fidélité, fief). Le seigneur accorde une terre (fief) au vassal qui lui doit aide et conseil (auxilium et consilium).", difficulty: "facile", tags: ["féodalité"] },
        { subject_id: IHD_ID, deck_name: "Ancien Régime", front: "Qu'est-ce que les Parlements sous l'Ancien Régime ?", back: "Cours de justice souveraines (Paris + 12 provinciaux) qui enregistraient les ordonnances royales et pouvaient émettre des remontrances. Supprimés par la Révolution en 1790.", difficulty: "moyen", tags: ["Ancien Régime", "Parlements"] },
        { subject_id: IHD_ID, deck_name: "Ancien Régime", front: "Quelle est la distinction Nord/Sud en matière de droit sous l'Ancien Régime ?", back: "Au Nord : pays de coutumes (droit coutumier, d'origine germanique). Au Sud : pays de droit écrit (droit romain). La Loire constitue approximativement la frontière.", difficulty: "moyen", tags: ["droit écrit", "coutumes"] },
        { subject_id: IHD_ID, deck_name: "Ancien Régime", front: "Qu'est-ce que la Coutume de Paris ?", back: "Principale coutume du Nord de la France, rédigée officiellement en 1510 et réformée en 1580. Elle acquit une autorité quasi nationale et influença directement le Code civil de 1804.", difficulty: "moyen", tags: ["Coutume de Paris"] },
        { subject_id: IHD_ID, deck_name: "Époque franque", front: "Qu'est-ce que la loi salique ?", back: "Loi des Francs Saliens (Ve-VIe s.) fixée par écrit sous Clovis. Elle organisait la compensation pécuniaire (wergeld) pour les crimes et excluait les femmes de la succession à la terre (principe étendu aux successions royales).", difficulty: "facile", tags: ["Francs", "loi salique"] },
      ]
    : []),

  // ── DROIT CONSTITUTIONNEL ───────────────────────────────────
  ...(DC_ID
    ? [
        { subject_id: DC_ID, deck_name: "Constitution et révision", front: "Quelle est la limite absolue à la révision de la Constitution française ?", back: "La forme républicaine du gouvernement (art. 89 al. 5 Const.) ne peut être révisée. Également : impossibilité de réviser en cas d'atteinte à l'intégrité du territoire (art. 89 al. 4).", difficulty: "moyen", tags: ["révision", "limites"] },
        { subject_id: DC_ID, deck_name: "Constitution et révision", front: "Qu'est-ce que le pouvoir constituant originaire ?", back: "Pouvoir de créer une nouvelle Constitution ex nihilo, en rupture avec l'ordre constitutionnel précédent. Il est illimité juridiquement (ex. : Constituante de 1789, Congrès de 1958).", difficulty: "moyen", tags: ["pouvoir constituant"] },
        { subject_id: DC_ID, deck_name: "Constitution et révision", front: "Qu'est-ce que le pouvoir constituant dérivé ?", back: "Pouvoir de réviser la Constitution selon les procédures qu'elle prévoit (art. 89 Const.) : initiative (Président ou Parlement), adoption par les deux chambres en termes identiques, ratification (référendum ou Congrès à 3/5e).", difficulty: "moyen", tags: ["révision constitutionnelle"] },
        { subject_id: DC_ID, deck_name: "Désignation des gouvernants", front: "Quelle est la différence entre le suffrage universel direct et indirect ?", back: "Direct : les citoyens élisent directement leurs représentants (ex. : élection du Président de la République depuis 1962, élections législatives).\nIndirect : les citoyens élisent des grands électeurs qui votent à leur tour (ex. : élection des sénateurs français).", difficulty: "facile", tags: ["suffrage"] },
        { subject_id: DC_ID, deck_name: "Désignation des gouvernants", front: "Qu'est-ce que le référendum d'initiative partagée (art. 11 al. 3 Const.) ?", back: "Procédure introduite en 2008 : une proposition de loi peut être soumise au référendum si elle est soutenue par 1/5e des membres du Parlement ET 1/10e des électeurs inscrits.", difficulty: "difficile", tags: ["référendum", "initiative partagée"] },
        { subject_id: DC_ID, deck_name: "Responsabilité politique", front: "Qu'est-ce qu'une motion de censure ?", back: "Vote par lequel l'Assemblée nationale renverse le gouvernement (art. 49 al. 3 Const.). Elle doit être signée par au moins 1/10e des membres, et adoptée à la majorité absolue des membres de l'Assemblée.", difficulty: "moyen", tags: ["motion de censure", "responsabilité"] },
        { subject_id: DC_ID, deck_name: "Responsabilité politique", front: "Qu'est-ce que la question de confiance (art. 49 al. 1 Const.) ?", back: "Le Premier ministre peut, après délibération du Conseil des ministres, engager la responsabilité du gouvernement sur son programme ou une déclaration de politique générale devant l'Assemblée nationale.", difficulty: "moyen", tags: ["confiance", "gouvernement"] },
        { subject_id: DC_ID, deck_name: "Mutations constitutionnelles", front: "Qu'est-ce qu'une mutation constitutionnelle (Verfassungswandlung) ?", back: "Transformation du contenu réel d'une règle constitutionnelle sans modification formelle du texte : sous l'effet de la coutume, de la pratique institutionnelle ou de la jurisprudence. Théorisée par Georg Jellineck.", difficulty: "difficile", tags: ["mutation", "Jellineck"] },
        { subject_id: DC_ID, deck_name: "Représentation", front: "Qu'est-ce que le mandat représentatif (en opposition au mandat impératif) ?", back: "Le mandat représentatif : l'élu représente la Nation entière, pas ses électeurs directs ; il vote librement, sans instruction ni recall. Le mandat impératif (interdit par l'art. 27 Const.) lierait le représentant aux instructions de ses électeurs.", difficulty: "moyen", tags: ["mandat", "représentation"] },
      ]
    : []),

  // ── INSTITUTIONS JURIDICTIONNELLES ──────────────────────────
  ...(IJ_ID
    ? [
        { subject_id: IJ_ID, deck_name: "Organisation judiciaire", front: "Qu'est-ce que la dualité de juridictions en France ?", back: "Coexistence de deux ordres : l'ordre judiciaire (Cour de cassation au sommet) pour les litiges entre particuliers et les infractions pénales, et l'ordre administratif (Conseil d'État au sommet) pour les litiges impliquant l'administration.", difficulty: "facile", tags: ["dualité", "ordres"] },
        { subject_id: IJ_ID, deck_name: "Organisation judiciaire", front: "Quel est le rôle du Tribunal des conflits ?", back: "Juridiction paritaire qui tranche les conflits de compétence entre l'ordre judiciaire et l'ordre administratif (conflit positif : les deux se déclarent compétents ; conflit négatif : aucun ne se déclare compétent).", difficulty: "moyen", tags: ["Tribunal des conflits"] },
        { subject_id: IJ_ID, deck_name: "Organisation judiciaire", front: "Qu'est-ce que la compétence ratione materiae ?", back: "Répartition des affaires entre juridictions selon leur nature (matière civile, commerciale, pénale, administrative…). Opposée à la compétence ratione loci (géographique) ou ratione personae (personnalité des parties).", difficulty: "moyen", tags: ["compétence"] },
        { subject_id: IJ_ID, deck_name: "Organisation judiciaire", front: "Quelle est la différence entre voie de recours ordinaire et extraordinaire ?", back: "Ordinaire : suspensive et devolutive (opposition, appel) — rouvre le débat.\nExtraordinaire : non suspensive en règle générale (pourvoi en cassation, tierce opposition, requête en révision) — ne rouvre pas le débat sur le fond.", difficulty: "difficile", tags: ["voies de recours"] },
        { subject_id: IJ_ID, deck_name: "Cour de cassation", front: "Qu'est-ce qu'un arrêt de cassation avec renvoi ?", back: "La Cour de cassation casse (annule) la décision attaquée et renvoie l'affaire devant une autre juridiction du même degré (cour de renvoi) pour qu'elle soit rejugée sur le fond.", difficulty: "moyen", tags: ["cassation", "renvoi"] },
        { subject_id: IJ_ID, deck_name: "Cour de cassation", front: "Qu'est-ce qu'un arrêt de rejet de la Cour de cassation ?", back: "La Cour de cassation rejette le pourvoi : la décision attaquée est confirmée et devient définitive. Le litige est terminé.", difficulty: "facile", tags: ["rejet", "cassation"] },
        { subject_id: IJ_ID, deck_name: "Principes directeurs", front: "Qu'est-ce que le principe de la publicité des audiences ?", back: "Les audiences se déroulent en principe en public (principe issu de la DDHC et de la CEDH art. 6). Des exceptions existent : huis clos en matière familiale, pour les mineurs, pour la sécurité nationale.", difficulty: "facile", tags: ["publicité"] },
        { subject_id: IJ_ID, deck_name: "Principes directeurs", front: "Qu'est-ce que l'impartialité du juge ?", back: "Le juge ne doit avoir aucun intérêt personnel dans le litige (impartialité subjective) et les apparences ne doivent pas permettre de douter de sa neutralité (impartialité objective). Garanti par l'art. 6§1 CEDH.", difficulty: "moyen", tags: ["impartialité"] },
        { subject_id: IJ_ID, deck_name: "Principes directeurs", front: "Qu'est-ce que le principe du contradictoire ?", back: "Chaque partie doit pouvoir prendre connaissance des arguments et pièces de l'autre partie et y répondre. Principe fondamental du procès équitable (art. 6 CEDH, art. 14 CPCV).", difficulty: "moyen", tags: ["contradictoire"] },
        { subject_id: IJ_ID, deck_name: "Ordre administratif", front: "Quelles sont les 3 formations de jugement du Conseil d'État ?", back: "1. Section du contentieux (formation normale) ; 2. Sous-sections réunies (affaires importantes) ; 3. Assemblée du contentieux (grandes affaires de principe, formation la plus solennelle).", difficulty: "difficile", tags: ["Conseil d'État"] },
      ]
    : []),
];

// ═══════════════════════════════════════════════════════════════
// EXERCISES
// ═══════════════════════════════════════════════════════════════

const exercises = [
  // ── INTRODUCTION GÉNÉRALE AU DROIT ──────────────────────────
  ...(IGD_ID
    ? [
        {
          subject_id: IGD_ID,
          title: "Dissertation : La règle de droit est-elle nécessairement juste ?",
          type: "dissertation",
          difficulty: "moyen",
          chapter: "La règle de droit",
          estimated_time_minutes: 180,
          statement:
            "La règle de droit est-elle nécessairement juste ?\n\nVous traiterez ce sujet sous la forme d'une dissertation juridique rédigée, comportant une introduction (avec accroche, définition des termes, problématique et annonce du plan) et deux parties équilibrées.",
          methodology_tips:
            "## Méthodologie dissertation\n\n**Introduction :**\n- Accroche : citation (ex. Pascal : « Justice, force » / Portalis sur le droit naturel)\n- Définir « règle de droit » ET « juste » (justice formelle ≠ justice substantielle)\n- Problématique : La légalité est-elle garante de la légitimité ?\n- Annonce du plan en 2 parties\n\n**Évitez** le plan descriptif « I. la règle de droit A. définition B. caractères ». Adoptez un plan analytique-argumentatif.\n\n**Idées directrices :**\n- I. La règle de droit vise la justice mais ne la garantit pas\n- II. Des mécanismes correcteurs permettent de rapprocher légalité et légitimité",
          correction:
            "## Correction indicative\n\n**Introduction**\nSelon Pascal (*Pensées*) : « La justice sans la force est impuissante ; la force sans la justice est tyrannique. » Cette formule illustre la tension entre légalité (la règle formellement valide) et légitimité (la règle moralement juste). La règle de droit, norme générale, abstraite et sanctionnée par l'État, aspire à la justice mais peut s'en écarter.\n\n**Problématique :** La validité formelle d'une règle de droit suffit-elle à en garantir la justice ?\n\n**I. La règle de droit et la justice : une relation nécessaire mais imparfaite**\n\nA. La règle de droit est fondée sur des valeurs de justice\n- Le droit positif puise dans le droit naturel (Locke, Grotius) : il tend à protéger la vie, la propriété, la liberté\n- La DDHC (1789) incarne ces valeurs dans l'ordre juridique\n- La règle de droit se justifie par sa finalité sociale : paix, sécurité, égalité\n\nB. La règle de droit peut être injuste : le droit positif n'est pas toujours juste\n- Les lois de Nuremberg, les lois de ségrégation : lois formellement valides, matériellement injustes\n- Le positivisme juridique (Kelsen) : la validité d'une norme est indépendante de sa valeur morale\n- La loi peut cristalliser des inégalités (ex. : longue exclusion des femmes du droit de vote)\n\n**II. Des mécanismes correcteurs pour rapprocher droit et justice**\n\nA. Le contrôle de constitutionnalité et les droits fondamentaux\n- Le Conseil constitutionnel veille au respect des droits constitutionnellement garantis\n- La QPC (depuis 2010) : tout justiciable peut contester l'injustice d'une loi\n- La CEDH impose un contrôle supranational de la légalité au regard des droits de l'homme\n\nB. Le rôle du juge et de la doctrine\n- L'interprétation judiciaire permet d'adapter la règle à l'équité\n- La théorie de l'abus de droit, la bonne foi contractuelle, l'enrichissement sans cause : mécanismes correcteurs d'injustice formelle\n- La désuétude et la non-application des lois injustes\n\n**Conclusion :** La règle de droit vise la justice sans la garantir. C'est pourquoi les ordres juridiques contemporains ont multiplié les garde-fous : constitutionnalisation des droits, contrôle de conventionnalité, pouvoir d'appréciation du juge.",
        },
        {
          subject_id: IGD_ID,
          title: "QRC : La distinction droit public / droit privé",
          type: "qrc",
          difficulty: "facile",
          chapter: "Le système juridique",
          estimated_time_minutes: 30,
          statement:
            "Question de cours : Exposez la distinction entre droit public et droit privé et montrez ses limites.\n\n(Réponse attendue : 1 à 2 pages, sans plan apparent mais structurée).",
          methodology_tips:
            "## Méthode QRC\n\n- **Pas de plan en I/II** affiché, mais structurez votre réponse\n- Définissez d'abord les deux notions avec précision\n- Citez des exemples concrets (branches du droit)\n- Montrez ensuite les limites : branches mixtes (droit du travail, droit pénal des affaires, droit de l'environnement)\n- Concluez sur la relativité de la distinction",
          correction:
            "## Correction\n\nLa summa divisio du droit français oppose traditionnellement le **droit public** et le **droit privé**.\n\nLe **droit public** régit les relations dans lesquelles intervient la puissance publique : organisation de l'État (droit constitutionnel), rapports entre l'État et les particuliers (droit administratif), finances publiques (droit fiscal). Il est marqué par l'inégalité des parties (prérogatives exorbitantes de la puissance publique) et est appliqué par les juridictions administratives.\n\nLe **droit privé** régit les relations entre personnes privées (physiques ou morales) sur un pied d'égalité : droit civil (personnes, famille, contrats, responsabilité, biens), droit commercial, droit du travail (en partie). Il est appliqué par les juridictions judiciaires.\n\nCette distinction présente toutefois des **limites** :\n- Des branches mixtes existent : le droit du travail mêle règles publiques (inspection du travail, code du travail impératif) et privées (contrat de travail).\n- L'État peut agir en droit privé (SPIC soumis au droit commun).\n- Des droits « transversaux » transcendent la distinction : droit de la concurrence, droit de l'environnement.\n\nLa distinction conserve une utilité pédagogique et pratique (compétence juridictionnelle) mais doit être relativisée face à la complexité du droit contemporain.",
        },
        {
          subject_id: IGD_ID,
          title: "Cas pratique : La preuve d'un contrat oral",
          type: "cas_pratique",
          difficulty: "moyen",
          chapter: "La preuve",
          estimated_time_minutes: 60,
          statement:
            "**Cas pratique**\n\nMartin et Sophie sont amis. Le 1er mars, Martin prête oralement 3 000 € à Sophie, sans rédiger d'écrit. Sophie reconnaît avoir reçu la somme mais conteste aujourd'hui l'obligation de remboursement, affirmant qu'il s'agissait d'un don.\n\nMartin vous consulte. Quelle est sa situation au regard du droit de la preuve ? Pourra-t-il prouver l'existence et la nature de ce prêt ?",
          methodology_tips:
            "## Méthode du cas pratique\n\n1. **Identifier les faits juridiquement pertinents**\n2. **Qualifier juridiquement** : quel contrat ? Quel régime de preuve applicable ?\n3. **Règle de droit** : citer les articles pertinents (C. civ. art. 1359, 1360…)\n4. **Application** : appliquer la règle aux faits\n5. **Solution** : répondre clairement à la question posée\n\n**Textes utiles :**\n- Art. 1359 C. civ. : preuve littérale au-dessus de 1 500 €\n- Art. 1360 C. civ. : exceptions à la preuve littérale\n- Art. 1361 C. civ. : commencement de preuve par écrit",
          correction:
            "## Correction\n\n**Faits :** Prêt oral de 3 000 € entre amis. Pas d'écrit. La débitrice conteste l'obligation.\n\n**Qualification :** Le prêt est un acte juridique (un contrat). La somme est de 3 000 €, soit supérieure à 1 500 €.\n\n**Règle de droit :**\nL'article 1359 du Code civil dispose que l'acte juridique portant sur une somme ou une valeur excédant 1 500 € doit être prouvé par écrit. À défaut, la preuve testimoniale et les présomptions ne sont en principe pas admises.\n\n**Application :**\nMartin ne dispose d'aucun écrit. Il ne peut donc, en principe, pas prouver l'existence du prêt par témoins.\n\nCependant, des exceptions existent :\n- **Aveu judiciaire** (art. 1383 C. civ.) : si Sophie reconnaît le prêt devant le juge, cela suffit. Elle a reconnu avoir reçu 3 000 € mais conteste la nature (don vs prêt) — l'aveu est partiel.\n- **Commencement de preuve par écrit** (art. 1361 C. civ.) : tout écrit émanant du défendeur rendant vraisemblable le fait allégué permet de compléter par témoins ou présomptions. Ex. : SMS de Sophie évoquant le « remboursement ».\n- **Impossibilité morale de se procurer un écrit** (art. 1360 C. civ.) : les tribunaux admettent souvent cette exception entre amis ou membres d'une famille.\n\n**Solution :**\nMartin sera en difficulté probatoire. Il devra rechercher un commencement de preuve par écrit (messages, emails) ou invoquer l'impossibilité morale. À défaut, sa demande risque d'être rejetée. Il est conseillé de toujours rédiger un écrit pour tout prêt supérieur à 1 500 €.",
        },
      ]
    : []),

  // ── INSTITUTIONS JURIDICTIONNELLES ──────────────────────────
  ...(IJ_ID
    ? [
        {
          subject_id: IJ_ID,
          title: "Dissertation : La dualité de juridictions en France est-elle justifiée ?",
          type: "dissertation",
          difficulty: "difficile",
          chapter: "Organisation judiciaire",
          estimated_time_minutes: 180,
          statement:
            "La dualité de juridictions en France est-elle encore justifiée ?\n\nTraitez ce sujet sous la forme d'une dissertation juridique en deux parties.",
          methodology_tips:
            "## Méthodologie\n\n- **Introduction** : rappeler l'origine historique (Révolution, loi des 16-24 août 1790) ; définir la dualité ; problématiser sur sa pertinence aujourd'hui\n- **Plan suggéré :**\n  - I. Les fondements historiques et constitutionnels de la dualité\n  - II. Les critiques et les limites : complexité, conflits de compétence, harmonisation européenne\n\n- Pensez à mentionner le Tribunal des conflits, l'arrêt *Blanco* (TC, 1873), et les évolutions récentes (réformes procédurales, harmonisation CEDH).",
          correction:
            "## Éléments de correction\n\n**Introduction :** La loi des 16-24 août 1790 interdit aux juges de connaître des actes de l'administration. Naît ainsi la dualité : un ordre judiciaire pour les litiges entre particuliers, un ordre administratif pour les litiges impliquant l'administration. Consacrée comme principe fondamental reconnu par les lois de la République (CC, décision *Conseil de la concurrence*, 1987), cette organisation est-elle toujours pertinente ?\n\n**I. Des fondements solides**\nA. Fondements historiques : protection contre l'arbitraire judiciaire (méfiance révolutionnaire à l'égard des Parlements d'Ancien Régime)\nB. Fondements juridiques : le PFRLR de séparation des autorités administratives et judiciaires ; l'arrêt *Blanco* qui consacre un droit administratif autonome\n\n**II. Des fragilités croissantes**\nA. Complexité et insécurité juridique : les conflits de compétence (TC, procédure lente) désorienter les justiciables ; certains litiges (accidents de la circulation impliquant l'État) relèvent d'un ordre par disposition législative spéciale\nB. Harmonisation européenne : la CEDH (art. 6) garantit le droit à un procès équitable sans se soucier de la dualité ; les deux ordres convergent sur les droits fondamentaux\nC. Des propositions d'unification : certains auteurs (rapport Vedel, 1993) proposent une juridiction suprême unique\n\n**Conclusion :** La dualité reste ancrée dans l'identité constitutionnelle française, mais son maintien impose un effort permanent d'articulation (Tribunal des conflits) et de rapprochement procédural entre les deux ordres.",
        },
        {
          subject_id: IJ_ID,
          title: "Cas pratique : Saisir la bonne juridiction",
          type: "cas_pratique",
          difficulty: "facile",
          chapter: "Compétence des juridictions",
          estimated_time_minutes: 45,
          statement:
            "**Cas pratique**\n\n1. M. Dupont, commerçant, est en litige avec son fournisseur (société anonyme) pour un impayé de 15 000 €. Quelle juridiction doit-il saisir ?\n\n2. Mme Lebrun a été victime d'un accident de voiture causé par un véhicule appartenant à l'État (une voiture de gendarmerie). Elle souhaite obtenir réparation. Quelle juridiction est compétente ?\n\n3. M. Martin a reçu un avis d'imposition qu'il conteste. Quelle juridiction est compétente ?",
          methodology_tips:
            "## Méthode\n\nPour chaque hypothèse :\n1. Identifier la nature du litige (civil, commercial, administratif, fiscal)\n2. Identifier les parties (entre particuliers ? avec l'administration ?)\n3. Appliquer les règles de compétence matérielle\n4. Identifier la juridiction compétente\n\n**Textes :** C. com. L. 721-3 (compétence commerciale) ; L. 8 juill. 1873 (*Blanco*) ; LPF art. L. 199 (contentieux fiscal).",
          correction:
            "## Correction\n\n**1. Litige entre commerçants (impayé 15 000 €) :**\nLes deux parties sont des commerçants et le litige porte sur un acte de commerce. Compétence du **tribunal de commerce** (art. L. 721-3 C. com.). Si aucun tribunal de commerce n'existe dans le ressort, c'est le tribunal judiciaire statuant en matière commerciale.\n\n**2. Accident causé par un véhicule de l'État :**\nL'État est responsable des dommages causés par ses véhicules. Selon la loi du 31 décembre 1957, les litiges relatifs aux dommages causés par tout véhicule de l'administration relèvent du **juge judiciaire** (exception législative à la compétence administrative). Mme Lebrun saisira le tribunal judiciaire.\n\n**3. Litige fiscal (contestation d'un avis d'imposition) :**\nLe contentieux fiscal opposant un contribuable à l'administration fiscale relève, selon la nature de l'impôt :\n- Impôts directs (IR, IS, taxe foncière) → **tribunal administratif** (ordre administratif)\n- TVA → **tribunal administratif** également\nM. Martin devra d'abord déposer une réclamation préalable auprès de l'administration fiscale, puis en cas de rejet, saisir le **tribunal administratif**.",
        },
      ]
    : []),

  // ── DROIT CONSTITUTIONNEL ───────────────────────────────────
  ...(DC_ID
    ? [
        {
          subject_id: DC_ID,
          title: "Dissertation : Le référendum, expression directe de la démocratie ?",
          type: "dissertation",
          difficulty: "moyen",
          chapter: "La désignation des gouvernants",
          estimated_time_minutes: 180,
          statement:
            "Le référendum est-il une véritable expression de la démocratie directe ?\n\nVous traiterez ce sujet sous la forme d'une dissertation juridique en deux parties.",
          methodology_tips:
            "## Méthodologie\n\n- **Définir** : référendum (vote populaire sur un texte), démocratie directe (peuple gouverne sans intermédiaires), démocratie représentative\n- **Distinguer** les types de référendum : législatif (art. 11), constituant (art. 89), local (art. 72-1), d'initiative partagée\n- **Plan suggéré :**\n  - I. Le référendum, instrument de démocratie directe reconnu par la Constitution\n  - II. Un instrument limité et dévoyé dans la pratique",
          correction:
            "## Éléments de correction\n\n**I. Le référendum, instrument de participation directe du peuple**\nA. Fondements constitutionnels : art. 3 (la souveraineté nationale appartient au peuple) ; art. 11 et 89 organisant le référendum\nB. Légitimité démocratique directe : le peuple se prononce directement sur un texte, sans intermédiaire représentatif\n\n**II. Un instrument problématique dans la pratique française**\nA. Le référendum plébiscitaire : De Gaulle a utilisé le référendum pour renforcer sa légitimité personnelle (1962, 1969). Le vote devient un vote de confiance sur l'homme, pas sur le texte.\nB. Taux d'abstention croissants et plebiscitarisation : le référendum de 2005 (TCE) a été perçu comme un vote protestataire, non comme un choix technique sur le traité.\nC. Utilisation limitée : depuis 1958, seulement 9 référendums nationaux. Les gouvernements préfèrent souvent le Congrès (3/5e) pour éviter l'aléa du vote populaire.\nD. Le référendum d'initiative partagée (2008) : complexe à mettre en œuvre, n'a encore jamais abouti à un référendum.\n\n**Conclusion :** Le référendum est en théorie l'expression pure de la démocratie directe, mais en pratique il est rare, dévoyé ou confisqué par les enjeux politiques. La Ve République reste fondamentalement une démocratie représentative où le référendum n'est qu'un complément exceptionnel.",
        },
        {
          subject_id: DC_ID,
          title: "QRC : La révision de la Constitution — procédure et limites",
          type: "qrc",
          difficulty: "moyen",
          chapter: "Les mutations constitutionnelles",
          estimated_time_minutes: 30,
          statement:
            "Exposez la procédure de révision de la Constitution française de 1958 et ses limites (art. 89).",
          methodology_tips:
            "## Méthode QRC\n\n- Citez précisément l'article 89 dans ses différents alinéas\n- Distinguez initiative, adoption et ratification\n- N'oubliez pas les limites (formelles et matérielles)",
          correction:
            "## Correction\n\nLa révision de la Constitution de 1958 est organisée par l'**article 89** en trois phases :\n\n**1. L'initiative (art. 89 al. 1)**\nL'initiative de la révision appartient concurremment :\n- Au Président de la République, sur proposition du Premier ministre (projet de révision)\n- Aux membres du Parlement (proposition de révision)\n\n**2. L'adoption (art. 89 al. 2)**\nLe texte doit être adopté par les deux assemblées (Assemblée nationale et Sénat) **en termes identiques**. C'est une condition difficile, qui peut bloquer la révision en cas de désaccord entre les chambres.\n\n**3. La ratification (art. 89 al. 2 et 3)**\nDeux voies :\n- **Référendum** : le projet est soumis au vote du peuple (voie de droit commun)\n- **Congrès** : le Président peut décider de soumettre le texte au Congrès (réunion des deux chambres), qui l'adopte à la **majorité des 3/5e des suffrages exprimés** (voie alternative, plus commode politiquement)\n\n**Les limites :**\n- **Limite temporelle** (art. 89 al. 4) : aucune révision ne peut être engagée ou poursuivie en cas d'atteinte à l'intégrité du territoire.\n- **Limite matérielle absolue** (art. 89 al. 5) : « La forme républicaine du gouvernement ne peut faire l'objet d'une révision. »",
        },
      ]
    : []),

  // ── INTRODUCTION HISTORIQUE AU DROIT ────────────────────────
  ...(IHD_ID
    ? [
        {
          subject_id: IHD_ID,
          title: "Dissertation : L'apport du droit romain au droit français",
          type: "dissertation",
          difficulty: "moyen",
          chapter: "Le droit romain",
          estimated_time_minutes: 180,
          statement:
            "Dans quelle mesure le droit romain est-il le fondement du droit civil français ?\n\nVous traiterez ce sujet sous la forme d'une dissertation en deux parties.",
          methodology_tips:
            "## Méthodologie\n\n- **Introduction** : montrer la distance temporelle (Rome antique → Code civil 1804) mais aussi la continuité (réception, Justinien, coutumes romano-canoniques)\n- **Plan suggéré :**\n  - I. La réception du droit romain : un héritage transmis et transformé\n  - II. L'empreinte du droit romain dans les grandes institutions du droit civil français",
          correction:
            "## Éléments de correction\n\n**I. La réception et la transmission du droit romain**\nA. La redécouverte du Corpus Juris Civilis au XIe siècle (Bologne, Irnerius, glossateurs puis commentateurs)\nB. L'Humanisme juridique (XVIe s.) : Cujas, Domat — adaptation du droit romain à la réalité française\nC. Les pays de droit écrit (Sud) : le droit romain, droit commun supplétif\n\n**II. L'héritage dans le Code civil de 1804**\nA. La structure même : personnes, biens, obligations — tripartition directement héritée des Institutes de Gaius (personae, res, actiones)\nB. Le droit des obligations : contrat (consensualisme, pacta sunt servanda), responsabilité delictuelle (quasi-delits romains)\nC. Le droit des biens : propriété romaine absolue (usus, fructus, abusus), démembrements (usufruit, servitudes)\nD. Les limites : le Code civil abandonne le droit romain sur la famille (influence du droit canonique et des coutumes du Nord)\n\n**Conclusion :** Le droit romain n'est pas la source unique du Code civil mais en est l'armature intellectuelle. Par l'intermédiaire des juristes médiévaux et des rédacteurs du Code (Portalis, Tronchet), Rome a légué à la France moderne ses catégories juridiques fondamentales.",
        },
      ]
    : []),
];

// ─────────────────────────────────────────────────────────────────
// STEP 2 : insert into Supabase
// ─────────────────────────────────────────────────────────────────

async function upsert(table, rows, label) {
  if (!rows.length) {
    console.log(`⏭️  Aucun contenu pour ${label}`);
    return;
  }
  const { error } = await supabase.from(table).insert(rows);
  if (error) {
    console.error(`❌  Erreur insertion ${label} :`, error.message);
  } else {
    console.log(`✅  ${rows.length} ${label} insérés`);
  }
}

await upsert("quizzes", quizzes, "quizzes");
await upsert("flashcards", flashcards, "flashcards");
await upsert("exercises", exercises.map(({ chapter: _c, ...e }) => e), "exercises");
// Note : la colonne `chapter` n'existe pas dans exercises selon le schéma actuel
// Si vous avez ajouté la colonne, supprimez le .map() ci-dessus

console.log("\n🎉  Seed L1 terminé !");
