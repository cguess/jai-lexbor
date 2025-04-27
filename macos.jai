//
// This file was auto-generated using the following command:
//
// jai generate.jai
//



LEXBOR_FORMAT_Z :: "%zu";

LEXBOR_VERSION_MAJOR :: 1;
LEXBOR_VERSION_MINOR :: 8;
LEXBOR_VERSION_PATCH :: 0;

LXB_HTML_VERSION_MAJOR :: 2;
LXB_HTML_VERSION_MINOR :: 6;
LXB_HTML_VERSION_PATCH :: 0;

LXB_TAG_CONST_VERSION :: "A161EC911182C3254E7A972D5C51DF86";

LXB_NS_CONST_VERSION :: "253D4AFDA959234B48A478B956C3C777";

LEXBOR_HASH_SHORT_SIZE :: 16;
LEXBOR_HASH_TABLE_MIN_SIZE :: 32;

/* Simple types */
lxb_codepoint_t :: u32;
lxb_char_t :: u8;
lxb_status_t :: lexbor_status_t;

/* Callbacks */
lexbor_callback_f :: #type (buffer: *lxb_char_t, size: u64, ctx: *void) -> lxb_status_t #c_call;

lexbor_memory_malloc_f :: #type (size: u64) -> *void #c_call;
lexbor_memory_realloc_f :: #type (dst: *void, size: u64) -> *void #c_call;
lexbor_memory_calloc_f :: #type (num: u64, size: u64) -> *void #c_call;
lexbor_memory_free_f :: #type (dst: *void) -> void #c_call;

lexbor_malloc :: (size: u64) -> *void #foreign liblexbor;

lexbor_realloc :: (dst: *void, size: u64) -> *void #foreign liblexbor;

lexbor_calloc :: (num: u64, size: u64) -> *void #foreign liblexbor;

lexbor_free :: (dst: *void) -> *void #foreign liblexbor;

lexbor_memory_setup :: (new_malloc: lexbor_memory_malloc_f, new_realloc: lexbor_memory_realloc_f, new_calloc: lexbor_memory_calloc_f, new_free: lexbor_memory_free_f) -> lxb_status_t #foreign liblexbor;

/*
* Very important!!!
*
* for lexbor 0..00AFFF; LXB_STATUS_OK == 0x000000
*/
lexbor_status_t :: enum u32 {
    OK                      :: 0;
    ERROR                   :: 1;
    ERROR_MEMORY_ALLOCATION :: 2;
    ERROR_OBJECT_IS_NULL    :: 3;
    ERROR_SMALL_BUFFER      :: 4;
    ERROR_INCOMPLETE_OBJECT :: 5;
    ERROR_NO_FREE_SLOT      :: 6;
    ERROR_TOO_SMALL_SIZE    :: 7;
    ERROR_NOT_EXISTS        :: 8;
    ERROR_WRONG_ARGS        :: 9;
    ERROR_WRONG_STAGE       :: 10;
    ERROR_UNEXPECTED_RESULT :: 11;
    ERROR_UNEXPECTED_DATA   :: 12;
    ERROR_OVERFLOW          :: 13;
    CONTINUE                :: 14;
    SMALL_BUFFER            :: 15;
    ABORTED                 :: 16;
    STOPPED                 :: 17;
    NEXT                    :: 18;
    STOP                    :: 19;
    WARNING                 :: 20;

    LXB_STATUS_OK                      :: OK;
    LXB_STATUS_ERROR                   :: ERROR;
    LXB_STATUS_ERROR_MEMORY_ALLOCATION :: ERROR_MEMORY_ALLOCATION;
    LXB_STATUS_ERROR_OBJECT_IS_NULL    :: ERROR_OBJECT_IS_NULL;
    LXB_STATUS_ERROR_SMALL_BUFFER      :: ERROR_SMALL_BUFFER;
    LXB_STATUS_ERROR_INCOMPLETE_OBJECT :: ERROR_INCOMPLETE_OBJECT;
    LXB_STATUS_ERROR_NO_FREE_SLOT      :: ERROR_NO_FREE_SLOT;
    LXB_STATUS_ERROR_TOO_SMALL_SIZE    :: ERROR_TOO_SMALL_SIZE;
    LXB_STATUS_ERROR_NOT_EXISTS        :: ERROR_NOT_EXISTS;
    LXB_STATUS_ERROR_WRONG_ARGS        :: ERROR_WRONG_ARGS;
    LXB_STATUS_ERROR_WRONG_STAGE       :: ERROR_WRONG_STAGE;
    LXB_STATUS_ERROR_UNEXPECTED_RESULT :: ERROR_UNEXPECTED_RESULT;
    LXB_STATUS_ERROR_UNEXPECTED_DATA   :: ERROR_UNEXPECTED_DATA;
    LXB_STATUS_ERROR_OVERFLOW          :: ERROR_OVERFLOW;
    LXB_STATUS_CONTINUE                :: CONTINUE;
    LXB_STATUS_SMALL_BUFFER            :: SMALL_BUFFER;
    LXB_STATUS_ABORTED                 :: ABORTED;
    LXB_STATUS_STOPPED                 :: STOPPED;
    LXB_STATUS_NEXT                    :: NEXT;
    LXB_STATUS_STOP                    :: STOP;
    LXB_STATUS_WARNING                 :: WARNING;
}

lexbor_action_t :: enum u32 {
    OK   :: 0;
    STOP :: 1;
    NEXT :: 2;

    LEXBOR_ACTION_OK   :: OK;
    LEXBOR_ACTION_STOP :: STOP;
    LEXBOR_ACTION_NEXT :: NEXT;
}

lexbor_serialize_cb_f :: #type (data: *lxb_char_t, len: u64, ctx: *void) -> lxb_status_t #c_call;

lexbor_serialize_cb_cp_f :: #type (cps: *lxb_codepoint_t, len: u64, ctx: *void) -> lxb_status_t #c_call;

lexbor_serialize_ctx_t :: struct {
    cb:    lexbor_serialize_cb_f;
    ctx:   *void;

    opt:   s64;
    count: u64;
}

lxb_html_tokenizer_t :: lxb_html_tokenizer;
lxb_html_tokenizer_opt_t :: u32;
lxb_html_tree_t :: lxb_html_tree;

/*
* Please, see lexbor/base.h lexbor_status_t
*/
lxb_html_status_t :: enum u32 {
    LXB_HTML_STATUS_OK :: 0;
}

lxb_tag_id_t :: u64;

lxb_tag_id_enum_t :: enum u32 {
    UNDEF               :: 0;
    END_OF_FILE         :: 1;
    TEXT                :: 2;
    DOCUMENT            :: 3;
    EM_COMMENT          :: 4;
    EM_DOCTYPE          :: 5;
    A                   :: 6;
    ABBR                :: 7;
    ACRONYM             :: 8;
    ADDRESS             :: 9;
    ALTGLYPH            :: 10;
    ALTGLYPHDEF         :: 11;
    ALTGLYPHITEM        :: 12;
    ANIMATECOLOR        :: 13;
    ANIMATEMOTION       :: 14;
    ANIMATETRANSFORM    :: 15;
    ANNOTATION_XML      :: 16;
    APPLET              :: 17;
    AREA                :: 18;
    ARTICLE             :: 19;
    ASIDE               :: 20;
    AUDIO               :: 21;
    B                   :: 22;
    BASE                :: 23;
    BASEFONT            :: 24;
    BDI                 :: 25;
    BDO                 :: 26;
    BGSOUND             :: 27;
    BIG                 :: 28;
    BLINK               :: 29;
    BLOCKQUOTE          :: 30;
    BODY                :: 31;
    BR                  :: 32;
    BUTTON              :: 33;
    CANVAS              :: 34;
    CAPTION             :: 35;
    CENTER              :: 36;
    CITE                :: 37;
    CLIPPATH            :: 38;
    CODE                :: 39;
    COL                 :: 40;
    COLGROUP            :: 41;
    DATA                :: 42;
    DATALIST            :: 43;
    DD                  :: 44;
    DEL                 :: 45;
    DESC                :: 46;
    DETAILS             :: 47;
    DFN                 :: 48;
    DIALOG              :: 49;
    DIR                 :: 50;
    DIV                 :: 51;
    DL                  :: 52;
    DT                  :: 53;
    EM                  :: 54;
    EMBED               :: 55;
    FEBLEND             :: 56;
    FECOLORMATRIX       :: 57;
    FECOMPONENTTRANSFER :: 58;
    FECOMPOSITE         :: 59;
    FECONVOLVEMATRIX    :: 60;
    FEDIFFUSELIGHTING   :: 61;
    FEDISPLACEMENTMAP   :: 62;
    FEDISTANTLIGHT      :: 63;
    FEDROPSHADOW        :: 64;
    FEFLOOD             :: 65;
    FEFUNCA             :: 66;
    FEFUNCB             :: 67;
    FEFUNCG             :: 68;
    FEFUNCR             :: 69;
    FEGAUSSIANBLUR      :: 70;
    FEIMAGE             :: 71;
    FEMERGE             :: 72;
    FEMERGENODE         :: 73;
    FEMORPHOLOGY        :: 74;
    FEOFFSET            :: 75;
    FEPOINTLIGHT        :: 76;
    FESPECULARLIGHTING  :: 77;
    FESPOTLIGHT         :: 78;
    FETILE              :: 79;
    FETURBULENCE        :: 80;
    FIELDSET            :: 81;
    FIGCAPTION          :: 82;
    FIGURE              :: 83;
    FONT                :: 84;
    FOOTER              :: 85;
    FOREIGNOBJECT       :: 86;
    FORM                :: 87;
    FRAME               :: 88;
    FRAMESET            :: 89;
    GLYPHREF            :: 90;
    H1                  :: 91;
    H2                  :: 92;
    H3                  :: 93;
    H4                  :: 94;
    H5                  :: 95;
    H6                  :: 96;
    HEAD                :: 97;
    HEADER              :: 98;
    HGROUP              :: 99;
    HR                  :: 100;
    HTML                :: 101;
    I                   :: 102;
    IFRAME              :: 103;
    IMAGE               :: 104;
    IMG                 :: 105;
    INPUT               :: 106;
    INS                 :: 107;
    ISINDEX             :: 108;
    KBD                 :: 109;
    KEYGEN              :: 110;
    LABEL               :: 111;
    LEGEND              :: 112;
    LI                  :: 113;
    LINEARGRADIENT      :: 114;
    LINK                :: 115;
    LISTING             :: 116;
    MAIN                :: 117;
    MALIGNMARK          :: 118;
    MAP                 :: 119;
    MARK                :: 120;
    MARQUEE             :: 121;
    MATH                :: 122;
    MENU                :: 123;
    META                :: 124;
    METER               :: 125;
    MFENCED             :: 126;
    MGLYPH              :: 127;
    MI                  :: 128;
    MN                  :: 129;
    MO                  :: 130;
    MS                  :: 131;
    MTEXT               :: 132;
    MULTICOL            :: 133;
    NAV                 :: 134;
    NEXTID              :: 135;
    NOBR                :: 136;
    NOEMBED             :: 137;
    NOFRAMES            :: 138;
    NOSCRIPT            :: 139;
    OBJECT              :: 140;
    OL                  :: 141;
    OPTGROUP            :: 142;
    OPTION              :: 143;
    OUTPUT              :: 144;
    P                   :: 145;
    PARAM               :: 146;
    PATH                :: 147;
    PICTURE             :: 148;
    PLAINTEXT           :: 149;
    PRE                 :: 150;
    PROGRESS            :: 151;
    Q                   :: 152;
    RADIALGRADIENT      :: 153;
    RB                  :: 154;
    RP                  :: 155;
    RT                  :: 156;
    RTC                 :: 157;
    RUBY                :: 158;
    S                   :: 159;
    SAMP                :: 160;
    SCRIPT              :: 161;
    SECTION             :: 162;
    SELECT              :: 163;
    SLOT                :: 164;
    SMALL               :: 165;
    SOURCE              :: 166;
    SPACER              :: 167;
    SPAN                :: 168;
    STRIKE              :: 169;
    STRONG              :: 170;
    STYLE               :: 171;
    SUB                 :: 172;
    SUMMARY             :: 173;
    SUP                 :: 174;
    SVG                 :: 175;
    TABLE               :: 176;
    TBODY               :: 177;
    TD                  :: 178;
    TEMPLATE            :: 179;
    TEXTAREA            :: 180;
    TEXTPATH            :: 181;
    TFOOT               :: 182;
    TH                  :: 183;
    THEAD               :: 184;
    TIME                :: 185;
    TITLE               :: 186;
    TR                  :: 187;
    TRACK               :: 188;
    TT                  :: 189;
    U                   :: 190;
    UL                  :: 191;
    VAR                 :: 192;
    VIDEO               :: 193;
    WBR                 :: 194;
    XMP                 :: 195;
    LAST_ENTRY          :: 196;

    LXB_TAG__UNDEF              :: UNDEF;
    LXB_TAG__END_OF_FILE        :: END_OF_FILE;
    LXB_TAG__TEXT               :: TEXT;
    LXB_TAG__DOCUMENT           :: DOCUMENT;
    LXB_TAG__EM_COMMENT         :: EM_COMMENT;
    LXB_TAG__EM_DOCTYPE         :: EM_DOCTYPE;
    LXB_TAG_A                   :: A;
    LXB_TAG_ABBR                :: ABBR;
    LXB_TAG_ACRONYM             :: ACRONYM;
    LXB_TAG_ADDRESS             :: ADDRESS;
    LXB_TAG_ALTGLYPH            :: ALTGLYPH;
    LXB_TAG_ALTGLYPHDEF         :: ALTGLYPHDEF;
    LXB_TAG_ALTGLYPHITEM        :: ALTGLYPHITEM;
    LXB_TAG_ANIMATECOLOR        :: ANIMATECOLOR;
    LXB_TAG_ANIMATEMOTION       :: ANIMATEMOTION;
    LXB_TAG_ANIMATETRANSFORM    :: ANIMATETRANSFORM;
    LXB_TAG_ANNOTATION_XML      :: ANNOTATION_XML;
    LXB_TAG_APPLET              :: APPLET;
    LXB_TAG_AREA                :: AREA;
    LXB_TAG_ARTICLE             :: ARTICLE;
    LXB_TAG_ASIDE               :: ASIDE;
    LXB_TAG_AUDIO               :: AUDIO;
    LXB_TAG_B                   :: B;
    LXB_TAG_BASE                :: BASE;
    LXB_TAG_BASEFONT            :: BASEFONT;
    LXB_TAG_BDI                 :: BDI;
    LXB_TAG_BDO                 :: BDO;
    LXB_TAG_BGSOUND             :: BGSOUND;
    LXB_TAG_BIG                 :: BIG;
    LXB_TAG_BLINK               :: BLINK;
    LXB_TAG_BLOCKQUOTE          :: BLOCKQUOTE;
    LXB_TAG_BODY                :: BODY;
    LXB_TAG_BR                  :: BR;
    LXB_TAG_BUTTON              :: BUTTON;
    LXB_TAG_CANVAS              :: CANVAS;
    LXB_TAG_CAPTION             :: CAPTION;
    LXB_TAG_CENTER              :: CENTER;
    LXB_TAG_CITE                :: CITE;
    LXB_TAG_CLIPPATH            :: CLIPPATH;
    LXB_TAG_CODE                :: CODE;
    LXB_TAG_COL                 :: COL;
    LXB_TAG_COLGROUP            :: COLGROUP;
    LXB_TAG_DATA                :: DATA;
    LXB_TAG_DATALIST            :: DATALIST;
    LXB_TAG_DD                  :: DD;
    LXB_TAG_DEL                 :: DEL;
    LXB_TAG_DESC                :: DESC;
    LXB_TAG_DETAILS             :: DETAILS;
    LXB_TAG_DFN                 :: DFN;
    LXB_TAG_DIALOG              :: DIALOG;
    LXB_TAG_DIR                 :: DIR;
    LXB_TAG_DIV                 :: DIV;
    LXB_TAG_DL                  :: DL;
    LXB_TAG_DT                  :: DT;
    LXB_TAG_EM                  :: EM;
    LXB_TAG_EMBED               :: EMBED;
    LXB_TAG_FEBLEND             :: FEBLEND;
    LXB_TAG_FECOLORMATRIX       :: FECOLORMATRIX;
    LXB_TAG_FECOMPONENTTRANSFER :: FECOMPONENTTRANSFER;
    LXB_TAG_FECOMPOSITE         :: FECOMPOSITE;
    LXB_TAG_FECONVOLVEMATRIX    :: FECONVOLVEMATRIX;
    LXB_TAG_FEDIFFUSELIGHTING   :: FEDIFFUSELIGHTING;
    LXB_TAG_FEDISPLACEMENTMAP   :: FEDISPLACEMENTMAP;
    LXB_TAG_FEDISTANTLIGHT      :: FEDISTANTLIGHT;
    LXB_TAG_FEDROPSHADOW        :: FEDROPSHADOW;
    LXB_TAG_FEFLOOD             :: FEFLOOD;
    LXB_TAG_FEFUNCA             :: FEFUNCA;
    LXB_TAG_FEFUNCB             :: FEFUNCB;
    LXB_TAG_FEFUNCG             :: FEFUNCG;
    LXB_TAG_FEFUNCR             :: FEFUNCR;
    LXB_TAG_FEGAUSSIANBLUR      :: FEGAUSSIANBLUR;
    LXB_TAG_FEIMAGE             :: FEIMAGE;
    LXB_TAG_FEMERGE             :: FEMERGE;
    LXB_TAG_FEMERGENODE         :: FEMERGENODE;
    LXB_TAG_FEMORPHOLOGY        :: FEMORPHOLOGY;
    LXB_TAG_FEOFFSET            :: FEOFFSET;
    LXB_TAG_FEPOINTLIGHT        :: FEPOINTLIGHT;
    LXB_TAG_FESPECULARLIGHTING  :: FESPECULARLIGHTING;
    LXB_TAG_FESPOTLIGHT         :: FESPOTLIGHT;
    LXB_TAG_FETILE              :: FETILE;
    LXB_TAG_FETURBULENCE        :: FETURBULENCE;
    LXB_TAG_FIELDSET            :: FIELDSET;
    LXB_TAG_FIGCAPTION          :: FIGCAPTION;
    LXB_TAG_FIGURE              :: FIGURE;
    LXB_TAG_FONT                :: FONT;
    LXB_TAG_FOOTER              :: FOOTER;
    LXB_TAG_FOREIGNOBJECT       :: FOREIGNOBJECT;
    LXB_TAG_FORM                :: FORM;
    LXB_TAG_FRAME               :: FRAME;
    LXB_TAG_FRAMESET            :: FRAMESET;
    LXB_TAG_GLYPHREF            :: GLYPHREF;
    LXB_TAG_H1                  :: H1;
    LXB_TAG_H2                  :: H2;
    LXB_TAG_H3                  :: H3;
    LXB_TAG_H4                  :: H4;
    LXB_TAG_H5                  :: H5;
    LXB_TAG_H6                  :: H6;
    LXB_TAG_HEAD                :: HEAD;
    LXB_TAG_HEADER              :: HEADER;
    LXB_TAG_HGROUP              :: HGROUP;
    LXB_TAG_HR                  :: HR;
    LXB_TAG_HTML                :: HTML;
    LXB_TAG_I                   :: I;
    LXB_TAG_IFRAME              :: IFRAME;
    LXB_TAG_IMAGE               :: IMAGE;
    LXB_TAG_IMG                 :: IMG;
    LXB_TAG_INPUT               :: INPUT;
    LXB_TAG_INS                 :: INS;
    LXB_TAG_ISINDEX             :: ISINDEX;
    LXB_TAG_KBD                 :: KBD;
    LXB_TAG_KEYGEN              :: KEYGEN;
    LXB_TAG_LABEL               :: LABEL;
    LXB_TAG_LEGEND              :: LEGEND;
    LXB_TAG_LI                  :: LI;
    LXB_TAG_LINEARGRADIENT      :: LINEARGRADIENT;
    LXB_TAG_LINK                :: LINK;
    LXB_TAG_LISTING             :: LISTING;
    LXB_TAG_MAIN                :: MAIN;
    LXB_TAG_MALIGNMARK          :: MALIGNMARK;
    LXB_TAG_MAP                 :: MAP;
    LXB_TAG_MARK                :: MARK;
    LXB_TAG_MARQUEE             :: MARQUEE;
    LXB_TAG_MATH                :: MATH;
    LXB_TAG_MENU                :: MENU;
    LXB_TAG_META                :: META;
    LXB_TAG_METER               :: METER;
    LXB_TAG_MFENCED             :: MFENCED;
    LXB_TAG_MGLYPH              :: MGLYPH;
    LXB_TAG_MI                  :: MI;
    LXB_TAG_MN                  :: MN;
    LXB_TAG_MO                  :: MO;
    LXB_TAG_MS                  :: MS;
    LXB_TAG_MTEXT               :: MTEXT;
    LXB_TAG_MULTICOL            :: MULTICOL;
    LXB_TAG_NAV                 :: NAV;
    LXB_TAG_NEXTID              :: NEXTID;
    LXB_TAG_NOBR                :: NOBR;
    LXB_TAG_NOEMBED             :: NOEMBED;
    LXB_TAG_NOFRAMES            :: NOFRAMES;
    LXB_TAG_NOSCRIPT            :: NOSCRIPT;
    LXB_TAG_OBJECT              :: OBJECT;
    LXB_TAG_OL                  :: OL;
    LXB_TAG_OPTGROUP            :: OPTGROUP;
    LXB_TAG_OPTION              :: OPTION;
    LXB_TAG_OUTPUT              :: OUTPUT;
    LXB_TAG_P                   :: P;
    LXB_TAG_PARAM               :: PARAM;
    LXB_TAG_PATH                :: PATH;
    LXB_TAG_PICTURE             :: PICTURE;
    LXB_TAG_PLAINTEXT           :: PLAINTEXT;
    LXB_TAG_PRE                 :: PRE;
    LXB_TAG_PROGRESS            :: PROGRESS;
    LXB_TAG_Q                   :: Q;
    LXB_TAG_RADIALGRADIENT      :: RADIALGRADIENT;
    LXB_TAG_RB                  :: RB;
    LXB_TAG_RP                  :: RP;
    LXB_TAG_RT                  :: RT;
    LXB_TAG_RTC                 :: RTC;
    LXB_TAG_RUBY                :: RUBY;
    LXB_TAG_S                   :: S;
    LXB_TAG_SAMP                :: SAMP;
    LXB_TAG_SCRIPT              :: SCRIPT;
    LXB_TAG_SECTION             :: SECTION;
    LXB_TAG_SELECT              :: SELECT;
    LXB_TAG_SLOT                :: SLOT;
    LXB_TAG_SMALL               :: SMALL;
    LXB_TAG_SOURCE              :: SOURCE;
    LXB_TAG_SPACER              :: SPACER;
    LXB_TAG_SPAN                :: SPAN;
    LXB_TAG_STRIKE              :: STRIKE;
    LXB_TAG_STRONG              :: STRONG;
    LXB_TAG_STYLE               :: STYLE;
    LXB_TAG_SUB                 :: SUB;
    LXB_TAG_SUMMARY             :: SUMMARY;
    LXB_TAG_SUP                 :: SUP;
    LXB_TAG_SVG                 :: SVG;
    LXB_TAG_TABLE               :: TABLE;
    LXB_TAG_TBODY               :: TBODY;
    LXB_TAG_TD                  :: TD;
    LXB_TAG_TEMPLATE            :: TEMPLATE;
    LXB_TAG_TEXTAREA            :: TEXTAREA;
    LXB_TAG_TEXTPATH            :: TEXTPATH;
    LXB_TAG_TFOOT               :: TFOOT;
    LXB_TAG_TH                  :: TH;
    LXB_TAG_THEAD               :: THEAD;
    LXB_TAG_TIME                :: TIME;
    LXB_TAG_TITLE               :: TITLE;
    LXB_TAG_TR                  :: TR;
    LXB_TAG_TRACK               :: TRACK;
    LXB_TAG_TT                  :: TT;
    LXB_TAG_U                   :: U;
    LXB_TAG_UL                  :: UL;
    LXB_TAG_VAR                 :: VAR;
    LXB_TAG_VIDEO               :: VIDEO;
    LXB_TAG_WBR                 :: WBR;
    LXB_TAG_XMP                 :: XMP;
    LXB_TAG__LAST_ENTRY         :: LAST_ENTRY;
}

lxb_ns_id_t :: u64;
lxb_ns_prefix_id_t :: u64;

lxb_ns_id_enum_t :: enum u32 {
    UNDEF      :: 0;
    ANY        :: 1;
    HTML       :: 2;
    MATH       :: 3;
    SVG        :: 4;
    XLINK      :: 5;
    XML        :: 6;
    XMLNS      :: 7;
    LAST_ENTRY :: 8;

    LXB_NS__UNDEF      :: UNDEF;
    LXB_NS__ANY        :: ANY;
    LXB_NS_HTML        :: HTML;
    LXB_NS_MATH        :: MATH;
    LXB_NS_SVG         :: SVG;
    LXB_NS_XLINK       :: XLINK;
    LXB_NS_XML         :: XML;
    LXB_NS_XMLNS       :: XMLNS;
    LXB_NS__LAST_ENTRY :: LAST_ENTRY;
}

