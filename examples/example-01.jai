#import,file "../module.jai";
#import "Basic";

main :: () {
    html := "<div>Works fine!</div>";

    document := lxb_html_document_create();
    if (document == null) {
        exit(1);
    }

    status := lxb_html_document_parse(document, html.data, cast(u64) html.count);
    if (status != .LXB_STATUS_OK) {
        exit(1);
    }

    tag_name := lxb_dom_element_qualified_name(lxb_dom_interface_element(document.body));

    print("Element tag name: %\n", tag_name);

    lxb_html_document_destroy(document);
}
