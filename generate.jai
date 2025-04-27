#run build();

build :: () {
    set_build_options_dc(.{do_output=false});
    
    options := get_build_options();

    if !generate_bindings() {
        compiler_set_workspace_status(.FAILED);
        return;
    }
}

generate_bindings :: () -> bool {
    output_filename: string;
    using opts: Generate_Bindings_Options;

    #if OS == .WINDOWS {
        output_filename = "windows.jai";
    } else #if OS == .LINUX {
        output_filename = "linux.jai";
    } else #if OS == .MACOS {
        output_filename = "macos.jai";
    } else {
        assert(false);
    }

    array_add(*libpaths, "lexbor");
    array_add(*libnames, "liblexbor");
    // array_add(*source_files, "lexbor/source/lexbor/core/lexbor.h");
    array_add(*source_files, "lexbor/source/lexbor/html/parser.h");
    array_add(*source_files, "lexbor/source/lexbor/dom/interfaces/element.h");
    array_add(*include_paths, "lexbor/source");
    array_add(*extra_clang_arguments, "-x", "c");

    return generate_bindings(opts, output_filename);
}

#import "Basic";
#import "Compiler";
#import "Bindings_Generator";