lxb_dom_exception_code_t :: enum u32 {
    INDEX_SIZE_ERR              :: 0;
    DOMSTRING_SIZE_ERR          :: 1;
    HIERARCHY_REQUEST_ERR       :: 2;
    WRONG_DOCUMENT_ERR          :: 3;
    INVALID_CHARACTER_ERR       :: 4;
    NO_DATA_ALLOWED_ERR         :: 5;
    NO_MODIFICATION_ALLOWED_ERR :: 6;
    NOT_FOUND_ERR               :: 7;
    NOT_SUPPORTED_ERR           :: 8;
    INUSE_ATTRIBUTE_ERR         :: 9;
    INVALID_STATE_ERR           :: 10;
    SYNTAX_ERR                  :: 11;
    INVALID_MODIFICATION_ERR    :: 12;
    NAMESPACE_ERR               :: 13;
    INVALID_ACCESS_ERR          :: 14;
    VALIDATION_ERR              :: 15;
    TYPE_MISMATCH_ERR           :: 16;
    SECURITY_ERR                :: 17;
    NETWORK_ERR                 :: 18;
    ABORT_ERR                   :: 19;
    URL_MISMATCH_ERR            :: 20;
    QUOTA_EXCEEDED_ERR          :: 21;
    TIMEOUT_ERR                 :: 22;
    INVALID_NODE_TYPE_ERR       :: 23;
    DATA_CLONE_ERR              :: 24;

    LXB_DOM_INDEX_SIZE_ERR              :: INDEX_SIZE_ERR;
    LXB_DOM_DOMSTRING_SIZE_ERR          :: DOMSTRING_SIZE_ERR;
    LXB_DOM_HIERARCHY_REQUEST_ERR       :: HIERARCHY_REQUEST_ERR;
    LXB_DOM_WRONG_DOCUMENT_ERR          :: WRONG_DOCUMENT_ERR;
    LXB_DOM_INVALID_CHARACTER_ERR       :: INVALID_CHARACTER_ERR;
    LXB_DOM_NO_DATA_ALLOWED_ERR         :: NO_DATA_ALLOWED_ERR;
    LXB_DOM_NO_MODIFICATION_ALLOWED_ERR :: NO_MODIFICATION_ALLOWED_ERR;
    LXB_DOM_NOT_FOUND_ERR               :: NOT_FOUND_ERR;
    LXB_DOM_NOT_SUPPORTED_ERR           :: NOT_SUPPORTED_ERR;
    LXB_DOM_INUSE_ATTRIBUTE_ERR         :: INUSE_ATTRIBUTE_ERR;
    LXB_DOM_INVALID_STATE_ERR           :: INVALID_STATE_ERR;
    LXB_DOM_SYNTAX_ERR                  :: SYNTAX_ERR;
    LXB_DOM_INVALID_MODIFICATION_ERR    :: INVALID_MODIFICATION_ERR;
    LXB_DOM_NAMESPACE_ERR               :: NAMESPACE_ERR;
    LXB_DOM_INVALID_ACCESS_ERR          :: INVALID_ACCESS_ERR;
    LXB_DOM_VALIDATION_ERR              :: VALIDATION_ERR;
    LXB_DOM_TYPE_MISMATCH_ERR           :: TYPE_MISMATCH_ERR;
    LXB_DOM_SECURITY_ERR                :: SECURITY_ERR;
    LXB_DOM_NETWORK_ERR                 :: NETWORK_ERR;
    LXB_DOM_ABORT_ERR                   :: ABORT_ERR;
    LXB_DOM_URL_MISMATCH_ERR            :: URL_MISMATCH_ERR;
    LXB_DOM_QUOTA_EXCEEDED_ERR          :: QUOTA_EXCEEDED_ERR;
    LXB_DOM_TIMEOUT_ERR                 :: TIMEOUT_ERR;
    LXB_DOM_INVALID_NODE_TYPE_ERR       :: INVALID_NODE_TYPE_ERR;
    LXB_DOM_DATA_CLONE_ERR              :: DATA_CLONE_ERR;
}

/*
* No inline functions for ABI.
*/
lxb_dom_exception_code_ref_set_noi :: (var: *lxb_dom_exception_code_t, code: lxb_dom_exception_code_t) -> *void #foreign liblexbor;

lxb_dom_event_target_t :: lxb_dom_event_target;
lxb_dom_node_t :: lxb_dom_node;
lxb_dom_element_t :: lxb_dom_element;
lxb_dom_attr_t :: lxb_dom_attr;
lxb_dom_document_t :: lxb_dom_document;
lxb_dom_document_type :: struct {}
lxb_dom_document_type_t :: lxb_dom_document_type;
lxb_dom_document_fragment :: struct {}
lxb_dom_document_fragment_t :: lxb_dom_document_fragment;
lxb_dom_shadow_root :: struct {}
lxb_dom_shadow_root_t :: lxb_dom_shadow_root;
lxb_dom_character_data :: struct {}
lxb_dom_character_data_t :: lxb_dom_character_data;
lxb_dom_text :: struct {}
lxb_dom_text_t :: lxb_dom_text;
lxb_dom_cdata_section :: struct {}
lxb_dom_cdata_section_t :: lxb_dom_cdata_section;
lxb_dom_processing_instruction :: struct {}
lxb_dom_processing_instruction_t :: lxb_dom_processing_instruction;
lxb_dom_comment :: struct {}
lxb_dom_comment_t :: lxb_dom_comment;

lxb_dom_interface_t :: void;

lxb_dom_interface_constructor_f :: #type (document: *void) -> *void #c_call;

lxb_dom_interface_destructor_f :: #type (intrfc: *void) -> *void #c_call;

lxb_dom_interface_create_f :: #type (document: *lxb_dom_document_t, tag_id: lxb_tag_id_t, ns: lxb_ns_id_t) -> *lxb_dom_interface_t #c_call;

lxb_dom_interface_clone_f :: #type (document: *lxb_dom_document_t, intrfc: *lxb_dom_interface_t) -> *lxb_dom_interface_t #c_call;

lxb_dom_interface_destroy_f :: #type (intrfc: *lxb_dom_interface_t) -> *lxb_dom_interface_t #c_call;

lxb_dom_interface_create :: (document: *lxb_dom_document_t, tag_id: lxb_tag_id_t, ns: lxb_ns_id_t) -> *lxb_dom_interface_t #foreign liblexbor;

lxb_dom_interface_clone :: (document: *lxb_dom_document_t, intrfc: *lxb_dom_interface_t) -> *lxb_dom_interface_t #foreign liblexbor;

lxb_dom_interface_destroy :: (intrfc: *lxb_dom_interface_t) -> *lxb_dom_interface_t #foreign liblexbor;

lexbor_array_t :: struct {
    list:   **void;
    size:   u64;
    length: u64;
}

lexbor_array_create :: () -> *lexbor_array_t #foreign liblexbor;

lexbor_array_init :: (array: *lexbor_array_t, size: u64) -> lxb_status_t #foreign liblexbor;

lexbor_array_clean :: (array: *lexbor_array_t) -> void #foreign liblexbor;

lexbor_array_destroy :: (array: *lexbor_array_t, self_destroy: bool) -> *lexbor_array_t #foreign liblexbor;

lexbor_array_expand :: (array: *lexbor_array_t, up_to: u64) -> **void #foreign liblexbor;

lexbor_array_push :: (array: *lexbor_array_t, value: *void) -> lxb_status_t #foreign liblexbor;

lexbor_array_pop :: (array: *lexbor_array_t) -> *void #foreign liblexbor;

lexbor_array_insert :: (array: *lexbor_array_t, idx: u64, value: *void) -> lxb_status_t #foreign liblexbor;

lexbor_array_set :: (array: *lexbor_array_t, idx: u64, value: *void) -> lxb_status_t #foreign liblexbor;

lexbor_array_delete :: (array: *lexbor_array_t, begin: u64, length: u64) -> void #foreign liblexbor;

/*
* No inline functions for ABI.
*/
lexbor_array_get_noi :: (array: *lexbor_array_t, idx: u64) -> *void #foreign liblexbor;

lexbor_array_length_noi :: (array: *lexbor_array_t) -> u64 #foreign liblexbor;

lexbor_array_size_noi :: (array: *lexbor_array_t) -> u64 #foreign liblexbor;

lxb_dom_collection_t :: struct {
    array:    lexbor_array_t;
    document: *lxb_dom_document_t;
}

lxb_dom_collection_create :: (document: *lxb_dom_document_t) -> *lxb_dom_collection_t #foreign liblexbor;

lxb_dom_collection_init :: (col: *lxb_dom_collection_t, start_list_size: u64) -> lxb_status_t #foreign liblexbor;

lxb_dom_collection_destroy :: (col: *lxb_dom_collection_t, self_destroy: bool) -> *lxb_dom_collection_t #foreign liblexbor;

/*
* No inline functions for ABI.
*/
lxb_dom_collection_make_noi :: (document: *lxb_dom_document_t, start_list_size: u64) -> *lxb_dom_collection_t #foreign liblexbor;

lxb_dom_collection_clean_noi :: (col: *lxb_dom_collection_t) -> void #foreign liblexbor;

lxb_dom_collection_append_noi :: (col: *lxb_dom_collection_t, value: *void) -> lxb_status_t #foreign liblexbor;

lxb_dom_collection_element_noi :: (col: *lxb_dom_collection_t, idx: u64) -> *lxb_dom_element_t #foreign liblexbor;

lxb_dom_collection_node_noi :: (col: *lxb_dom_collection_t, idx: u64) -> *lxb_dom_node_t #foreign liblexbor;

lxb_dom_collection_length_noi :: (col: *lxb_dom_collection_t) -> u64 #foreign liblexbor;

lxb_dom_event_target :: struct {
    events: *void;
}

lxb_dom_event_target_create :: (document: *lxb_dom_document_t) -> *lxb_dom_event_target_t #foreign liblexbor;

lxb_dom_event_target_destroy :: (event_target: *lxb_dom_event_target_t, document: *lxb_dom_document_t) -> *lxb_dom_event_target_t #foreign liblexbor;

lxb_dom_node_simple_walker_f :: #type (node: *lxb_dom_node_t, ctx: *void) -> lexbor_action_t #c_call;

/*
* insert, remove, destroy:
*     Can be called for any node. When inserting an element, attribute,
*     comment and so on.
*
* set_value:
*     Can be called only when the attribute value is changed.
*/
lxb_dom_node_cb_insert_f :: #type (node: *lxb_dom_node_t) -> lxb_status_t #c_call;

lxb_dom_node_cb_remove_f :: #type (node: *lxb_dom_node_t) -> lxb_status_t #c_call;

lxb_dom_node_cb_destroy_f :: #type (node: *lxb_dom_node_t) -> lxb_status_t #c_call;

lxb_dom_node_cb_set_value_f :: #type (node: *lxb_dom_node_t, value: *lxb_char_t, length: u64) -> lxb_status_t #c_call;

lxb_dom_node_type_t :: enum u32 {
    UNDEF                  :: 0;
    ELEMENT                :: 1;
    ATTRIBUTE              :: 2;
    TEXT                   :: 3;
    CDATA_SECTION          :: 4;
    ENTITY_REFERENCE       :: 5;
    ENTITY                 :: 6;
    PROCESSING_INSTRUCTION :: 7;
    COMMENT                :: 8;
    DOCUMENT               :: 9;
    DOCUMENT_TYPE          :: 10;
    DOCUMENT_FRAGMENT      :: 11;
    NOTATION               :: 12;
    LAST_ENTRY             :: 13;

    LXB_DOM_NODE_TYPE_UNDEF                  :: UNDEF;
    LXB_DOM_NODE_TYPE_ELEMENT                :: ELEMENT;
    LXB_DOM_NODE_TYPE_ATTRIBUTE              :: ATTRIBUTE;
    LXB_DOM_NODE_TYPE_TEXT                   :: TEXT;
    LXB_DOM_NODE_TYPE_CDATA_SECTION          :: CDATA_SECTION;
    LXB_DOM_NODE_TYPE_ENTITY_REFERENCE       :: ENTITY_REFERENCE;
    LXB_DOM_NODE_TYPE_ENTITY                 :: ENTITY;
    LXB_DOM_NODE_TYPE_PROCESSING_INSTRUCTION :: PROCESSING_INSTRUCTION;
    LXB_DOM_NODE_TYPE_COMMENT                :: COMMENT;
    LXB_DOM_NODE_TYPE_DOCUMENT               :: DOCUMENT;
    LXB_DOM_NODE_TYPE_DOCUMENT_TYPE          :: DOCUMENT_TYPE;
    LXB_DOM_NODE_TYPE_DOCUMENT_FRAGMENT      :: DOCUMENT_FRAGMENT;
    LXB_DOM_NODE_TYPE_NOTATION               :: NOTATION;
    LXB_DOM_NODE_TYPE_LAST_ENTRY             :: LAST_ENTRY;
}

lxb_dom_node :: struct {
    event_target:   lxb_dom_event_target_t;

    local_name:     u64; /* , lowercase, without prefix: div */
    prefix:         u64; /* lowercase: lalala */
    ns:             u64; /* namespace */

    owner_document: *lxb_dom_document_t;

    next:           *lxb_dom_node_t;
    prev:           *lxb_dom_node_t;
    parent:         *lxb_dom_node_t;
    first_child:    *lxb_dom_node_t;
    last_child:     *lxb_dom_node_t;
    user:           *void;

    type:           lxb_dom_node_type_t;
}

lxb_dom_node_interface_create :: (document: *lxb_dom_document_t) -> *lxb_dom_node_t #foreign liblexbor;

lxb_dom_node_interface_clone :: (document: *lxb_dom_document_t, node: *lxb_dom_node_t, is_attr: bool) -> *lxb_dom_node_t #foreign liblexbor;

lxb_dom_node_interface_destroy :: (node: *lxb_dom_node_t) -> *lxb_dom_node_t #foreign liblexbor;

lxb_dom_node_interface_copy :: (dst: *lxb_dom_node_t, src: *lxb_dom_node_t, is_attr: bool) -> lxb_status_t #foreign liblexbor;

lxb_dom_node_destroy :: (node: *lxb_dom_node_t) -> *lxb_dom_node_t #foreign liblexbor;

lxb_dom_node_destroy_deep :: (root: *lxb_dom_node_t) -> *lxb_dom_node_t #foreign liblexbor;

lxb_dom_node_clone :: (node: *lxb_dom_node_t, deep: bool) -> *lxb_dom_node_t #foreign liblexbor;

lxb_dom_node_name :: (node: *lxb_dom_node_t, len: *u64) -> *lxb_char_t #foreign liblexbor;

lxb_dom_node_insert_child_wo_events :: (to: *lxb_dom_node_t, node: *lxb_dom_node_t) -> void #foreign liblexbor;

lxb_dom_node_insert_child :: (to: *lxb_dom_node_t, node: *lxb_dom_node_t) -> void #foreign liblexbor;

lxb_dom_node_insert_before_wo_events :: (to: *lxb_dom_node_t, node: *lxb_dom_node_t) -> void #foreign liblexbor;

lxb_dom_node_insert_before :: (to: *lxb_dom_node_t, node: *lxb_dom_node_t) -> void #foreign liblexbor;

lxb_dom_node_insert_after_wo_events :: (to: *lxb_dom_node_t, node: *lxb_dom_node_t) -> void #foreign liblexbor;

lxb_dom_node_insert_after :: (to: *lxb_dom_node_t, node: *lxb_dom_node_t) -> void #foreign liblexbor;

lxb_dom_node_remove_wo_events :: (node: *lxb_dom_node_t) -> void #foreign liblexbor;

lxb_dom_node_remove :: (node: *lxb_dom_node_t) -> void #foreign liblexbor;

lxb_dom_node_replace_all :: (parent: *lxb_dom_node_t, node: *lxb_dom_node_t) -> lxb_status_t #foreign liblexbor;

lxb_dom_node_simple_walk :: (root: *lxb_dom_node_t, walker_cb: lxb_dom_node_simple_walker_f, ctx: *void) -> void #foreign liblexbor;

lxb_dom_node_by_tag_name :: (root: *lxb_dom_node_t, collection: *lxb_dom_collection_t, qualified_name: *lxb_char_t, len: u64) -> lxb_status_t #foreign liblexbor;

lxb_dom_node_by_class_name :: (root: *lxb_dom_node_t, collection: *lxb_dom_collection_t, class_name: *lxb_char_t, len: u64) -> lxb_status_t #foreign liblexbor;

lxb_dom_node_by_attr :: (root: *lxb_dom_node_t, collection: *lxb_dom_collection_t, qualified_name: *lxb_char_t, qname_len: u64, value: *lxb_char_t, value_len: u64, case_insensitive: bool) -> lxb_status_t #foreign liblexbor;

lxb_dom_node_by_attr_begin :: (root: *lxb_dom_node_t, collection: *lxb_dom_collection_t, qualified_name: *lxb_char_t, qname_len: u64, value: *lxb_char_t, value_len: u64, case_insensitive: bool) -> lxb_status_t #foreign liblexbor;

lxb_dom_node_by_attr_end :: (root: *lxb_dom_node_t, collection: *lxb_dom_collection_t, qualified_name: *lxb_char_t, qname_len: u64, value: *lxb_char_t, value_len: u64, case_insensitive: bool) -> lxb_status_t #foreign liblexbor;

lxb_dom_node_by_attr_contain :: (root: *lxb_dom_node_t, collection: *lxb_dom_collection_t, qualified_name: *lxb_char_t, qname_len: u64, value: *lxb_char_t, value_len: u64, case_insensitive: bool) -> lxb_status_t #foreign liblexbor;

/*
* Memory of returns value will be freed in document destroy moment.
* If you need to release returned resource after use, then call the
* lxb_dom_document_destroy_text(node->owner_document, text) function.
*/
lxb_dom_node_text_content :: (node: *lxb_dom_node_t, len: *u64) -> *lxb_char_t #foreign liblexbor;

lxb_dom_node_text_content_set :: (node: *lxb_dom_node_t, content: *lxb_char_t, len: u64) -> lxb_status_t #foreign liblexbor;

lxb_dom_node_is_empty :: (root: *lxb_dom_node_t) -> bool #foreign liblexbor;

/*
* No inline functions for ABI.
*/
lxb_dom_node_tag_id_noi :: (node: *lxb_dom_node_t) -> lxb_tag_id_t #foreign liblexbor;

lxb_dom_node_next_noi :: (node: *lxb_dom_node_t) -> *lxb_dom_node_t #foreign liblexbor;

lxb_dom_node_prev_noi :: (node: *lxb_dom_node_t) -> *lxb_dom_node_t #foreign liblexbor;

lxb_dom_node_parent_noi :: (node: *lxb_dom_node_t) -> *lxb_dom_node_t #foreign liblexbor;

lxb_dom_node_first_child_noi :: (node: *lxb_dom_node_t) -> *lxb_dom_node_t #foreign liblexbor;

lxb_dom_node_last_child_noi :: (node: *lxb_dom_node_t) -> *lxb_dom_node_t #foreign liblexbor;

lexbor_mem_chunk_t :: lexbor_mem_chunk;
lexbor_mem_t :: lexbor_mem;

lexbor_mem_chunk :: struct {
    data:   *u8;
    length: u64;
    size:   u64;

    next:   *lexbor_mem_chunk_t;
    prev:   *lexbor_mem_chunk_t;
}

lexbor_mem :: struct {
    chunk:          *lexbor_mem_chunk_t;
    chunk_first:    *lexbor_mem_chunk_t;

    chunk_min_size: u64;
    chunk_length:   u64;
}

lexbor_mem_create :: () -> *lexbor_mem_t #foreign liblexbor;

lexbor_mem_init :: (mem: *lexbor_mem_t, min_chunk_size: u64) -> lxb_status_t #foreign liblexbor;

lexbor_mem_clean :: (mem: *lexbor_mem_t) -> void #foreign liblexbor;

lexbor_mem_destroy :: (mem: *lexbor_mem_t, destroy_self: bool) -> *lexbor_mem_t #foreign liblexbor;

/*
* The memory allocated in lexbor_mem_chunk_* functions needs to be freed
* by lexbor_mem_chunk_destroy function.
*
* This memory will not be automatically freed by a function lexbor_mem_destroy.
*/
lexbor_mem_chunk_init :: (mem: *lexbor_mem_t, chunk: *lexbor_mem_chunk_t, length: u64) -> *u8 #foreign liblexbor;

lexbor_mem_chunk_make :: (mem: *lexbor_mem_t, length: u64) -> *lexbor_mem_chunk_t #foreign liblexbor;

lexbor_mem_chunk_destroy :: (mem: *lexbor_mem_t, chunk: *lexbor_mem_chunk_t, self_destroy: bool) -> *lexbor_mem_chunk_t #foreign liblexbor;

/*
* The memory allocated in lexbor_mem_alloc and lexbor_mem_calloc function
* will be freeds after calling lexbor_mem_destroy function.
*/
lexbor_mem_alloc :: (mem: *lexbor_mem_t, length: u64) -> *void #foreign liblexbor;

lexbor_mem_calloc :: (mem: *lexbor_mem_t, length: u64) -> *void #foreign liblexbor;

/*
* No inline functions for ABI.
*/
lexbor_mem_current_length_noi :: (mem: *lexbor_mem_t) -> u64 #foreign liblexbor;

lexbor_mem_current_size_noi :: (mem: *lexbor_mem_t) -> u64 #foreign liblexbor;

lexbor_mem_chunk_length_noi :: (mem: *lexbor_mem_t) -> u64 #foreign liblexbor;

lexbor_mem_align_noi :: (size: u64) -> u64 #foreign liblexbor;

lexbor_mem_align_floor_noi :: (size: u64) -> u64 #foreign liblexbor;

lexbor_dobject_t :: struct {
    mem:         *lexbor_mem_t;
    cache:       *lexbor_array_t;

    allocated:   u64;
    struct_size: u64;
}

lexbor_dobject_create :: () -> *lexbor_dobject_t #foreign liblexbor;

lexbor_dobject_init :: (dobject: *lexbor_dobject_t, chunk_size: u64, struct_size: u64) -> lxb_status_t #foreign liblexbor;

lexbor_dobject_clean :: (dobject: *lexbor_dobject_t) -> void #foreign liblexbor;

lexbor_dobject_destroy :: (dobject: *lexbor_dobject_t, destroy_self: bool) -> *lexbor_dobject_t #foreign liblexbor;

lexbor_dobject_alloc :: (dobject: *lexbor_dobject_t) -> *void #foreign liblexbor;

lexbor_dobject_calloc :: (dobject: *lexbor_dobject_t) -> *void #foreign liblexbor;

lexbor_dobject_free :: (dobject: *lexbor_dobject_t, data: *void) -> *void #foreign liblexbor;

lexbor_dobject_by_absolute_position :: (dobject: *lexbor_dobject_t, pos: u64) -> *void #foreign liblexbor;

/*
* No inline functions for ABI.
*/
lexbor_dobject_allocated_noi :: (dobject: *lexbor_dobject_t) -> u64 #foreign liblexbor;

lexbor_dobject_cache_length_noi :: (dobject: *lexbor_dobject_t) -> u64 #foreign liblexbor;

lexbor_bst_entry_t :: lexbor_bst_entry;
lexbor_bst_t :: lexbor_bst;

lexbor_bst_entry_f :: #type (bst: *lexbor_bst_t, entry: *lexbor_bst_entry_t, ctx: *void) -> bool #c_call;

lexbor_bst_entry :: struct {
    value:  *void;

    right:  *lexbor_bst_entry_t;
    left:   *lexbor_bst_entry_t;
    next:   *lexbor_bst_entry_t;
    parent: *lexbor_bst_entry_t;

    size:   u64;
}

lexbor_bst :: struct {
    dobject:     *lexbor_dobject_t;
    root:        *lexbor_bst_entry_t;

    tree_length: u64;
}

lexbor_bst_create :: () -> *lexbor_bst_t #foreign liblexbor;

lexbor_bst_init :: (bst: *lexbor_bst_t, size: u64) -> lxb_status_t #foreign liblexbor;

lexbor_bst_clean :: (bst: *lexbor_bst_t) -> void #foreign liblexbor;

lexbor_bst_destroy :: (bst: *lexbor_bst_t, self_destroy: bool) -> *lexbor_bst_t #foreign liblexbor;

lexbor_bst_entry_make :: (bst: *lexbor_bst_t, size: u64) -> *lexbor_bst_entry_t #foreign liblexbor;

lexbor_bst_insert :: (bst: *lexbor_bst_t, scope: **lexbor_bst_entry_t, size: u64, value: *void) -> *lexbor_bst_entry_t #foreign liblexbor;

lexbor_bst_insert_not_exists :: (bst: *lexbor_bst_t, scope: **lexbor_bst_entry_t, size: u64) -> *lexbor_bst_entry_t #foreign liblexbor;

lexbor_bst_search :: (bst: *lexbor_bst_t, scope: *lexbor_bst_entry_t, size: u64) -> *lexbor_bst_entry_t #foreign liblexbor;

lexbor_bst_search_close :: (bst: *lexbor_bst_t, scope: *lexbor_bst_entry_t, size: u64) -> *lexbor_bst_entry_t #foreign liblexbor;

lexbor_bst_remove :: (bst: *lexbor_bst_t, root: **lexbor_bst_entry_t, size: u64) -> *void #foreign liblexbor;

lexbor_bst_remove_close :: (bst: *lexbor_bst_t, root: **lexbor_bst_entry_t, size: u64, found_size: *u64) -> *void #foreign liblexbor;

lexbor_bst_remove_by_pointer :: (bst: *lexbor_bst_t, entry: *lexbor_bst_entry_t, root: **lexbor_bst_entry_t) -> *void #foreign liblexbor;

lexbor_bst_serialize :: (bst: *lexbor_bst_t, callback: lexbor_callback_f, ctx: *void) -> void #foreign liblexbor;

lexbor_bst_serialize_entry :: (entry: *lexbor_bst_entry_t, callback: lexbor_callback_f, ctx: *void, tabs: u64) -> void #foreign liblexbor;

lexbor_mraw_t :: struct {
    mem:       *lexbor_mem_t;
    cache:     *lexbor_bst_t;
    ref_count: u64;
}

lexbor_mraw_create :: () -> *lexbor_mraw_t #foreign liblexbor;

lexbor_mraw_init :: (mraw: *lexbor_mraw_t, chunk_size: u64) -> lxb_status_t #foreign liblexbor;

lexbor_mraw_clean :: (mraw: *lexbor_mraw_t) -> void #foreign liblexbor;

lexbor_mraw_destroy :: (mraw: *lexbor_mraw_t, destroy_self: bool) -> *lexbor_mraw_t #foreign liblexbor;

lexbor_mraw_alloc :: (mraw: *lexbor_mraw_t, size: u64) -> *void #foreign liblexbor;

