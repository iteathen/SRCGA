.class public Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
.super Lcom/sun/xml/stream/XMLScanner;
.source "XMLDocumentFragmentScannerImpl.java"

# interfaces
.implements Lorg/apache/xerces/xni/parser/XMLDocumentScanner;
.implements Lorg/apache/xerces/xni/parser/XMLComponent;
.implements Lcom/sun/xml/stream/XMLEntityHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;,
        Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$Driver;,
        Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;,
        Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;,
        Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$Element;
    }
.end annotation


# static fields
.field protected static final DEBUG:Z = false

.field protected static final DEBUG_COALESCE:Z = false

.field protected static final DEBUG_CONTENT_SCANNING:Z = false

.field private static final DEBUG_DISPATCHER:Z = false

.field protected static final DEBUG_NEXT:Z = false

.field private static final DEBUG_SCANNER_STATE:Z = false

.field static final DEBUG_SKIP_ALGORITHM:Z = false

.field static final ELEMENT_ARRAY_LENGTH:S = 0xc8s

.field private static final FEATURE_DEFAULTS:[Ljava/lang/Boolean;

.field static final MAX_DEPTH_LIMIT:S = 0x5s

.field static final MAX_POINTER_AT_A_DEPTH:S = 0x4s

.field protected static final NAMESPACES:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field protected static final NOTIFY_BUILTIN_REFS:Ljava/lang/String; = "http://apache.org/xml/features/scanner/notify-builtin-refs"

.field private static final PROPERTY_DEFAULTS:[Ljava/lang/Object;

.field private static final RECOGNIZED_FEATURES:[Ljava/lang/String;

.field private static final RECOGNIZED_PROPERTIES:[Ljava/lang/String;

.field protected static final SCANNER_STATE_ATTRIBUTE:I = 0x1d

.field protected static final SCANNER_STATE_ATTRIBUTE_VALUE:I = 0x1e

.field protected static final SCANNER_STATE_BUILT_IN_REFS:I = 0x29

.field protected static final SCANNER_STATE_CDATA:I = 0x23

.field protected static final SCANNER_STATE_CHARACTER_DATA:I = 0x25

.field protected static final SCANNER_STATE_CHAR_REFERENCE:I = 0x28

.field protected static final SCANNER_STATE_COMMENT:I = 0x1b

.field protected static final SCANNER_STATE_CONTENT:I = 0x16

.field protected static final SCANNER_STATE_DOCTYPE:I = 0x18

.field protected static final SCANNER_STATE_END_ELEMENT_TAG:I = 0x27

.field protected static final SCANNER_STATE_END_OF_INPUT:I = 0x21

.field protected static final SCANNER_STATE_PI:I = 0x17

.field protected static final SCANNER_STATE_REFERENCE:I = 0x1c

.field protected static final SCANNER_STATE_ROOT_ELEMENT:I = 0x1a

.field protected static final SCANNER_STATE_START_ELEMENT_TAG:I = 0x26

.field protected static final SCANNER_STATE_START_OF_MARKUP:I = 0x15

.field protected static final SCANNER_STATE_TERMINATED:I = 0x22

.field protected static final SCANNER_STATE_TEXT_DECL:I = 0x24

.field protected static final SCANNER_STATE_XML_DECL:I = 0x19

.field protected static final cdata:[C

.field protected static final endTag:[C

.field protected static final xmlDecl:[C


# instance fields
.field protected dtdGrammarUtil:Lcom/sun/xml/stream/dtd/DTDGrammarUtil;

.field protected fAdd:Z

.field protected fAddDefaultAttr:Z

.field protected fAttributeQName:Lorg/apache/xerces/xni/QName;

.field protected fAttributes:Lorg/apache/xerces/util/XMLAttributesIteratorImpl;

.field protected fContentBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

.field protected fContentDriver:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$Driver;

.field protected fCurrentElement:Lorg/apache/xerces/xni/QName;

.field private fCurrentEntityName:Ljava/lang/String;

.field protected fDeclaredEncoding:Ljava/lang/String;

.field protected fDisallowDoctype:Z

.field protected fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

.field protected fDriver:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$Driver;

.field fElementArray:[Ljava/lang/String;

.field fElementPointer:S

.field protected fElementQName:Lorg/apache/xerces/xni/QName;

.field protected fElementRawname:Ljava/lang/String;

.field protected fElementStack:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;

.field protected fElementStack2:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;

.field protected fEmptyElement:Z

.field protected fEntityStack:[I

.field protected fEntityStore:Lcom/sun/xml/stream/XMLEntityStorage;

.field protected fHasExternalDTD:Z

.field protected fInScanContent:Z

.field protected fIsCoalesce:Z

.field fLastPointerLocation:S

.field protected fLastSectionWasCData:Z

.field protected fLastSectionWasCharacterData:Z

.field protected fLastSectionWasEntityReference:Z

.field protected fMarkupDepth:I

.field protected fNamespaces:Z

.field protected fNotifyBuiltInRefs:Z

.field protected fPIData:Lorg/apache/xerces/xni/XMLString;

.field protected fPITarget:Ljava/lang/String;

.field fPointerInfo:[[S

.field protected fReplaceEntityReferences:Z

.field protected fReportCdataEvent:Z

.field protected fScanToEnd:Z

.field protected fScannerState:I

.field protected fShouldSkip:Z

.field private final fSingleChar:[C

.field protected fSkip:Z

.field protected fStandalone:Z

.field protected fStandaloneSet:Z

.field protected fStringBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

.field protected fStringBuffer2:Lorg/apache/xerces/util/XMLStringBuffer;

.field private fStrings:[Ljava/lang/String;

.field protected fSupportExternalEntities:Z

.field protected fTempString:Lorg/apache/xerces/xni/XMLString;

.field protected fTempString2:Lorg/apache/xerces/xni/XMLString;

.field fUsebuffer:Z

.field protected fVersion:Ljava/lang/String;

.field protected foundBuiltInRefs:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 189
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string v3, "http://xml.org/sax/features/namespaces"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const-string v3, "http://xml.org/sax/features/validation"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    const-string v3, "http://apache.org/xml/features/scanner/notify-builtin-refs"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    const-string v3, "http://apache.org/xml/features/scanner/notify-char-refs"

    aput-object v3, v1, v2

    sput-object v0, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    .line 197
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v3, v1, v2

    sput-object v0, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

    .line 205
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string v3, "http://apache.org/xml/properties/internal/symbol-table"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const-string v3, "http://apache.org/xml/properties/internal/error-reporter"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    const-string v3, "http://apache.org/xml/properties/internal/entity-manager"

    aput-object v3, v1, v2

    sput-object v0, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    .line 212
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput-object v3, v1, v2

    sput-object v0, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

    .line 218
    const/4 v0, 0x7

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->cdata:[C

    .line 219
    const/4 v0, 0x5

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->xmlDecl:[C

    .line 220
    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_2

    sput-object v0, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->endTag:[C

    return-void

    .line 218
    :array_0
    .array-data 2
        0x5bs
        0x43s
        0x44s
        0x41s
        0x54s
        0x41s
        0x5bs
    .end array-data

    .line 219
    nop

    :array_1
    .array-data 2
        0x3cs
        0x3fs
        0x78s
        0x6ds
        0x6cs
    .end array-data

    .line 220
    nop

    :array_2
    .array-data 2
        0x3cs
        0x2fs
    .end array-data
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    .line 395
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/xml/stream/XMLScanner;-><init>()V

    .line 252
    move-object v1, v0

    const/4 v2, 0x4

    new-array v2, v2, [I

    iput-object v2, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityStack:[I

    .line 264
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fInScanContent:Z

    .line 265
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fLastSectionWasCData:Z

    .line 266
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fLastSectionWasEntityReference:Z

    .line 267
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fLastSectionWasCharacterData:Z

    .line 283
    move-object v1, v0

    new-instance v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;-><init>(Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;)V

    iput-object v2, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fElementStack:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;

    .line 284
    move-object v1, v0

    new-instance v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;-><init>(Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;)V

    iput-object v2, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fElementStack2:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;

    .line 296
    move-object v1, v0

    new-instance v2, Lorg/apache/xerces/xni/XMLString;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Lorg/apache/xerces/xni/XMLString;-><init>()V

    iput-object v2, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fPIData:Lorg/apache/xerces/xni/XMLString;

    .line 304
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fNotifyBuiltInRefs:Z

    .line 308
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fReplaceEntityReferences:Z

    .line 309
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fSupportExternalEntities:Z

    .line 310
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fReportCdataEvent:Z

    .line 311
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fIsCoalesce:Z

    .line 312
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fDeclaredEncoding:Ljava/lang/String;

    .line 315
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fDisallowDoctype:Z

    .line 323
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->createContentDriver()Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$Driver;

    move-result-object v2

    iput-object v2, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fContentDriver:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$Driver;

    .line 328
    move-object v1, v0

    new-instance v2, Lorg/apache/xerces/xni/QName;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Lorg/apache/xerces/xni/QName;-><init>()V

    iput-object v2, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fElementQName:Lorg/apache/xerces/xni/QName;

    .line 331
    move-object v1, v0

    new-instance v2, Lorg/apache/xerces/xni/QName;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Lorg/apache/xerces/xni/QName;-><init>()V

    iput-object v2, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    .line 338
    move-object v1, v0

    new-instance v2, Lorg/apache/xerces/util/XMLAttributesIteratorImpl;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Lorg/apache/xerces/util/XMLAttributesIteratorImpl;-><init>()V

    iput-object v2, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fAttributes:Lorg/apache/xerces/util/XMLAttributesIteratorImpl;

    .line 342
    move-object v1, v0

    new-instance v2, Lorg/apache/xerces/xni/XMLString;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Lorg/apache/xerces/xni/XMLString;-><init>()V

    iput-object v2, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fTempString:Lorg/apache/xerces/xni/XMLString;

    .line 345
    move-object v1, v0

    new-instance v2, Lorg/apache/xerces/xni/XMLString;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Lorg/apache/xerces/xni/XMLString;-><init>()V

    iput-object v2, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fTempString2:Lorg/apache/xerces/xni/XMLString;

    .line 348
    move-object v1, v0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fStrings:[Ljava/lang/String;

    .line 351
    move-object v1, v0

    new-instance v2, Lorg/apache/xerces/util/XMLStringBuffer;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Lorg/apache/xerces/util/XMLStringBuffer;-><init>()V

    iput-object v2, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    .line 354
    move-object v1, v0

    new-instance v2, Lorg/apache/xerces/util/XMLStringBuffer;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Lorg/apache/xerces/util/XMLStringBuffer;-><init>()V

    iput-object v2, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fStringBuffer2:Lorg/apache/xerces/util/XMLStringBuffer;

    .line 358
    move-object v1, v0

    new-instance v2, Lorg/apache/xerces/util/XMLStringBuffer;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Lorg/apache/xerces/util/XMLStringBuffer;-><init>()V

    iput-object v2, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fContentBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    .line 361
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [C

    iput-object v2, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fSingleChar:[C

    .line 362
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fCurrentEntityName:Ljava/lang/String;

    .line 365
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fScanToEnd:Z

    .line 367
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->dtdGrammarUtil:Lcom/sun/xml/stream/dtd/DTDGrammarUtil;

    .line 369
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fAddDefaultAttr:Z

    .line 371
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->foundBuiltInRefs:Z

    .line 379
    move-object v1, v0

    const/16 v2, 0xc8

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fElementArray:[Ljava/lang/String;

    .line 381
    move-object v1, v0

    const/4 v2, 0x0

    iput-short v2, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fLastPointerLocation:S

    .line 382
    move-object v1, v0

    const/4 v2, 0x0

    iput-short v2, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fElementPointer:S

    .line 384
    move-object v1, v0

    const/4 v2, 0x5

    const/4 v3, 0x4

    filled-new-array {v2, v3}, [I

    move-result-object v3

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[S

    iput-object v2, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fPointerInfo:[[S

    .line 386
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fShouldSkip:Z

    .line 387
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fAdd:Z

    .line 388
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fSkip:Z

    .line 396
    return-void
.end method

.method private handleCharacter(CLjava/lang/String;Lorg/apache/xerces/util/XMLStringBuffer;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1780
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    move v1, p1

    .local v1, "c":C
    move-object v2, p2

    .local v2, "entity":Ljava/lang/String;
    move-object v3, p3

    .local v3, "content":Lorg/apache/xerces/util/XMLStringBuffer;
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->foundBuiltInRefs:Z

    .line 1781
    move-object v4, v3

    move v5, v1

    invoke-virtual {v4, v5}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 1782
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v4, :cond_1

    .line 1783
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fSingleChar:[C

    const/4 v5, 0x0

    move v6, v1

    aput-char v6, v4, v5

    .line 1784
    move-object v4, v0

    iget-boolean v4, v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fNotifyBuiltInRefs:Z

    if-eqz v4, :cond_0

    .line 1785
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-object v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface {v4, v5, v6, v7, v8}, Lorg/apache/xerces/xni/XMLDocumentHandler;->startGeneralEntity(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V

    .line 1787
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fTempString:Lorg/apache/xerces/xni/XMLString;

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fSingleChar:[C

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Lorg/apache/xerces/xni/XMLString;->setValues([CII)V

    .line 1788
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fTempString:Lorg/apache/xerces/xni/XMLString;

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lorg/apache/xerces/xni/XMLDocumentHandler;->characters(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    .line 1790
    move-object v4, v0

    iget-boolean v4, v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fNotifyBuiltInRefs:Z

    if-eqz v4, :cond_1

    .line 1791
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-object v5, v2

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lorg/apache/xerces/xni/XMLDocumentHandler;->endGeneralEntity(Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V

    .line 1794
    :cond_1
    return-void
.end method

.method static pr(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 3080
    move-object v0, p0

    .local v0, "str":Ljava/lang/String;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3081
    return-void
.end method


# virtual methods
.method addElement(Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 924
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    move-object v1, p1

    .local v1, "rawname":Ljava/lang/String;
    move-object v4, v0

    iget-short v4, v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fElementPointer:S

    const/16 v5, 0xc8

    if-ge v4, v5, :cond_2

    .line 926
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fElementArray:[Ljava/lang/String;

    move-object v5, v0

    iget-short v5, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fElementPointer:S

    move-object v6, v1

    aput-object v6, v4, v5

    .line 939
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fElementStack:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;

    iget v4, v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fDepth:I

    const/4 v5, 0x5

    if-ge v4, v5, :cond_1

    .line 940
    move-object v4, v0

    move-object v5, v0

    iget-short v5, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fElementPointer:S

    invoke-virtual {v4, v5}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->storePointerForADepth(S)S

    move-result v4

    move v2, v4

    .line 941
    .local v2, "column":S
    move v4, v2

    if-lez v4, :cond_1

    .line 942
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fElementStack:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;

    iget v5, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fDepth:I

    int-to-short v5, v5

    move v6, v2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    int-to-short v6, v6

    invoke-virtual {v4, v5, v6}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->getElementPointer(SS)S

    move-result v4

    move v3, v4

    .line 945
    .local v3, "pointer":S
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fElementArray:[Ljava/lang/String;

    move v6, v3

    aget-object v5, v5, v6

    if-ne v4, v5, :cond_0

    .line 946
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fShouldSkip:Z

    .line 947
    move-object v4, v0

    move v5, v3

    iput-short v5, v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fLastPointerLocation:S

    .line 949
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fElementStack:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;

    iget v5, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fDepth:I

    int-to-short v5, v5

    move v6, v2

    invoke-virtual {v4, v5, v6}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->resetPointer(SS)V

    .line 950
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fElementArray:[Ljava/lang/String;

    move-object v5, v0

    iget-short v5, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fElementPointer:S

    const/4 v6, 0x0

    aput-object v6, v4, v5

    .line 951
    .line 959
    .end local v2    # "column":S
    .end local v3    # "pointer":S
    :goto_0
    return-void

    .line 953
    .restart local v2    # "column":S
    .restart local v3    # "pointer":S
    :cond_0
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fShouldSkip:Z

    .line 957
    .end local v2    # "column":S
    .end local v3    # "pointer":S
    :cond_1
    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget-short v5, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fElementPointer:S

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    int-to-short v5, v5

    iput-short v5, v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fElementPointer:S

    .line 959
    :cond_2
    goto :goto_0
.end method

.method canStore(SS)Z
    .locals 5

    .prologue
    .line 996
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    move v1, p1

    .local v1, "depth":S
    move v2, p2

    .local v2, "column":S
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fPointerInfo:[[S

    move v4, v1

    aget-object v3, v3, v4

    move v4, v2

    aget-short v3, v3, v4

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .end local v0    # "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    return v0

    .restart local v0    # "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected createContentDriver()Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$Driver;
    .locals 5

    .prologue
    .line 788
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    new-instance v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;-><init>(Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;)V

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    return-object v0
.end method

.method public endEntity(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 762
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/sun/xml/stream/XMLScanner;->endEntity(Ljava/lang/String;)V

    .line 765
    move-object v2, v0

    iget v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityStack:[I

    move-object v4, v0

    iget v4, v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityDepth:I

    aget v3, v3, v4

    if-eq v2, v3, :cond_0

    .line 766
    move-object v2, v0

    const-string v3, "MarkupEntityMismatch"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 771
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-boolean v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fScanningAttribute:Z

    if-nez v2, :cond_1

    .line 772
    move-object v2, v1

    const-string v3, "[xml]"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 773
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-object v3, v1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lorg/apache/xerces/xni/XMLDocumentHandler;->endGeneralEntity(Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V

    .line 778
    :cond_1
    return-void
.end method

.method public getAttributeIterator()Lorg/apache/xerces/util/XMLAttributesIteratorImpl;
    .locals 4

    .prologue
    .line 1357
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->dtdGrammarUtil:Lcom/sun/xml/stream/dtd/DTDGrammarUtil;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fAddDefaultAttr:Z

    if-eqz v1, :cond_0

    .line 1358
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->dtdGrammarUtil:Lcom/sun/xml/stream/dtd/DTDGrammarUtil;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fElementQName:Lorg/apache/xerces/xni/QName;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fAttributes:Lorg/apache/xerces/util/XMLAttributesIteratorImpl;

    invoke-virtual {v1, v2, v3}, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->addDTDDefaultAttrs(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;)V

    .line 1359
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fAddDefaultAttr:Z

    .line 1361
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fAttributes:Lorg/apache/xerces/util/XMLAttributesIteratorImpl;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    return-object v0
.end method

.method public getCharacterData()Lorg/apache/xerces/xni/XMLString;
    .locals 2

    .prologue
    .line 861
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fUsebuffer:Z

    if-eqz v1, :cond_0

    .line 862
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fContentBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    move-object v0, v1

    .line 864
    .end local v0    # "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fTempString:Lorg/apache/xerces/xni/XMLString;

    move-object v0, v1

    goto :goto_0
.end method

.method public getComment()Ljava/lang/String;
    .locals 2

    .prologue
    .line 920
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fContentBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v1}, Lorg/apache/xerces/util/XMLStringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    return-object v0
.end method

.method public getDocumentHandler()Lorg/apache/xerces/xni/XMLDocumentHandler;
    .locals 2

    .prologue
    .line 691
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    return-object v0
.end method

.method public getDriverName(Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$Driver;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1881
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    move-object v1, p1

    .local v1, "driver":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$Driver;
    const-string v2, "null"

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    return-object v0
.end method

.method getElementPointer(SS)S
    .locals 5

    .prologue
    .line 1004
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    move v1, p1

    .local v1, "depth":S
    move v2, p2

    .local v2, "column":S
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fPointerInfo:[[S

    move v4, v1

    aget-object v3, v3, v4

    move v4, v2

    aget-short v3, v3, v4

    move v0, v3

    .end local v0    # "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    return v0
.end method

.method public getEntityName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1861
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fCurrentEntityName:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    return-object v0
.end method

.method public getFeatureDefault(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 5

    .prologue
    .line 649
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    move-object v1, p1

    .local v1, "featureId":Ljava/lang/String;
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    sget-object v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 650
    sget-object v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    move v4, v2

    aget-object v3, v3, v4

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 651
    sget-object v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

    move v4, v2

    aget-object v3, v3, v4

    move-object v0, v3

    .line 654
    .end local v0    # "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    :goto_1
    return-object v0

    .line 649
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 654
    :cond_1
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_1
.end method

.method public getPIData()Lorg/apache/xerces/util/XMLStringBuffer;
    .locals 2

    .prologue
    .line 856
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fContentBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    return-object v0
.end method

.method public getPITarget()Ljava/lang/String;
    .locals 2

    .prologue
    .line 852
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fPITarget:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    return-object v0
.end method

.method public getPropertyDefault(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 667
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    move-object v1, p1

    .local v1, "propertyId":Ljava/lang/String;
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    sget-object v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 668
    sget-object v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    move v4, v2

    aget-object v3, v3, v4

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 669
    sget-object v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

    move v4, v2

    aget-object v3, v3, v4

    move-object v0, v3

    .line 672
    .end local v0    # "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    :goto_1
    return-object v0

    .line 667
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 672
    :cond_1
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_1
.end method

.method public getRecognizedFeatures()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 566
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    sget-object v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    invoke-virtual {v1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    return-object v0
.end method

.method public getRecognizedProperties()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 605
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    sget-object v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    invoke-virtual {v1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    return-object v0
.end method

.method protected getScannerStateName(I)Ljava/lang/String;
    .locals 5

    .prologue
    .line 1837
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    move v1, p1

    .local v1, "state":I
    move v2, v1

    packed-switch v2, :pswitch_data_0

    .line 1856
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "??? ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    :goto_0
    return-object v0

    .line 1838
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    :pswitch_1
    const-string v2, "SCANNER_STATE_DOCTYPE"

    move-object v0, v2

    goto :goto_0

    .line 1839
    :pswitch_2
    const-string v2, "SCANNER_STATE_ROOT_ELEMENT"

    move-object v0, v2

    goto :goto_0

    .line 1840
    :pswitch_3
    const-string v2, "SCANNER_STATE_START_OF_MARKUP"

    move-object v0, v2

    goto :goto_0

    .line 1841
    :pswitch_4
    const-string v2, "SCANNER_STATE_COMMENT"

    move-object v0, v2

    goto :goto_0

    .line 1842
    :pswitch_5
    const-string v2, "SCANNER_STATE_PI"

    move-object v0, v2

    goto :goto_0

    .line 1843
    :pswitch_6
    const-string v2, "SCANNER_STATE_CONTENT"

    move-object v0, v2

    goto :goto_0

    .line 1844
    :pswitch_7
    const-string v2, "SCANNER_STATE_REFERENCE"

    move-object v0, v2

    goto :goto_0

    .line 1845
    :pswitch_8
    const-string v2, "SCANNER_STATE_END_OF_INPUT"

    move-object v0, v2

    goto :goto_0

    .line 1846
    :pswitch_9
    const-string v2, "SCANNER_STATE_TERMINATED"

    move-object v0, v2

    goto :goto_0

    .line 1847
    :pswitch_a
    const-string v2, "SCANNER_STATE_CDATA"

    move-object v0, v2

    goto :goto_0

    .line 1848
    :pswitch_b
    const-string v2, "SCANNER_STATE_TEXT_DECL"

    move-object v0, v2

    goto :goto_0

    .line 1849
    :pswitch_c
    const-string v2, "SCANNER_STATE_ATTRIBUTE"

    move-object v0, v2

    goto :goto_0

    .line 1850
    :pswitch_d
    const-string v2, "SCANNER_STATE_ATTRIBUTE_VALUE"

    move-object v0, v2

    goto :goto_0

    .line 1851
    :pswitch_e
    const-string v2, "SCANNER_STATE_START_ELEMENT_TAG"

    move-object v0, v2

    goto :goto_0

    .line 1852
    :pswitch_f
    const-string v2, "SCANNER_STATE_END_ELEMENT_TAG"

    move-object v0, v2

    goto :goto_0

    .line 1853
    :pswitch_10
    const-string v2, "SCANNER_STATE_CHARACTER_DATA"

    move-object v0, v2

    goto :goto_0

    .line 1837
    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_3
        :pswitch_6
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_7
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_10
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public hasAttributes()Z
    .locals 2

    .prologue
    .line 1277
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fAttributes:Lorg/apache/xerces/util/XMLAttributesIteratorImpl;

    invoke-virtual {v1}, Lorg/apache/xerces/util/XMLAttributesIteratorImpl;->getLength()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    return v0

    .restart local v0    # "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isStandAlone()Z
    .locals 2

    .prologue
    .line 1370
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fStandalone:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    return v0
.end method

.method public next()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 451
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fDriver:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$Driver;

    invoke-interface {v1}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$Driver;->next()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    return v0
.end method

.method public reset(Lcom/sun/xml/stream/PropertyManager;)V
    .locals 7

    .prologue
    .line 516
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    move-object v1, p1

    .local v1, "propertyManager":Lcom/sun/xml/stream/PropertyManager;
    move-object v5, v0

    move-object v6, v1

    invoke-super {v5, v6}, Lcom/sun/xml/stream/XMLScanner;->reset(Lcom/sun/xml/stream/PropertyManager;)V

    .line 520
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fNamespaces:Z

    .line 521
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fNotifyBuiltInRefs:Z

    .line 525
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    .line 526
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fCurrentElement:Lorg/apache/xerces/xni/QName;

    .line 527
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fShouldSkip:Z

    .line 528
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fAdd:Z

    .line 529
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fSkip:Z

    .line 530
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fElementStack:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;

    invoke-virtual {v5}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->clear()V

    .line 532
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fHasExternalDTD:Z

    .line 533
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fStandaloneSet:Z

    .line 534
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fStandalone:Z

    .line 537
    move-object v5, v1

    const-string v6, "javax.xml.stream.isReplacingEntityReferences"

    invoke-virtual {v5, v6}, Lcom/sun/xml/stream/PropertyManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    move-object v2, v5

    .line 538
    .local v2, "bo":Ljava/lang/Boolean;
    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iput-boolean v6, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fReplaceEntityReferences:Z

    .line 539
    move-object v5, v1

    const-string v6, "javax.xml.stream.isSupportingExternalEntities"

    invoke-virtual {v5, v6}, Lcom/sun/xml/stream/PropertyManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    move-object v2, v5

    .line 540
    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iput-boolean v6, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fSupportExternalEntities:Z

    .line 541
    move-object v5, v1

    const-string v6, "http://java.sun.com/xml/stream/properties/report-cdata-event"

    invoke-virtual {v5, v6}, Lcom/sun/xml/stream/PropertyManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    move-object v3, v5

    .line 542
    .local v3, "cdata":Ljava/lang/Boolean;
    move-object v5, v3

    if-eqz v5, :cond_0

    .line 543
    move-object v5, v0

    move-object v6, v3

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iput-boolean v6, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fReportCdataEvent:Z

    .line 544
    :cond_0
    move-object v5, v1

    const-string v6, "javax.xml.stream.isCoalescing"

    invoke-virtual {v5, v6}, Lcom/sun/xml/stream/PropertyManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    move-object v4, v5

    .line 545
    .local v4, "coalesce":Ljava/lang/Boolean;
    move-object v5, v4

    if-eqz v5, :cond_1

    .line 546
    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iput-boolean v6, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fIsCoalesce:Z

    .line 547
    :cond_1
    move-object v5, v0

    move-object v6, v0

    iget-boolean v6, v6, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fIsCoalesce:Z

    if-eqz v6, :cond_2

    const/4 v6, 0x0

    :goto_0
    iput-boolean v6, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fReportCdataEvent:Z

    .line 550
    move-object v5, v0

    move-object v6, v0

    iget-boolean v6, v6, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fIsCoalesce:Z

    if-eqz v6, :cond_4

    const/4 v6, 0x1

    :goto_1
    iput-boolean v6, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fReplaceEntityReferences:Z

    .line 555
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityManager:Lcom/sun/xml/stream/XMLEntityManager;

    invoke-virtual {v6}, Lcom/sun/xml/stream/XMLEntityManager;->getEntityStore()Lcom/sun/xml/stream/XMLEntityStorage;

    move-result-object v6

    iput-object v6, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityStore:Lcom/sun/xml/stream/XMLEntityStorage;

    .line 558
    return-void

    .line 547
    :cond_2
    move-object v6, v0

    iget-boolean v6, v6, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fReportCdataEvent:Z

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    .line 550
    :cond_4
    move-object v6, v0

    iget-boolean v6, v6, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fReplaceEntityReferences:Z

    goto :goto_1
.end method

.method public reset(Lorg/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    .line 476
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    move-object v1, p1

    .local v1, "componentManager":Lorg/apache/xerces/xni/parser/XMLComponentManager;
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Lcom/sun/xml/stream/XMLScanner;->reset(Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    .line 483
    move-object v3, v0

    move-object v4, v1

    :try_start_0
    const-string v5, "http://xml.org/sax/features/namespaces"

    invoke-interface {v4, v5}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fNamespaces:Z
    :try_end_0
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 487
    .line 492
    :goto_0
    move-object v3, v0

    move-object v4, v1

    :try_start_1
    const-string v5, "http://apache.org/xml/features/scanner/notify-builtin-refs"

    invoke-interface {v4, v5}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fNotifyBuiltInRefs:Z
    :try_end_1
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 496
    .line 499
    :goto_1
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    .line 500
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fCurrentElement:Lorg/apache/xerces/xni/QName;

    .line 501
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fElementStack:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;

    invoke-virtual {v3}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->clear()V

    .line 502
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fHasExternalDTD:Z

    .line 503
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fStandaloneSet:Z

    .line 504
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fStandalone:Z

    .line 507
    move-object v3, v0

    const/16 v4, 0x16

    invoke-virtual {v3, v4}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    .line 508
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fContentDriver:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$Driver;

    invoke-virtual {v3, v4}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->setDriver(Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$Driver;)V

    .line 509
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityManager:Lcom/sun/xml/stream/XMLEntityManager;

    invoke-virtual {v4}, Lcom/sun/xml/stream/XMLEntityManager;->getEntityStore()Lcom/sun/xml/stream/XMLEntityStorage;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityStore:Lcom/sun/xml/stream/XMLEntityStorage;

    .line 511
    return-void

    .line 485
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 486
    .local v2, "e":Lorg/apache/xerces/xni/parser/XMLConfigurationException;
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fNamespaces:Z

    goto :goto_0

    .line 494
    .end local v2    # "e":Lorg/apache/xerces/xni/parser/XMLConfigurationException;
    :catch_1
    move-exception v3

    move-object v2, v3

    .line 495
    .restart local v2    # "e":Lorg/apache/xerces/xni/parser/XMLConfigurationException;
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fNotifyBuiltInRefs:Z

    goto :goto_1
.end method

.method resetPointer(SS)V
    .locals 6

    .prologue
    .line 963
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    move v1, p1

    .local v1, "depth":S
    move v2, p2

    .local v2, "column":S
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fPointerInfo:[[S

    move v4, v1

    aget-object v3, v3, v4

    move v4, v2

    const/4 v5, 0x0

    aput-short v5, v3, v4

    .line 964
    return-void
.end method

.method protected scanAttribute(Lorg/apache/xerces/xni/XMLAttributes;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1395
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    move-object v1, p1

    .local v1, "attributes":Lorg/apache/xerces/xni/XMLAttributes;
    move-object v4, v0

    iget-boolean v4, v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fNamespaces:Z

    if-eqz v4, :cond_2

    .line 1396
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    invoke-virtual {v4, v5}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scanQName(Lorg/apache/xerces/xni/QName;)Z

    move-result v4

    .line 1404
    :goto_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v4}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipSpaces()Z

    move-result v4

    .line 1405
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const/16 v5, 0x3d

    invoke-virtual {v4, v5}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1406
    move-object v4, v0

    const-string v5, "EqRequiredInAttribute"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const/4 v8, 0x0

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    iget-object v9, v9, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v4, v5, v6}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1409
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v4}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipSpaces()Z

    move-result v4

    .line 1412
    move-object v4, v1

    invoke-interface {v4}, Lorg/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v4

    move v2, v4

    .line 1414
    .local v2, "oldLen":I
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    sget-object v6, Lorg/apache/xerces/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-interface {v4, v5, v6, v7}, Lorg/apache/xerces/xni/XMLAttributes;->addAttribute(Lorg/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1419
    move v4, v2

    move-object v5, v1

    invoke-interface {v5}, Lorg/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 1420
    move-object v4, v0

    const-string v5, "AttributeNotUnique"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const/4 v8, 0x0

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fCurrentElement:Lorg/apache/xerces/xni/QName;

    iget-object v9, v9, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v9, v7, v8

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const/4 v8, 0x1

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    iget-object v9, v9, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v4, v5, v6}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1425
    :cond_1
    move-object v4, v0

    iget-boolean v4, v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fHasExternalDTD:Z

    if-eqz v4, :cond_3

    move-object v4, v0

    iget-boolean v4, v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fStandalone:Z

    if-nez v4, :cond_3

    const/4 v4, 0x1

    :goto_1
    move v3, v4

    .line 1428
    .local v3, "isVC":Z
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fTempString:Lorg/apache/xerces/xni/XMLString;

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fTempString2:Lorg/apache/xerces/xni/XMLString;

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    iget-object v7, v7, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object v8, v1

    move v9, v2

    move v10, v3

    invoke-virtual/range {v4 .. v10}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->scanAttributeValue(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/XMLString;Ljava/lang/String;Lorg/apache/xerces/xni/XMLAttributes;IZ)V

    .line 1431
    move-object v4, v1

    move v5, v2

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fTempString:Lorg/apache/xerces/xni/XMLString;

    invoke-virtual {v6}, Lorg/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lorg/apache/xerces/xni/XMLAttributes;->setValue(ILjava/lang/String;)V

    .line 1433
    move-object v4, v1

    move v5, v2

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Lorg/apache/xerces/xni/XMLAttributes;->setSpecified(IZ)V

    .line 1436
    return-void

    .line 1399
    .end local v2    # "oldLen":I
    .end local v3    # "isVC":Z
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v4}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scanName()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 1400
    .local v2, "name":Ljava/lang/String;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    const/4 v5, 0x0

    move-object v6, v2

    move-object v7, v2

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Lorg/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1425
    .local v2, "oldLen":I
    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method protected scanCDATASection(Lorg/apache/xerces/util/XMLStringBuffer;Z)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1510
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    move-object v1, p1

    .local v1, "contentBuffer":Lorg/apache/xerces/util/XMLStringBuffer;
    move v2, p2

    .local v2, "complete":Z
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v4, :cond_0

    .line 1511
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lorg/apache/xerces/xni/XMLDocumentHandler;->startCDATA(Lorg/apache/xerces/xni/Augmentations;)V

    .line 1516
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const-string v5, "]]>"

    move-object v6, v1

    invoke-virtual {v4, v5, v6}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scanData(Ljava/lang/String;Lorg/apache/xerces/util/XMLStringBuffer;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1517
    .line 1566
    :cond_1
    :goto_0
    move-object v4, v0

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    iget v5, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    .line 1568
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v4, :cond_2

    move-object v4, v1

    iget v4, v4, Lorg/apache/xerces/util/XMLStringBuffer;->length:I

    if-lez v4, :cond_2

    .line 1569
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-object v5, v1

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lorg/apache/xerces/xni/XMLDocumentHandler;->characters(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    .line 1573
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v4, :cond_3

    .line 1574
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lorg/apache/xerces/xni/XMLDocumentHandler;->endCDATA(Lorg/apache/xerces/xni/Augmentations;)V

    .line 1577
    :cond_3
    const/4 v4, 0x1

    move v0, v4

    .end local v0    # "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    return v0

    .line 1546
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    :cond_4
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v4}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->peekChar()I

    move-result v4

    move v3, v4

    .line 1547
    .local v3, "c":I
    move v4, v3

    const/4 v5, -0x1

    if-eq v4, v5, :cond_5

    move v4, v3

    invoke-static {v4}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->isInvalidLiteral(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1548
    move v4, v3

    invoke-static {v4}, Lorg/apache/xerces/util/XMLChar;->isHighSurrogate(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1551
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->scanSurrogates(Lorg/apache/xerces/util/XMLStringBuffer;)Z

    move-result v4

    .line 1560
    :cond_5
    :goto_1
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v4, :cond_1

    .line 1561
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-object v5, v1

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lorg/apache/xerces/xni/XMLDocumentHandler;->characters(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    goto :goto_0

    .line 1554
    :cond_6
    move-object v4, v0

    const-string v5, "InvalidCharInCDSect"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const/4 v8, 0x0

    move v9, v3

    const/16 v10, 0x10

    .line 1555
    invoke-static {v9, v10}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 1554
    invoke-virtual {v4, v5, v6}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1556
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v4}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scanChar()I

    move-result v4

    goto :goto_1
.end method

.method protected scanCharReference()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1657
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fStringBuffer2:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v2}, Lorg/apache/xerces/util/XMLStringBuffer;->clear()V

    .line 1658
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fStringBuffer2:Lorg/apache/xerces/util/XMLStringBuffer;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->scanCharReferenceValue(Lorg/apache/xerces/util/XMLStringBuffer;Lorg/apache/xerces/util/XMLStringBuffer;)I

    move-result v2

    move v1, v2

    .line 1659
    .local v1, "ch":I
    move-object v2, v0

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    iget v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    .line 1660
    move v2, v1

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 1662
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v2, :cond_1

    .line 1663
    move-object v2, v0

    iget-boolean v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fNotifyCharRefs:Z

    if-eqz v2, :cond_0

    .line 1664
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fCharRefLiteral:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v2, v3, v4, v5, v6}, Lorg/apache/xerces/xni/XMLDocumentHandler;->startGeneralEntity(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V

    .line 1668
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fStringBuffer2:Lorg/apache/xerces/util/XMLStringBuffer;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lorg/apache/xerces/xni/XMLDocumentHandler;->characters(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    .line 1669
    move-object v2, v0

    iget-boolean v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fNotifyCharRefs:Z

    if-eqz v2, :cond_1

    .line 1670
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fCharRefLiteral:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lorg/apache/xerces/xni/XMLDocumentHandler;->endGeneralEntity(Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V

    .line 1675
    :cond_1
    return-void
.end method

.method protected scanComment()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 905
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fContentBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v1}, Lorg/apache/xerces/util/XMLStringBuffer;->clear()V

    .line 906
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fContentBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v1, v2}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->scanComment(Lorg/apache/xerces/util/XMLStringBuffer;)V

    .line 908
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fUsebuffer:Z

    .line 909
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    .line 912
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v1, :cond_0

    .line 913
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fContentBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lorg/apache/xerces/xni/XMLDocumentHandler;->comment(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    .line 916
    :cond_0
    return-void
.end method

.method protected scanContent(Lorg/apache/xerces/util/XMLStringBuffer;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1451
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    move-object v1, p1

    .local v1, "content":Lorg/apache/xerces/util/XMLStringBuffer;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fTempString:Lorg/apache/xerces/xni/XMLString;

    const/4 v4, 0x0

    iput v4, v3, Lorg/apache/xerces/xni/XMLString;->length:I

    .line 1452
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fTempString:Lorg/apache/xerces/xni/XMLString;

    invoke-virtual {v3, v4}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scanContent(Lorg/apache/xerces/xni/XMLString;)I

    move-result v3

    move v2, v3

    .line 1453
    .local v2, "c":I
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fTempString:Lorg/apache/xerces/xni/XMLString;

    invoke-virtual {v3, v4}, Lorg/apache/xerces/util/XMLStringBuffer;->append(Lorg/apache/xerces/xni/XMLString;)V

    .line 1454
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fTempString:Lorg/apache/xerces/xni/XMLString;

    const/4 v4, 0x0

    iput v4, v3, Lorg/apache/xerces/xni/XMLString;->length:I

    .line 1455
    move v3, v2

    const/16 v4, 0xd

    if-ne v3, v4, :cond_2

    .line 1458
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v3}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scanChar()I

    move-result v3

    .line 1459
    move-object v3, v1

    move v4, v2

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 1460
    const/4 v3, -0x1

    move v2, v3

    .line 1486
    :cond_0
    :goto_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v3, :cond_1

    move-object v3, v1

    iget v3, v3, Lorg/apache/xerces/util/XMLStringBuffer;->length:I

    if-lez v3, :cond_1

    .line 1487
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-object v4, v1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lorg/apache/xerces/xni/XMLDocumentHandler;->characters(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    .line 1489
    :cond_1
    move v3, v2

    move v0, v3

    .end local v0    # "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    return v0

    .line 1462
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    :cond_2
    move v3, v2

    const/16 v4, 0x5d

    if-ne v3, v4, :cond_0

    .line 1465
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v4}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scanChar()I

    move-result v4

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 1469
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fInScanContent:Z

    .line 1474
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1475
    move-object v3, v1

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 1476
    :goto_1
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1477
    move-object v3, v1

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto :goto_1

    .line 1479
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const/16 v4, 0x3e

    invoke-virtual {v3, v4}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1480
    move-object v3, v0

    const-string v4, "CDEndInContent"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1483
    :cond_4
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fInScanContent:Z

    .line 1484
    const/4 v3, -0x1

    move v2, v3

    goto :goto_0
.end method

.method public scanDocument(Z)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 432
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    move v1, p1

    .local v1, "complete":Z
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityManager:Lcom/sun/xml/stream/XMLEntityManager;

    move-object v3, v0

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLEntityManager;->setEntityHandler(Lcom/sun/xml/stream/XMLEntityHandler;)V

    .line 442
    const/4 v2, 0x1

    move v0, v2

    .end local v0    # "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    return v0
.end method

.method protected scanEndElement()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1598
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fElementStack:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;

    invoke-virtual {v2}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->popElement()Lorg/apache/xerces/xni/QName;

    move-result-object v2

    iget-object v2, v2, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object v1, v2

    .line 1612
    .local v1, "rawname":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1613
    move-object v2, v0

    const-string v3, "ETagRequired"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1617
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v2}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipSpaces()Z

    move-result v2

    .line 1618
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const/16 v3, 0x3e

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1619
    move-object v2, v0

    const-string v3, "ETagUnterminated"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1622
    :cond_1
    move-object v2, v0

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    iget v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    .line 1625
    move-object v2, v0

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    iget v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    .line 1628
    move-object v2, v0

    iget v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityStack:[I

    move-object v4, v0

    iget v4, v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityDepth:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    aget v3, v3, v4

    if-ge v2, v3, :cond_2

    .line 1629
    move-object v2, v0

    const-string v3, "ElementEntityMismatch"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1635
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v2, :cond_3

    .line 1643
    :cond_3
    move-object v2, v0

    iget v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    move v0, v2

    .end local v0    # "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    return v0
.end method

.method protected scanEntityReference(Lorg/apache/xerces/util/XMLStringBuffer;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1688
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    move-object v1, p1

    .local v1, "content":Lorg/apache/xerces/util/XMLStringBuffer;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v3}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scanName()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 1689
    .local v2, "name":Ljava/lang/String;
    move-object v3, v2

    if-nez v3, :cond_0

    .line 1690
    move-object v3, v0

    const-string v4, "NameRequiredInReference"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1692
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const/16 v4, 0x3b

    invoke-virtual {v3, v4}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1693
    move-object v3, v0

    const-string v4, "SemicolonRequiredInReference"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    const/4 v7, 0x0

    move-object v8, v2

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1695
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityStore:Lcom/sun/xml/stream/XMLEntityStorage;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/sun/xml/stream/XMLEntityStorage;->isUnparsedEntity(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1696
    move-object v3, v0

    const-string v4, "ReferenceToUnparsedEntity"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    const/4 v7, 0x0

    move-object v8, v2

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1698
    :cond_2
    move-object v3, v0

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    iget v4, v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    .line 1699
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fCurrentEntityName:Ljava/lang/String;

    .line 1702
    move-object v3, v2

    sget-object v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fAmpSymbol:Ljava/lang/String;

    if-ne v3, v4, :cond_3

    .line 1703
    move-object v3, v0

    const/16 v4, 0x26

    sget-object v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fAmpSymbol:Ljava/lang/String;

    move-object v6, v1

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->handleCharacter(CLjava/lang/String;Lorg/apache/xerces/util/XMLStringBuffer;)V

    .line 1704
    move-object v3, v0

    const/16 v4, 0x29

    iput v4, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fScannerState:I

    .line 1705
    .line 1762
    :goto_0
    return-void

    .line 1707
    :cond_3
    move-object v3, v2

    sget-object v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fLtSymbol:Ljava/lang/String;

    if-ne v3, v4, :cond_4

    .line 1708
    move-object v3, v0

    const/16 v4, 0x3c

    sget-object v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fLtSymbol:Ljava/lang/String;

    move-object v6, v1

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->handleCharacter(CLjava/lang/String;Lorg/apache/xerces/util/XMLStringBuffer;)V

    .line 1709
    move-object v3, v0

    const/16 v4, 0x29

    iput v4, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fScannerState:I

    .line 1710
    goto :goto_0

    .line 1712
    :cond_4
    move-object v3, v2

    sget-object v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fGtSymbol:Ljava/lang/String;

    if-ne v3, v4, :cond_5

    .line 1713
    move-object v3, v0

    const/16 v4, 0x3e

    sget-object v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fGtSymbol:Ljava/lang/String;

    move-object v6, v1

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->handleCharacter(CLjava/lang/String;Lorg/apache/xerces/util/XMLStringBuffer;)V

    .line 1714
    move-object v3, v0

    const/16 v4, 0x29

    iput v4, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fScannerState:I

    .line 1715
    goto :goto_0

    .line 1717
    :cond_5
    move-object v3, v2

    sget-object v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fQuotSymbol:Ljava/lang/String;

    if-ne v3, v4, :cond_6

    .line 1718
    move-object v3, v0

    const/16 v4, 0x22

    sget-object v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fQuotSymbol:Ljava/lang/String;

    move-object v6, v1

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->handleCharacter(CLjava/lang/String;Lorg/apache/xerces/util/XMLStringBuffer;)V

    .line 1719
    move-object v3, v0

    const/16 v4, 0x29

    iput v4, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fScannerState:I

    .line 1720
    goto :goto_0

    .line 1722
    :cond_6
    move-object v3, v2

    sget-object v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fAposSymbol:Ljava/lang/String;

    if-ne v3, v4, :cond_7

    .line 1723
    move-object v3, v0

    const/16 v4, 0x27

    sget-object v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fAposSymbol:Ljava/lang/String;

    move-object v6, v1

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->handleCharacter(CLjava/lang/String;Lorg/apache/xerces/util/XMLStringBuffer;)V

    .line 1724
    move-object v3, v0

    const/16 v4, 0x29

    iput v4, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fScannerState:I

    .line 1725
    goto :goto_0

    .line 1732
    :cond_7
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityStore:Lcom/sun/xml/stream/XMLEntityStorage;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/sun/xml/stream/XMLEntityStorage;->isExternalEntity(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fSupportExternalEntities:Z

    if-eqz v3, :cond_9

    :cond_8
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityStore:Lcom/sun/xml/stream/XMLEntityStorage;

    move-object v4, v2

    .line 1733
    invoke-virtual {v3, v4}, Lcom/sun/xml/stream/XMLEntityStorage;->isExternalEntity(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fReplaceEntityReferences:Z

    if-nez v3, :cond_a

    .line 1734
    :cond_9
    move-object v3, v0

    const/16 v4, 0x1c

    iput v4, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fScannerState:I

    .line 1735
    goto :goto_0

    .line 1741
    :cond_a
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityStore:Lcom/sun/xml/stream/XMLEntityStorage;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/sun/xml/stream/XMLEntityStorage;->isDeclaredEntity(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 1743
    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fDisallowDoctype:Z

    if-eqz v3, :cond_b

    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fReplaceEntityReferences:Z

    if-eqz v3, :cond_b

    .line 1744
    move-object v3, v0

    const-string v4, "EntityNotDeclared"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    const/4 v7, 0x0

    move-object v8, v2

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1745
    goto/16 :goto_0

    .line 1748
    :cond_b
    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fHasExternalDTD:Z

    if-eqz v3, :cond_d

    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fStandalone:Z

    if-nez v3, :cond_d

    .line 1749
    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fValidation:Z

    if-eqz v3, :cond_c

    .line 1750
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fErrorReporter:Lcom/sun/xml/stream/XMLErrorReporter;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const-string v5, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v6, "EntityNotDeclared"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move-object v10, v2

    aput-object v10, v8, v9

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Lcom/sun/xml/stream/XMLErrorReporter;->reportError(Lorg/apache/xerces/xni/XMLLocator;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    .line 1760
    :cond_c
    :goto_1
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityManager:Lcom/sun/xml/stream/XMLEntityManager;

    move-object v4, v2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/sun/xml/stream/XMLEntityManager;->startEntity(Ljava/lang/String;Z)V

    .line 1762
    goto/16 :goto_0

    .line 1754
    :cond_d
    move-object v3, v0

    const-string v4, "EntityNotDeclared"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    const/4 v7, 0x0

    move-object v8, v2

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method protected scanPIData(Ljava/lang/String;Lorg/apache/xerces/util/XMLStringBuffer;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 881
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    move-object v1, p1

    .local v1, "target":Ljava/lang/String;
    move-object v2, p2

    .local v2, "data":Lorg/apache/xerces/util/XMLStringBuffer;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Lcom/sun/xml/stream/XMLScanner;->scanPIData(Ljava/lang/String;Lorg/apache/xerces/util/XMLStringBuffer;)V

    .line 884
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fPITarget:Ljava/lang/String;

    .line 886
    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    .line 889
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v3, :cond_0

    .line 890
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-interface {v3, v4, v5, v6}, Lorg/apache/xerces/xni/XMLDocumentHandler;->processingInstruction(Ljava/lang/String;Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    .line 893
    :cond_0
    return-void
.end method

.method protected scanStartElement()Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1137
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    move-object v5, v0

    iget-boolean v5, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fShouldSkip:Z

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-boolean v5, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fAdd:Z

    if-nez v5, :cond_0

    .line 1140
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fElementStack2:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;

    invoke-virtual {v5}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->getNext()Lorg/apache/xerces/xni/QName;

    move-result-object v5

    move-object v1, v5

    .line 1147
    .local v1, "name":Lorg/apache/xerces/xni/QName;
    move-object v5, v0

    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v6, v7}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->skipQElement(Lorg/apache/xerces/xni/QName;)Z

    move-result v6

    iput-boolean v6, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fShouldSkip:Z

    .line 1177
    .end local v1    # "name":Lorg/apache/xerces/xni/QName;
    :cond_0
    move-object v5, v0

    iget-boolean v5, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fAdd:Z

    if-eqz v5, :cond_7

    .line 1178
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fElementStack2:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;

    invoke-virtual {v6}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->nextElement()Lorg/apache/xerces/xni/QName;

    move-result-object v6

    iput-object v6, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fElementQName:Lorg/apache/xerces/xni/QName;

    .line 1186
    :goto_0
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fElementQName:Lorg/apache/xerces/xni/QName;

    iput-object v6, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fCurrentElement:Lorg/apache/xerces/xni/QName;

    .line 1191
    move-object v5, v0

    iget-boolean v5, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fShouldSkip:Z

    if-eqz v5, :cond_1

    move-object v5, v0

    iget-boolean v5, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fAdd:Z

    if-eqz v5, :cond_2

    .line 1193
    :cond_1
    move-object v5, v0

    iget-boolean v5, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fNamespaces:Z

    if-eqz v5, :cond_8

    .line 1194
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fElementQName:Lorg/apache/xerces/xni/QName;

    invoke-virtual {v5, v6}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scanQName(Lorg/apache/xerces/xni/QName;)Z

    move-result v5

    .line 1205
    :cond_2
    :goto_1
    move-object v5, v0

    iget-boolean v5, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fAdd:Z

    if-eqz v5, :cond_3

    .line 1206
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fElementStack2:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fElementQName:Lorg/apache/xerces/xni/QName;

    invoke-virtual {v5, v6}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->matchElement(Lorg/apache/xerces/xni/QName;)Z

    move-result v5

    .line 1210
    :cond_3
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fElementQName:Lorg/apache/xerces/xni/QName;

    iget-object v5, v5, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object v1, v5

    .line 1213
    .local v1, "rawname":Ljava/lang/String;
    const/4 v5, 0x0

    move v2, v5

    .line 1215
    .local v2, "empty":Z
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fAttributes:Lorg/apache/xerces/util/XMLAttributesIteratorImpl;

    invoke-virtual {v5}, Lorg/apache/xerces/util/XMLAttributesIteratorImpl;->removeAllAttributes()V

    .line 1221
    :goto_2
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v5}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipSpaces()Z

    move-result v5

    move v3, v5

    .line 1224
    .local v3, "sawSpace":Z
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v5}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->peekChar()I

    move-result v5

    move v4, v5

    .line 1225
    .local v4, "c":I
    move v5, v4

    const/16 v6, 0x3e

    if-ne v5, v6, :cond_9

    .line 1226
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v5}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scanChar()I

    move-result v5

    .line 1227
    .line 1248
    :goto_3
    move v5, v2

    if-eqz v5, :cond_e

    .line 1250
    move-object v5, v0

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    iget v6, v6, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    iput v6, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    .line 1252
    move-object v5, v0

    iget v5, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityStack:[I

    move-object v7, v0

    iget v7, v7, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityDepth:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    aget v6, v6, v7

    if-ge v5, v6, :cond_4

    .line 1253
    move-object v5, v0

    const-string v6, "ElementEntityMismatch"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fCurrentElement:Lorg/apache/xerces/xni/QName;

    iget-object v10, v10, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {v5, v6, v7}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1258
    :cond_4
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v5, :cond_5

    .line 1262
    :cond_5
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fElementStack:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;

    invoke-virtual {v5}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->popElement()Lorg/apache/xerces/xni/QName;

    move-result-object v5

    .line 1272
    :cond_6
    :goto_4
    move v5, v2

    move v0, v5

    .end local v0    # "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    return v0

    .line 1182
    .end local v1    # "rawname":Ljava/lang/String;
    .end local v2    # "empty":Z
    .end local v3    # "sawSpace":Z
    .end local v4    # "c":I
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    :cond_7
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fElementStack:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;

    invoke-virtual {v6}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->nextElement()Lorg/apache/xerces/xni/QName;

    move-result-object v6

    iput-object v6, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fElementQName:Lorg/apache/xerces/xni/QName;

    goto/16 :goto_0

    .line 1197
    :cond_8
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v5}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scanName()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 1198
    .local v1, "name":Ljava/lang/String;
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fElementQName:Lorg/apache/xerces/xni/QName;

    const/4 v6, 0x0

    move-object v7, v1

    move-object v8, v1

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Lorg/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1201
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fElementQName:Lorg/apache/xerces/xni/QName;

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    iget-object v6, v6, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scannedName:[C

    iput-object v6, v5, Lorg/apache/xerces/xni/QName;->characters:[C

    goto/16 :goto_1

    .line 1229
    .local v1, "rawname":Ljava/lang/String;
    .restart local v2    # "empty":Z
    .restart local v3    # "sawSpace":Z
    .restart local v4    # "c":I
    :cond_9
    move v5, v4

    const/16 v6, 0x2f

    if-ne v5, v6, :cond_b

    .line 1230
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v5}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scanChar()I

    move-result v5

    .line 1231
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const/16 v6, 0x3e

    invoke-virtual {v5, v6}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v5

    if-nez v5, :cond_a

    .line 1232
    move-object v5, v0

    const-string v6, "ElementUnterminated"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move-object v10, v1

    aput-object v10, v8, v9

    invoke-virtual {v5, v6, v7}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1235
    :cond_a
    const/4 v5, 0x1

    move v2, v5

    .line 1236
    goto/16 :goto_3

    .line 1238
    :cond_b
    move v5, v4

    invoke-static {v5}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->isValidNameStartChar(I)Z

    move-result v5

    if-eqz v5, :cond_c

    move v5, v3

    if-nez v5, :cond_d

    .line 1239
    :cond_c
    move-object v5, v0

    const-string v6, "ElementUnterminated"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move-object v10, v1

    aput-object v10, v8, v9

    invoke-virtual {v5, v6, v7}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1243
    :cond_d
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fAttributes:Lorg/apache/xerces/util/XMLAttributesIteratorImpl;

    invoke-virtual {v5, v6}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->scanAttribute(Lorg/apache/xerces/xni/XMLAttributes;)V

    .line 1245
    goto/16 :goto_2

    .line 1264
    :cond_e
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v5, :cond_6

    goto :goto_4
.end method

.method protected scanXMLDeclOrTextDecl(Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 815
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    move v1, p1

    .local v1, "scanningTextDecl":Z
    move-object v5, v0

    move v6, v1

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fStrings:[Ljava/lang/String;

    invoke-super {v5, v6, v7}, Lcom/sun/xml/stream/XMLScanner;->scanXMLDeclOrTextDecl(Z[Ljava/lang/String;)V

    .line 816
    move-object v5, v0

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget v6, v6, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    iput v6, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    .line 819
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fStrings:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    move-object v2, v5

    .line 820
    .local v2, "version":Ljava/lang/String;
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fStrings:[Ljava/lang/String;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    move-object v3, v5

    .line 821
    .local v3, "encoding":Ljava/lang/String;
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fStrings:[Ljava/lang/String;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    move-object v4, v5

    .line 822
    .local v4, "standalone":Ljava/lang/String;
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fDeclaredEncoding:Ljava/lang/String;

    .line 824
    move-object v5, v0

    move-object v6, v4

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    :goto_0
    iput-boolean v6, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fStandaloneSet:Z

    .line 825
    move-object v5, v0

    move-object v6, v0

    iget-boolean v6, v6, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fStandaloneSet:Z

    if-eqz v6, :cond_4

    move-object v6, v4

    const-string v7, "yes"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x1

    :goto_1
    iput-boolean v6, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fStandalone:Z

    .line 828
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityManager:Lcom/sun/xml/stream/XMLEntityManager;

    move-object v6, v0

    iget-boolean v6, v6, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fStandalone:Z

    invoke-virtual {v5, v6}, Lcom/sun/xml/stream/XMLEntityManager;->setStandalone(Z)V

    .line 832
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v5, :cond_0

    .line 833
    move v5, v1

    if-eqz v5, :cond_5

    .line 834
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-object v6, v2

    move-object v7, v3

    const/4 v8, 0x0

    invoke-interface {v5, v6, v7, v8}, Lorg/apache/xerces/xni/XMLDocumentHandler;->textDecl(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V

    .line 841
    :cond_0
    :goto_2
    move-object v5, v2

    if-eqz v5, :cond_1

    .line 842
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    move-object v6, v2

    invoke-virtual {v5, v6}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->setVersion(Ljava/lang/String;)V

    .line 845
    :cond_1
    move-object v5, v3

    if-eqz v5, :cond_2

    .line 846
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    move-object v6, v3

    invoke-virtual {v5, v6}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->setEncoding(Ljava/lang/String;)V

    .line 849
    :cond_2
    return-void

    .line 824
    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    .line 825
    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    .line 837
    :cond_5
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-object v6, v2

    move-object v7, v3

    move-object v8, v4

    const/4 v9, 0x0

    invoke-interface {v5, v6, v7, v8, v9}, Lorg/apache/xerces/xni/XMLDocumentHandler;->xmlDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V

    goto :goto_2
.end method

.method public setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V
    .locals 4

    .prologue
    .line 685
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    move-object v1, p1

    .local v1, "documentHandler":Lorg/apache/xerces/xni/XMLDocumentHandler;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    .line 686
    return-void
.end method

.method protected final setDriver(Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$Driver;)V
    .locals 4

    .prologue
    .line 1822
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    move-object v1, p1

    .local v1, "driver":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$Driver;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fDriver:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$Driver;

    .line 1828
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    .line 587
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    move-object v1, p1

    .local v1, "featureId":Ljava/lang/String;
    move v2, p2

    .local v2, "state":Z
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-super {v4, v5, v6}, Lcom/sun/xml/stream/XMLScanner;->setFeature(Ljava/lang/String;Z)V

    .line 590
    move-object v4, v1

    const-string v5, "http://apache.org/xml/features/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 591
    move-object v4, v1

    const-string v5, "http://apache.org/xml/features/"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 592
    .local v3, "feature":Ljava/lang/String;
    move-object v4, v3

    const-string v5, "scanner/notify-builtin-refs"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 593
    move-object v4, v0

    move v5, v2

    iput-boolean v5, v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fNotifyBuiltInRefs:Z

    .line 597
    .end local v3    # "feature":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public setInputSource(Lorg/apache/xerces/xni/parser/XMLInputSource;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 410
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    move-object v1, p1

    .local v1, "inputSource":Lorg/apache/xerces/xni/parser/XMLInputSource;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityManager:Lcom/sun/xml/stream/XMLEntityManager;

    move-object v3, v0

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLEntityManager;->setEntityHandler(Lcom/sun/xml/stream/XMLEntityHandler;)V

    .line 411
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityManager:Lcom/sun/xml/stream/XMLEntityManager;

    const-string v3, "$fragment$"

    move-object v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sun/xml/stream/XMLEntityManager;->startEntity(Ljava/lang/String;Lorg/apache/xerces/xni/parser/XMLInputSource;ZZ)V

    .line 413
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    .line 626
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    move-object v1, p1

    .local v1, "propertyId":Ljava/lang/String;
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-super {v4, v5, v6}, Lcom/sun/xml/stream/XMLScanner;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 629
    move-object v4, v1

    const-string v5, "http://apache.org/xml/properties/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 630
    move-object v4, v1

    const-string v5, "http://apache.org/xml/properties/"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 631
    .local v3, "property":Ljava/lang/String;
    move-object v4, v3

    const-string v5, "internal/entity-manager"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 632
    move-object v4, v0

    move-object v5, v2

    check-cast v5, Lcom/sun/xml/stream/XMLEntityManager;

    iput-object v5, v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityManager:Lcom/sun/xml/stream/XMLEntityManager;

    .line 634
    .line 637
    .end local v3    # "property":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    :cond_1
    goto :goto_0
.end method

.method protected final setScannerState(I)V
    .locals 4

    .prologue
    .line 1805
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    move v1, p1

    .local v1, "state":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fScannerState:I

    .line 1813
    return-void
.end method

.method protected skipElement()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1052
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    move-object v2, v0

    iget-boolean v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fShouldSkip:Z

    if-nez v2, :cond_0

    const/4 v2, 0x0

    move v0, v2

    .line 1074
    .end local v0    # "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    :goto_0
    return v0

    .line 1054
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    :cond_0
    move-object v2, v0

    iget-short v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fLastPointerLocation:S

    if-eqz v2, :cond_2

    .line 1056
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fElementArray:[Ljava/lang/String;

    move-object v3, v0

    iget-short v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fLastPointerLocation:S

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    aget-object v2, v2, v3

    move-object v1, v2

    .line 1057
    .local v1, "rawname":Ljava/lang/String;
    move-object v2, v1

    if-eqz v2, :cond_1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->skipFromTheBuffer(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1058
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget-short v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fLastPointerLocation:S

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    int-to-short v3, v3

    iput-short v3, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fLastPointerLocation:S

    .line 1062
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 1066
    :cond_1
    move-object v2, v0

    const/4 v3, 0x0

    iput-short v3, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fLastPointerLocation:S

    .line 1074
    .end local v1    # "rawname":Ljava/lang/String;
    :cond_2
    move-object v2, v0

    iget-boolean v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fShouldSkip:Z

    if-eqz v2, :cond_3

    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->skipElement(S)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method skipElement(S)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1080
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    move v1, p1

    .local v1, "column":S
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fElementStack:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;

    iget v5, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fDepth:I

    int-to-short v5, v5

    move v2, v5

    .line 1082
    .local v2, "depth":S
    move v5, v2

    const/4 v6, 0x5

    if-le v5, v6, :cond_0

    .line 1083
    move-object v5, v0

    const/4 v6, 0x0

    move-object v8, v5

    move v9, v6

    move v5, v9

    move-object v6, v8

    move v7, v9

    iput-boolean v7, v6, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fShouldSkip:Z

    move v0, v5

    .line 1102
    .end local v0    # "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    :goto_0
    return v0

    .line 1085
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    :cond_0
    move v5, v1

    move v3, v5

    .local v3, "i":S
    :goto_1
    move v5, v3

    const/4 v6, 0x4

    if-ge v5, v6, :cond_3

    .line 1086
    move-object v5, v0

    move v6, v2

    move v7, v3

    invoke-virtual {v5, v6, v7}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->getElementPointer(SS)S

    move-result v5

    move v4, v5

    .line 1088
    .local v4, "pointer":S
    move v5, v4

    if-nez v5, :cond_1

    .line 1089
    move-object v5, v0

    const/4 v6, 0x0

    move-object v8, v5

    move v9, v6

    move v5, v9

    move-object v6, v8

    move v7, v9

    iput-boolean v7, v6, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fShouldSkip:Z

    move v0, v5

    goto :goto_0

    .line 1092
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fElementArray:[Ljava/lang/String;

    move v6, v4

    aget-object v5, v5, v6

    if-eqz v5, :cond_2

    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fElementArray:[Ljava/lang/String;

    move v7, v4

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->skipFromTheBuffer(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1098
    move-object v5, v0

    move v6, v4

    iput-short v6, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fLastPointerLocation:S

    .line 1099
    move-object v5, v0

    const/4 v6, 0x1

    move-object v8, v5

    move v9, v6

    move v5, v9

    move-object v6, v8

    move v7, v9

    iput-boolean v7, v6, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fShouldSkip:Z

    move v0, v5

    goto :goto_0

    .line 1085
    :cond_2
    move v5, v3

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    int-to-short v5, v5

    move v3, v5

    goto :goto_1

    .line 1102
    .end local v4    # "pointer":S
    :cond_3
    move-object v5, v0

    const/4 v6, 0x0

    move-object v8, v5

    move v9, v6

    move v5, v9

    move-object v6, v8

    move v7, v9

    iput-boolean v7, v6, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fShouldSkip:Z

    move v0, v5

    goto :goto_0
.end method

.method skipFromTheBuffer(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1010
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    move-object v1, p1

    .local v1, "rawname":Ljava/lang/String;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1011
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v3}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->peekChar()I

    move-result v3

    int-to-char v3, v3

    move v2, v3

    .line 1014
    .local v2, "c":C
    move v3, v2

    const/16 v4, 0x20

    if-eq v3, v4, :cond_0

    move v3, v2

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_0

    move v3, v2

    const/16 v4, 0x3e

    if-ne v3, v4, :cond_1

    .line 1015
    :cond_0
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fElementRawname:Ljava/lang/String;

    .line 1016
    const/4 v3, 0x1

    move v0, v3

    .line 1023
    .end local v0    # "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    .end local v2    # "c":C
    :goto_0
    return v0

    .line 1019
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    .restart local v2    # "c":C
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 1023
    .end local v2    # "c":C
    :cond_2
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method skipQElement(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1041
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    move-object v1, p1

    .local v1, "rawname":Ljava/lang/String;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->getChar(I)I

    move-result v3

    move v2, v3

    .line 1043
    .local v2, "c":I
    move v3, v2

    invoke-static {v3}, Lorg/apache/xerces/util/XMLChar;->isName(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1044
    const/4 v3, 0x0

    move v0, v3

    .line 1046
    .end local v0    # "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipString(Ljava/lang/String;)Z

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method skipQElement(Lorg/apache/xerces/xni/QName;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1030
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    move-object v1, p1

    .local v1, "name":Lorg/apache/xerces/xni/QName;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    move-object v4, v1

    iget-object v4, v4, Lorg/apache/xerces/xni/QName;->characters:[C

    array-length v4, v4

    invoke-virtual {v3, v4}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->getChar(I)I

    move-result v3

    move v2, v3

    .line 1032
    .local v2, "c":I
    move v3, v2

    invoke-static {v3}, Lorg/apache/xerces/util/XMLChar;->isName(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1033
    const/4 v3, 0x0

    move v0, v3

    .line 1035
    .end local v0    # "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    move-object v4, v1

    iget-object v4, v4, Lorg/apache/xerces/xni/QName;->characters:[C

    invoke-virtual {v3, v4}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipString([C)Z

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method public standaloneSet()Z
    .locals 2

    .prologue
    .line 1366
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fStandaloneSet:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    return v0
.end method

.method public startEntity(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 718
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "identifier":Lorg/apache/xerces/xni/XMLResourceIdentifier;
    move-object v3, p3

    .local v3, "encoding":Ljava/lang/String;
    move-object v5, v0

    iget v5, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityDepth:I

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityStack:[I

    array-length v6, v6

    if-ne v5, v6, :cond_0

    .line 719
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityStack:[I

    array-length v5, v5

    const/4 v6, 0x2

    mul-int/lit8 v5, v5, 0x2

    new-array v5, v5, [I

    move-object v4, v5

    .line 720
    .local v4, "entityarray":[I
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityStack:[I

    const/4 v6, 0x0

    move-object v7, v4

    const/4 v8, 0x0

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityStack:[I

    array-length v9, v9

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 721
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityStack:[I

    .line 723
    .end local v4    # "entityarray":[I
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityStack:[I

    move-object v6, v0

    iget v6, v6, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityDepth:I

    move-object v7, v0

    iget v7, v7, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    aput v7, v5, v6

    .line 725
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-super {v5, v6, v7, v8}, Lcom/sun/xml/stream/XMLScanner;->startEntity(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;)V

    .line 728
    move-object v5, v0

    iget-boolean v5, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fStandalone:Z

    if-eqz v5, :cond_1

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityStore:Lcom/sun/xml/stream/XMLEntityStorage;

    move-object v6, v1

    invoke-virtual {v5, v6}, Lcom/sun/xml/stream/XMLEntityStorage;->isEntityDeclInExternalSubset(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 729
    move-object v5, v0

    const-string v6, "MSG_REFERENCE_TO_EXTERNALLY_DECLARED_ENTITY_WHEN_STANDALONE"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move-object v10, v1

    aput-object v10, v8, v9

    invoke-virtual {v5, v6, v7}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 735
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v5, :cond_2

    move-object v5, v0

    iget-boolean v5, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fScanningAttribute:Z

    if-nez v5, :cond_2

    .line 736
    move-object v5, v1

    const-string v6, "[xml]"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 737
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    const/4 v9, 0x0

    invoke-interface {v5, v6, v7, v8, v9}, Lorg/apache/xerces/xni/XMLDocumentHandler;->startGeneralEntity(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V

    .line 741
    :cond_2
    return-void
.end method

.method storePointerForADepth(S)S
    .locals 7

    .prologue
    .line 968
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    move v1, p1

    .local v1, "elementPointer":S
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fElementStack:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;

    iget v4, v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fDepth:I

    int-to-short v4, v4

    move v2, v4

    .line 972
    .local v2, "depth":S
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":S
    :goto_0
    move v4, v3

    const/4 v5, 0x4

    if-ge v4, v5, :cond_1

    .line 974
    move-object v4, v0

    move v5, v2

    move v6, v3

    invoke-virtual {v4, v5, v6}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->canStore(SS)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 975
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fPointerInfo:[[S

    move v5, v2

    aget-object v4, v4, v5

    move v5, v3

    move v6, v1

    aput-short v6, v4, v5

    .line 984
    move v4, v3

    move v0, v4

    .line 989
    .end local v0    # "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    :goto_1
    return v0

    .line 972
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    :cond_0
    move v4, v3

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    int-to-short v4, v4

    move v3, v4

    goto :goto_0

    .line 989
    :cond_1
    const/4 v4, -0x1

    move v0, v4

    goto :goto_1
.end method
