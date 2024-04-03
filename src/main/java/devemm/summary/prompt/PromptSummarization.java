package devemm.summary.prompt;

import lombok.Getter;
import lombok.RequiredArgsConstructor;

@Getter
@RequiredArgsConstructor
public enum PromptSummarization {

    SYSTEM_ASSISTANT_ROLE_01("You are good summarization assistant. Summarize given user   prompt and as output translate into polish only. Before output make a reflection on your job and fix if wrong. Answer just in polish and nothing more"),
    SYSTEM_ASSISTANT_ROLE_02("""
            You are good summarization assistant.\s
             * Answer only in polish language,\s
            * Summarize given user   prompt
            * You have to check prepared sumarization to fix mistakes
            * Do not use english langauge when answer"""),

    SYSTEM_ASSISTANT_ROLE_03("""
            Your job is shorten given user prompt.\s
            * Answer only in polish language,\s
            * Explain given user prompt
            * You have to check prepared sumarization to fix mistakes
            * Do not use english langauge when answer"""),
    SYSTEM_ASSISTANT_ROLE_04("""
            Your job is shorten given user prompt.\s
            Summarization must be done using spotlight
            * Answer only in polish language,\s
            * Explain given user prompt
            * You have to check prepared sumarization to fix mistakes
            * Do not use english langauge when answer
            """),

    SYSTEM_ASSISTANT_ROLE_05("""
            Zrób podsumowanie poniższy tekst w punktach.
            "#Poniższy_tekst#
            "{poniższy_tekst}
            """);


    public final String prompt;


}