lexbor_mraw_calloc :: (mraw: *lexbor_mraw_t, size: u64) -> *void #foreign liblexbor;

lexbor_mraw_realloc :: (mraw: *lexbor_mraw_t, data: *void, new_size: u64) -> *void #foreign liblexbor;

lexbor_mraw_free :: (mraw: *lexbor_mraw_t, data: *void) -> *void #foreign liblexbor;

/*
* No inline functions for ABI.
*/
lexbor_mraw_data_size_noi :: (data: *void) -> u64 #foreign liblexbor;

lexbor_mraw_data_size_set_noi :: (data: *void, size: u64) -> void #foreign liblexbor;

lexbor_mraw_dup_noi :: (mraw: *lexbor_mraw_t, src: *void, size: u64) -> *void #foreign liblexbor;

lexbor_hash_search_t :: lexbor_hash_search;
lexbor_hash_insert_t :: lexbor_hash_insert;

lexbor_hash_insert_raw: *lexbor_hash_insert_t #elsewhere liblexbor;
lexbor_hash_insert_lower: *lexbor_hash_insert_t #elsewhere liblexbor;
lexbor_hash_insert_upper: *lexbor_hash_insert_t #elsewhere liblexbor;

lexbor_hash_search_raw: *lexbor_hash_search_t #elsewhere liblexbor;
lexbor_hash_search_lower: *lexbor_hash_search_t #elsewhere liblexbor;
lexbor_hash_search_upper: *lexbor_hash_search_t #elsewhere liblexbor;

/*
* FIXME:
* It is necessary to add the rebuild of a hash table
* and optimize collisions.
*/
lexbor_hash_t :: lexbor_hash;
lexbor_hash_entry_t :: lexbor_hash_entry;

lexbor_hash_id_f :: #type (key: *lxb_char_t, size: u64) -> u32 #c_call;

lexbor_hash_copy_f :: #type (hash: *lexbor_hash_t, entry: *lexbor_hash_entry_t, key: *lxb_char_t, size: u64) -> lxb_status_t #c_call;

lexbor_hash_cmp_f :: #type (first: *lxb_char_t, second: *lxb_char_t, size: u64) -> bool #c_call;

lexbor_hash_entry :: struct {
    u:      union {
        long_str:  *lxb_char_t;
        short_str: [17] lxb_char_t;
    };

    length: u64;

    next:   *lexbor_hash_entry_t;
}

lexbor_hash :: struct {
    entries:     *lexbor_dobject_t;
    mraw:        *lexbor_mraw_t;

    table:       **lexbor_hash_entry_t;
    table_size:  u64;

    struct_size: u64;
}

lexbor_hash_insert :: struct {
    hash: lexbor_hash_id_f; /* For generate a hash id. */
    cmp:  lexbor_hash_cmp_f; /* For compare key. */
    copy: lexbor_hash_copy_f; /* For copy key. */
}

lexbor_hash_search :: struct {
    hash: lexbor_hash_id_f; /* For generate a hash id. */
    cmp:  lexbor_hash_cmp_f; /* For compare key. */
}

lexbor_hash_create :: () -> *lexbor_hash_t #foreign liblexbor;

lexbor_hash_init :: (hash: *lexbor_hash_t, table_size: u64, struct_size: u64) -> lxb_status_t #foreign liblexbor;

lexbor_hash_clean :: (hash: *lexbor_hash_t) -> void #foreign liblexbor;

lexbor_hash_destroy :: (hash: *lexbor_hash_t, destroy_obj: bool) -> *lexbor_hash_t #foreign liblexbor;

lexbor_hash_insert_ :: (hash: *lexbor_hash_t, insert: *lexbor_hash_insert_t, key: *lxb_char_t, length: u64) -> *void #foreign liblexbor "lexbor_hash_insert";

lexbor_hash_insert_by_entry :: (hash: *lexbor_hash_t, entry: *lexbor_hash_entry_t, search: *lexbor_hash_search_t, key: *lxb_char_t, length: u64) -> *void #foreign liblexbor;

lexbor_hash_remove :: (hash: *lexbor_hash_t, search: *lexbor_hash_search_t, key: *lxb_char_t, length: u64) -> void #foreign liblexbor;

lexbor_hash_search_ :: (hash: *lexbor_hash_t, search: *lexbor_hash_search_t, key: *lxb_char_t, length: u64) -> *void #foreign liblexbor "lexbor_hash_search";

lexbor_hash_remove_by_hash_id :: (hash: *lexbor_hash_t, hash_id: u32, key: *lxb_char_t, length: u64, cmp_func: lexbor_hash_cmp_f) -> void #foreign liblexbor;

lexbor_hash_search_by_hash_id :: (hash: *lexbor_hash_t, hash_id: u32, key: *lxb_char_t, length: u64, cmp_func: lexbor_hash_cmp_f) -> *void #foreign liblexbor;

lexbor_hash_make_id :: (key: *lxb_char_t, length: u64) -> u32 #foreign liblexbor;

lexbor_hash_make_id_lower :: (key: *lxb_char_t, length: u64) -> u32 #foreign liblexbor;

lexbor_hash_make_id_upper :: (key: *lxb_char_t, length: u64) -> u32 #foreign liblexbor;

lexbor_hash_copy :: (hash: *lexbor_hash_t, entry: *lexbor_hash_entry_t, key: *lxb_char_t, length: u64) -> lxb_status_t #foreign liblexbor;

lexbor_hash_copy_lower :: (hash: *lexbor_hash_t, entry: *lexbor_hash_entry_t, key: *lxb_char_t, length: u64) -> lxb_status_t #foreign liblexbor;

lexbor_hash_copy_upper :: (hash: *lexbor_hash_t, entry: *lexbor_hash_entry_t, key: *lxb_char_t, length: u64) -> lxb_status_t #foreign liblexbor;

lexbor_utils_power :: (t: u64, k: u64) -> u64 #foreign liblexbor;

lexbor_utils_hash_hash :: (key: *lxb_char_t, key_size: u64) -> u64 #foreign liblexbor;

lexbor_str_t :: struct {
    data:   *lxb_char_t;
    length: u64;
}

lexbor_str_create :: () -> *lexbor_str_t #foreign liblexbor;

lexbor_str_init :: (str: *lexbor_str_t, mraw: *lexbor_mraw_t, size: u64) -> *lxb_char_t #foreign liblexbor;

lexbor_str_init_append :: (str: *lexbor_str_t, mraw: *lexbor_mraw_t, data: *lxb_char_t, length: u64) -> *lxb_char_t #foreign liblexbor;

lexbor_str_clean :: (str: *lexbor_str_t) -> void #foreign liblexbor;

lexbor_str_clean_all :: (str: *lexbor_str_t) -> void #foreign liblexbor;

lexbor_str_destroy :: (str: *lexbor_str_t, mraw: *lexbor_mraw_t, destroy_obj: bool) -> *lexbor_str_t #foreign liblexbor;

lexbor_str_realloc :: (str: *lexbor_str_t, mraw: *lexbor_mraw_t, new_size: u64) -> *lxb_char_t #foreign liblexbor;

lexbor_str_check_size :: (str: *lexbor_str_t, mraw: *lexbor_mraw_t, plus_len: u64) -> *lxb_char_t #foreign liblexbor;

/* Append */
lexbor_str_append :: (str: *lexbor_str_t, mraw: *lexbor_mraw_t, data: *lxb_char_t, length: u64) -> *lxb_char_t #foreign liblexbor;

lexbor_str_append_before :: (str: *lexbor_str_t, mraw: *lexbor_mraw_t, buff: *lxb_char_t, length: u64) -> *lxb_char_t #foreign liblexbor;

lexbor_str_append_one :: (str: *lexbor_str_t, mraw: *lexbor_mraw_t, data: lxb_char_t) -> *lxb_char_t #foreign liblexbor;

lexbor_str_append_lowercase :: (str: *lexbor_str_t, mraw: *lexbor_mraw_t, data: *lxb_char_t, length: u64) -> *lxb_char_t #foreign liblexbor;

lexbor_str_append_with_rep_null_chars :: (str: *lexbor_str_t, mraw: *lexbor_mraw_t, buff: *lxb_char_t, length: u64) -> *lxb_char_t #foreign liblexbor;

/* Other functions */
lexbor_str_copy :: (dest: *lexbor_str_t, target: *lexbor_str_t, mraw: *lexbor_mraw_t) -> *lxb_char_t #foreign liblexbor;

lexbor_str_stay_only_whitespace :: (target: *lexbor_str_t) -> void #foreign liblexbor;

lexbor_str_strip_collapse_whitespace :: (target: *lexbor_str_t) -> void #foreign liblexbor;

lexbor_str_crop_whitespace_from_begin :: (target: *lexbor_str_t) -> u64 #foreign liblexbor;

lexbor_str_whitespace_from_begin :: (target: *lexbor_str_t) -> u64 #foreign liblexbor;

lexbor_str_whitespace_from_end :: (target: *lexbor_str_t) -> u64 #foreign liblexbor;

/* Data utils */
/*
* [in] first: must be null-terminated
* [in] sec: no matter what data
* [in] sec_size: size of the 'sec' buffer
*
* Function compare two lxb_char_t data until find '\0' in first arg.
* Successfully if the function returned a pointer starting with '\0',
* otherwise, if the data of the second buffer is insufficient function returned
* position in first buffer.
* If function returns NULL, the data are not equal.
*/
lexbor_str_data_ncasecmp_first :: (first: *lxb_char_t, sec: *lxb_char_t, sec_size: u64) -> *lxb_char_t #foreign liblexbor;

lexbor_str_data_ncasecmp_end :: (first: *lxb_char_t, sec: *lxb_char_t, size: u64) -> bool #foreign liblexbor;

lexbor_str_data_ncasecmp_contain :: (where: *lxb_char_t, where_size: u64, what: *lxb_char_t, what_size: u64) -> bool #foreign liblexbor;

lexbor_str_data_ncasecmp :: (first: *lxb_char_t, sec: *lxb_char_t, size: u64) -> bool #foreign liblexbor;

lexbor_str_data_nlocmp_right :: (first: *lxb_char_t, sec: *lxb_char_t, size: u64) -> bool #foreign liblexbor;

lexbor_str_data_nupcmp_right :: (first: *lxb_char_t, sec: *lxb_char_t, size: u64) -> bool #foreign liblexbor;

lexbor_str_data_casecmp :: (first: *lxb_char_t, sec: *lxb_char_t) -> bool #foreign liblexbor;

lexbor_str_data_ncmp_end :: (first: *lxb_char_t, sec: *lxb_char_t, size: u64) -> bool #foreign liblexbor;

lexbor_str_data_ncmp_contain :: (where: *lxb_char_t, where_size: u64, what: *lxb_char_t, what_size: u64) -> bool #foreign liblexbor;

lexbor_str_data_ncmp :: (first: *lxb_char_t, sec: *lxb_char_t, size: u64) -> bool #foreign liblexbor;

lexbor_str_data_cmp :: (first: *lxb_char_t, sec: *lxb_char_t) -> bool #foreign liblexbor;

lexbor_str_data_cmp_ws :: (first: *lxb_char_t, sec: *lxb_char_t) -> bool #foreign liblexbor;

lexbor_str_data_to_lowercase :: (to: *lxb_char_t, from: *lxb_char_t, len: u64) -> void #foreign liblexbor;

lexbor_str_data_to_uppercase :: (to: *lxb_char_t, from: *lxb_char_t, len: u64) -> void #foreign liblexbor;

lexbor_str_data_find_lowercase :: (data: *lxb_char_t, len: u64) -> *lxb_char_t #foreign liblexbor;

lexbor_str_data_find_uppercase :: (data: *lxb_char_t, len: u64) -> *lxb_char_t #foreign liblexbor;

/*
* No inline functions for ABI.
*/
lexbor_str_data_noi :: (str: *lexbor_str_t) -> *lxb_char_t #foreign liblexbor;

lexbor_str_length_noi :: (str: *lexbor_str_t) -> u64 #foreign liblexbor;

lexbor_str_size_noi :: (str: *lexbor_str_t) -> u64 #foreign liblexbor;

lexbor_str_data_set_noi :: (str: *lexbor_str_t, data: *lxb_char_t) -> void #foreign liblexbor;

lexbor_str_length_set_noi :: (str: *lexbor_str_t, mraw: *lexbor_mraw_t, length: u64) -> *lxb_char_t #foreign liblexbor;

lexbor_shs_entry_t :: struct {
    key:     *u8;
    value:   *void;

    key_len: u64;
    next:    u64;
}

lexbor_shs_hash_t :: struct {
    key:   u32;
    value: *void;

    next:  u64;
}

lexbor_shs_entry_get_static :: (tree: *lexbor_shs_entry_t, key: *lxb_char_t, size: u64) -> *lexbor_shs_entry_t #foreign liblexbor;

lexbor_shs_entry_get_lower_static :: (root: *lexbor_shs_entry_t, key: *lxb_char_t, key_len: u64) -> *lexbor_shs_entry_t #foreign liblexbor;

lexbor_shs_entry_get_upper_static :: (root: *lexbor_shs_entry_t, key: *lxb_char_t, key_len: u64) -> *lexbor_shs_entry_t #foreign liblexbor;

lxb_ns_data_t :: struct {
    entry:     lexbor_hash_entry_t;

    ns_id:     lxb_ns_id_t;
    ref_count: u64;
    read_only: bool;
}

lxb_ns_prefix_data_t :: struct {
    entry:     lexbor_hash_entry_t;

    prefix_id: lxb_ns_prefix_id_t;
    ref_count: u64;
    read_only: bool;
}

/* Link */
lxb_ns_by_id :: (hash: *lexbor_hash_t, ns_id: lxb_ns_id_t, length: *u64) -> *lxb_char_t #foreign liblexbor;

lxb_ns_data_by_id :: (hash: *lexbor_hash_t, ns_id: lxb_ns_id_t) -> *lxb_ns_data_t #foreign liblexbor;

lxb_ns_data_by_link :: (hash: *lexbor_hash_t, name: *lxb_char_t, length: u64) -> *lxb_ns_data_t #foreign liblexbor;

/* Prefix */
lxb_ns_prefix_append :: (hash: *lexbor_hash_t, prefix: *lxb_char_t, length: u64) -> *lxb_ns_prefix_data_t #foreign liblexbor;

lxb_ns_prefix_data_by_id :: (hash: *lexbor_hash_t, prefix_id: lxb_ns_prefix_id_t) -> *lxb_ns_prefix_data_t #foreign liblexbor;

lxb_ns_prefix_data_by_name :: (hash: *lexbor_hash_t, name: *lxb_char_t, length: u64) -> *lxb_ns_prefix_data_t #foreign liblexbor;

lxb_dom_attr_id_t :: u64;

lxb_dom_attr_id_enum_t :: enum u32 {
    UNDEF       :: 0;
    ACTIVE      :: 1;
    ALT         :: 2;
    CHARSET     :: 3;
    CHECKED     :: 4;
    CLASS       :: 5;
    COLOR       :: 6;
    CONTENT     :: 7;
    DIR         :: 8;
    DISABLED    :: 9;
    FACE        :: 10;
    FOCUS       :: 11;
    FOR         :: 12;
    HEIGHT      :: 13;
    HOVER       :: 14;
    HREF        :: 15;
    HTML        :: 16;
    HTTP_EQUIV  :: 17;
    ID          :: 18;
    IS          :: 19;
    MAXLENGTH   :: 20;
    PLACEHOLDER :: 21;
    POOL        :: 22;
    PUBLIC      :: 23;
    READONLY    :: 24;
    REQUIRED    :: 25;
    SCHEME      :: 26;
    SELECTED    :: 27;
    SIZE        :: 28;
    SLOT        :: 29;
    SRC         :: 30;
    STYLE       :: 31;
    SYSTEM      :: 32;
    TITLE       :: 33;
    TYPE        :: 34;
    WIDTH       :: 35;
    LAST_ENTRY  :: 36;

    LXB_DOM_ATTR__UNDEF      :: UNDEF;
    LXB_DOM_ATTR_ACTIVE      :: ACTIVE;
    LXB_DOM_ATTR_ALT         :: ALT;
    LXB_DOM_ATTR_CHARSET     :: CHARSET;
    LXB_DOM_ATTR_CHECKED     :: CHECKED;
    LXB_DOM_ATTR_CLASS       :: CLASS;
    LXB_DOM_ATTR_COLOR       :: COLOR;
    LXB_DOM_ATTR_CONTENT     :: CONTENT;
    LXB_DOM_ATTR_DIR         :: DIR;
    LXB_DOM_ATTR_DISABLED    :: DISABLED;
    LXB_DOM_ATTR_FACE        :: FACE;
    LXB_DOM_ATTR_FOCUS       :: FOCUS;
    LXB_DOM_ATTR_FOR         :: FOR;
    LXB_DOM_ATTR_HEIGHT      :: HEIGHT;
    LXB_DOM_ATTR_HOVER       :: HOVER;
    LXB_DOM_ATTR_HREF        :: HREF;
    LXB_DOM_ATTR_HTML        :: HTML;
    LXB_DOM_ATTR_HTTP_EQUIV  :: HTTP_EQUIV;
    LXB_DOM_ATTR_ID          :: ID;
    LXB_DOM_ATTR_IS          :: IS;
    LXB_DOM_ATTR_MAXLENGTH   :: MAXLENGTH;
    LXB_DOM_ATTR_PLACEHOLDER :: PLACEHOLDER;
    LXB_DOM_ATTR_POOL        :: POOL;
    LXB_DOM_ATTR_PUBLIC      :: PUBLIC;
    LXB_DOM_ATTR_READONLY    :: READONLY;
    LXB_DOM_ATTR_REQUIRED    :: REQUIRED;
    LXB_DOM_ATTR_SCHEME      :: SCHEME;
    LXB_DOM_ATTR_SELECTED    :: SELECTED;
    LXB_DOM_ATTR_SIZE        :: SIZE;
    LXB_DOM_ATTR_SLOT        :: SLOT;
    LXB_DOM_ATTR_SRC         :: SRC;
    LXB_DOM_ATTR_STYLE       :: STYLE;
    LXB_DOM_ATTR_SYSTEM      :: SYSTEM;
    LXB_DOM_ATTR_TITLE       :: TITLE;
    LXB_DOM_ATTR_TYPE        :: TYPE;
    LXB_DOM_ATTR_WIDTH       :: WIDTH;
    LXB_DOM_ATTR__LAST_ENTRY :: LAST_ENTRY;
}

lxb_dom_document_cmode_t :: enum u32 {
    NO_QUIRKS      :: 0;
    QUIRKS         :: 1;
    LIMITED_QUIRKS :: 2;

    LXB_DOM_DOCUMENT_CMODE_NO_QUIRKS      :: NO_QUIRKS;
    LXB_DOM_DOCUMENT_CMODE_QUIRKS         :: QUIRKS;
    LXB_DOM_DOCUMENT_CMODE_LIMITED_QUIRKS :: LIMITED_QUIRKS;
}

lxb_dom_document_dtype_t :: enum u32 {
    UNDEF :: 0;
    HTML  :: 1;
    XML   :: 2;

    LXB_DOM_DOCUMENT_DTYPE_UNDEF :: UNDEF;
    LXB_DOM_DOCUMENT_DTYPE_HTML  :: HTML;
    LXB_DOM_DOCUMENT_DTYPE_XML   :: XML;
}

lxb_dom_document_css :: struct {}
lxb_dom_document_css_t :: lxb_dom_document_css;

lxb_dom_document_node_cb_t :: struct {
    insert:    lxb_dom_node_cb_insert_f;
    _remove:   lxb_dom_node_cb_remove_f;
    destroy:   lxb_dom_node_cb_destroy_f;
    set_value: lxb_dom_node_cb_set_value_f;
}

lxb_dom_document :: struct {
    node:              lxb_dom_node_t;

    compat_mode:       lxb_dom_document_cmode_t;
    type:              lxb_dom_document_dtype_t;

    doctype:           *lxb_dom_document_type_t;
    element:           *lxb_dom_element_t;

    create_interface:  lxb_dom_interface_create_f;
    clone_interface:   lxb_dom_interface_clone_f;
    destroy_interface: lxb_dom_interface_destroy_f;

    node_cb:           *lxb_dom_document_node_cb_t;

    mraw:              *lexbor_mraw_t;
    text:              *lexbor_mraw_t;
    tags:              *lexbor_hash_t;
    attrs:             *lexbor_hash_t;
    prefix:            *lexbor_hash_t;
    ns:                *lexbor_hash_t;
    parser:            *void;
    user:              *void;

    css:               *lxb_dom_document_css_t;

    tags_inherited:    bool;
    ns_inherited:      bool;

    scripting:         bool;
}

lxb_dom_document_interface_create :: (document: *lxb_dom_document_t) -> *lxb_dom_document_t #foreign liblexbor;

lxb_dom_document_interface_clone :: (document: *lxb_dom_document_t, doc: *lxb_dom_document_t) -> *lxb_dom_document_t #foreign liblexbor;

lxb_dom_document_interface_destroy :: (document: *lxb_dom_document_t) -> *lxb_dom_document_t #foreign liblexbor;

/*
* Creating a document.
*
* The function creates and returns a zeroed document.
* If another document is passed as an argument, its memory pool will be used
* to conscious the new one.
*
* @param[in] lxb_dom_document_t *. Owner document, can be NULL.
*
* @return lxb_dom_document_t *. if successful, otherwise returns a NULL value.
*/
lxb_dom_document_create :: (owner: *lxb_dom_document_t) -> *lxb_dom_document_t #foreign liblexbor;

/*
* Document Initialization.
*
* The function expects the document to be zeroed.
*
* @param[in] lxb_dom_document_t *. If NULL, LXB_STATUS_ERROR_OBJECT_IS_NULL is returned.
* @param[in] lxb_dom_document_t *. Owner document, can be NULL.
* @param[in] lxb_dom_interface_create_f. Required. Callback for creating interfaces.
* @param[in] lxb_dom_interface_clone_f. Required. Callback for cloning interfaces.
* @param[in] lxb_dom_interface_destroy_f. Required. Callback for destroying interfaces.
* @param[in] lxb_dom_document_dtype_t. Document Type. Currently HTML or XML.
* @param[in] unsigned int. Document Namespace. See lexbor/ns.
*
* @return LXB_STATUS_OK if successful, otherwise an error status value.
*/
lxb_dom_document_init :: (document: *lxb_dom_document_t, owner: *lxb_dom_document_t, create_interface: lxb_dom_interface_create_f, clone_interface: lxb_dom_interface_clone_f, destroy_interface: lxb_dom_interface_destroy_f, type: lxb_dom_document_dtype_t, ns: u32) -> lxb_status_t #foreign liblexbor;

lxb_dom_document_clean :: (document: *lxb_dom_document_t) -> lxb_status_t #foreign liblexbor;

lxb_dom_document_destroy :: (document: *lxb_dom_document_t) -> *lxb_dom_document_t #foreign liblexbor;

lxb_dom_document_attach_doctype :: (document: *lxb_dom_document_t, doctype: *lxb_dom_document_type_t) -> void #foreign liblexbor;

lxb_dom_document_attach_element :: (document: *lxb_dom_document_t, element: *lxb_dom_element_t) -> void #foreign liblexbor;

lxb_dom_document_create_element :: (document: *lxb_dom_document_t, local_name: *lxb_char_t, lname_len: u64, reserved_for_opt: *void) -> *lxb_dom_element_t #foreign liblexbor;

lxb_dom_document_destroy_element :: (element: *lxb_dom_element_t) -> *lxb_dom_element_t #foreign liblexbor;

lxb_dom_document_create_document_fragment :: (document: *lxb_dom_document_t) -> *lxb_dom_document_fragment_t #foreign liblexbor;

lxb_dom_document_create_text_node :: (document: *lxb_dom_document_t, data: *lxb_char_t, len: u64) -> *lxb_dom_text_t #foreign liblexbor;

lxb_dom_document_create_cdata_section :: (document: *lxb_dom_document_t, data: *lxb_char_t, len: u64) -> *lxb_dom_cdata_section_t #foreign liblexbor;

lxb_dom_document_create_processing_instruction :: (document: *lxb_dom_document_t, target: *lxb_char_t, target_len: u64, data: *lxb_char_t, data_len: u64) -> *lxb_dom_processing_instruction_t #foreign liblexbor;

lxb_dom_document_create_comment :: (document: *lxb_dom_document_t, data: *lxb_char_t, len: u64) -> *lxb_dom_comment_t #foreign liblexbor;

lxb_dom_document_root :: (document: *lxb_dom_document_t) -> *lxb_dom_node_t #foreign liblexbor;

lxb_dom_document_import_node :: (doc: *lxb_dom_document_t, node: *lxb_dom_node_t, deep: bool) -> *lxb_dom_node_t #foreign liblexbor;

lxb_dom_document_set_default_node_cb :: (document: *lxb_dom_document_t) -> void #foreign liblexbor;

/*
* No inline functions for ABI.
*/
lxb_dom_document_create_interface_noi :: (document: *lxb_dom_document_t, tag_id: lxb_tag_id_t, ns: lxb_ns_id_t) -> *lxb_dom_interface_t #foreign liblexbor;

lxb_dom_document_destroy_interface_noi :: (intrfc: *lxb_dom_interface_t) -> *lxb_dom_interface_t #foreign liblexbor;

lxb_dom_document_create_struct_noi :: (document: *lxb_dom_document_t, struct_size: u64) -> *void #foreign liblexbor;

lxb_dom_document_destroy_struct_noi :: (document: *lxb_dom_document_t, structure: *void) -> *void #foreign liblexbor;

lxb_dom_document_create_text_noi :: (document: *lxb_dom_document_t, len: u64) -> *lxb_char_t #foreign liblexbor;

lxb_dom_document_destroy_text_noi :: (document: *lxb_dom_document_t, text: *lxb_char_t) -> *void #foreign liblexbor;

lxb_dom_document_element_noi :: (document: *lxb_dom_document_t) -> *lxb_dom_element_t #foreign liblexbor;

