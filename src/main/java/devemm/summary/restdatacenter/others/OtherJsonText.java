package devemm.summary.restdatacenter.others;

record OtherJsonText(String title, String text, String tags, String excerpt) {

    public String joinFields() {
        return title + " " + text + " " + tags + " " + excerpt;
    }
}





