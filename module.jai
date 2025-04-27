#if OS == .WINDOWS {
    #load "windows.jai";
} else #if OS == .LINUX {
    #load "linux.jai";
} else #if OS == .MACOS {
    #load "macos.jai";
}

lxb_dom_interface_element :: inline (obj: *void) -> *lxb_dom_element_t {
    return obj;
}

lxb_dom_element_qualified_name :: inline (obj: *lxb_dom_element_t) -> string {
    _temp := lxb_dom_element_qualified_name(obj, null);
    return to_string(_temp);
}