lxb_dom_document_scripting_noi :: (document: *lxb_dom_document_t) -> bool #foreign liblexbor;

lxb_dom_document_scripting_set_noi :: (document: *lxb_dom_document_t, scripting: bool) -> void #foreign liblexbor;

lxb_dom_attr_data_t :: struct {
    entry:     lexbor_hash_entry_t;
    attr_id:   lxb_dom_attr_id_t;
    ref_count: u64;
    read_only: bool;
}

/* More memory to God of memory! */
lxb_dom_attr :: struct {
    node:           lxb_dom_node_t;

    upper_name:     lxb_dom_attr_id_t; /* uppercase, with prefix: FIX:ME */
    qualified_name: lxb_dom_attr_id_t; /* original, with prefix: Fix:Me */

    value:          *lexbor_str_t;

    owner:          *lxb_dom_element_t;

    next:           *lxb_dom_attr_t;
    prev:           *lxb_dom_attr_t;
}

lxb_dom_attr_interface_create :: (document: *lxb_dom_document_t) -> *lxb_dom_attr_t #foreign liblexbor;

lxb_dom_attr_interface_clone :: (document: *lxb_dom_document_t, attr: *lxb_dom_attr_t) -> *lxb_dom_attr_t #foreign liblexbor;

lxb_dom_attr_interface_destroy :: (attr: *lxb_dom_attr_t) -> *lxb_dom_attr_t #foreign liblexbor;

lxb_dom_attr_set_name :: (attr: *lxb_dom_attr_t, local_name: *lxb_char_t, local_name_len: u64, to_lowercase: bool) -> lxb_status_t #foreign liblexbor;

lxb_dom_attr_set_value :: (attr: *lxb_dom_attr_t, value: *lxb_char_t, value_len: u64) -> lxb_status_t #foreign liblexbor;

lxb_dom_attr_set_value_wo_copy :: (attr: *lxb_dom_attr_t, value: *lxb_char_t, value_len: u64) -> lxb_status_t #foreign liblexbor;

lxb_dom_attr_set_existing_value :: (attr: *lxb_dom_attr_t, value: *lxb_char_t, value_len: u64) -> lxb_status_t #foreign liblexbor;

lxb_dom_attr_clone_name_value :: (attr_from: *lxb_dom_attr_t, attr_to: *lxb_dom_attr_t) -> lxb_status_t #foreign liblexbor;

lxb_dom_attr_compare :: (first: *lxb_dom_attr_t, second: *lxb_dom_attr_t) -> bool #foreign liblexbor;

lxb_dom_attr_remove :: (attr: *lxb_dom_attr_t) -> void #foreign liblexbor;

lxb_dom_attr_data_undef :: () -> *lxb_dom_attr_data_t #foreign liblexbor;

lxb_dom_attr_data_by_id :: (hash: *lexbor_hash_t, attr_id: lxb_dom_attr_id_t) -> *lxb_dom_attr_data_t #foreign liblexbor;

lxb_dom_attr_data_by_local_name :: (hash: *lexbor_hash_t, name: *lxb_char_t, length: u64) -> *lxb_dom_attr_data_t #foreign liblexbor;

lxb_dom_attr_data_by_qualified_name :: (hash: *lexbor_hash_t, name: *lxb_char_t, length: u64) -> *lxb_dom_attr_data_t #foreign liblexbor;

lxb_dom_attr_qualified_name :: (attr: *lxb_dom_attr_t, len: *u64) -> *lxb_char_t #foreign liblexbor;

/*
* No inline functions for ABI.
*/
lxb_dom_attr_local_name_noi :: (attr: *lxb_dom_attr_t, len: *u64) -> *lxb_char_t #foreign liblexbor;

lxb_dom_attr_value_noi :: (attr: *lxb_dom_attr_t, len: *u64) -> *lxb_char_t #foreign liblexbor;

lxb_tag_data_t :: struct {
    entry:     lexbor_hash_entry_t;
    tag_id:    lxb_tag_id_t;
    ref_count: u64;
    read_only: bool;
}

lxb_tag_data_by_id :: (tag_id: lxb_tag_id_t) -> *lxb_tag_data_t #foreign liblexbor;

lxb_tag_data_by_name :: (hash: *lexbor_hash_t, name: *lxb_char_t, len: u64) -> *lxb_tag_data_t #foreign liblexbor;

lxb_tag_data_by_name_upper :: (hash: *lexbor_hash_t, name: *lxb_char_t, len: u64) -> *lxb_tag_data_t #foreign liblexbor;

/*
* No inline functions for ABI.
*/
lxb_tag_name_by_id_noi :: (tag_id: lxb_tag_id_t, len: *u64) -> *lxb_char_t #foreign liblexbor;

lxb_tag_name_upper_by_id_noi :: (tag_id: lxb_tag_id_t, len: *u64) -> *lxb_char_t #foreign liblexbor;

lxb_tag_id_by_name_noi :: (hash: *lexbor_hash_t, name: *lxb_char_t, len: u64) -> lxb_tag_id_t #foreign liblexbor;

lxb_tag_mraw_noi :: (hash: *lexbor_hash_t) -> *lexbor_mraw_t #foreign liblexbor;

/*
* No inline functions for ABI.
*/
lxb_html_node_is_void_noi :: (node: *lxb_dom_node_t) -> bool #foreign liblexbor;

lexbor_sbst_entry_static_t :: struct {
    key:       lxb_char_t;

    value:     *void;
    value_len: u64;

    left:      u64;
    right:     u64;
    next:      u64;
}

lexbor_array_obj_t :: struct {
    list:        *u8;
    size:        u64;
    length:      u64;
    struct_size: u64;
}

lexbor_array_obj_create :: () -> *lexbor_array_obj_t #foreign liblexbor;

lexbor_array_obj_init :: (array: *lexbor_array_obj_t, size: u64, struct_size: u64) -> lxb_status_t #foreign liblexbor;

lexbor_array_obj_clean :: (array: *lexbor_array_obj_t) -> void #foreign liblexbor;

lexbor_array_obj_destroy :: (array: *lexbor_array_obj_t, self_destroy: bool) -> *lexbor_array_obj_t #foreign liblexbor;

lexbor_array_obj_expand :: (array: *lexbor_array_obj_t, up_to: u64) -> *u8 #foreign liblexbor;

lexbor_array_obj_push :: (array: *lexbor_array_obj_t) -> *void #foreign liblexbor;

lexbor_array_obj_push_wo_cls :: (array: *lexbor_array_obj_t) -> *void #foreign liblexbor;

lexbor_array_obj_push_n :: (array: *lexbor_array_obj_t, count: u64) -> *void #foreign liblexbor;

lexbor_array_obj_pop :: (array: *lexbor_array_obj_t) -> *void #foreign liblexbor;

lexbor_array_obj_delete :: (array: *lexbor_array_obj_t, begin: u64, length: u64) -> void #foreign liblexbor;

/*
* No inline functions for ABI.
*/
lexbor_array_obj_erase_noi :: (array: *lexbor_array_obj_t) -> void #foreign liblexbor;

lexbor_array_obj_get_noi :: (array: *lexbor_array_obj_t, idx: u64) -> *void #foreign liblexbor;

lexbor_array_obj_length_noi :: (array: *lexbor_array_obj_t) -> u64 #foreign liblexbor;

lexbor_array_obj_size_noi :: (array: *lexbor_array_obj_t) -> u64 #foreign liblexbor;

lexbor_array_obj_struct_size_noi :: (array: *lexbor_array_obj_t) -> u64 #foreign liblexbor;

lexbor_array_obj_last_noi :: (array: *lexbor_array_obj_t) -> *void #foreign liblexbor;

lxb_html_token_attr_t :: lxb_html_token_attr;
lxb_html_token_attr_type_t :: s32;

lxb_html_token_attr_type :: enum u32 {
    UNDEF      :: 0;
    NAME_NULL  :: 1;
    VALUE_NULL :: 2;

    LXB_HTML_TOKEN_ATTR_TYPE_UNDEF      :: UNDEF;
    LXB_HTML_TOKEN_ATTR_TYPE_NAME_NULL  :: NAME_NULL;
    LXB_HTML_TOKEN_ATTR_TYPE_VALUE_NULL :: VALUE_NULL;
}

lxb_html_token_attr :: struct {
    name_begin:  *lxb_char_t;
    name_end:    *lxb_char_t;

    value_begin: *lxb_char_t;
    value_end:   *lxb_char_t;

    name:        *lxb_dom_attr_data_t;
    value:       *lxb_char_t;
    value_size:  u64;

    next:        *lxb_html_token_attr_t;
    prev:        *lxb_html_token_attr_t;

    type:        lxb_html_token_attr_type_t;
}

lxb_html_token_attr_create :: (dobj: *lexbor_dobject_t) -> *lxb_html_token_attr_t #foreign liblexbor;

lxb_html_token_attr_clean :: (attr: *lxb_html_token_attr_t) -> void #foreign liblexbor;

lxb_html_token_attr_destroy :: (attr: *lxb_html_token_attr_t, dobj: *lexbor_dobject_t) -> *lxb_html_token_attr_t #foreign liblexbor;

lxb_html_token_attr_name :: (attr: *lxb_html_token_attr_t, length: *u64) -> *lxb_char_t #foreign liblexbor;

lxb_html_token_type_t :: s32;

lxb_html_token_type :: enum u32 {
    OPEN         :: 0;
    CLOSE        :: 1;
    CLOSE_SELF   :: 2;
    FORCE_QUIRKS :: 4;
    DONE         :: 8;

    LXB_HTML_TOKEN_TYPE_OPEN         :: OPEN;
    LXB_HTML_TOKEN_TYPE_CLOSE        :: CLOSE;
    LXB_HTML_TOKEN_TYPE_CLOSE_SELF   :: CLOSE_SELF;
    LXB_HTML_TOKEN_TYPE_FORCE_QUIRKS :: FORCE_QUIRKS;
    LXB_HTML_TOKEN_TYPE_DONE         :: DONE;
}

lxb_html_token_t :: struct {
    begin:        *lxb_char_t;
    end:          *lxb_char_t;

    text_start:   *lxb_char_t;
    text_end:     *lxb_char_t;

    attr_first:   *lxb_html_token_attr_t;
    attr_last:    *lxb_html_token_attr_t;

    base_element: *void;

    null_count:   u64;
    tag_id:       lxb_tag_id_t;
    type:         lxb_html_token_type_t;
}

lxb_html_token_create :: (dobj: *lexbor_dobject_t) -> *lxb_html_token_t #foreign liblexbor;

lxb_html_token_destroy :: (token: *lxb_html_token_t, dobj: *lexbor_dobject_t) -> *lxb_html_token_t #foreign liblexbor;

lxb_html_token_attr_append :: (token: *lxb_html_token_t, dobj: *lexbor_dobject_t) -> *lxb_html_token_attr_t #foreign liblexbor;

lxb_html_token_attr_remove :: (token: *lxb_html_token_t, attr: *lxb_html_token_attr_t) -> void #foreign liblexbor;

lxb_html_token_attr_delete :: (token: *lxb_html_token_t, attr: *lxb_html_token_attr_t, dobj: *lexbor_dobject_t) -> void #foreign liblexbor;

lxb_html_token_make_text :: (token: *lxb_html_token_t, str: *lexbor_str_t, mraw: *lexbor_mraw_t) -> lxb_status_t #foreign liblexbor;

lxb_html_token_make_text_drop_null :: (token: *lxb_html_token_t, str: *lexbor_str_t, mraw: *lexbor_mraw_t) -> lxb_status_t #foreign liblexbor;

lxb_html_token_make_text_replace_null :: (token: *lxb_html_token_t, str: *lexbor_str_t, mraw: *lexbor_mraw_t) -> lxb_status_t #foreign liblexbor;

lxb_html_token_data_skip_ws_begin :: (token: *lxb_html_token_t) -> lxb_status_t #foreign liblexbor;

lxb_html_token_data_skip_one_newline_begin :: (token: *lxb_html_token_t) -> lxb_status_t #foreign liblexbor;

lxb_html_token_data_split_ws_begin :: (token: *lxb_html_token_t, ws_token: *lxb_html_token_t) -> lxb_status_t #foreign liblexbor;

lxb_html_token_doctype_parse :: (token: *lxb_html_token_t, doc_type: *lxb_dom_document_type_t) -> lxb_status_t #foreign liblexbor;

lxb_html_token_find_attr :: (tkz: *lxb_html_tokenizer_t, token: *lxb_html_token_t, name: *lxb_char_t, name_len: u64) -> *lxb_html_token_attr_t #foreign liblexbor;

/*
* No inline functions for ABI.
*/
lxb_html_token_clean_noi :: (token: *lxb_html_token_t) -> void #foreign liblexbor;

lxb_html_token_create_eof_noi :: (dobj: *lexbor_dobject_t) -> *lxb_html_token_t #foreign liblexbor;

/* State */
lxb_html_tokenizer_state_f :: #type (tkz: *lxb_html_tokenizer_t, data: *lxb_char_t, end: *lxb_char_t) -> *lxb_char_t #c_call;

lxb_html_tokenizer_token_f :: #type (tkz: *lxb_html_tokenizer_t, token: *lxb_html_token_t, ctx: *void) -> *lxb_html_token_t #c_call;

lxb_html_tokenizer :: struct {
    state:               lxb_html_tokenizer_state_f;
    state_return:        lxb_html_tokenizer_state_f;

    callback_token_done: lxb_html_tokenizer_token_f;
    callback_token_ctx:  *void;

    tags:                *lexbor_hash_t;
    attrs:               *lexbor_hash_t;
    attrs_mraw:          *lexbor_mraw_t;

    /* For a temp strings and other templary data */
    mraw:                *lexbor_mraw_t;

    /* Current process token */
    token:               *lxb_html_token_t;

    /* Memory for token and attr */
    dobj_token:          *lexbor_dobject_t;
    dobj_token_attr:     *lexbor_dobject_t;

    /* Parse error */
    parse_errors:        *lexbor_array_obj_t;

    /*
    * Leak abstractions.
    * The only place where the specification causes mixing Tree Builder
    * and Tokenizer. We kill all beauty.
    * Current Tree parser. This is not ref (not ref count).
    */
    tree:                *lxb_html_tree_t;

    /* Temp */
    markup:              *lxb_char_t;
    temp:                *lxb_char_t;
    tmp_tag_id:          lxb_tag_id_t;

    start:               *lxb_char_t;
    pos:                 *lxb_char_t;
    end:                 *lxb_char_t;
    begin:               *lxb_char_t;
    last:                *lxb_char_t;

    /* Entities */
    entity:              *lexbor_sbst_entry_static_t;
    entity_match:        *lexbor_sbst_entry_static_t;
    entity_start:        u64;
    entity_end:          u64;
    entity_length:       u32;
    entity_number:       u32;
    is_attribute:        bool;

    /* Process */
    opt:                 lxb_html_tokenizer_opt_t;
    status:              lxb_status_t;
    is_eof:              bool;

    base:                *lxb_html_tokenizer_t;
    ref_count:           u64;
}

lxb_html_tokenizer_error_id_t :: enum u32 {
    ABCLOFEMCO         :: 0;

    ABDOPUID           :: 1;

    ABDOSYID           :: 2;

    ABOFDIINNUCHRE     :: 3;

    CDINHTCO           :: 4;

    CHREOUUNRA         :: 5;

    COCHININST         :: 6;

    COCHRE             :: 7;

    ENTAWIAT           :: 8;

    DUAT               :: 9;

    ENTAWITRSO         :: 10;

    EOBETANA           :: 11;

    EOINCD             :: 12;

    EOINCO             :: 13;

    EOINDO             :: 14;

    EOINSCHTCOLITE     :: 15;

    EOINTA             :: 16;

    INCLCO             :: 17;

    INOPCO             :: 18;

    INCHSEAFDONA       :: 19;

    INFICHOFTANA       :: 20;

    MIATVA             :: 21;

    MIDONA             :: 22;

    MIDOPUID           :: 23;

    MIDOSYID           :: 24;

    MIENTANA           :: 25;

    MIQUBEDOPUID       :: 26;

    MIQUBEDOSYID       :: 27;

    MISEAFCHRE         :: 28;

    MIWHAFDOPUKE       :: 29;

    MIWHAFDOSYKE       :: 30;

    MIWHBEDONA         :: 31;

    MIWHBEAT           :: 32;

    MIWHBEDOPUANSYID   :: 33;

    NECO               :: 34;

    NOCHRE             :: 35;

    NOININST           :: 36;

    NOVOHTELSTTAWITRSO :: 37;

    NUCHRE             :: 38;

    SUCHRE             :: 39;

    SUININST           :: 40;

    UNCHAFDOSYID       :: 41;

    UNCHINATNA         :: 42;

    UNCHINUNATVA       :: 43;

    UNEQSIBEATNA       :: 44;

    UNNUCH             :: 45;

    UNQUMAINOFTANA     :: 46;

    UNSOINTA           :: 47;

    UNNACHRE           :: 48;
    LAST_ENTRY         :: 49;

    LXB_HTML_TOKENIZER_ERROR_ABCLOFEMCO         :: ABCLOFEMCO;

    LXB_HTML_TOKENIZER_ERROR_ABDOPUID           :: ABDOPUID;

    LXB_HTML_TOKENIZER_ERROR_ABDOSYID           :: ABDOSYID;

    LXB_HTML_TOKENIZER_ERROR_ABOFDIINNUCHRE     :: ABOFDIINNUCHRE;

    LXB_HTML_TOKENIZER_ERROR_CDINHTCO           :: CDINHTCO;

    LXB_HTML_TOKENIZER_ERROR_CHREOUUNRA         :: CHREOUUNRA;

    LXB_HTML_TOKENIZER_ERROR_COCHININST         :: COCHININST;

    LXB_HTML_TOKENIZER_ERROR_COCHRE             :: COCHRE;

    LXB_HTML_TOKENIZER_ERROR_ENTAWIAT           :: ENTAWIAT;

    LXB_HTML_TOKENIZER_ERROR_DUAT               :: DUAT;

    LXB_HTML_TOKENIZER_ERROR_ENTAWITRSO         :: ENTAWITRSO;

    LXB_HTML_TOKENIZER_ERROR_EOBETANA           :: EOBETANA;

    LXB_HTML_TOKENIZER_ERROR_EOINCD             :: EOINCD;

    LXB_HTML_TOKENIZER_ERROR_EOINCO             :: EOINCO;

    LXB_HTML_TOKENIZER_ERROR_EOINDO             :: EOINDO;

    LXB_HTML_TOKENIZER_ERROR_EOINSCHTCOLITE     :: EOINSCHTCOLITE;

    LXB_HTML_TOKENIZER_ERROR_EOINTA             :: EOINTA;

    LXB_HTML_TOKENIZER_ERROR_INCLCO             :: INCLCO;

    LXB_HTML_TOKENIZER_ERROR_INOPCO             :: INOPCO;

    LXB_HTML_TOKENIZER_ERROR_INCHSEAFDONA       :: INCHSEAFDONA;

    LXB_HTML_TOKENIZER_ERROR_INFICHOFTANA       :: INFICHOFTANA;

    LXB_HTML_TOKENIZER_ERROR_MIATVA             :: MIATVA;

    LXB_HTML_TOKENIZER_ERROR_MIDONA             :: MIDONA;

    LXB_HTML_TOKENIZER_ERROR_MIDOPUID           :: MIDOPUID;

    LXB_HTML_TOKENIZER_ERROR_MIDOSYID           :: MIDOSYID;

    LXB_HTML_TOKENIZER_ERROR_MIENTANA           :: MIENTANA;

    LXB_HTML_TOKENIZER_ERROR_MIQUBEDOPUID       :: MIQUBEDOPUID;

    LXB_HTML_TOKENIZER_ERROR_MIQUBEDOSYID       :: MIQUBEDOSYID;

    LXB_HTML_TOKENIZER_ERROR_MISEAFCHRE         :: MISEAFCHRE;

    LXB_HTML_TOKENIZER_ERROR_MIWHAFDOPUKE       :: MIWHAFDOPUKE;

    LXB_HTML_TOKENIZER_ERROR_MIWHAFDOSYKE       :: MIWHAFDOSYKE;

    LXB_HTML_TOKENIZER_ERROR_MIWHBEDONA         :: MIWHBEDONA;

    LXB_HTML_TOKENIZER_ERROR_MIWHBEAT           :: MIWHBEAT;

    LXB_HTML_TOKENIZER_ERROR_MIWHBEDOPUANSYID   :: MIWHBEDOPUANSYID;

    LXB_HTML_TOKENIZER_ERROR_NECO               :: NECO;

    LXB_HTML_TOKENIZER_ERROR_NOCHRE             :: NOCHRE;

    LXB_HTML_TOKENIZER_ERROR_NOININST           :: NOININST;

    LXB_HTML_TOKENIZER_ERROR_NOVOHTELSTTAWITRSO :: NOVOHTELSTTAWITRSO;

    LXB_HTML_TOKENIZER_ERROR_NUCHRE             :: NUCHRE;

    LXB_HTML_TOKENIZER_ERROR_SUCHRE             :: SUCHRE;

    LXB_HTML_TOKENIZER_ERROR_SUININST           :: SUININST;

    LXB_HTML_TOKENIZER_ERROR_UNCHAFDOSYID       :: UNCHAFDOSYID;

    LXB_HTML_TOKENIZER_ERROR_UNCHINATNA         :: UNCHINATNA;

    LXB_HTML_TOKENIZER_ERROR_UNCHINUNATVA       :: UNCHINUNATVA;

    LXB_HTML_TOKENIZER_ERROR_UNEQSIBEATNA       :: UNEQSIBEATNA;

    LXB_HTML_TOKENIZER_ERROR_UNNUCH             :: UNNUCH;

    LXB_HTML_TOKENIZER_ERROR_UNQUMAINOFTANA     :: UNQUMAINOFTANA;

    LXB_HTML_TOKENIZER_ERROR_UNSOINTA           :: UNSOINTA;

    LXB_HTML_TOKENIZER_ERROR_UNNACHRE           :: UNNACHRE;
    LXB_HTML_TOKENIZER_ERROR_LAST_ENTRY         :: LAST_ENTRY;
}

lxb_html_tokenizer_error_t :: struct {
    pos: *lxb_char_t;
    id:  lxb_html_tokenizer_error_id_t;
}

lxb_html_tokenizer_error_add :: (parse_errors: *lexbor_array_obj_t, pos: *lxb_char_t, id: lxb_html_tokenizer_error_id_t) -> *lxb_html_tokenizer_error_t #foreign liblexbor;

lxb_html_tokenizer_eof: *lxb_char_t #elsewhere liblexbor;

lxb_html_tokenizer_create :: () -> *lxb_html_tokenizer_t #foreign liblexbor;

lxb_html_tokenizer_init :: (tkz: *lxb_html_tokenizer_t) -> lxb_status_t #foreign liblexbor;

lxb_html_tokenizer_inherit :: (tkz_to: *lxb_html_tokenizer_t, tkz_from: *lxb_html_tokenizer_t) -> lxb_status_t #foreign liblexbor;

lxb_html_tokenizer_ref :: (tkz: *lxb_html_tokenizer_t) -> *lxb_html_tokenizer_t #foreign liblexbor;

lxb_html_tokenizer_unref :: (tkz: *lxb_html_tokenizer_t) -> *lxb_html_tokenizer_t #foreign liblexbor;

lxb_html_tokenizer_clean :: (tkz: *lxb_html_tokenizer_t) -> void #foreign liblexbor;

lxb_html_tokenizer_destroy :: (tkz: *lxb_html_tokenizer_t) -> *lxb_html_tokenizer_t #foreign liblexbor;

lxb_html_tokenizer_tags_make :: (tkz: *lxb_html_tokenizer_t, table_size: u64) -> lxb_status_t #foreign liblexbor;

lxb_html_tokenizer_tags_destroy :: (tkz: *lxb_html_tokenizer_t) -> void #foreign liblexbor;

lxb_html_tokenizer_attrs_make :: (tkz: *lxb_html_tokenizer_t, table_size: u64) -> lxb_status_t #foreign liblexbor;

lxb_html_tokenizer_attrs_destroy :: (tkz: *lxb_html_tokenizer_t) -> void #foreign liblexbor;

lxb_html_tokenizer_begin :: (tkz: *lxb_html_tokenizer_t) -> lxb_status_t #foreign liblexbor;

lxb_html_tokenizer_chunk :: (tkz: *lxb_html_tokenizer_t, data: *lxb_char_t, size: u64) -> lxb_status_t #foreign liblexbor;

lxb_html_tokenizer_end :: (tkz: *lxb_html_tokenizer_t) -> lxb_status_t #foreign liblexbor;

lxb_html_tokenizer_current_namespace :: (tkz: *lxb_html_tokenizer_t) -> lxb_ns_id_t #foreign liblexbor;

lxb_html_tokenizer_set_state_by_tag :: (tkz: *lxb_html_tokenizer_t, scripting: bool, tag_id: lxb_tag_id_t, ns: lxb_ns_id_t) -> void #foreign liblexbor;

/*
* No inline functions for ABI.
*/
lxb_html_tokenizer_status_set_noi :: (tkz: *lxb_html_tokenizer_t, status: lxb_status_t) -> void #foreign liblexbor;

lxb_html_tokenizer_callback_token_done_set_noi :: (tkz: *lxb_html_tokenizer_t, call_func: lxb_html_tokenizer_token_f, ctx: *void) -> void #foreign liblexbor;

lxb_html_tokenizer_callback_token_done_ctx_noi :: (tkz: *lxb_html_tokenizer_t) -> *void #foreign liblexbor;

lxb_html_tokenizer_state_set_noi :: (tkz: *lxb_html_tokenizer_t, state: lxb_html_tokenizer_state_f) -> void #foreign liblexbor;

lxb_html_tokenizer_tmp_tag_id_set_noi :: (tkz: *lxb_html_tokenizer_t, tag_id: lxb_tag_id_t) -> void #foreign liblexbor;

lxb_html_tokenizer_tree_noi :: (tkz: *lxb_html_tokenizer_t) -> *lxb_html_tree_t #foreign liblexbor;

