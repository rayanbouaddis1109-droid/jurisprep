import { createClient } from "@/lib/supabase/server";
import { WELCOME_ACCESS_DAYS } from "@/lib/offer";
import { MobileSignupBarClient } from "./MobileSignupBarClient";

export async function MobileSignupBar() {
  if (WELCOME_ACCESS_DAYS <= 0) return null;
  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();
  if (user) return null;
  return <MobileSignupBarClient days={WELCOME_ACCESS_DAYS} />;
}
