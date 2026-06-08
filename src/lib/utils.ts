import clsx, { type ClassValue } from "clsx";
import { twMerge } from "tailwind-merge";

export function cn(...inputs: ClassValue[]) {
  return twMerge(clsx(inputs));
}

export function levelLabel(level: string): string {
  const map: Record<string, string> = {
    Lycéen: "Lycéen",
    L1: "Licence 1",
    L2: "Licence 2",
    L3: "Licence 3",
    Transverse: "Sections transverses",
  };
  return map[level] ?? level;
}

export function levelSlug(level: string): string {
  const map: Record<string, string> = {
    Lycéen: "lyceen",
    L1: "l1",
    L2: "l2",
    L3: "l3",
  };
  return map[level] ?? level.toLowerCase();
}

export function slugToLevel(slug: string): string {
  const map: Record<string, string> = {
    lyceen: "Lycéen",
    l1: "L1",
    l2: "L2",
    l3: "L3",
  };
  return map[slug] ?? slug;
}