lxb_html_tokenizer_tree_set_noi :: (tkz: *lxb_html_tokenizer_t, tree: *lxb_html_tree_t) -> void #foreign liblexbor;

lxb_html_tokenizer_mraw_noi :: (tkz: *lxb_html_tokenizer_t) -> *lexbor_mraw_t #foreign liblexbor;

lxb_html_tokenizer_tags_noi :: (tkz: *lxb_html_tokenizer_t) -> *lexbor_hash_t #foreign liblexbor;

lxb_html_document_t :: lxb_html_document;
lxb_html_anchor_element :: struct {}
lxb_html_anchor_element_t :: lxb_html_anchor_element;
lxb_html_area_element :: struct {}
lxb_html_area_element_t :: lxb_html_area_element;
lxb_html_audio_element :: struct {}
lxb_html_audio_element_t :: lxb_html_audio_element;
lxb_html_br_element :: struct {}
lxb_html_br_element_t :: lxb_html_br_element;
lxb_html_base_element :: struct {}
lxb_html_base_element_t :: lxb_html_base_element;
lxb_html_body_element :: struct {}
lxb_html_body_element_t :: lxb_html_body_element;
lxb_html_button_element :: struct {}
lxb_html_button_element_t :: lxb_html_button_element;
lxb_html_canvas_element :: struct {}
lxb_html_canvas_element_t :: lxb_html_canvas_element;
lxb_html_d_list_element :: struct {}
lxb_html_d_list_element_t :: lxb_html_d_list_element;
lxb_html_data_element :: struct {}
lxb_html_data_element_t :: lxb_html_data_element;
lxb_html_data_list_element :: struct {}
lxb_html_data_list_element_t :: lxb_html_data_list_element;
lxb_html_details_element :: struct {}
lxb_html_details_element_t :: lxb_html_details_element;
lxb_html_dialog_element :: struct {}
lxb_html_dialog_element_t :: lxb_html_dialog_element;
lxb_html_directory_element :: struct {}
lxb_html_directory_element_t :: lxb_html_directory_element;
lxb_html_div_element :: struct {}
lxb_html_div_element_t :: lxb_html_div_element;
lxb_html_element :: struct {}
lxb_html_element_t :: lxb_html_element;
lxb_html_embed_element :: struct {}
lxb_html_embed_element_t :: lxb_html_embed_element;
lxb_html_field_set_element :: struct {}
lxb_html_field_set_element_t :: lxb_html_field_set_element;
lxb_html_font_element :: struct {}
lxb_html_font_element_t :: lxb_html_font_element;
lxb_html_form_element :: struct {}
lxb_html_form_element_t :: lxb_html_form_element;
lxb_html_frame_element :: struct {}
lxb_html_frame_element_t :: lxb_html_frame_element;
lxb_html_frame_set_element :: struct {}
lxb_html_frame_set_element_t :: lxb_html_frame_set_element;
lxb_html_hr_element :: struct {}
lxb_html_hr_element_t :: lxb_html_hr_element;
lxb_html_head_element :: struct {}
lxb_html_head_element_t :: lxb_html_head_element;
lxb_html_heading_element :: struct {}
lxb_html_heading_element_t :: lxb_html_heading_element;
lxb_html_html_element :: struct {}
lxb_html_html_element_t :: lxb_html_html_element;
lxb_html_iframe_element :: struct {}
lxb_html_iframe_element_t :: lxb_html_iframe_element;
lxb_html_image_element :: struct {}
lxb_html_image_element_t :: lxb_html_image_element;
lxb_html_input_element :: struct {}
lxb_html_input_element_t :: lxb_html_input_element;
lxb_html_li_element :: struct {}
lxb_html_li_element_t :: lxb_html_li_element;
lxb_html_label_element :: struct {}
lxb_html_label_element_t :: lxb_html_label_element;
lxb_html_legend_element :: struct {}
lxb_html_legend_element_t :: lxb_html_legend_element;
lxb_html_link_element :: struct {}
lxb_html_link_element_t :: lxb_html_link_element;
lxb_html_map_element :: struct {}
lxb_html_map_element_t :: lxb_html_map_element;
lxb_html_marquee_element :: struct {}
lxb_html_marquee_element_t :: lxb_html_marquee_element;
lxb_html_media_element :: struct {}
lxb_html_media_element_t :: lxb_html_media_element;
lxb_html_menu_element :: struct {}
lxb_html_menu_element_t :: lxb_html_menu_element;
lxb_html_meta_element :: struct {}
lxb_html_meta_element_t :: lxb_html_meta_element;
lxb_html_meter_element :: struct {}
lxb_html_meter_element_t :: lxb_html_meter_element;
lxb_html_mod_element :: struct {}
lxb_html_mod_element_t :: lxb_html_mod_element;
lxb_html_o_list_element :: struct {}
lxb_html_o_list_element_t :: lxb_html_o_list_element;
lxb_html_object_element :: struct {}
lxb_html_object_element_t :: lxb_html_object_element;
lxb_html_opt_group_element :: struct {}
lxb_html_opt_group_element_t :: lxb_html_opt_group_element;
lxb_html_option_element :: struct {}
lxb_html_option_element_t :: lxb_html_option_element;
lxb_html_output_element :: struct {}
lxb_html_output_element_t :: lxb_html_output_element;
lxb_html_paragraph_element :: struct {}
lxb_html_paragraph_element_t :: lxb_html_paragraph_element;
lxb_html_param_element :: struct {}
lxb_html_param_element_t :: lxb_html_param_element;
lxb_html_picture_element :: struct {}
lxb_html_picture_element_t :: lxb_html_picture_element;
lxb_html_pre_element :: struct {}
lxb_html_pre_element_t :: lxb_html_pre_element;
lxb_html_progress_element :: struct {}
lxb_html_progress_element_t :: lxb_html_progress_element;
lxb_html_quote_element :: struct {}
lxb_html_quote_element_t :: lxb_html_quote_element;
lxb_html_script_element :: struct {}
lxb_html_script_element_t :: lxb_html_script_element;
lxb_html_select_element :: struct {}
lxb_html_select_element_t :: lxb_html_select_element;
lxb_html_slot_element :: struct {}
lxb_html_slot_element_t :: lxb_html_slot_element;
lxb_html_source_element :: struct {}
lxb_html_source_element_t :: lxb_html_source_element;
lxb_html_span_element :: struct {}
lxb_html_span_element_t :: lxb_html_span_element;
lxb_html_style_element :: struct {}
lxb_html_style_element_t :: lxb_html_style_element;
lxb_html_table_caption_element :: struct {}
lxb_html_table_caption_element_t :: lxb_html_table_caption_element;
lxb_html_table_cell_element :: struct {}
lxb_html_table_cell_element_t :: lxb_html_table_cell_element;
lxb_html_table_col_element :: struct {}
lxb_html_table_col_element_t :: lxb_html_table_col_element;
lxb_html_table_element :: struct {}
lxb_html_table_element_t :: lxb_html_table_element;
lxb_html_table_row_element :: struct {}
lxb_html_table_row_element_t :: lxb_html_table_row_element;
lxb_html_table_section_element :: struct {}
lxb_html_table_section_element_t :: lxb_html_table_section_element;
lxb_html_template_element :: struct {}
lxb_html_template_element_t :: lxb_html_template_element;
lxb_html_text_area_element :: struct {}
lxb_html_text_area_element_t :: lxb_html_text_area_element;
lxb_html_time_element :: struct {}
lxb_html_time_element_t :: lxb_html_time_element;
lxb_html_title_element :: struct {}
lxb_html_title_element_t :: lxb_html_title_element;
lxb_html_track_element :: struct {}
lxb_html_track_element_t :: lxb_html_track_element;
lxb_html_u_list_element :: struct {}
lxb_html_u_list_element_t :: lxb_html_u_list_element;
lxb_html_unknown_element :: struct {}
lxb_html_unknown_element_t :: lxb_html_unknown_element;
lxb_html_video_element :: struct {}
lxb_html_video_element_t :: lxb_html_video_element;
lxb_html_window :: struct {}
lxb_html_window_t :: lxb_html_window;

lxb_html_interface_create :: (document: *lxb_html_document_t, tag_id: lxb_tag_id_t, ns: lxb_ns_id_t) -> *lxb_dom_interface_t #foreign liblexbor;

lxb_html_interface_clone :: (document: *lxb_dom_document_t, intrfc: *lxb_dom_interface_t) -> *lxb_dom_interface_t #foreign liblexbor;

lxb_html_interface_destroy :: (intrfc: *lxb_dom_interface_t) -> *lxb_dom_interface_t #foreign liblexbor;

lxb_html_document_done_cb_f :: #type (document: *lxb_html_document_t) -> lxb_status_t #c_call;

lxb_html_document_parse_cb_f :: #type (tree: *lxb_html_tree_t, node: *lxb_dom_node_t) -> lxb_status_t #c_call;

lxb_html_document_opt_t :: u32;

lxb_html_document_ready_state_t :: enum u32 {
    UNDEF       :: 0;
    LOADING     :: 1;
    INTERACTIVE :: 2;
    COMPLETE    :: 3;

    LXB_HTML_DOCUMENT_READY_STATE_UNDEF       :: UNDEF;
    LXB_HTML_DOCUMENT_READY_STATE_LOADING     :: LOADING;
    LXB_HTML_DOCUMENT_READY_STATE_INTERACTIVE :: INTERACTIVE;
    LXB_HTML_DOCUMENT_READY_STATE_COMPLETE    :: COMPLETE;
}

lxb_html_document_opt :: enum u32 {
    OPT_UNDEF     :: 0;
    PARSE_WO_COPY :: 1;

    LXB_HTML_DOCUMENT_OPT_UNDEF     :: OPT_UNDEF;
    LXB_HTML_DOCUMENT_PARSE_WO_COPY :: PARSE_WO_COPY;
}

lxb_html_document_parse_cb_t :: struct {
    script: lxb_html_document_parse_cb_f;
    style:  lxb_html_document_parse_cb_f;
}

lxb_html_document :: struct {
    dom_document:  lxb_dom_document_t;

    iframe_srcdoc: *void;

    head:          *lxb_html_head_element_t;
    body:          *lxb_html_body_element_t;

    parse_cb:      *lxb_html_document_parse_cb_t;

    done:          lxb_html_document_done_cb_f;
    ready_state:   lxb_html_document_ready_state_t;

    opt:           lxb_html_document_opt_t;
}

lxb_html_document_interface_create :: (document: *lxb_html_document_t) -> *lxb_html_document_t #foreign liblexbor;

lxb_html_document_interface_destroy :: (document: *lxb_html_document_t) -> *lxb_html_document_t #foreign liblexbor;

lxb_html_document_create :: () -> *lxb_html_document_t #foreign liblexbor;

lxb_html_document_clean :: (document: *lxb_html_document_t) -> void #foreign liblexbor;

lxb_html_document_destroy :: (document: *lxb_html_document_t) -> *lxb_html_document_t #foreign liblexbor;

lxb_html_document_parse :: (document: *lxb_html_document_t, html: *lxb_char_t, size: u64) -> lxb_status_t #foreign liblexbor;

lxb_html_document_parse_chunk_begin :: (document: *lxb_html_document_t) -> lxb_status_t #foreign liblexbor;

lxb_html_document_parse_chunk :: (document: *lxb_html_document_t, html: *lxb_char_t, size: u64) -> lxb_status_t #foreign liblexbor;

lxb_html_document_parse_chunk_end :: (document: *lxb_html_document_t) -> lxb_status_t #foreign liblexbor;

lxb_html_document_parse_fragment :: (document: *lxb_html_document_t, element: *lxb_dom_element_t, html: *lxb_char_t, size: u64) -> *lxb_dom_node_t #foreign liblexbor;

lxb_html_document_parse_fragment_chunk_begin :: (document: *lxb_html_document_t, element: *lxb_dom_element_t) -> lxb_status_t #foreign liblexbor;

lxb_html_document_parse_fragment_chunk :: (document: *lxb_html_document_t, html: *lxb_char_t, size: u64) -> lxb_status_t #foreign liblexbor;

lxb_html_document_parse_fragment_chunk_end :: (document: *lxb_html_document_t) -> *lxb_dom_node_t #foreign liblexbor;

lxb_html_document_title :: (document: *lxb_html_document_t, len: *u64) -> *lxb_char_t #foreign liblexbor;

lxb_html_document_title_set :: (document: *lxb_html_document_t, title: *lxb_char_t, len: u64) -> lxb_status_t #foreign liblexbor;

lxb_html_document_title_raw :: (document: *lxb_html_document_t, len: *u64) -> *lxb_char_t #foreign liblexbor;

lxb_html_document_import_node :: (doc: *lxb_html_document_t, node: *lxb_dom_node_t, deep: bool) -> *lxb_dom_node_t #foreign liblexbor;

/*
* No inline functions for ABI.
*/
lxb_html_document_head_element_noi :: (document: *lxb_html_document_t) -> *lxb_html_head_element_t #foreign liblexbor;

lxb_html_document_body_element_noi :: (document: *lxb_html_document_t) -> *lxb_html_body_element_t #foreign liblexbor;

lxb_html_document_original_ref_noi :: (document: *lxb_html_document_t) -> *lxb_dom_document_t #foreign liblexbor;

lxb_html_document_is_original_noi :: (document: *lxb_html_document_t) -> bool #foreign liblexbor;

lxb_html_document_mraw_noi :: (document: *lxb_html_document_t) -> *lexbor_mraw_t #foreign liblexbor;

lxb_html_document_mraw_text_noi :: (document: *lxb_html_document_t) -> *lexbor_mraw_t #foreign liblexbor;

lxb_html_document_opt_set_noi :: (document: *lxb_html_document_t, opt: lxb_html_document_opt_t) -> void #foreign liblexbor;

lxb_html_document_opt_noi :: (document: *lxb_html_document_t) -> lxb_html_document_opt_t #foreign liblexbor;

lxb_html_document_create_struct_noi :: (document: *lxb_html_document_t, struct_size: u64) -> *void #foreign liblexbor;

lxb_html_document_destroy_struct_noi :: (document: *lxb_html_document_t, data: *void) -> *void #foreign liblexbor;

lxb_html_document_create_element_noi :: (document: *lxb_html_document_t, local_name: *lxb_char_t, lname_len: u64, reserved_for_opt: *void) -> *lxb_html_element_t #foreign liblexbor;

lxb_html_document_destroy_element_noi :: (element: *lxb_dom_element_t) -> *lxb_dom_element_t #foreign liblexbor;

lxb_html_tag_category_t :: s32;

lxb_html_tag_category :: enum u32 {
    UNDEF           :: 0;
    ORDINARY        :: 1;
    SPECIAL         :: 2;
    FORMATTING      :: 4;
    SCOPE           :: 8;
    SCOPE_LIST_ITEM :: 16;
    SCOPE_BUTTON    :: 32;
    SCOPE_TABLE     :: 64;
    SCOPE_SELECT    :: 128;

    LXB_HTML_TAG_CATEGORY__UNDEF          :: UNDEF;
    LXB_HTML_TAG_CATEGORY_ORDINARY        :: ORDINARY;
    LXB_HTML_TAG_CATEGORY_SPECIAL         :: SPECIAL;
    LXB_HTML_TAG_CATEGORY_FORMATTING      :: FORMATTING;
    LXB_HTML_TAG_CATEGORY_SCOPE           :: SCOPE;
    LXB_HTML_TAG_CATEGORY_SCOPE_LIST_ITEM :: SCOPE_LIST_ITEM;
    LXB_HTML_TAG_CATEGORY_SCOPE_BUTTON    :: SCOPE_BUTTON;
    LXB_HTML_TAG_CATEGORY_SCOPE_TABLE     :: SCOPE_TABLE;
    LXB_HTML_TAG_CATEGORY_SCOPE_SELECT    :: SCOPE_SELECT;
}

lxb_html_tag_fixname_t :: struct {
    name: *lxb_char_t;
    len:  u32;
}

lxb_html_tree_error_id_t :: enum u32 {
    UNTO               :: 0;

    UNCLTO             :: 1;

    NUCH               :: 2;

    UNCHTO             :: 3;

    UNTOININMO         :: 4;

    BADOTOININMO       :: 5;

    DOTOINBEHTMO       :: 6;

    UNCLTOINBEHTMO     :: 7;

    DOTOINBEHEMO       :: 8;

    UNCLTOINBEHEMO     :: 9;

    DOTOINHEMO         :: 10;

    NOVOHTELSTTAWITRSO :: 11;

    HETOINHEMO         :: 12;

    UNCLTOINHEMO       :: 13;

    TECLTOWIOPINHEMO   :: 14;

    TEELISNOCUINHEMO   :: 15;

    DOTOINHENOMO       :: 16;

    DOTOAFHEMO         :: 17;

    HETOAFHEMO         :: 18;

    DOTOINBOMO         :: 19;

    BAENOPELISWR       :: 20;

    OPELISWR           :: 21;

    UNELINOPELST       :: 22;

    MIELINOPELST       :: 23;

    NOBOELINSC         :: 24;

    MIELINSC           :: 25;

    UNELINSC           :: 26;

    UNELINACFOST       :: 27;

    UNENOFFI           :: 28;

    CHINTATE           :: 29;

    DOTOINTAMO         :: 30;

    DOTOINSEMO         :: 31;

    DOTOAFBOMO         :: 32;

    DOTOINFRMO         :: 33;

    DOTOAFFRMO         :: 34;

    DOTOFOCOMO         :: 35;

    LAST_ENTRY         :: 36;

    LXB_HTML_RULES_ERROR_UNTO               :: UNTO;

    LXB_HTML_RULES_ERROR_UNCLTO             :: UNCLTO;

    LXB_HTML_RULES_ERROR_NUCH               :: NUCH;

    LXB_HTML_RULES_ERROR_UNCHTO             :: UNCHTO;

    LXB_HTML_RULES_ERROR_UNTOININMO         :: UNTOININMO;

    LXB_HTML_RULES_ERROR_BADOTOININMO       :: BADOTOININMO;

    LXB_HTML_RULES_ERROR_DOTOINBEHTMO       :: DOTOINBEHTMO;

    LXB_HTML_RULES_ERROR_UNCLTOINBEHTMO     :: UNCLTOINBEHTMO;

    LXB_HTML_RULES_ERROR_DOTOINBEHEMO       :: DOTOINBEHEMO;

    LXB_HTML_RULES_ERROR_UNCLTOINBEHEMO     :: UNCLTOINBEHEMO;

    LXB_HTML_RULES_ERROR_DOTOINHEMO         :: DOTOINHEMO;

    LXB_HTML_RULES_ERROR_NOVOHTELSTTAWITRSO :: NOVOHTELSTTAWITRSO;

    LXB_HTML_RULES_ERROR_HETOINHEMO         :: HETOINHEMO;

    LXB_HTML_RULES_ERROR_UNCLTOINHEMO       :: UNCLTOINHEMO;

    LXB_HTML_RULES_ERROR_TECLTOWIOPINHEMO   :: TECLTOWIOPINHEMO;

    LXB_HTML_RULES_ERROR_TEELISNOCUINHEMO   :: TEELISNOCUINHEMO;

    LXB_HTML_RULES_ERROR_DOTOINHENOMO       :: DOTOINHENOMO;

    LXB_HTML_RULES_ERROR_DOTOAFHEMO         :: DOTOAFHEMO;

    LXB_HTML_RULES_ERROR_HETOAFHEMO         :: HETOAFHEMO;

    LXB_HTML_RULES_ERROR_DOTOINBOMO         :: DOTOINBOMO;

    LXB_HTML_RULES_ERROR_BAENOPELISWR       :: BAENOPELISWR;

    LXB_HTML_RULES_ERROR_OPELISWR           :: OPELISWR;

    LXB_HTML_RULES_ERROR_UNELINOPELST       :: UNELINOPELST;

    LXB_HTML_RULES_ERROR_MIELINOPELST       :: MIELINOPELST;

    LXB_HTML_RULES_ERROR_NOBOELINSC         :: NOBOELINSC;

    LXB_HTML_RULES_ERROR_MIELINSC           :: MIELINSC;

    LXB_HTML_RULES_ERROR_UNELINSC           :: UNELINSC;

    LXB_HTML_RULES_ERROR_UNELINACFOST       :: UNELINACFOST;

    LXB_HTML_RULES_ERROR_UNENOFFI           :: UNENOFFI;

    LXB_HTML_RULES_ERROR_CHINTATE           :: CHINTATE;

    LXB_HTML_RULES_ERROR_DOTOINTAMO         :: DOTOINTAMO;

    LXB_HTML_RULES_ERROR_DOTOINSEMO         :: DOTOINSEMO;

    LXB_HTML_RULES_ERROR_DOTOAFBOMO         :: DOTOAFBOMO;

    LXB_HTML_RULES_ERROR_DOTOINFRMO         :: DOTOINFRMO;

    LXB_HTML_RULES_ERROR_DOTOAFFRMO         :: DOTOAFFRMO;

    LXB_HTML_RULES_ERROR_DOTOFOCOMO         :: DOTOFOCOMO;

    LXB_HTML_RULES_ERROR_LAST_ENTRY         :: LAST_ENTRY;
}

lxb_html_tree_error_t :: struct {
    id:    lxb_html_tree_error_id_t;
    begin: *lxb_char_t;
    end:   *lxb_char_t;
}

lxb_html_tree_error_add :: (parse_errors: *lexbor_array_obj_t, token: *lxb_html_token_t, id: lxb_html_tree_error_id_t) -> *lxb_html_tree_error_t #foreign liblexbor;

lxb_html_tree_insertion_mode_f :: #type (tree: *lxb_html_tree_t, token: *lxb_html_token_t) -> bool #c_call;

lxb_html_tree_append_attr_f :: #type (tree: *lxb_html_tree_t, attr: *lxb_dom_attr_t, ctx: *void) -> lxb_status_t #c_call;

lxb_html_tree_pending_table_t :: struct {
    text_list:   *lexbor_array_obj_t;
    have_non_ws: bool;
}

lxb_html_tree :: struct {
    tkz_ref:                  *lxb_html_tokenizer_t;

    document:                 *lxb_html_document_t;
    fragment:                 *lxb_dom_node_t;

    form:                     *lxb_html_form_element_t;

    open_elements:            *lexbor_array_t;
    active_formatting:        *lexbor_array_t;
    template_insertion_modes: *lexbor_array_obj_t;

    pending_table:            lxb_html_tree_pending_table_t;

    parse_errors:             *lexbor_array_obj_t;

    foster_parenting:         bool;
    frameset_ok:              bool;
    scripting:                bool;

    mode:                     lxb_html_tree_insertion_mode_f;
    original_mode:            lxb_html_tree_insertion_mode_f;
    before_append_attr:       lxb_html_tree_append_attr_f;

    status:                   lxb_status_t;

    ref_count:                u64;
}

lxb_html_tree_insertion_position_t :: enum u32 {
    CHILD  :: 0;
    BEFORE :: 1;

    LXB_HTML_TREE_INSERTION_POSITION_CHILD  :: CHILD;
    LXB_HTML_TREE_INSERTION_POSITION_BEFORE :: BEFORE;
}

lxb_html_tree_create :: () -> *lxb_html_tree_t #foreign liblexbor;

lxb_html_tree_init :: (tree: *lxb_html_tree_t, tkz: *lxb_html_tokenizer_t) -> lxb_status_t #foreign liblexbor;

lxb_html_tree_ref :: (tree: *lxb_html_tree_t) -> *lxb_html_tree_t #foreign liblexbor;

lxb_html_tree_unref :: (tree: *lxb_html_tree_t) -> *lxb_html_tree_t #foreign liblexbor;

lxb_html_tree_clean :: (tree: *lxb_html_tree_t) -> void #foreign liblexbor;

lxb_html_tree_destroy :: (tree: *lxb_html_tree_t) -> *lxb_html_tree_t #foreign liblexbor;

lxb_html_tree_stop_parsing :: (tree: *lxb_html_tree_t) -> lxb_status_t #foreign liblexbor;

lxb_html_tree_process_abort :: (tree: *lxb_html_tree_t) -> bool #foreign liblexbor;

lxb_html_tree_parse_error :: (tree: *lxb_html_tree_t, token: *lxb_html_token_t, id: lxb_html_tree_error_id_t) -> void #foreign liblexbor;

lxb_html_tree_construction_dispatcher :: (tree: *lxb_html_tree_t, token: *lxb_html_token_t) -> bool #foreign liblexbor;

lxb_html_tree_appropriate_place_inserting_node :: (tree: *lxb_html_tree_t, override_target: *lxb_dom_node_t, ipos: *lxb_html_tree_insertion_position_t) -> *lxb_dom_node_t #foreign liblexbor;

lxb_html_tree_insert_foreign_element :: (tree: *lxb_html_tree_t, token: *lxb_html_token_t, ns: lxb_ns_id_t) -> *lxb_html_element_t #foreign liblexbor;

lxb_html_tree_create_element_for_token :: (tree: *lxb_html_tree_t, token: *lxb_html_token_t, ns: lxb_ns_id_t) -> *lxb_html_element_t #foreign liblexbor;

lxb_html_tree_append_attributes :: (tree: *lxb_html_tree_t, element: *lxb_dom_element_t, token: *lxb_html_token_t, ns: lxb_ns_id_t) -> lxb_status_t #foreign liblexbor;

lxb_html_tree_append_attributes_from_element :: (tree: *lxb_html_tree_t, element: *lxb_dom_element_t, from: *lxb_dom_element_t, ns: lxb_ns_id_t) -> lxb_status_t #foreign liblexbor;

lxb_html_tree_adjust_mathml_attributes :: (tree: *lxb_html_tree_t, attr: *lxb_dom_attr_t, ctx: *void) -> lxb_status_t #foreign liblexbor;

lxb_html_tree_adjust_svg_attributes :: (tree: *lxb_html_tree_t, attr: *lxb_dom_attr_t, ctx: *void) -> lxb_status_t #foreign liblexbor;

