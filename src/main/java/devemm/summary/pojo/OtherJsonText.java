package devemm.summary.pojo;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class OtherJsonText {
    //['title', 'text', 'tags', 'excerpt']
    private String title;
    private String text;
    private String tags;
    private String excerpt;

    public String joinFields(){
        return title + " " + text + " " + tags + " " + excerpt;
    }

}
