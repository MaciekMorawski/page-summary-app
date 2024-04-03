package devemm.summary.summary;

import devemm.summary.pojo.SimpleJsonText;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


@RequestMapping("utube")
@RestController
@AllArgsConstructor
@Log4j2
public class CtrlSumaryzacja {


    private final ServiceExtractorYt serviceExtractorYt;
    private TranslatorPL translator;

    @GetMapping()
    public String  hello() {
        return "Hi/Ai!";
    }




    @GetMapping("{video_id}")
    public SimpleJsonText see(@PathVariable(name = "video_id", required = true) String videoId) {

        SimpleJsonText sumarize = serviceExtractorYt.summarize(videoId);
        return translator.translateEnToPl(sumarize);



    }





}