lxb_html_tree_adjust_foreign_attributes :: (tree: *lxb_html_tree_t, attr: *lxb_dom_attr_t, ctx: *void) -> lxb_status_t #foreign liblexbor;

lxb_html_tree_insert_character :: (tree: *lxb_html_tree_t, token: *lxb_html_token_t, ret_node: **lxb_dom_node_t) -> lxb_status_t #foreign liblexbor;

lxb_html_tree_insert_character_for_data :: (tree: *lxb_html_tree_t, str: *lexbor_str_t, ret_node: **lxb_dom_node_t) -> lxb_status_t #foreign liblexbor;

lxb_html_tree_insert_comment :: (tree: *lxb_html_tree_t, token: *lxb_html_token_t, pos: *lxb_dom_node_t) -> *lxb_dom_comment_t #foreign liblexbor;

lxb_html_tree_create_document_type_from_token :: (tree: *lxb_html_tree_t, token: *lxb_html_token_t) -> *lxb_dom_document_type_t #foreign liblexbor;

lxb_html_tree_node_delete_deep :: (tree: *lxb_html_tree_t, node: *lxb_dom_node_t) -> void #foreign liblexbor;

lxb_html_tree_generic_rawtext_parsing :: (tree: *lxb_html_tree_t, token: *lxb_html_token_t) -> *lxb_html_element_t #foreign liblexbor;

lxb_html_tree_generic_rcdata_parsing :: (tree: *lxb_html_tree_t, token: *lxb_html_token_t) -> *lxb_html_element_t #foreign liblexbor;

lxb_html_tree_generate_implied_end_tags :: (tree: *lxb_html_tree_t, ex_tag: lxb_tag_id_t, ex_ns: lxb_ns_id_t) -> void #foreign liblexbor;

lxb_html_tree_generate_all_implied_end_tags_thoroughly :: (tree: *lxb_html_tree_t, ex_tag: lxb_tag_id_t, ex_ns: lxb_ns_id_t) -> void #foreign liblexbor;

lxb_html_tree_reset_insertion_mode_appropriately :: (tree: *lxb_html_tree_t) -> void #foreign liblexbor;

lxb_html_tree_element_in_scope :: (tree: *lxb_html_tree_t, tag_id: lxb_tag_id_t, ns: lxb_ns_id_t, ct: lxb_html_tag_category_t) -> *lxb_dom_node_t #foreign liblexbor;

lxb_html_tree_element_in_scope_by_node :: (tree: *lxb_html_tree_t, by_node: *lxb_dom_node_t, ct: lxb_html_tag_category_t) -> *lxb_dom_node_t #foreign liblexbor;

lxb_html_tree_element_in_scope_h123456 :: (tree: *lxb_html_tree_t) -> *lxb_dom_node_t #foreign liblexbor;

lxb_html_tree_element_in_scope_tbody_thead_tfoot :: (tree: *lxb_html_tree_t) -> *lxb_dom_node_t #foreign liblexbor;

lxb_html_tree_element_in_scope_td_th :: (tree: *lxb_html_tree_t) -> *lxb_dom_node_t #foreign liblexbor;

lxb_html_tree_check_scope_element :: (tree: *lxb_html_tree_t) -> bool #foreign liblexbor;

lxb_html_tree_close_p_element :: (tree: *lxb_html_tree_t, token: *lxb_html_token_t) -> void #foreign liblexbor;

lxb_html_tree_adoption_agency_algorithm :: (tree: *lxb_html_tree_t, token: *lxb_html_token_t, status: *lxb_status_t) -> bool #foreign liblexbor;

lxb_html_tree_html_integration_point :: (node: *lxb_dom_node_t) -> bool #foreign liblexbor;

lxb_html_tree_adjust_attributes_mathml :: (tree: *lxb_html_tree_t, attr: *lxb_dom_attr_t, ctx: *void) -> lxb_status_t #foreign liblexbor;

lxb_html_tree_adjust_attributes_svg :: (tree: *lxb_html_tree_t, attr: *lxb_dom_attr_t, ctx: *void) -> lxb_status_t #foreign liblexbor;

lxb_html_parser_state_t :: enum u32 {
    BEGIN            :: 0;
    PROCESS          :: 1;
    END              :: 2;
    FRAGMENT_PROCESS :: 3;
    ERROR            :: 4;

    LXB_HTML_PARSER_STATE_BEGIN            :: BEGIN;
    LXB_HTML_PARSER_STATE_PROCESS          :: PROCESS;
    LXB_HTML_PARSER_STATE_END              :: END;
    LXB_HTML_PARSER_STATE_FRAGMENT_PROCESS :: FRAGMENT_PROCESS;
    LXB_HTML_PARSER_STATE_ERROR            :: ERROR;
}

lxb_html_parser_t :: struct {
    tkz:           *lxb_html_tokenizer_t;
    tree:          *lxb_html_tree_t;
    original_tree: *lxb_html_tree_t;

    root:          *lxb_dom_node_t;
    form:          *lxb_dom_node_t;

    state:         lxb_html_parser_state_t;
    status:        lxb_status_t;

    ref_count:     u64;
}

lxb_html_parser_create :: () -> *lxb_html_parser_t #foreign liblexbor;

lxb_html_parser_init :: (parser: *lxb_html_parser_t) -> lxb_status_t #foreign liblexbor;

lxb_html_parser_clean :: (parser: *lxb_html_parser_t) -> void #foreign liblexbor;

lxb_html_parser_destroy :: (parser: *lxb_html_parser_t) -> *lxb_html_parser_t #foreign liblexbor;

lxb_html_parser_ref :: (parser: *lxb_html_parser_t) -> *lxb_html_parser_t #foreign liblexbor;

lxb_html_parser_unref :: (parser: *lxb_html_parser_t) -> *lxb_html_parser_t #foreign liblexbor;

lxb_html_parse :: (parser: *lxb_html_parser_t, html: *lxb_char_t, size: u64) -> *lxb_html_document_t #foreign liblexbor;

lxb_html_parse_fragment :: (parser: *lxb_html_parser_t, element: *lxb_html_element_t, html: *lxb_char_t, size: u64) -> *lxb_dom_node_t #foreign liblexbor;

lxb_html_parse_fragment_by_tag_id :: (parser: *lxb_html_parser_t, document: *lxb_html_document_t, tag_id: lxb_tag_id_t, ns: lxb_ns_id_t, html: *lxb_char_t, size: u64) -> *lxb_dom_node_t #foreign liblexbor;

lxb_html_parse_chunk_begin :: (parser: *lxb_html_parser_t) -> *lxb_html_document_t #foreign liblexbor;

lxb_html_parse_chunk_process :: (parser: *lxb_html_parser_t, html: *lxb_char_t, size: u64) -> lxb_status_t #foreign liblexbor;

lxb_html_parse_chunk_end :: (parser: *lxb_html_parser_t) -> lxb_status_t #foreign liblexbor;

lxb_html_parse_fragment_chunk_begin :: (parser: *lxb_html_parser_t, document: *lxb_html_document_t, tag_id: lxb_tag_id_t, ns: lxb_ns_id_t) -> lxb_status_t #foreign liblexbor;

lxb_html_parse_fragment_chunk_process :: (parser: *lxb_html_parser_t, html: *lxb_char_t, size: u64) -> lxb_status_t #foreign liblexbor;

lxb_html_parse_fragment_chunk_end :: (parser: *lxb_html_parser_t) -> *lxb_dom_node_t #foreign liblexbor;

/*
* No inline functions for ABI.
*/
lxb_html_parser_tokenizer_noi :: (parser: *lxb_html_parser_t) -> *lxb_html_tokenizer_t #foreign liblexbor;

lxb_html_parser_tree_noi :: (parser: *lxb_html_parser_t) -> *lxb_html_tree_t #foreign liblexbor;

lxb_html_parser_status_noi :: (parser: *lxb_html_parser_t) -> lxb_status_t #foreign liblexbor;

lxb_html_parser_state_noi :: (parser: *lxb_html_parser_t) -> lxb_status_t #foreign liblexbor;

lxb_html_parser_scripting_noi :: (parser: *lxb_html_parser_t) -> bool #foreign liblexbor;

lxb_html_parser_scripting_set_noi :: (parser: *lxb_html_parser_t, scripting: bool) -> void #foreign liblexbor;

lexbor_avl_t :: lexbor_avl;
lexbor_avl_node_t :: lexbor_avl_node;

lexbor_avl_node_f :: #type (avl: *lexbor_avl_t, root: **lexbor_avl_node_t, node: *lexbor_avl_node_t, ctx: *void) -> lxb_status_t #c_call;

lexbor_avl_node :: struct {
    type:   u64;
    height: s16;
    value:  *void;

    left:   *lexbor_avl_node_t;
    right:  *lexbor_avl_node_t;
    parent: *lexbor_avl_node_t;
}

lexbor_avl :: struct {
    nodes:      *lexbor_dobject_t;
    last_right: *lexbor_avl_node_t;
}

lexbor_avl_create :: () -> *lexbor_avl_t #foreign liblexbor;

lexbor_avl_init :: (avl: *lexbor_avl_t, chunk_len: u64, struct_size: u64) -> lxb_status_t #foreign liblexbor;

lexbor_avl_clean :: (avl: *lexbor_avl_t) -> void #foreign liblexbor;

lexbor_avl_destroy :: (avl: *lexbor_avl_t, self_destroy: bool) -> *lexbor_avl_t #foreign liblexbor;

lexbor_avl_node_make :: (avl: *lexbor_avl_t, type: u64, value: *void) -> *lexbor_avl_node_t #foreign liblexbor;

lexbor_avl_node_clean :: (node: *lexbor_avl_node_t) -> void #foreign liblexbor;

lexbor_avl_node_destroy :: (avl: *lexbor_avl_t, node: *lexbor_avl_node_t, self_destroy: bool) -> *lexbor_avl_node_t #foreign liblexbor;

lexbor_avl_insert :: (avl: *lexbor_avl_t, scope: **lexbor_avl_node_t, type: u64, value: *void) -> *lexbor_avl_node_t #foreign liblexbor;

lexbor_avl_search :: (avl: *lexbor_avl_t, scope: *lexbor_avl_node_t, type: u64) -> *lexbor_avl_node_t #foreign liblexbor;

lexbor_avl_remove :: (avl: *lexbor_avl_t, scope: **lexbor_avl_node_t, type: u64) -> *void #foreign liblexbor;

lexbor_avl_remove_by_node :: (avl: *lexbor_avl_t, root: **lexbor_avl_node_t, node: *lexbor_avl_node_t) -> void #foreign liblexbor;

lexbor_avl_foreach :: (avl: *lexbor_avl_t, scope: **lexbor_avl_node_t, cb: lexbor_avl_node_f, ctx: *void) -> lxb_status_t #foreign liblexbor;

lexbor_avl_foreach_recursion :: (avl: *lexbor_avl_t, scope: *lexbor_avl_node_t, callback: lexbor_avl_node_f, ctx: *void) -> void #foreign liblexbor;

lxb_dom_element_custom_state_t :: enum u32 {
    UNDEFINED    :: 0;
    FAILED       :: 1;
    UNCUSTOMIZED :: 2;
    CUSTOM       :: 3;

    LXB_DOM_ELEMENT_CUSTOM_STATE_UNDEFINED    :: UNDEFINED;
    LXB_DOM_ELEMENT_CUSTOM_STATE_FAILED       :: FAILED;
    LXB_DOM_ELEMENT_CUSTOM_STATE_UNCUSTOMIZED :: UNCUSTOMIZED;
    LXB_DOM_ELEMENT_CUSTOM_STATE_CUSTOM       :: CUSTOM;
}

lxb_dom_element :: struct {
    node:           lxb_dom_node_t;

    /* uppercase, with prefix: LALALA:DIV */
    upper_name:     lxb_dom_attr_id_t;

    /* original, with prefix: LalAla:DiV */
    qualified_name: lxb_dom_attr_id_t;

    is_value:       *lexbor_str_t;

    first_attr:     *lxb_dom_attr_t;
    last_attr:      *lxb_dom_attr_t;

    attr_id:        *lxb_dom_attr_t;
    attr_class:     *lxb_dom_attr_t;

    style:          *lexbor_avl_node_t;
    list:           *void; /* lxb_css_rule_declaration_list_t */

    custom_state:   lxb_dom_element_custom_state_t;
}

lxb_dom_element_interface_create :: (document: *lxb_dom_document_t) -> *lxb_dom_element_t #foreign liblexbor;

lxb_dom_element_interface_clone :: (document: *lxb_dom_document_t, element: *lxb_dom_element_t) -> *lxb_dom_element_t #foreign liblexbor;

lxb_dom_element_interface_destroy :: (element: *lxb_dom_element_t) -> *lxb_dom_element_t #foreign liblexbor;

lxb_dom_element_interface_copy :: (dst: *lxb_dom_element_t, src: *lxb_dom_element_t) -> lxb_status_t #foreign liblexbor;

lxb_dom_element_create :: (document: *lxb_dom_document_t, local_name: *lxb_char_t, lname_len: u64, ns_name: *lxb_char_t, ns_len: u64, prefix: *lxb_char_t, prefix_len: u64, is: *lxb_char_t, is_len: u64, sync_custom: bool) -> *lxb_dom_element_t #foreign liblexbor;

lxb_dom_element_destroy :: (element: *lxb_dom_element_t) -> *lxb_dom_element_t #foreign liblexbor;

lxb_dom_element_has_attributes :: (element: *lxb_dom_element_t) -> bool #foreign liblexbor;

lxb_dom_element_set_attribute :: (element: *lxb_dom_element_t, qualified_name: *lxb_char_t, qn_len: u64, value: *lxb_char_t, value_len: u64) -> *lxb_dom_attr_t #foreign liblexbor;

lxb_dom_element_get_attribute :: (element: *lxb_dom_element_t, qualified_name: *lxb_char_t, qn_len: u64, value_len: *u64) -> *lxb_char_t #foreign liblexbor;

lxb_dom_element_remove_attribute :: (element: *lxb_dom_element_t, qualified_name: *lxb_char_t, qn_len: u64) -> lxb_status_t #foreign liblexbor;

lxb_dom_element_has_attribute :: (element: *lxb_dom_element_t, qualified_name: *lxb_char_t, qn_len: u64) -> bool #foreign liblexbor;

lxb_dom_element_attr_append :: (element: *lxb_dom_element_t, attr: *lxb_dom_attr_t) -> lxb_status_t #foreign liblexbor;

lxb_dom_element_attr_remove :: (element: *lxb_dom_element_t, attr: *lxb_dom_attr_t) -> lxb_status_t #foreign liblexbor;

lxb_dom_element_attr_by_name :: (element: *lxb_dom_element_t, qualified_name: *lxb_char_t, length: u64) -> *lxb_dom_attr_t #foreign liblexbor;

lxb_dom_element_attr_by_local_name_data :: (element: *lxb_dom_element_t, data: *lxb_dom_attr_data_t) -> *lxb_dom_attr_t #foreign liblexbor;

lxb_dom_element_attr_by_id :: (element: *lxb_dom_element_t, attr_id: lxb_dom_attr_id_t) -> *lxb_dom_attr_t #foreign liblexbor;

lxb_dom_element_compare :: (first: *lxb_dom_element_t, second: *lxb_dom_element_t) -> bool #foreign liblexbor;

lxb_dom_element_attr_is_exist :: (element: *lxb_dom_element_t, qualified_name: *lxb_char_t, length: u64) -> *lxb_dom_attr_t #foreign liblexbor;

lxb_dom_element_is_set :: (element: *lxb_dom_element_t, is: *lxb_char_t, is_len: u64) -> lxb_status_t #foreign liblexbor;

lxb_dom_elements_by_tag_name :: (root: *lxb_dom_element_t, collection: *lxb_dom_collection_t, qualified_name: *lxb_char_t, len: u64) -> lxb_status_t #foreign liblexbor;

lxb_dom_elements_by_class_name :: (root: *lxb_dom_element_t, collection: *lxb_dom_collection_t, class_name: *lxb_char_t, len: u64) -> lxb_status_t #foreign liblexbor;

lxb_dom_elements_by_attr :: (root: *lxb_dom_element_t, collection: *lxb_dom_collection_t, qualified_name: *lxb_char_t, qname_len: u64, value: *lxb_char_t, value_len: u64, case_insensitive: bool) -> lxb_status_t #foreign liblexbor;

lxb_dom_elements_by_attr_begin :: (root: *lxb_dom_element_t, collection: *lxb_dom_collection_t, qualified_name: *lxb_char_t, qname_len: u64, value: *lxb_char_t, value_len: u64, case_insensitive: bool) -> lxb_status_t #foreign liblexbor;

lxb_dom_elements_by_attr_end :: (root: *lxb_dom_element_t, collection: *lxb_dom_collection_t, qualified_name: *lxb_char_t, qname_len: u64, value: *lxb_char_t, value_len: u64, case_insensitive: bool) -> lxb_status_t #foreign liblexbor;

lxb_dom_elements_by_attr_contain :: (root: *lxb_dom_element_t, collection: *lxb_dom_collection_t, qualified_name: *lxb_char_t, qname_len: u64, value: *lxb_char_t, value_len: u64, case_insensitive: bool) -> lxb_status_t #foreign liblexbor;

lxb_dom_element_qualified_name :: (element: *lxb_dom_element_t, len: *u64) -> *lxb_char_t #foreign liblexbor;

lxb_dom_element_qualified_name_upper :: (element: *lxb_dom_element_t, len: *u64) -> *lxb_char_t #foreign liblexbor;

lxb_dom_element_local_name :: (element: *lxb_dom_element_t, len: *u64) -> *lxb_char_t #foreign liblexbor;

lxb_dom_element_prefix :: (element: *lxb_dom_element_t, len: *u64) -> *lxb_char_t #foreign liblexbor;

lxb_dom_element_tag_name :: (element: *lxb_dom_element_t, len: *u64) -> *lxb_char_t #foreign liblexbor;

/*
* No inline functions for ABI.
*/
lxb_dom_element_id_noi :: (element: *lxb_dom_element_t, len: *u64) -> *lxb_char_t #foreign liblexbor;

lxb_dom_element_class_noi :: (element: *lxb_dom_element_t, len: *u64) -> *lxb_char_t #foreign liblexbor;

lxb_dom_element_is_custom_noi :: (element: *lxb_dom_element_t) -> bool #foreign liblexbor;

lxb_dom_element_custom_is_defined_noi :: (element: *lxb_dom_element_t) -> bool #foreign liblexbor;

lxb_dom_element_first_attribute_noi :: (element: *lxb_dom_element_t) -> *lxb_dom_attr_t #foreign liblexbor;

lxb_dom_element_next_attribute_noi :: (attr: *lxb_dom_attr_t) -> *lxb_dom_attr_t #foreign liblexbor;

lxb_dom_element_prev_attribute_noi :: (attr: *lxb_dom_attr_t) -> *lxb_dom_attr_t #foreign liblexbor;

lxb_dom_element_last_attribute_noi :: (element: *lxb_dom_element_t) -> *lxb_dom_attr_t #foreign liblexbor;

lxb_dom_element_id_attribute_noi :: (element: *lxb_dom_element_t) -> *lxb_dom_attr_t #foreign liblexbor;

lxb_dom_element_class_attribute_noi :: (element: *lxb_dom_element_t) -> *lxb_dom_attr_t #foreign liblexbor;

#scope_file

#import "Basic"; // For assert

liblexbor :: #library "lexbor/liblexbor";

