# JurisPrép

Plateforme tout-en-un pour réussir ses études de droit en France — destinée aux lycéens qui préparent leur entrée en faculté et aux étudiants en Licence (L1 / L2 / L3).

Fiches de révision, fiches d'arrêts, vidéos, quiz interactifs, flashcards, exercices corrigés, anglais juridique et culture générale juridique — tout est rassemblé dans une seule app moderne, gratuite à héberger.

---

## ✨ Stack technique

| Couche | Outil | Coût |
|---|---|---|
| Framework | Next.js 14 (App Router, TypeScript) | gratuit |
| Style | Tailwind CSS | gratuit |
| Base de données | Supabase (PostgreSQL + Auth + Storage) | gratuit (jusqu'à 500 Mo) |
| Hébergement | Vercel | gratuit (100 Go bande passante / mois) |
| Domaine | `tonprojet.vercel.app` inclus | gratuit |

Pour un usage perso et un trafic modeste, **100 % gratuit à vie**.

---

## 🚀 Déploiement en 5 étapes (lecture 10 minutes)

> ⏱️ Compte ≈ 30 minutes en tout, sans aucune ligne de code à modifier.

### Étape 1 — Créer le projet Supabase

1. Va sur [supabase.com](https://supabase.com) → **Sign in with GitHub**.
2. Clique sur **New project**.
3. Renseigne :
   - **Name** : `jurisprep`
   - **Database Password** : génère un mot de passe fort (et **conserve-le**).
   - **Region** : `Europe (eu-west-3)` ou la plus proche de toi.
   - **Pricing Plan** : **Free**.
4. Patiente ≈ 2 minutes que Supabase provisionne ton projet.

### Étape 2 — Exécuter les migrations SQL

Dans le tableau de bord Supabase :

1. Menu de gauche → **SQL Editor** → **New query**.
2. Ouvre les fichiers dans cet ordre et copie-colle leur contenu dans l'éditeur, puis clique **Run** à chaque fois :
   - `supabase/migrations/001_schema.sql` (crée les 9 tables + RLS)
   - `supabase/migrations/002_seed.sql` (insère les 31 matières + 7 fiches d'arrêts + 3 fiches de révision)
   - `supabase/migrations/003_seed_quizzes_flashcards.sql` (insère 7 quiz + 22 flashcards + 3 exercices)

✅ Vérification : dans **Table Editor**, tu dois voir la table `subjects` avec 31 lignes.

### Étape 3 — Récupérer les clés Supabase

1. Menu → **Project Settings** → **API**.
2. Note :
   - **Project URL** (commence par `https://xxx.supabase.co`)
   - **anon public key** (commence par `eyJh…`)

### Étape 4 — Pousser le code sur GitHub

```bash
cd jurisprep-nextjs
git init
git add .
git commit -m "Initial commit JurisPrép"
gh repo create jurisprep --public --source=. --push
```

(Ou crée le repo via [github.com/new](https://github.com/new) puis `git push`.)

### Étape 5 — Déployer sur Vercel

1. Va sur [vercel.com](https://vercel.com) → **Sign in with GitHub**.
2. **Add New… → Project** → importe ton repo `jurisprep`.
3. Dans **Environment Variables**, ajoute :
   - `NEXT_PUBLIC_SUPABASE_URL` = ton **Project URL**
   - `NEXT_PUBLIC_SUPABASE_ANON_KEY` = ta **anon public key**
4. Clique **Deploy**. ≈ 2 minutes.

🎉 Ton site est en ligne sur `https://jurisprep.vercel.app` (ou un nom similaire).

### (Optionnel) Étape 6 — Domaine personnalisé

Dans Vercel : **Settings → Domains → Add**. Ajoute ton domaine, suis les instructions DNS. Certificat HTTPS gratuit automatique.

---

## 🛠️ Développement local

```bash
# Installer les dépendances
npm install

# Créer .env.local à partir du modèle
cp .env.example .env.local
# Puis remplir NEXT_PUBLIC_SUPABASE_URL et NEXT_PUBLIC_SUPABASE_ANON_KEY

# Lancer le serveur de dev
npm run dev
```

Ouvre http://localhost:3000.

---

## 📁 Structure du projet

```
jurisprep-nextjs/
├── src/
│   ├── app/
│   │   ├── page.tsx              ← accueil
│   │   ├── layout.tsx            ← layout global (Nav + Footer)
│   │   ├── licence/[level]/      ← /licence/l1, /licence/l2, /licence/l3, /licence/lyceen
│   │   ├── matiere/[slug]/       ← page d'une matière avec onglets
│   │   ├── transverse/           ← anglais juridique + culture générale
│   │   ├── tarifs/
│   │   └── auth/                 ← login / signup / callback
│   ├── components/               ← Nav, Footer, SubjectTabs, QuizPlayer, FlashcardDeck
│   ├── lib/
│   │   ├── supabase/             ← clients server + browser
│   │   ├── types.ts              ← typage TS des tables
│   │   └── utils.ts
│   └── middleware.ts             ← refresh des sessions Supabase
├── supabase/
│   └── migrations/               ← schéma + seed SQL
├── tailwind.config.ts
├── next.config.mjs
└── package.json
```

---

## ✍️ Ajouter du contenu

Tu peux tout faire depuis **Supabase Studio** (l'interface web de Supabase) :

1. **Table Editor → subjects** → ajoute une matière si besoin.
2. **Table Editor → revision_sheets** → **Insert row**. Remplis :
   - `subject_id` (sélectionne la matière)
   - `title`, `chapter`, `content` (Markdown supporté)
   - `is_published = true`
3. Idem pour `case_law_sheets`, `quizzes` (questions au format JSONB), `flashcards`, `exercises`, `videos`.
4. Recharge ton site Vercel → le nouveau contenu apparaît instantanément (RLS publique).

Astuce : pour les **vidéos**, utilise une URL d'intégration YouTube/Vimeo (ex. `https://www.youtube.com/embed/XXXX`).

---

## 🔒 Sécurité

- **RLS activée** sur toutes les tables. Lecture publique limitée aux contenus `is_published = true`.
- **user_progress** et **profiles** strictement scopés par `auth.uid()`.
- Création automatique du profil utilisateur à l'inscription via un trigger Postgres.
- Mots de passe gérés par Supabase Auth (jamais stockés en clair).

---

## 🧭 Roadmap suggérée

- [ ] Activer l'envoi d'emails personnalisés Supabase (templates fr)
- [ ] Ajouter Stripe pour les abonnements payants (Supabase Edge Functions + webhook)
- [ ] Page profil utilisateur avec progression
- [ ] Tableau de bord admin pour publier le contenu sans passer par Supabase Studio
- [ ] Mode hors-ligne (PWA) pour réviser sans connexion

---

## 📜 Licence

Code source : MIT. Contenu pédagogique : propriété de JurisPrép, non réutilisable sans autorisation.
