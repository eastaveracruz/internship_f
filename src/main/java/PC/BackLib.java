package PC;

import java.util.List;

public class BackLib {

    public static int countPC(List<PC> list){
        int result = Integer.MAX_VALUE;
        for (PC p: list){
            if (p.getNeed() == 0) continue;
            if (p.getQuan() < result){
                result = p.getQuan();
            }
        }
        return result;
    }

}


class Param {
    private String sortParam;

    public Param(String sortParam) {
        this.sortParam = sortParam;
    }

    public String getSortParam() {
        return sortParam;
    }

    public void setSortParam(String sortParam) {
        this.sortParam = sortParam;
    }
}