#run {
    {
        info := type_info(lexbor_serialize_ctx_t);
        for info.members {
            if it.name == {
                case "cb";
                    assert(it.offset_in_bytes == 0, "lexbor_serialize_ctx_t.cb has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lexbor_serialize_ctx_t.cb has unexpected size % instead of 8", it.type.runtime_size);
                case "ctx";
                    assert(it.offset_in_bytes == 8, "lexbor_serialize_ctx_t.ctx has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lexbor_serialize_ctx_t.ctx has unexpected size % instead of 8", it.type.runtime_size);
                case "opt";
                    assert(it.offset_in_bytes == 16, "lexbor_serialize_ctx_t.opt has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lexbor_serialize_ctx_t.opt has unexpected size % instead of 8", it.type.runtime_size);
                case "count";
                    assert(it.offset_in_bytes == 24, "lexbor_serialize_ctx_t.count has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lexbor_serialize_ctx_t.count has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(lexbor_serialize_ctx_t) == 32, "lexbor_serialize_ctx_t has size % instead of 32", size_of(lexbor_serialize_ctx_t));
    }

    {
        info := type_info(lexbor_array_t);
        for info.members {
            if it.name == {
                case "list";
                    assert(it.offset_in_bytes == 0, "lexbor_array_t.list has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lexbor_array_t.list has unexpected size % instead of 8", it.type.runtime_size);
                case "size";
                    assert(it.offset_in_bytes == 8, "lexbor_array_t.size has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lexbor_array_t.size has unexpected size % instead of 8", it.type.runtime_size);
                case "length";
                    assert(it.offset_in_bytes == 16, "lexbor_array_t.length has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lexbor_array_t.length has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(lexbor_array_t) == 24, "lexbor_array_t has size % instead of 24", size_of(lexbor_array_t));
    }

    {
        info := type_info(lxb_dom_collection_t);
        for info.members {
            if it.name == {
                case "array";
                    assert(it.offset_in_bytes == 0, "lxb_dom_collection_t.array has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 24, "lxb_dom_collection_t.array has unexpected size % instead of 24", it.type.runtime_size);
                case "document";
                    assert(it.offset_in_bytes == 24, "lxb_dom_collection_t.document has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_dom_collection_t.document has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(lxb_dom_collection_t) == 32, "lxb_dom_collection_t has size % instead of 32", size_of(lxb_dom_collection_t));
    }

    {
        info := type_info(lxb_dom_event_target);
        for info.members {
            if it.name == {
                case "events";
                    assert(it.offset_in_bytes == 0, "lxb_dom_event_target.events has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_dom_event_target.events has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(lxb_dom_event_target) == 8, "lxb_dom_event_target has size % instead of 8", size_of(lxb_dom_event_target));
    }

    {
        info := type_info(lxb_dom_node);
        for info.members {
            if it.name == {
                case "event_target";
                    assert(it.offset_in_bytes == 0, "lxb_dom_node.event_target has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_dom_node.event_target has unexpected size % instead of 8", it.type.runtime_size);
                case "local_name";
                    assert(it.offset_in_bytes == 8, "lxb_dom_node.local_name has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_dom_node.local_name has unexpected size % instead of 8", it.type.runtime_size);
                case "prefix";
                    assert(it.offset_in_bytes == 16, "lxb_dom_node.prefix has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_dom_node.prefix has unexpected size % instead of 8", it.type.runtime_size);
                case "ns";
                    assert(it.offset_in_bytes == 24, "lxb_dom_node.ns has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_dom_node.ns has unexpected size % instead of 8", it.type.runtime_size);
                case "owner_document";
                    assert(it.offset_in_bytes == 32, "lxb_dom_node.owner_document has unexpected offset % instead of 32", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_dom_node.owner_document has unexpected size % instead of 8", it.type.runtime_size);
                case "next";
                    assert(it.offset_in_bytes == 40, "lxb_dom_node.next has unexpected offset % instead of 40", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_dom_node.next has unexpected size % instead of 8", it.type.runtime_size);
                case "prev";
                    assert(it.offset_in_bytes == 48, "lxb_dom_node.prev has unexpected offset % instead of 48", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_dom_node.prev has unexpected size % instead of 8", it.type.runtime_size);
                case "parent";
                    assert(it.offset_in_bytes == 56, "lxb_dom_node.parent has unexpected offset % instead of 56", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_dom_node.parent has unexpected size % instead of 8", it.type.runtime_size);
                case "first_child";
                    assert(it.offset_in_bytes == 64, "lxb_dom_node.first_child has unexpected offset % instead of 64", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_dom_node.first_child has unexpected size % instead of 8", it.type.runtime_size);
                case "last_child";
                    assert(it.offset_in_bytes == 72, "lxb_dom_node.last_child has unexpected offset % instead of 72", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_dom_node.last_child has unexpected size % instead of 8", it.type.runtime_size);
                case "user";
                    assert(it.offset_in_bytes == 80, "lxb_dom_node.user has unexpected offset % instead of 80", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_dom_node.user has unexpected size % instead of 8", it.type.runtime_size);
                case "type";
                    assert(it.offset_in_bytes == 88, "lxb_dom_node.type has unexpected offset % instead of 88", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "lxb_dom_node.type has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(lxb_dom_node) == 96, "lxb_dom_node has size % instead of 96", size_of(lxb_dom_node));
    }

    {
        info := type_info(lexbor_mem_chunk);
        for info.members {
            if it.name == {
                case "data";
                    assert(it.offset_in_bytes == 0, "lexbor_mem_chunk.data has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lexbor_mem_chunk.data has unexpected size % instead of 8", it.type.runtime_size);
                case "length";
                    assert(it.offset_in_bytes == 8, "lexbor_mem_chunk.length has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lexbor_mem_chunk.length has unexpected size % instead of 8", it.type.runtime_size);
                case "size";
                    assert(it.offset_in_bytes == 16, "lexbor_mem_chunk.size has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lexbor_mem_chunk.size has unexpected size % instead of 8", it.type.runtime_size);
                case "next";
                    assert(it.offset_in_bytes == 24, "lexbor_mem_chunk.next has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lexbor_mem_chunk.next has unexpected size % instead of 8", it.type.runtime_size);
                case "prev";
                    assert(it.offset_in_bytes == 32, "lexbor_mem_chunk.prev has unexpected offset % instead of 32", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lexbor_mem_chunk.prev has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(lexbor_mem_chunk) == 40, "lexbor_mem_chunk has size % instead of 40", size_of(lexbor_mem_chunk));
    }

    {
        info := type_info(lexbor_mem);
        for info.members {
            if it.name == {
                case "chunk";
                    assert(it.offset_in_bytes == 0, "lexbor_mem.chunk has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lexbor_mem.chunk has unexpected size % instead of 8", it.type.runtime_size);
                case "chunk_first";
                    assert(it.offset_in_bytes == 8, "lexbor_mem.chunk_first has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lexbor_mem.chunk_first has unexpected size % instead of 8", it.type.runtime_size);
                case "chunk_min_size";
                    assert(it.offset_in_bytes == 16, "lexbor_mem.chunk_min_size has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lexbor_mem.chunk_min_size has unexpected size % instead of 8", it.type.runtime_size);
                case "chunk_length";
                    assert(it.offset_in_bytes == 24, "lexbor_mem.chunk_length has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lexbor_mem.chunk_length has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(lexbor_mem) == 32, "lexbor_mem has size % instead of 32", size_of(lexbor_mem));
    }

    {
        info := type_info(lexbor_dobject_t);
        for info.members {
            if it.name == {
                case "mem";
                    assert(it.offset_in_bytes == 0, "lexbor_dobject_t.mem has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lexbor_dobject_t.mem has unexpected size % instead of 8", it.type.runtime_size);
                case "cache";
                    assert(it.offset_in_bytes == 8, "lexbor_dobject_t.cache has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lexbor_dobject_t.cache has unexpected size % instead of 8", it.type.runtime_size);
                case "allocated";
                    assert(it.offset_in_bytes == 16, "lexbor_dobject_t.allocated has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lexbor_dobject_t.allocated has unexpected size % instead of 8", it.type.runtime_size);
                case "struct_size";
                    assert(it.offset_in_bytes == 24, "lexbor_dobject_t.struct_size has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lexbor_dobject_t.struct_size has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(lexbor_dobject_t) == 32, "lexbor_dobject_t has size % instead of 32", size_of(lexbor_dobject_t));
    }

    {
        info := type_info(lexbor_bst_entry);
        for info.members {
            if it.name == {
                case "value";
                    assert(it.offset_in_bytes == 0, "lexbor_bst_entry.value has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lexbor_bst_entry.value has unexpected size % instead of 8", it.type.runtime_size);
                case "right";
                    assert(it.offset_in_bytes == 8, "lexbor_bst_entry.right has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lexbor_bst_entry.right has unexpected size % instead of 8", it.type.runtime_size);
                case "left";
                    assert(it.offset_in_bytes == 16, "lexbor_bst_entry.left has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lexbor_bst_entry.left has unexpected size % instead of 8", it.type.runtime_size);
                case "next";
                    assert(it.offset_in_bytes == 24, "lexbor_bst_entry.next has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lexbor_bst_entry.next has unexpected size % instead of 8", it.type.runtime_size);
                case "parent";
                    assert(it.offset_in_bytes == 32, "lexbor_bst_entry.parent has unexpected offset % instead of 32", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lexbor_bst_entry.parent has unexpected size % instead of 8", it.type.runtime_size);
                case "size";
                    assert(it.offset_in_bytes == 40, "lexbor_bst_entry.size has unexpected offset % instead of 40", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lexbor_bst_entry.size has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(lexbor_bst_entry) == 48, "lexbor_bst_entry has size % instead of 48", size_of(lexbor_bst_entry));
    }

    {
        info := type_info(lexbor_bst);
        for info.members {
            if it.name == {
                case "dobject";
                    assert(it.offset_in_bytes == 0, "lexbor_bst.dobject has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lexbor_bst.dobject has unexpected size % instead of 8", it.type.runtime_size);
                case "root";
                    assert(it.offset_in_bytes == 8, "lexbor_bst.root has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lexbor_bst.root has unexpected size % instead of 8", it.type.runtime_size);
                case "tree_length";
                    assert(it.offset_in_bytes == 16, "lexbor_bst.tree_length has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lexbor_bst.tree_length has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(lexbor_bst) == 24, "lexbor_bst has size % instead of 24", size_of(lexbor_bst));
    }

    {
        info := type_info(lexbor_mraw_t);
        for info.members {
            if it.name == {
                case "mem";
                    assert(it.offset_in_bytes == 0, "lexbor_mraw_t.mem has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lexbor_mraw_t.mem has unexpected size % instead of 8", it.type.runtime_size);
                case "cache";
                    assert(it.offset_in_bytes == 8, "lexbor_mraw_t.cache has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lexbor_mraw_t.cache has unexpected size % instead of 8", it.type.runtime_size);
                case "ref_count";
                    assert(it.offset_in_bytes == 16, "lexbor_mraw_t.ref_count has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lexbor_mraw_t.ref_count has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(lexbor_mraw_t) == 24, "lexbor_mraw_t has size % instead of 24", size_of(lexbor_mraw_t));
    }

    {
        info := type_info(lexbor_hash_entry);
        for info.members {
            if it.name == {
                case "u";
                    assert(it.offset_in_bytes == 0, "lexbor_hash_entry.u has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 24, "lexbor_hash_entry.u has unexpected size % instead of 24", it.type.runtime_size);
                case "length";
                    assert(it.offset_in_bytes == 24, "lexbor_hash_entry.length has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lexbor_hash_entry.length has unexpected size % instead of 8", it.type.runtime_size);
                case "next";
                    assert(it.offset_in_bytes == 32, "lexbor_hash_entry.next has unexpected offset % instead of 32", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lexbor_hash_entry.next has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(lexbor_hash_entry) == 40, "lexbor_hash_entry has size % instead of 40", size_of(lexbor_hash_entry));
    }

    {
        info := type_info(lexbor_hash);
        for info.members {
            if it.name == {
                case "entries";
                    assert(it.offset_in_bytes == 0, "lexbor_hash.entries has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lexbor_hash.entries has unexpected size % instead of 8", it.type.runtime_size);
                case "mraw";
                    assert(it.offset_in_bytes == 8, "lexbor_hash.mraw has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lexbor_hash.mraw has unexpected size % instead of 8", it.type.runtime_size);
                case "table";
                    assert(it.offset_in_bytes == 16, "lexbor_hash.table has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lexbor_hash.table has unexpected size % instead of 8", it.type.runtime_size);
                case "table_size";
                    assert(it.offset_in_bytes == 24, "lexbor_hash.table_size has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lexbor_hash.table_size has unexpected size % instead of 8", it.type.runtime_size);
                case "struct_size";
                    assert(it.offset_in_bytes == 32, "lexbor_hash.struct_size has unexpected offset % instead of 32", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lexbor_hash.struct_size has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(lexbor_hash) == 40, "lexbor_hash has size % instead of 40", size_of(lexbor_hash));
    }

    {
        info := type_info(lexbor_hash_insert);
        for info.members {
            if it.name == {
                case "hash";
                    assert(it.offset_in_bytes == 0, "lexbor_hash_insert.hash has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lexbor_hash_insert.hash has unexpected size % instead of 8", it.type.runtime_size);
                case "cmp";
                    assert(it.offset_in_bytes == 8, "lexbor_hash_insert.cmp has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lexbor_hash_insert.cmp has unexpected size % instead of 8", it.type.runtime_size);
                case "copy";
                    assert(it.offset_in_bytes == 16, "lexbor_hash_insert.copy has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lexbor_hash_insert.copy has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(lexbor_hash_insert) == 24, "lexbor_hash_insert has size % instead of 24", size_of(lexbor_hash_insert));
    }

    {
        info := type_info(lexbor_hash_search);
        for info.members {
            if it.name == {
                case "hash";
                    assert(it.offset_in_bytes == 0, "lexbor_hash_search.hash has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lexbor_hash_search.hash has unexpected size % instead of 8", it.type.runtime_size);
                case "cmp";
                    assert(it.offset_in_bytes == 8, "lexbor_hash_search.cmp has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lexbor_hash_search.cmp has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(lexbor_hash_search) == 16, "lexbor_hash_search has size % instead of 16", size_of(lexbor_hash_search));
    }

    {
        info := type_info(lexbor_str_t);
        for info.members {
            if it.name == {
                case "data";
                    assert(it.offset_in_bytes == 0, "lexbor_str_t.data has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lexbor_str_t.data has unexpected size % instead of 8", it.type.runtime_size);
                case "length";
                    assert(it.offset_in_bytes == 8, "lexbor_str_t.length has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lexbor_str_t.length has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(lexbor_str_t) == 16, "lexbor_str_t has size % instead of 16", size_of(lexbor_str_t));
    }

    {
        info := type_info(lexbor_shs_entry_t);
        for info.members {
            if it.name == {
                case "key";
                    assert(it.offset_in_bytes == 0, "lexbor_shs_entry_t.key has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lexbor_shs_entry_t.key has unexpected size % instead of 8", it.type.runtime_size);
                case "value";
                    assert(it.offset_in_bytes == 8, "lexbor_shs_entry_t.value has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lexbor_shs_entry_t.value has unexpected size % instead of 8", it.type.runtime_size);
                case "key_len";
                    assert(it.offset_in_bytes == 16, "lexbor_shs_entry_t.key_len has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lexbor_shs_entry_t.key_len has unexpected size % instead of 8", it.type.runtime_size);
                case "next";
                    assert(it.offset_in_bytes == 24, "lexbor_shs_entry_t.next has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lexbor_shs_entry_t.next has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(lexbor_shs_entry_t) == 32, "lexbor_shs_entry_t has size % instead of 32", size_of(lexbor_shs_entry_t));
    }

    {
        info := type_info(lexbor_shs_hash_t);
        for info.members {
            if it.name == {
                case "key";
                    assert(it.offset_in_bytes == 0, "lexbor_shs_hash_t.key has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "lexbor_shs_hash_t.key has unexpected size % instead of 4", it.type.runtime_size);
                case "value";
                    assert(it.offset_in_bytes == 8, "lexbor_shs_hash_t.value has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lexbor_shs_hash_t.value has unexpected size % instead of 8", it.type.runtime_size);
                case "next";
                    assert(it.offset_in_bytes == 16, "lexbor_shs_hash_t.next has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lexbor_shs_hash_t.next has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(lexbor_shs_hash_t) == 24, "lexbor_shs_hash_t has size % instead of 24", size_of(lexbor_shs_hash_t));
    }

    {
        info := type_info(lxb_ns_data_t);
        for info.members {
            if it.name == {
                case "entry";
                    assert(it.offset_in_bytes == 0, "lxb_ns_data_t.entry has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 40, "lxb_ns_data_t.entry has unexpected size % instead of 40", it.type.runtime_size);
                case "ns_id";
                    assert(it.offset_in_bytes == 40, "lxb_ns_data_t.ns_id has unexpected offset % instead of 40", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_ns_data_t.ns_id has unexpected size % instead of 8", it.type.runtime_size);
                case "ref_count";
                    assert(it.offset_in_bytes == 48, "lxb_ns_data_t.ref_count has unexpected offset % instead of 48", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_ns_data_t.ref_count has unexpected size % instead of 8", it.type.runtime_size);
                case "read_only";
                    assert(it.offset_in_bytes == 56, "lxb_ns_data_t.read_only has unexpected offset % instead of 56", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "lxb_ns_data_t.read_only has unexpected size % instead of 1", it.type.runtime_size);
            }
        }
        assert(size_of(lxb_ns_data_t) == 64, "lxb_ns_data_t has size % instead of 64", size_of(lxb_ns_data_t));
    }

    {
        info := type_info(lxb_ns_prefix_data_t);
        for info.members {
            if it.name == {
                case "entry";
                    assert(it.offset_in_bytes == 0, "lxb_ns_prefix_data_t.entry has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 40, "lxb_ns_prefix_data_t.entry has unexpected size % instead of 40", it.type.runtime_size);
                case "prefix_id";
                    assert(it.offset_in_bytes == 40, "lxb_ns_prefix_data_t.prefix_id has unexpected offset % instead of 40", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_ns_prefix_data_t.prefix_id has unexpected size % instead of 8", it.type.runtime_size);
                case "ref_count";
                    assert(it.offset_in_bytes == 48, "lxb_ns_prefix_data_t.ref_count has unexpected offset % instead of 48", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_ns_prefix_data_t.ref_count has unexpected size % instead of 8", it.type.runtime_size);
                case "read_only";
                    assert(it.offset_in_bytes == 56, "lxb_ns_prefix_data_t.read_only has unexpected offset % instead of 56", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "lxb_ns_prefix_data_t.read_only has unexpected size % instead of 1", it.type.runtime_size);
            }
        }
        assert(size_of(lxb_ns_prefix_data_t) == 64, "lxb_ns_prefix_data_t has size % instead of 64", size_of(lxb_ns_prefix_data_t));
    }

    {
        info := type_info(lxb_dom_document_node_cb_t);
        for info.members {
            if it.name == {
                case "insert";
                    assert(it.offset_in_bytes == 0, "lxb_dom_document_node_cb_t.insert has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_dom_document_node_cb_t.insert has unexpected size % instead of 8", it.type.runtime_size);
                case "_remove";
                    assert(it.offset_in_bytes == 8, "lxb_dom_document_node_cb_t._remove has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_dom_document_node_cb_t._remove has unexpected size % instead of 8", it.type.runtime_size);
                case "destroy";
                    assert(it.offset_in_bytes == 16, "lxb_dom_document_node_cb_t.destroy has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_dom_document_node_cb_t.destroy has unexpected size % instead of 8", it.type.runtime_size);
                case "set_value";
                    assert(it.offset_in_bytes == 24, "lxb_dom_document_node_cb_t.set_value has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_dom_document_node_cb_t.set_value has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(lxb_dom_document_node_cb_t) == 32, "lxb_dom_document_node_cb_t has size % instead of 32", size_of(lxb_dom_document_node_cb_t));
    }

    {
        info := type_info(lxb_dom_document);
        for info.members {
            if it.name == {
                case "node";
                    assert(it.offset_in_bytes == 0, "lxb_dom_document.node has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 96, "lxb_dom_document.node has unexpected size % instead of 96", it.type.runtime_size);
                case "compat_mode";
                    assert(it.offset_in_bytes == 96, "lxb_dom_document.compat_mode has unexpected offset % instead of 96", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "lxb_dom_document.compat_mode has unexpected size % instead of 4", it.type.runtime_size);
                case "type";
                    assert(it.offset_in_bytes == 100, "lxb_dom_document.type has unexpected offset % instead of 100", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "lxb_dom_document.type has unexpected size % instead of 4", it.type.runtime_size);
                case "doctype";
                    assert(it.offset_in_bytes == 104, "lxb_dom_document.doctype has unexpected offset % instead of 104", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_dom_document.doctype has unexpected size % instead of 8", it.type.runtime_size);
                case "element";
                    assert(it.offset_in_bytes == 112, "lxb_dom_document.element has unexpected offset % instead of 112", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_dom_document.element has unexpected size % instead of 8", it.type.runtime_size);
                case "create_interface";
                    assert(it.offset_in_bytes == 120, "lxb_dom_document.create_interface has unexpected offset % instead of 120", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_dom_document.create_interface has unexpected size % instead of 8", it.type.runtime_size);
                case "clone_interface";
                    assert(it.offset_in_bytes == 128, "lxb_dom_document.clone_interface has unexpected offset % instead of 128", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_dom_document.clone_interface has unexpected size % instead of 8", it.type.runtime_size);
                case "destroy_interface";
                    assert(it.offset_in_bytes == 136, "lxb_dom_document.destroy_interface has unexpected offset % instead of 136", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_dom_document.destroy_interface has unexpected size % instead of 8", it.type.runtime_size);
                case "node_cb";
                    assert(it.offset_in_bytes == 144, "lxb_dom_document.node_cb has unexpected offset % instead of 144", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_dom_document.node_cb has unexpected size % instead of 8", it.type.runtime_size);
                case "mraw";
                    assert(it.offset_in_bytes == 152, "lxb_dom_document.mraw has unexpected offset % instead of 152", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_dom_document.mraw has unexpected size % instead of 8", it.type.runtime_size);
                case "text";
                    assert(it.offset_in_bytes == 160, "lxb_dom_document.text has unexpected offset % instead of 160", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_dom_document.text has unexpected size % instead of 8", it.type.runtime_size);
                case "tags";
                    assert(it.offset_in_bytes == 168, "lxb_dom_document.tags has unexpected offset % instead of 168", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_dom_document.tags has unexpected size % instead of 8", it.type.runtime_size);
                case "attrs";
                    assert(it.offset_in_bytes == 176, "lxb_dom_document.attrs has unexpected offset % instead of 176", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_dom_document.attrs has unexpected size % instead of 8", it.type.runtime_size);
                case "prefix";
                    assert(it.offset_in_bytes == 184, "lxb_dom_document.prefix has unexpected offset % instead of 184", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_dom_document.prefix has unexpected size % instead of 8", it.type.runtime_size);
                case "ns";
                    assert(it.offset_in_bytes == 192, "lxb_dom_document.ns has unexpected offset % instead of 192", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_dom_document.ns has unexpected size % instead of 8", it.type.runtime_size);
                case "parser";
                    assert(it.offset_in_bytes == 200, "lxb_dom_document.parser has unexpected offset % instead of 200", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_dom_document.parser has unexpected size % instead of 8", it.type.runtime_size);
                case "user";
                    assert(it.offset_in_bytes == 208, "lxb_dom_document.user has unexpected offset % instead of 208", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_dom_document.user has unexpected size % instead of 8", it.type.runtime_size);
                case "css";
                    assert(it.offset_in_bytes == 216, "lxb_dom_document.css has unexpected offset % instead of 216", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_dom_document.css has unexpected size % instead of 8", it.type.runtime_size);
                case "tags_inherited";
                    assert(it.offset_in_bytes == 224, "lxb_dom_document.tags_inherited has unexpected offset % instead of 224", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "lxb_dom_document.tags_inherited has unexpected size % instead of 1", it.type.runtime_size);
                case "ns_inherited";
                    assert(it.offset_in_bytes == 225, "lxb_dom_document.ns_inherited has unexpected offset % instead of 225", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "lxb_dom_document.ns_inherited has unexpected size % instead of 1", it.type.runtime_size);
                case "scripting";
                    assert(it.offset_in_bytes == 226, "lxb_dom_document.scripting has unexpected offset % instead of 226", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "lxb_dom_document.scripting has unexpected size % instead of 1", it.type.runtime_size);
            }
        }
        assert(size_of(lxb_dom_document) == 232, "lxb_dom_document has size % instead of 232", size_of(lxb_dom_document));
    }

    {
        info := type_info(lxb_dom_attr_data_t);
        for info.members {
            if it.name == {
                case "entry";
                    assert(it.offset_in_bytes == 0, "lxb_dom_attr_data_t.entry has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 40, "lxb_dom_attr_data_t.entry has unexpected size % instead of 40", it.type.runtime_size);
                case "attr_id";
                    assert(it.offset_in_bytes == 40, "lxb_dom_attr_data_t.attr_id has unexpected offset % instead of 40", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_dom_attr_data_t.attr_id has unexpected size % instead of 8", it.type.runtime_size);
                case "ref_count";
                    assert(it.offset_in_bytes == 48, "lxb_dom_attr_data_t.ref_count has unexpected offset % instead of 48", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_dom_attr_data_t.ref_count has unexpected size % instead of 8", it.type.runtime_size);
                case "read_only";
                    assert(it.offset_in_bytes == 56, "lxb_dom_attr_data_t.read_only has unexpected offset % instead of 56", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "lxb_dom_attr_data_t.read_only has unexpected size % instead of 1", it.type.runtime_size);
            }
        }
        assert(size_of(lxb_dom_attr_data_t) == 64, "lxb_dom_attr_data_t has size % instead of 64", size_of(lxb_dom_attr_data_t));
    }

    {
        info := type_info(lxb_dom_attr);
        for info.members {
            if it.name == {
                case "node";
                    assert(it.offset_in_bytes == 0, "lxb_dom_attr.node has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 96, "lxb_dom_attr.node has unexpected size % instead of 96", it.type.runtime_size);
                case "upper_name";
                    assert(it.offset_in_bytes == 96, "lxb_dom_attr.upper_name has unexpected offset % instead of 96", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_dom_attr.upper_name has unexpected size % instead of 8", it.type.runtime_size);
                case "qualified_name";
                    assert(it.offset_in_bytes == 104, "lxb_dom_attr.qualified_name has unexpected offset % instead of 104", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_dom_attr.qualified_name has unexpected size % instead of 8", it.type.runtime_size);
                case "value";
                    assert(it.offset_in_bytes == 112, "lxb_dom_attr.value has unexpected offset % instead of 112", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_dom_attr.value has unexpected size % instead of 8", it.type.runtime_size);
                case "owner";
                    assert(it.offset_in_bytes == 120, "lxb_dom_attr.owner has unexpected offset % instead of 120", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_dom_attr.owner has unexpected size % instead of 8", it.type.runtime_size);
                case "next";
                    assert(it.offset_in_bytes == 128, "lxb_dom_attr.next has unexpected offset % instead of 128", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_dom_attr.next has unexpected size % instead of 8", it.type.runtime_size);
                case "prev";
                    assert(it.offset_in_bytes == 136, "lxb_dom_attr.prev has unexpected offset % instead of 136", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_dom_attr.prev has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(lxb_dom_attr) == 144, "lxb_dom_attr has size % instead of 144", size_of(lxb_dom_attr));
    }

    {
        info := type_info(lxb_tag_data_t);
        for info.members {
            if it.name == {
                case "entry";
                    assert(it.offset_in_bytes == 0, "lxb_tag_data_t.entry has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 40, "lxb_tag_data_t.entry has unexpected size % instead of 40", it.type.runtime_size);
                case "tag_id";
                    assert(it.offset_in_bytes == 40, "lxb_tag_data_t.tag_id has unexpected offset % instead of 40", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_tag_data_t.tag_id has unexpected size % instead of 8", it.type.runtime_size);
                case "ref_count";
                    assert(it.offset_in_bytes == 48, "lxb_tag_data_t.ref_count has unexpected offset % instead of 48", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_tag_data_t.ref_count has unexpected size % instead of 8", it.type.runtime_size);
                case "read_only";
                    assert(it.offset_in_bytes == 56, "lxb_tag_data_t.read_only has unexpected offset % instead of 56", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "lxb_tag_data_t.read_only has unexpected size % instead of 1", it.type.runtime_size);
            }
        }
        assert(size_of(lxb_tag_data_t) == 64, "lxb_tag_data_t has size % instead of 64", size_of(lxb_tag_data_t));
    }

    {
        info := type_info(lexbor_sbst_entry_static_t);
        for info.members {
            if it.name == {
                case "key";
                    assert(it.offset_in_bytes == 0, "lexbor_sbst_entry_static_t.key has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "lexbor_sbst_entry_static_t.key has unexpected size % instead of 1", it.type.runtime_size);
                case "value";
                    assert(it.offset_in_bytes == 8, "lexbor_sbst_entry_static_t.value has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lexbor_sbst_entry_static_t.value has unexpected size % instead of 8", it.type.runtime_size);
                case "value_len";
                    assert(it.offset_in_bytes == 16, "lexbor_sbst_entry_static_t.value_len has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lexbor_sbst_entry_static_t.value_len has unexpected size % instead of 8", it.type.runtime_size);
                case "left";
                    assert(it.offset_in_bytes == 24, "lexbor_sbst_entry_static_t.left has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lexbor_sbst_entry_static_t.left has unexpected size % instead of 8", it.type.runtime_size);
                case "right";
                    assert(it.offset_in_bytes == 32, "lexbor_sbst_entry_static_t.right has unexpected offset % instead of 32", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lexbor_sbst_entry_static_t.right has unexpected size % instead of 8", it.type.runtime_size);
                case "next";
                    assert(it.offset_in_bytes == 40, "lexbor_sbst_entry_static_t.next has unexpected offset % instead of 40", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lexbor_sbst_entry_static_t.next has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(lexbor_sbst_entry_static_t) == 48, "lexbor_sbst_entry_static_t has size % instead of 48", size_of(lexbor_sbst_entry_static_t));
    }

    {
        info := type_info(lexbor_array_obj_t);
        for info.members {
            if it.name == {
                case "list";
                    assert(it.offset_in_bytes == 0, "lexbor_array_obj_t.list has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lexbor_array_obj_t.list has unexpected size % instead of 8", it.type.runtime_size);
                case "size";
                    assert(it.offset_in_bytes == 8, "lexbor_array_obj_t.size has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lexbor_array_obj_t.size has unexpected size % instead of 8", it.type.runtime_size);
                case "length";
                    assert(it.offset_in_bytes == 16, "lexbor_array_obj_t.length has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lexbor_array_obj_t.length has unexpected size % instead of 8", it.type.runtime_size);
                case "struct_size";
                    assert(it.offset_in_bytes == 24, "lexbor_array_obj_t.struct_size has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lexbor_array_obj_t.struct_size has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(lexbor_array_obj_t) == 32, "lexbor_array_obj_t has size % instead of 32", size_of(lexbor_array_obj_t));
    }

    {
        info := type_info(lxb_html_token_attr);
        for info.members {
            if it.name == {
                case "name_begin";
                    assert(it.offset_in_bytes == 0, "lxb_html_token_attr.name_begin has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_html_token_attr.name_begin has unexpected size % instead of 8", it.type.runtime_size);
                case "name_end";
                    assert(it.offset_in_bytes == 8, "lxb_html_token_attr.name_end has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_html_token_attr.name_end has unexpected size % instead of 8", it.type.runtime_size);
                case "value_begin";
                    assert(it.offset_in_bytes == 16, "lxb_html_token_attr.value_begin has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_html_token_attr.value_begin has unexpected size % instead of 8", it.type.runtime_size);
                case "value_end";
                    assert(it.offset_in_bytes == 24, "lxb_html_token_attr.value_end has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_html_token_attr.value_end has unexpected size % instead of 8", it.type.runtime_size);
                case "name";
                    assert(it.offset_in_bytes == 32, "lxb_html_token_attr.name has unexpected offset % instead of 32", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_html_token_attr.name has unexpected size % instead of 8", it.type.runtime_size);
                case "value";
                    assert(it.offset_in_bytes == 40, "lxb_html_token_attr.value has unexpected offset % instead of 40", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_html_token_attr.value has unexpected size % instead of 8", it.type.runtime_size);
                case "value_size";
                    assert(it.offset_in_bytes == 48, "lxb_html_token_attr.value_size has unexpected offset % instead of 48", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_html_token_attr.value_size has unexpected size % instead of 8", it.type.runtime_size);
                case "next";
                    assert(it.offset_in_bytes == 56, "lxb_html_token_attr.next has unexpected offset % instead of 56", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_html_token_attr.next has unexpected size % instead of 8", it.type.runtime_size);
                case "prev";
                    assert(it.offset_in_bytes == 64, "lxb_html_token_attr.prev has unexpected offset % instead of 64", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_html_token_attr.prev has unexpected size % instead of 8", it.type.runtime_size);
                case "type";
                    assert(it.offset_in_bytes == 72, "lxb_html_token_attr.type has unexpected offset % instead of 72", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "lxb_html_token_attr.type has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(lxb_html_token_attr) == 80, "lxb_html_token_attr has size % instead of 80", size_of(lxb_html_token_attr));
    }

    {
        info := type_info(lxb_html_token_t);
        for info.members {
            if it.name == {
                case "begin";
                    assert(it.offset_in_bytes == 0, "lxb_html_token_t.begin has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_html_token_t.begin has unexpected size % instead of 8", it.type.runtime_size);
                case "end";
                    assert(it.offset_in_bytes == 8, "lxb_html_token_t.end has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_html_token_t.end has unexpected size % instead of 8", it.type.runtime_size);
                case "text_start";
                    assert(it.offset_in_bytes == 16, "lxb_html_token_t.text_start has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_html_token_t.text_start has unexpected size % instead of 8", it.type.runtime_size);
                case "text_end";
                    assert(it.offset_in_bytes == 24, "lxb_html_token_t.text_end has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_html_token_t.text_end has unexpected size % instead of 8", it.type.runtime_size);
                case "attr_first";
                    assert(it.offset_in_bytes == 32, "lxb_html_token_t.attr_first has unexpected offset % instead of 32", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_html_token_t.attr_first has unexpected size % instead of 8", it.type.runtime_size);
                case "attr_last";
                    assert(it.offset_in_bytes == 40, "lxb_html_token_t.attr_last has unexpected offset % instead of 40", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_html_token_t.attr_last has unexpected size % instead of 8", it.type.runtime_size);
                case "base_element";
                    assert(it.offset_in_bytes == 48, "lxb_html_token_t.base_element has unexpected offset % instead of 48", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_html_token_t.base_element has unexpected size % instead of 8", it.type.runtime_size);
                case "null_count";
                    assert(it.offset_in_bytes == 56, "lxb_html_token_t.null_count has unexpected offset % instead of 56", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_html_token_t.null_count has unexpected size % instead of 8", it.type.runtime_size);
                case "tag_id";
                    assert(it.offset_in_bytes == 64, "lxb_html_token_t.tag_id has unexpected offset % instead of 64", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_html_token_t.tag_id has unexpected size % instead of 8", it.type.runtime_size);
                case "type";
                    assert(it.offset_in_bytes == 72, "lxb_html_token_t.type has unexpected offset % instead of 72", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "lxb_html_token_t.type has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(lxb_html_token_t) == 80, "lxb_html_token_t has size % instead of 80", size_of(lxb_html_token_t));
    }

    {
        info := type_info(lxb_html_tokenizer);
        for info.members {
            if it.name == {
                case "state";
                    assert(it.offset_in_bytes == 0, "lxb_html_tokenizer.state has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_html_tokenizer.state has unexpected size % instead of 8", it.type.runtime_size);
                case "state_return";
                    assert(it.offset_in_bytes == 8, "lxb_html_tokenizer.state_return has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_html_tokenizer.state_return has unexpected size % instead of 8", it.type.runtime_size);
                case "callback_token_done";
                    assert(it.offset_in_bytes == 16, "lxb_html_tokenizer.callback_token_done has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_html_tokenizer.callback_token_done has unexpected size % instead of 8", it.type.runtime_size);
                case "callback_token_ctx";
                    assert(it.offset_in_bytes == 24, "lxb_html_tokenizer.callback_token_ctx has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_html_tokenizer.callback_token_ctx has unexpected size % instead of 8", it.type.runtime_size);
                case "tags";
                    assert(it.offset_in_bytes == 32, "lxb_html_tokenizer.tags has unexpected offset % instead of 32", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_html_tokenizer.tags has unexpected size % instead of 8", it.type.runtime_size);
                case "attrs";
                    assert(it.offset_in_bytes == 40, "lxb_html_tokenizer.attrs has unexpected offset % instead of 40", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_html_tokenizer.attrs has unexpected size % instead of 8", it.type.runtime_size);
                case "attrs_mraw";
                    assert(it.offset_in_bytes == 48, "lxb_html_tokenizer.attrs_mraw has unexpected offset % instead of 48", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_html_tokenizer.attrs_mraw has unexpected size % instead of 8", it.type.runtime_size);
                case "mraw";
                    assert(it.offset_in_bytes == 56, "lxb_html_tokenizer.mraw has unexpected offset % instead of 56", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_html_tokenizer.mraw has unexpected size % instead of 8", it.type.runtime_size);
                case "token";
                    assert(it.offset_in_bytes == 64, "lxb_html_tokenizer.token has unexpected offset % instead of 64", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_html_tokenizer.token has unexpected size % instead of 8", it.type.runtime_size);
                case "dobj_token";
                    assert(it.offset_in_bytes == 72, "lxb_html_tokenizer.dobj_token has unexpected offset % instead of 72", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_html_tokenizer.dobj_token has unexpected size % instead of 8", it.type.runtime_size);
                case "dobj_token_attr";
                    assert(it.offset_in_bytes == 80, "lxb_html_tokenizer.dobj_token_attr has unexpected offset % instead of 80", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_html_tokenizer.dobj_token_attr has unexpected size % instead of 8", it.type.runtime_size);
                case "parse_errors";
                    assert(it.offset_in_bytes == 88, "lxb_html_tokenizer.parse_errors has unexpected offset % instead of 88", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_html_tokenizer.parse_errors has unexpected size % instead of 8", it.type.runtime_size);
                case "tree";
                    assert(it.offset_in_bytes == 96, "lxb_html_tokenizer.tree has unexpected offset % instead of 96", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_html_tokenizer.tree has unexpected size % instead of 8", it.type.runtime_size);
                case "markup";
                    assert(it.offset_in_bytes == 104, "lxb_html_tokenizer.markup has unexpected offset % instead of 104", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_html_tokenizer.markup has unexpected size % instead of 8", it.type.runtime_size);
                case "temp";
                    assert(it.offset_in_bytes == 112, "lxb_html_tokenizer.temp has unexpected offset % instead of 112", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_html_tokenizer.temp has unexpected size % instead of 8", it.type.runtime_size);
                case "tmp_tag_id";
                    assert(it.offset_in_bytes == 120, "lxb_html_tokenizer.tmp_tag_id has unexpected offset % instead of 120", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_html_tokenizer.tmp_tag_id has unexpected size % instead of 8", it.type.runtime_size);
                case "start";
                    assert(it.offset_in_bytes == 128, "lxb_html_tokenizer.start has unexpected offset % instead of 128", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_html_tokenizer.start has unexpected size % instead of 8", it.type.runtime_size);
                case "pos";
                    assert(it.offset_in_bytes == 136, "lxb_html_tokenizer.pos has unexpected offset % instead of 136", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_html_tokenizer.pos has unexpected size % instead of 8", it.type.runtime_size);
                case "end";
                    assert(it.offset_in_bytes == 144, "lxb_html_tokenizer.end has unexpected offset % instead of 144", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_html_tokenizer.end has unexpected size % instead of 8", it.type.runtime_size);
                case "begin";
                    assert(it.offset_in_bytes == 152, "lxb_html_tokenizer.begin has unexpected offset % instead of 152", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_html_tokenizer.begin has unexpected size % instead of 8", it.type.runtime_size);
                case "last";
                    assert(it.offset_in_bytes == 160, "lxb_html_tokenizer.last has unexpected offset % instead of 160", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_html_tokenizer.last has unexpected size % instead of 8", it.type.runtime_size);
                case "entity";
                    assert(it.offset_in_bytes == 168, "lxb_html_tokenizer.entity has unexpected offset % instead of 168", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_html_tokenizer.entity has unexpected size % instead of 8", it.type.runtime_size);
                case "entity_match";
                    assert(it.offset_in_bytes == 176, "lxb_html_tokenizer.entity_match has unexpected offset % instead of 176", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_html_tokenizer.entity_match has unexpected size % instead of 8", it.type.runtime_size);
                case "entity_start";
                    assert(it.offset_in_bytes == 184, "lxb_html_tokenizer.entity_start has unexpected offset % instead of 184", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_html_tokenizer.entity_start has unexpected size % instead of 8", it.type.runtime_size);
                case "entity_end";
                    assert(it.offset_in_bytes == 192, "lxb_html_tokenizer.entity_end has unexpected offset % instead of 192", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_html_tokenizer.entity_end has unexpected size % instead of 8", it.type.runtime_size);
                case "entity_length";
                    assert(it.offset_in_bytes == 200, "lxb_html_tokenizer.entity_length has unexpected offset % instead of 200", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "lxb_html_tokenizer.entity_length has unexpected size % instead of 4", it.type.runtime_size);
                case "entity_number";
                    assert(it.offset_in_bytes == 204, "lxb_html_tokenizer.entity_number has unexpected offset % instead of 204", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "lxb_html_tokenizer.entity_number has unexpected size % instead of 4", it.type.runtime_size);
                case "is_attribute";
                    assert(it.offset_in_bytes == 208, "lxb_html_tokenizer.is_attribute has unexpected offset % instead of 208", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "lxb_html_tokenizer.is_attribute has unexpected size % instead of 1", it.type.runtime_size);
                case "opt";
                    assert(it.offset_in_bytes == 212, "lxb_html_tokenizer.opt has unexpected offset % instead of 212", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "lxb_html_tokenizer.opt has unexpected size % instead of 4", it.type.runtime_size);
                case "status";
                    assert(it.offset_in_bytes == 216, "lxb_html_tokenizer.status has unexpected offset % instead of 216", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "lxb_html_tokenizer.status has unexpected size % instead of 4", it.type.runtime_size);
                case "is_eof";
                    assert(it.offset_in_bytes == 220, "lxb_html_tokenizer.is_eof has unexpected offset % instead of 220", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "lxb_html_tokenizer.is_eof has unexpected size % instead of 1", it.type.runtime_size);
                case "base";
                    assert(it.offset_in_bytes == 224, "lxb_html_tokenizer.base has unexpected offset % instead of 224", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_html_tokenizer.base has unexpected size % instead of 8", it.type.runtime_size);
                case "ref_count";
                    assert(it.offset_in_bytes == 232, "lxb_html_tokenizer.ref_count has unexpected offset % instead of 232", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_html_tokenizer.ref_count has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(lxb_html_tokenizer) == 240, "lxb_html_tokenizer has size % instead of 240", size_of(lxb_html_tokenizer));
    }

    {
        info := type_info(lxb_html_tokenizer_error_t);
        for info.members {
            if it.name == {
                case "pos";
                    assert(it.offset_in_bytes == 0, "lxb_html_tokenizer_error_t.pos has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_html_tokenizer_error_t.pos has unexpected size % instead of 8", it.type.runtime_size);
                case "id";
                    assert(it.offset_in_bytes == 8, "lxb_html_tokenizer_error_t.id has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "lxb_html_tokenizer_error_t.id has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(lxb_html_tokenizer_error_t) == 16, "lxb_html_tokenizer_error_t has size % instead of 16", size_of(lxb_html_tokenizer_error_t));
    }

    {
        info := type_info(lxb_html_document_parse_cb_t);
        for info.members {
            if it.name == {
                case "script";
                    assert(it.offset_in_bytes == 0, "lxb_html_document_parse_cb_t.script has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_html_document_parse_cb_t.script has unexpected size % instead of 8", it.type.runtime_size);
                case "style";
                    assert(it.offset_in_bytes == 8, "lxb_html_document_parse_cb_t.style has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_html_document_parse_cb_t.style has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(lxb_html_document_parse_cb_t) == 16, "lxb_html_document_parse_cb_t has size % instead of 16", size_of(lxb_html_document_parse_cb_t));
    }

    {
        info := type_info(lxb_html_document);
        for info.members {
            if it.name == {
                case "dom_document";
                    assert(it.offset_in_bytes == 0, "lxb_html_document.dom_document has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 232, "lxb_html_document.dom_document has unexpected size % instead of 232", it.type.runtime_size);
                case "iframe_srcdoc";
                    assert(it.offset_in_bytes == 232, "lxb_html_document.iframe_srcdoc has unexpected offset % instead of 232", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_html_document.iframe_srcdoc has unexpected size % instead of 8", it.type.runtime_size);
                case "head";
                    assert(it.offset_in_bytes == 240, "lxb_html_document.head has unexpected offset % instead of 240", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_html_document.head has unexpected size % instead of 8", it.type.runtime_size);
                case "body";
                    assert(it.offset_in_bytes == 248, "lxb_html_document.body has unexpected offset % instead of 248", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_html_document.body has unexpected size % instead of 8", it.type.runtime_size);
                case "parse_cb";
                    assert(it.offset_in_bytes == 256, "lxb_html_document.parse_cb has unexpected offset % instead of 256", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_html_document.parse_cb has unexpected size % instead of 8", it.type.runtime_size);
                case "done";
                    assert(it.offset_in_bytes == 264, "lxb_html_document.done has unexpected offset % instead of 264", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_html_document.done has unexpected size % instead of 8", it.type.runtime_size);
                case "ready_state";
                    assert(it.offset_in_bytes == 272, "lxb_html_document.ready_state has unexpected offset % instead of 272", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "lxb_html_document.ready_state has unexpected size % instead of 4", it.type.runtime_size);
                case "opt";
                    assert(it.offset_in_bytes == 276, "lxb_html_document.opt has unexpected offset % instead of 276", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "lxb_html_document.opt has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(lxb_html_document) == 280, "lxb_html_document has size % instead of 280", size_of(lxb_html_document));
    }

    {
        info := type_info(lxb_html_tag_fixname_t);
        for info.members {
            if it.name == {
                case "name";
                    assert(it.offset_in_bytes == 0, "lxb_html_tag_fixname_t.name has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_html_tag_fixname_t.name has unexpected size % instead of 8", it.type.runtime_size);
                case "len";
                    assert(it.offset_in_bytes == 8, "lxb_html_tag_fixname_t.len has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "lxb_html_tag_fixname_t.len has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(lxb_html_tag_fixname_t) == 16, "lxb_html_tag_fixname_t has size % instead of 16", size_of(lxb_html_tag_fixname_t));
    }

    {
        info := type_info(lxb_html_tree_error_t);
        for info.members {
            if it.name == {
                case "id";
                    assert(it.offset_in_bytes == 0, "lxb_html_tree_error_t.id has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "lxb_html_tree_error_t.id has unexpected size % instead of 4", it.type.runtime_size);
                case "begin";
                    assert(it.offset_in_bytes == 8, "lxb_html_tree_error_t.begin has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_html_tree_error_t.begin has unexpected size % instead of 8", it.type.runtime_size);
                case "end";
                    assert(it.offset_in_bytes == 16, "lxb_html_tree_error_t.end has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_html_tree_error_t.end has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(lxb_html_tree_error_t) == 24, "lxb_html_tree_error_t has size % instead of 24", size_of(lxb_html_tree_error_t));
    }

    {
        info := type_info(lxb_html_tree_pending_table_t);
        for info.members {
            if it.name == {
                case "text_list";
                    assert(it.offset_in_bytes == 0, "lxb_html_tree_pending_table_t.text_list has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_html_tree_pending_table_t.text_list has unexpected size % instead of 8", it.type.runtime_size);
                case "have_non_ws";
                    assert(it.offset_in_bytes == 8, "lxb_html_tree_pending_table_t.have_non_ws has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "lxb_html_tree_pending_table_t.have_non_ws has unexpected size % instead of 1", it.type.runtime_size);
            }
        }
        assert(size_of(lxb_html_tree_pending_table_t) == 16, "lxb_html_tree_pending_table_t has size % instead of 16", size_of(lxb_html_tree_pending_table_t));
    }

    {
        info := type_info(lxb_html_tree);
        for info.members {
            if it.name == {
                case "tkz_ref";
                    assert(it.offset_in_bytes == 0, "lxb_html_tree.tkz_ref has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_html_tree.tkz_ref has unexpected size % instead of 8", it.type.runtime_size);
                case "document";
                    assert(it.offset_in_bytes == 8, "lxb_html_tree.document has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_html_tree.document has unexpected size % instead of 8", it.type.runtime_size);
                case "fragment";
                    assert(it.offset_in_bytes == 16, "lxb_html_tree.fragment has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_html_tree.fragment has unexpected size % instead of 8", it.type.runtime_size);
                case "form";
                    assert(it.offset_in_bytes == 24, "lxb_html_tree.form has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_html_tree.form has unexpected size % instead of 8", it.type.runtime_size);
                case "open_elements";
                    assert(it.offset_in_bytes == 32, "lxb_html_tree.open_elements has unexpected offset % instead of 32", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_html_tree.open_elements has unexpected size % instead of 8", it.type.runtime_size);
                case "active_formatting";
                    assert(it.offset_in_bytes == 40, "lxb_html_tree.active_formatting has unexpected offset % instead of 40", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_html_tree.active_formatting has unexpected size % instead of 8", it.type.runtime_size);
                case "template_insertion_modes";
                    assert(it.offset_in_bytes == 48, "lxb_html_tree.template_insertion_modes has unexpected offset % instead of 48", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_html_tree.template_insertion_modes has unexpected size % instead of 8", it.type.runtime_size);
                case "pending_table";
                    assert(it.offset_in_bytes == 56, "lxb_html_tree.pending_table has unexpected offset % instead of 56", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "lxb_html_tree.pending_table has unexpected size % instead of 16", it.type.runtime_size);
                case "parse_errors";
                    assert(it.offset_in_bytes == 72, "lxb_html_tree.parse_errors has unexpected offset % instead of 72", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_html_tree.parse_errors has unexpected size % instead of 8", it.type.runtime_size);
                case "foster_parenting";
                    assert(it.offset_in_bytes == 80, "lxb_html_tree.foster_parenting has unexpected offset % instead of 80", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "lxb_html_tree.foster_parenting has unexpected size % instead of 1", it.type.runtime_size);
                case "frameset_ok";
                    assert(it.offset_in_bytes == 81, "lxb_html_tree.frameset_ok has unexpected offset % instead of 81", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "lxb_html_tree.frameset_ok has unexpected size % instead of 1", it.type.runtime_size);
                case "scripting";
                    assert(it.offset_in_bytes == 82, "lxb_html_tree.scripting has unexpected offset % instead of 82", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "lxb_html_tree.scripting has unexpected size % instead of 1", it.type.runtime_size);
                case "mode";
                    assert(it.offset_in_bytes == 88, "lxb_html_tree.mode has unexpected offset % instead of 88", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_html_tree.mode has unexpected size % instead of 8", it.type.runtime_size);
                case "original_mode";
                    assert(it.offset_in_bytes == 96, "lxb_html_tree.original_mode has unexpected offset % instead of 96", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_html_tree.original_mode has unexpected size % instead of 8", it.type.runtime_size);
                case "before_append_attr";
                    assert(it.offset_in_bytes == 104, "lxb_html_tree.before_append_attr has unexpected offset % instead of 104", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_html_tree.before_append_attr has unexpected size % instead of 8", it.type.runtime_size);
                case "status";
                    assert(it.offset_in_bytes == 112, "lxb_html_tree.status has unexpected offset % instead of 112", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "lxb_html_tree.status has unexpected size % instead of 4", it.type.runtime_size);
                case "ref_count";
                    assert(it.offset_in_bytes == 120, "lxb_html_tree.ref_count has unexpected offset % instead of 120", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_html_tree.ref_count has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(lxb_html_tree) == 128, "lxb_html_tree has size % instead of 128", size_of(lxb_html_tree));
    }

    {
        info := type_info(lxb_html_parser_t);
        for info.members {
            if it.name == {
                case "tkz";
                    assert(it.offset_in_bytes == 0, "lxb_html_parser_t.tkz has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_html_parser_t.tkz has unexpected size % instead of 8", it.type.runtime_size);
                case "tree";
                    assert(it.offset_in_bytes == 8, "lxb_html_parser_t.tree has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_html_parser_t.tree has unexpected size % instead of 8", it.type.runtime_size);
                case "original_tree";
                    assert(it.offset_in_bytes == 16, "lxb_html_parser_t.original_tree has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_html_parser_t.original_tree has unexpected size % instead of 8", it.type.runtime_size);
                case "root";
                    assert(it.offset_in_bytes == 24, "lxb_html_parser_t.root has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_html_parser_t.root has unexpected size % instead of 8", it.type.runtime_size);
                case "form";
                    assert(it.offset_in_bytes == 32, "lxb_html_parser_t.form has unexpected offset % instead of 32", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_html_parser_t.form has unexpected size % instead of 8", it.type.runtime_size);
                case "state";
                    assert(it.offset_in_bytes == 40, "lxb_html_parser_t.state has unexpected offset % instead of 40", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "lxb_html_parser_t.state has unexpected size % instead of 4", it.type.runtime_size);
                case "status";
                    assert(it.offset_in_bytes == 44, "lxb_html_parser_t.status has unexpected offset % instead of 44", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "lxb_html_parser_t.status has unexpected size % instead of 4", it.type.runtime_size);
                case "ref_count";
                    assert(it.offset_in_bytes == 48, "lxb_html_parser_t.ref_count has unexpected offset % instead of 48", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_html_parser_t.ref_count has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(lxb_html_parser_t) == 56, "lxb_html_parser_t has size % instead of 56", size_of(lxb_html_parser_t));
    }

    {
        info := type_info(lexbor_avl_node);
        for info.members {
            if it.name == {
                case "type";
                    assert(it.offset_in_bytes == 0, "lexbor_avl_node.type has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lexbor_avl_node.type has unexpected size % instead of 8", it.type.runtime_size);
                case "height";
                    assert(it.offset_in_bytes == 8, "lexbor_avl_node.height has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 2, "lexbor_avl_node.height has unexpected size % instead of 2", it.type.runtime_size);
                case "value";
                    assert(it.offset_in_bytes == 16, "lexbor_avl_node.value has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lexbor_avl_node.value has unexpected size % instead of 8", it.type.runtime_size);
                case "left";
                    assert(it.offset_in_bytes == 24, "lexbor_avl_node.left has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lexbor_avl_node.left has unexpected size % instead of 8", it.type.runtime_size);
                case "right";
                    assert(it.offset_in_bytes == 32, "lexbor_avl_node.right has unexpected offset % instead of 32", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lexbor_avl_node.right has unexpected size % instead of 8", it.type.runtime_size);
                case "parent";
                    assert(it.offset_in_bytes == 40, "lexbor_avl_node.parent has unexpected offset % instead of 40", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lexbor_avl_node.parent has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(lexbor_avl_node) == 48, "lexbor_avl_node has size % instead of 48", size_of(lexbor_avl_node));
    }

    {
        info := type_info(lexbor_avl);
        for info.members {
            if it.name == {
                case "nodes";
                    assert(it.offset_in_bytes == 0, "lexbor_avl.nodes has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lexbor_avl.nodes has unexpected size % instead of 8", it.type.runtime_size);
                case "last_right";
                    assert(it.offset_in_bytes == 8, "lexbor_avl.last_right has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lexbor_avl.last_right has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(lexbor_avl) == 16, "lexbor_avl has size % instead of 16", size_of(lexbor_avl));
    }

    {
        info := type_info(lxb_dom_element);
        for info.members {
            if it.name == {
                case "node";
                    assert(it.offset_in_bytes == 0, "lxb_dom_element.node has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 96, "lxb_dom_element.node has unexpected size % instead of 96", it.type.runtime_size);
                case "upper_name";
                    assert(it.offset_in_bytes == 96, "lxb_dom_element.upper_name has unexpected offset % instead of 96", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_dom_element.upper_name has unexpected size % instead of 8", it.type.runtime_size);
                case "qualified_name";
                    assert(it.offset_in_bytes == 104, "lxb_dom_element.qualified_name has unexpected offset % instead of 104", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_dom_element.qualified_name has unexpected size % instead of 8", it.type.runtime_size);
                case "is_value";
                    assert(it.offset_in_bytes == 112, "lxb_dom_element.is_value has unexpected offset % instead of 112", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_dom_element.is_value has unexpected size % instead of 8", it.type.runtime_size);
                case "first_attr";
                    assert(it.offset_in_bytes == 120, "lxb_dom_element.first_attr has unexpected offset % instead of 120", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_dom_element.first_attr has unexpected size % instead of 8", it.type.runtime_size);
                case "last_attr";
                    assert(it.offset_in_bytes == 128, "lxb_dom_element.last_attr has unexpected offset % instead of 128", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_dom_element.last_attr has unexpected size % instead of 8", it.type.runtime_size);
                case "attr_id";
                    assert(it.offset_in_bytes == 136, "lxb_dom_element.attr_id has unexpected offset % instead of 136", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_dom_element.attr_id has unexpected size % instead of 8", it.type.runtime_size);
                case "attr_class";
                    assert(it.offset_in_bytes == 144, "lxb_dom_element.attr_class has unexpected offset % instead of 144", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_dom_element.attr_class has unexpected size % instead of 8", it.type.runtime_size);
                case "style";
                    assert(it.offset_in_bytes == 152, "lxb_dom_element.style has unexpected offset % instead of 152", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_dom_element.style has unexpected size % instead of 8", it.type.runtime_size);
                case "list";
                    assert(it.offset_in_bytes == 160, "lxb_dom_element.list has unexpected offset % instead of 160", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "lxb_dom_element.list has unexpected size % instead of 8", it.type.runtime_size);
                case "custom_state";
                    assert(it.offset_in_bytes == 168, "lxb_dom_element.custom_state has unexpected offset % instead of 168", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "lxb_dom_element.custom_state has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(lxb_dom_element) == 176, "lxb_dom_element has size % instead of 176", size_of(lxb_dom_element));
    }
}

