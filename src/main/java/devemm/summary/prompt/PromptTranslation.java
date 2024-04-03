package devemm.summary.prompt;

import lombok.Getter;
import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Getter
public enum PromptTranslation {
    SYSTEM_TRANSLOATION_01("Zachowuj sie jak tłumacz. Tłumacz na język polski wprowadzone prompty użytkownika.");

    final String promptTranslation;

}
