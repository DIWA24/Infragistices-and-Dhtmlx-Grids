function fntabchange(Sender, e) {

    //alert("Tab Changed");
    if ($find("WTab").getTabAt($find("WTab").get_selectedIndex()).get_iframe().contentWindow.pagevaluechanged == true) {
        if (confirm("Do you want to Save the Changes")) {
            $find("WTab").getTabAt($find("WTab").get_selectedIndex()).get_iframe().contentWindow.myFunction();
            e._cancel = true;
        }
      
    }
}