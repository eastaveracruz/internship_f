package PC;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;

@Controller
@SessionAttributes("param")
public class PcController {

    private ServicePc servicePc;

    @Autowired(required = true)
    @Qualifier(value = "ServicePc")
    public void setServicePc(ServicePc servicePc) {
        this.servicePc = servicePc;
    }

    @RequestMapping(value = "/pre", method = RequestMethod.GET)
    public String home( HttpSession httpSession ) {
        httpSession.setAttribute("param", new Param("ID"));
        return "redirect:/PC/0";
    }


    @RequestMapping(value = "PC/{page}", method = RequestMethod.GET)
    public String listPC(@PathVariable("page") int page, @ModelAttribute Param param, Model model){
        model.addAttribute("PC", new PC());
        model.addAttribute("listPC", this.servicePc.listPc(page, param.getSortParam()));
        model.addAttribute("page", page);
        model.addAttribute("countPC", BackLib.countPC(this.servicePc.list()));
        model.addAttribute("param", param);
        return "PC";
    }

    @RequestMapping(value = "/add")
    public String add(Model model){
        model.addAttribute("book", new PC());
        return "add";
    }

    @RequestMapping(value = "/PC/add", method = RequestMethod.POST)
    public String addBook(@ModelAttribute("book") PC book){
        if(book.getId() == 0){
            this.servicePc.add(book);
        }else {
            this.servicePc.update(book);
            return "redirect:/PC/0";
        }

        return "redirect:/add";
    }

    @RequestMapping("/remove/{id}/{page}")
    public String removeBook(@PathVariable("id") int id, @PathVariable("page") int page){
        this.servicePc.remove(id);

        return "redirect:/PC/" + page;
    }

    @RequestMapping("edit/{id}")
    public String editBook(@PathVariable("id") int id, Model model){
        model.addAttribute("book", servicePc.getById(id));
        return "/add";
    }

    @RequestMapping(value = "/search", method = RequestMethod.POST)
    public String search(@ModelAttribute("book") PC pc, Model model){
        model.addAttribute("PC", new PC());
        model.addAttribute("listPC", this.servicePc.searchList(pc.getName()));

        return "/search";
    }
}
