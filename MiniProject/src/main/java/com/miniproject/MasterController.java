package com.miniproject;


import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


@Controller
public class MasterController {
	@Autowired
	private MemberService memberService;
	
	@Autowired
	private AssetService assetService;
	

	@RequestMapping("/")
	public String indexPage() {
		return "index";
	}
	
	@RequestMapping("/login")
	public String loginPage() {
		return "login";
	}
	
	@RequestMapping("/dashboard")
	public String dashboardPage() {
		return "dashboard";
	}
	
	@RequestMapping("/member")
	public String user(Model model) {
		List<Member> listMembers = memberService.listAll();
		model.addAttribute("listMembers", listMembers);
		return "member";
	}
	
		
	@RequestMapping("/memberform")
    public String showNewMemberPage(Model model) {
        Member member = new Member();
        model.addAttribute("member", member);
         
        return "memberform";
    }
	
	@RequestMapping("/assetform")
    public String showNewAssetPage(Model model) {
        Asset asset = new Asset();
        model.addAttribute("asset", asset);
         
        return "assetform";
    }
	
	@RequestMapping(value = "save", method = RequestMethod.POST)
	public String saveMember(@ModelAttribute("member") Member member) {
		memberService.save(member);
		return "redirect:/member";
	}
	
		
	@RequestMapping(value = "/update/{memberid}", method = RequestMethod.GET)
    public String showEditMemberPage(@PathVariable(name = "memberid") long memberid, Model model) {
		Member member = memberService.get(memberid);
		model.addAttribute("member", member);
        return "formedit";
	}
	
	@RequestMapping(value = "/update/update", method = RequestMethod.POST)
	public String UpdateMember(@Valid Member member, BindingResult result, 
			ModelMap model, RedirectAttributes redirectattributes) {
		if (result.hasErrors()) {
			return "formedit";
		}
		memberService.save(member);
		return "redirect:/member";
	}
	
	@RequestMapping("/delete/{memberid}")
    public String deleteMember(@PathVariable(name = "memberid") int memberid) {
        memberService.delete(memberid);
        return "redirect:/member";       
    }
	
	
	//Asset
	
	@RequestMapping("/asset")
	public String asset(Model model) {
		List<Asset> listAssets = assetService.listAll();
		model.addAttribute("listAssets", listAssets);
		return "asset";
	}
	
	@RequestMapping(value = "saveasset", method = RequestMethod.POST)
	public String saveAsset(@ModelAttribute("asset") Asset asset) {
		assetService.save(asset);
		return "redirect:/asset";
	}
	
	@RequestMapping(value = "/updateasset/{assetid}", method = RequestMethod.GET)
    public String showEditAssetPage(@PathVariable(name = "assetid") long assetid, Model model) {
		Asset asset = assetService.get(assetid);
		model.addAttribute("asset", asset);
        return "assetedit";
	}
	
	@RequestMapping(value = "/updateasset/updateasset", method = RequestMethod.POST)
	public String UpdateAsset(@Valid Asset asset, BindingResult result, 
			ModelMap model, RedirectAttributes redirectattributes) {
		if (result.hasErrors()) {
			return "assetedit";
		}
		assetService.save(asset);
		return "redirect:/asset";
	}
	
	@RequestMapping("/deleteasset/{assetid}")
    public String deleteAsset(@PathVariable(name = "assetid") int assetid) {
        assetService.delete(assetid);
        return "redirect:/asset";       
    }
	
		
}
