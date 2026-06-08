export type Level = "Lycéen" | "L1" | "L2" | "L3" | "Transverse";
export type Semester = "S1" | "S2" | "Annuel";
export type Category =
  | "matiere_principale"
  | "anglais_juridique"
  | "culture_generale"
  | "methodologie";
export type Difficulty = "facile" | "moyen" | "difficile";
export type ExerciseType =
  | "cas_pratique"
  | "commentaire_arret"
  | "dissertation"
  | "commentaire_article"
  | "qrc";

export interface Subject {
  id: string;
  name: string;
  slug: string;
  level: Level;
  semester: Semester | null;
  category: Category | null;
  description: string | null;
  color: string | null;
  icon: string | null;
  order: number | null;
  is_published: boolean;
  created_at: string;
}

export interface RevisionSheet {
  id: string;
  subject_id: string;
  title: string;
  chapter: string | null;
  summary: string | null;
  content: string;
  key_concepts: string[];
  estimated_read_time: number | null;
  order: number | null;
  is_published: boolean;
  created_at: string;
}

export interface CaseLawSheet {
  id: string;
  subject_id: string;
  title: string;
  jurisdiction: string | null;
  decision_date: string | null;
  reference: string | null;
  parties: string | null;
  facts: string | null;
  procedure: string | null;
  legal_question: string | null;
  solution: string | null;
  portee: string | null;
  related_articles: string[];
  is_published: boolean;
  created_at: string;
}

export interface Video {
  id: string;
  subject_id: string;
  title: string;
  description: string | null;
  video_url: string;
  thumbnail_url: string | null;
  duration_seconds: number | null;
  chapter: string | null;
  transcript: string | null;
  order: number | null;
  is_published: boolean;
  created_at: string;
}

export interface QuizQuestion {
  question: string;
  choices: string[];
  correct_index: number;
  explanation?: string;
}

export interface Quiz {
  id: string;
  subject_id: string;
  title: string;
  chapter: string | null;
  difficulty: Difficulty | null;
  description: string | null;
  questions: QuizQuestion[];
  is_published: boolean;
  created_at: string;
}

export interface Flashcard {
  id: string;
  subject_id: string;
  deck_name: string | null;
  front: string;
  back: string;
  difficulty: Difficulty | null;
  tags: string[];
  is_published: boolean;
  created_at: string;
}

export interface Exercise {
  id: string;
  subject_id: string;
  title: string;
  type: ExerciseType | null;
  difficulty: Difficulty | null;
  statement: string;
  methodology_tips: string | null;
  correction: string | null;
  estimated_time_minutes: number | null;
  is_published: boolean;
  created_at: string;
}
