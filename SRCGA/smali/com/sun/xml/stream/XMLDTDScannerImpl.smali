.class public Lcom/sun/xml/stream/XMLDTDScannerImpl;
.super Lcom/sun/xml/stream/XMLScanner;
.source "XMLDTDScannerImpl.java"

# interfaces
.implements Lorg/apache/xerces/xni/parser/XMLDTDScanner;
.implements Lorg/apache/xerces/xni/parser/XMLComponent;
.implements Lcom/sun/xml/stream/XMLEntityHandler;


# static fields
.field private static final DEBUG_SCANNER_STATE:Z = false

.field private static final FEATURE_DEFAULTS:[Ljava/lang/Boolean;

.field private static final PROPERTY_DEFAULTS:[Ljava/lang/Object;

.field private static final RECOGNIZED_FEATURES:[Ljava/lang/String;

.field private static final RECOGNIZED_PROPERTIES:[Ljava/lang/String;

.field protected static final SCANNER_STATE_END_OF_INPUT:I = 0x0

.field protected static final SCANNER_STATE_MARKUP_DECL:I = 0x2

.field protected static final SCANNER_STATE_TEXT_DECL:I = 0x1


# instance fields
.field private fAttributes:Lorg/apache/xerces/util/XMLAttributesImpl;

.field private fContentDepth:I

.field private fContentStack:[I

.field protected fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

.field public fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

.field private fEnumeration:[Ljava/lang/String;

.field private fEnumerationCount:I

.field private fExtEntityDepth:I

.field private fIgnoreConditionalBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

.field private fIncludeSectDepth:I

.field private fLiteral:Lorg/apache/xerces/xni/XMLString;

.field private fLiteral2:Lorg/apache/xerces/xni/XMLString;

.field private fMarkUpDepth:I

.field private fPEDepth:I

.field private fPEReport:[Z

.field private fPEStack:[I

.field protected fScannerState:I

.field protected fSeenExternalDTD:Z

.field protected fSeenExternalPE:Z

.field protected fStandalone:Z

.field private fStartDTDCalled:Z

.field private fString:Lorg/apache/xerces/xni/XMLString;

.field private fStringBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

.field private fStringBuffer2:Lorg/apache/xerces/util/XMLStringBuffer;

.field private fStrings:[Ljava/lang/String;

.field nonValidatingMode:Z

.field nvGrammarInfo:Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 131
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string v3, "http://xml.org/sax/features/validation"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const-string v3, "http://apache.org/xml/features/scanner/notify-char-refs"

    aput-object v3, v1, v2

    sput-object v0, Lcom/sun/xml/stream/XMLDTDScannerImpl;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    .line 137
    const/4 v0, 0x2

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

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v3, v1, v2

    sput-object v0, Lcom/sun/xml/stream/XMLDTDScannerImpl;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

    .line 143
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

    sput-object v0, Lcom/sun/xml/stream/XMLDTDScannerImpl;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    .line 150
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

    sput-object v0, Lcom/sun/xml/stream/XMLDTDScannerImpl;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    .line 262
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDTDScannerImpl;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/xml/stream/XMLScanner;-><init>()V

    .line 168
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    .line 194
    move-object v1, v0

    new-instance v2, Lorg/apache/xerces/util/XMLAttributesImpl;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Lorg/apache/xerces/util/XMLAttributesImpl;-><init>()V

    iput-object v2, v1, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fAttributes:Lorg/apache/xerces/util/XMLAttributesImpl;

    .line 200
    move-object v1, v0

    const/4 v2, 0x5

    new-array v2, v2, [I

    iput-object v2, v1, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fContentStack:[I

    .line 206
    move-object v1, v0

    const/4 v2, 0x5

    new-array v2, v2, [I

    iput-object v2, v1, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fPEStack:[I

    .line 210
    move-object v1, v0

    const/4 v2, 0x5

    new-array v2, v2, [Z

    iput-object v2, v1, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fPEReport:[Z

    .line 227
    move-object v1, v0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, v1, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fStrings:[Ljava/lang/String;

    .line 230
    move-object v1, v0

    new-instance v2, Lorg/apache/xerces/xni/XMLString;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Lorg/apache/xerces/xni/XMLString;-><init>()V

    iput-object v2, v1, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fString:Lorg/apache/xerces/xni/XMLString;

    .line 233
    move-object v1, v0

    new-instance v2, Lorg/apache/xerces/util/XMLStringBuffer;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Lorg/apache/xerces/util/XMLStringBuffer;-><init>()V

    iput-object v2, v1, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fStringBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    .line 236
    move-object v1, v0

    new-instance v2, Lorg/apache/xerces/util/XMLStringBuffer;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Lorg/apache/xerces/util/XMLStringBuffer;-><init>()V

    iput-object v2, v1, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fStringBuffer2:Lorg/apache/xerces/util/XMLStringBuffer;

    .line 239
    move-object v1, v0

    new-instance v2, Lorg/apache/xerces/xni/XMLString;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Lorg/apache/xerces/xni/XMLString;-><init>()V

    iput-object v2, v1, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fLiteral:Lorg/apache/xerces/xni/XMLString;

    .line 242
    move-object v1, v0

    new-instance v2, Lorg/apache/xerces/xni/XMLString;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Lorg/apache/xerces/xni/XMLString;-><init>()V

    iput-object v2, v1, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fLiteral2:Lorg/apache/xerces/xni/XMLString;

    .line 245
    move-object v1, v0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, v1, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEnumeration:[Ljava/lang/String;

    .line 251
    move-object v1, v0

    new-instance v2, Lorg/apache/xerces/util/XMLStringBuffer;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/16 v4, 0x80

    invoke-direct {v3, v4}, Lorg/apache/xerces/util/XMLStringBuffer;-><init>(I)V

    iput-object v2, v1, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fIgnoreConditionalBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    .line 254
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/xml/stream/XMLDTDScannerImpl;->nvGrammarInfo:Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;

    .line 256
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sun/xml/stream/XMLDTDScannerImpl;->nonValidatingMode:Z

    .line 263
    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/util/SymbolTable;Lcom/sun/xml/stream/XMLErrorReporter;Lcom/sun/xml/stream/XMLEntityManager;)V
    .locals 9

    .prologue
    .line 267
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDTDScannerImpl;
    move-object v1, p1

    .local v1, "symbolTable":Lorg/apache/xerces/util/SymbolTable;
    move-object v2, p2

    .local v2, "errorReporter":Lcom/sun/xml/stream/XMLErrorReporter;
    move-object v3, p3

    .local v3, "entityManager":Lcom/sun/xml/stream/XMLEntityManager;
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/xml/stream/XMLScanner;-><init>()V

    .line 168
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    .line 194
    move-object v4, v0

    new-instance v5, Lorg/apache/xerces/util/XMLAttributesImpl;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Lorg/apache/xerces/util/XMLAttributesImpl;-><init>()V

    iput-object v5, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fAttributes:Lorg/apache/xerces/util/XMLAttributesImpl;

    .line 200
    move-object v4, v0

    const/4 v5, 0x5

    new-array v5, v5, [I

    iput-object v5, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fContentStack:[I

    .line 206
    move-object v4, v0

    const/4 v5, 0x5

    new-array v5, v5, [I

    iput-object v5, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fPEStack:[I

    .line 210
    move-object v4, v0

    const/4 v5, 0x5

    new-array v5, v5, [Z

    iput-object v5, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fPEReport:[Z

    .line 227
    move-object v4, v0

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fStrings:[Ljava/lang/String;

    .line 230
    move-object v4, v0

    new-instance v5, Lorg/apache/xerces/xni/XMLString;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Lorg/apache/xerces/xni/XMLString;-><init>()V

    iput-object v5, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fString:Lorg/apache/xerces/xni/XMLString;

    .line 233
    move-object v4, v0

    new-instance v5, Lorg/apache/xerces/util/XMLStringBuffer;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Lorg/apache/xerces/util/XMLStringBuffer;-><init>()V

    iput-object v5, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fStringBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    .line 236
    move-object v4, v0

    new-instance v5, Lorg/apache/xerces/util/XMLStringBuffer;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Lorg/apache/xerces/util/XMLStringBuffer;-><init>()V

    iput-object v5, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fStringBuffer2:Lorg/apache/xerces/util/XMLStringBuffer;

    .line 239
    move-object v4, v0

    new-instance v5, Lorg/apache/xerces/xni/XMLString;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Lorg/apache/xerces/xni/XMLString;-><init>()V

    iput-object v5, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fLiteral:Lorg/apache/xerces/xni/XMLString;

    .line 242
    move-object v4, v0

    new-instance v5, Lorg/apache/xerces/xni/XMLString;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Lorg/apache/xerces/xni/XMLString;-><init>()V

    iput-object v5, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fLiteral2:Lorg/apache/xerces/xni/XMLString;

    .line 245
    move-object v4, v0

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEnumeration:[Ljava/lang/String;

    .line 251
    move-object v4, v0

    new-instance v5, Lorg/apache/xerces/util/XMLStringBuffer;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const/16 v7, 0x80

    invoke-direct {v6, v7}, Lorg/apache/xerces/util/XMLStringBuffer;-><init>(I)V

    iput-object v5, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fIgnoreConditionalBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    .line 254
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->nvGrammarInfo:Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;

    .line 256
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->nonValidatingMode:Z

    .line 268
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    .line 269
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fErrorReporter:Lcom/sun/xml/stream/XMLErrorReporter;

    .line 270
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityManager:Lcom/sun/xml/stream/XMLEntityManager;

    .line 272
    return-void
.end method

.method private final ensureEnumerationSize(I)V
    .locals 8

    .prologue
    .line 2130
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDTDScannerImpl;
    move v1, p1

    .local v1, "size":I
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEnumeration:[Ljava/lang/String;

    array-length v3, v3

    move v4, v1

    if-ne v3, v4, :cond_0

    .line 2131
    move v3, v1

    const/4 v4, 0x2

    mul-int/lit8 v3, v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    move-object v2, v3

    .line 2132
    .local v2, "newEnum":[Ljava/lang/String;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEnumeration:[Ljava/lang/String;

    const/4 v4, 0x0

    move-object v5, v2

    const/4 v6, 0x0

    move v7, v1

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2133
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEnumeration:[Ljava/lang/String;

    .line 2135
    .end local v2    # "newEnum":[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private static getScannerStateName(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 704
    move v0, p0

    .local v0, "state":I
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "??? ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "state":I
    return-object v0
.end method

.method private init()V
    .locals 6

    .prologue
    .line 2140
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDTDScannerImpl;
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fStartDTDCalled:Z

    .line 2141
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fExtEntityDepth:I

    .line 2142
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fIncludeSectDepth:I

    .line 2143
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fMarkUpDepth:I

    .line 2144
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fPEDepth:I

    .line 2146
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fStandalone:Z

    .line 2147
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fSeenExternalDTD:Z

    .line 2148
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fSeenExternalPE:Z

    .line 2151
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fPropertyManager:Lcom/sun/xml/stream/PropertyManager;

    const-string v3, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/PropertyManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xerces/util/SymbolTable;

    iput-object v2, v1, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    .line 2152
    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->setScannerState(I)V

    .line 2154
    move-object v1, v0

    new-instance v2, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    invoke-direct {v3, v4}, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;-><init>(Lorg/apache/xerces/util/SymbolTable;)V

    iput-object v2, v1, Lcom/sun/xml/stream/XMLDTDScannerImpl;->nvGrammarInfo:Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;

    .line 2156
    return-void
.end method

.method private final peekReportEntity()Z
    .locals 4

    .prologue
    .line 2122
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDTDScannerImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fPEReport:[Z

    move-object v2, v0

    iget v2, v2, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fPEDepth:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    aget-boolean v1, v1, v2

    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLDTDScannerImpl;
    return v0
.end method

.method private final popContentStack()I
    .locals 7

    .prologue
    .line 2093
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDTDScannerImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fContentStack:[I

    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fContentDepth:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fContentDepth:I

    aget v1, v1, v2

    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLDTDScannerImpl;
    return v0
.end method

.method private final popPEStack()I
    .locals 7

    .prologue
    .line 2117
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDTDScannerImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fPEStack:[I

    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fPEDepth:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fPEDepth:I

    aget v1, v1, v2

    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLDTDScannerImpl;
    return v0
.end method

.method private final pushContentStack(I)V
    .locals 10

    .prologue
    .line 2084
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDTDScannerImpl;
    move v1, p1

    .local v1, "c":I
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fContentStack:[I

    array-length v3, v3

    move-object v4, v0

    iget v4, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fContentDepth:I

    if-ne v3, v4, :cond_0

    .line 2085
    move-object v3, v0

    iget v3, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fContentDepth:I

    const/4 v4, 0x2

    mul-int/lit8 v3, v3, 0x2

    new-array v3, v3, [I

    move-object v2, v3

    .line 2086
    .local v2, "newStack":[I
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fContentStack:[I

    const/4 v4, 0x0

    move-object v5, v2

    const/4 v6, 0x0

    move-object v7, v0

    iget v7, v7, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fContentDepth:I

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2087
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fContentStack:[I

    .line 2089
    .end local v2    # "newStack":[I
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fContentStack:[I

    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fContentDepth:I

    move-object v8, v4

    move v9, v5

    move v4, v9

    move-object v5, v8

    move v6, v9

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fContentDepth:I

    move v5, v1

    aput v5, v3, v4

    .line 2090
    return-void
.end method

.method private final pushPEStack(IZ)V
    .locals 12

    .prologue
    .line 2101
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDTDScannerImpl;
    move v1, p1

    .local v1, "depth":I
    move v2, p2

    .local v2, "report":Z
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fPEStack:[I

    array-length v5, v5

    move-object v6, v0

    iget v6, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fPEDepth:I

    if-ne v5, v6, :cond_0

    .line 2102
    move-object v5, v0

    iget v5, v5, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fPEDepth:I

    const/4 v6, 0x2

    mul-int/lit8 v5, v5, 0x2

    new-array v5, v5, [I

    move-object v3, v5

    .line 2103
    .local v3, "newIntStack":[I
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fPEStack:[I

    const/4 v6, 0x0

    move-object v7, v3

    const/4 v8, 0x0

    move-object v9, v0

    iget v9, v9, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fPEDepth:I

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2104
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fPEStack:[I

    .line 2106
    move-object v5, v0

    iget v5, v5, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fPEDepth:I

    const/4 v6, 0x2

    mul-int/lit8 v5, v5, 0x2

    new-array v5, v5, [Z

    move-object v4, v5

    .line 2107
    .local v4, "newBooleanStack":[Z
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fPEReport:[Z

    const/4 v6, 0x0

    move-object v7, v4

    const/4 v8, 0x0

    move-object v9, v0

    iget v9, v9, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fPEDepth:I

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2108
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fPEReport:[Z

    .line 2111
    .end local v3    # "newIntStack":[I
    .end local v4    # "newBooleanStack":[Z
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fPEReport:[Z

    move-object v6, v0

    iget v6, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fPEDepth:I

    move v7, v2

    aput-boolean v7, v5, v6

    .line 2112
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fPEStack:[I

    move-object v6, v0

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    iget v7, v7, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fPEDepth:I

    move-object v10, v6

    move v11, v7

    move v6, v11

    move-object v7, v10

    move v8, v11

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fPEDepth:I

    move v7, v1

    aput v7, v5, v6

    .line 2113
    return-void
.end method

.method private final scanAttType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1307
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDTDScannerImpl;
    move-object v1, p1

    .local v1, "elName":Ljava/lang/String;
    move-object/from16 v2, p2

    .local v2, "atName":Ljava/lang/String;
    const/4 v6, 0x0

    move-object v3, v6

    .line 1308
    .local v3, "type":Ljava/lang/String;
    move-object v6, v0

    const/4 v7, 0x0

    iput v7, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEnumerationCount:I

    .line 1314
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const-string v7, "CDATA"

    invoke-virtual {v6, v7}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipString(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1315
    const-string v6, "CDATA"

    move-object v3, v6

    .line 1398
    :goto_0
    move-object v6, v3

    move-object v0, v6

    .end local v0    # "this":Lcom/sun/xml/stream/XMLDTDScannerImpl;
    return-object v0

    .line 1317
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLDTDScannerImpl;
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const-string v7, "IDREFS"

    invoke-virtual {v6, v7}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipString(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1318
    const-string v6, "IDREFS"

    move-object v3, v6

    goto :goto_0

    .line 1320
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const-string v7, "IDREF"

    invoke-virtual {v6, v7}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipString(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1321
    const-string v6, "IDREF"

    move-object v3, v6

    goto :goto_0

    .line 1323
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const-string v7, "ID"

    invoke-virtual {v6, v7}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipString(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1324
    const-string v6, "ID"

    move-object v3, v6

    goto :goto_0

    .line 1326
    :cond_3
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const-string v7, "ENTITY"

    invoke-virtual {v6, v7}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipString(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1327
    const-string v6, "ENTITY"

    move-object v3, v6

    goto :goto_0

    .line 1329
    :cond_4
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const-string v7, "ENTITIES"

    invoke-virtual {v6, v7}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipString(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1330
    const-string v6, "ENTITIES"

    move-object v3, v6

    goto :goto_0

    .line 1332
    :cond_5
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const-string v7, "NMTOKENS"

    invoke-virtual {v6, v7}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipString(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1333
    const-string v6, "NMTOKENS"

    move-object v3, v6

    goto :goto_0

    .line 1335
    :cond_6
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const-string v7, "NMTOKEN"

    invoke-virtual {v6, v7}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipString(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1336
    const-string v6, "NMTOKEN"

    move-object v3, v6

    goto :goto_0

    .line 1338
    :cond_7
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const-string v7, "NOTATION"

    invoke-virtual {v6, v7}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipString(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 1339
    const-string v6, "NOTATION"

    move-object v3, v6

    .line 1341
    move-object v6, v0

    const/4 v7, 0x1

    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v8

    if-nez v8, :cond_d

    const/4 v8, 0x1

    :goto_1
    invoke-direct {v6, v7, v8}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v6

    if-nez v6, :cond_8

    .line 1342
    move-object v6, v0

    const-string v7, "MSG_SPACE_REQUIRED_AFTER_NOTATION_IN_NOTATIONTYPE"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v1

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x1

    move-object v11, v2

    aput-object v11, v9, v10

    invoke-virtual {v6, v7, v8}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1346
    :cond_8
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v6}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scanChar()I

    move-result v6

    move v4, v6

    .line 1347
    .local v4, "c":I
    move v6, v4

    const/16 v7, 0x28

    if-eq v6, v7, :cond_9

    .line 1348
    move-object v6, v0

    const-string v7, "MSG_OPEN_PAREN_REQUIRED_IN_NOTATIONTYPE"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v1

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x1

    move-object v11, v2

    aput-object v11, v9, v10

    invoke-virtual {v6, v7, v8}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1351
    :cond_9
    move-object v6, v0

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    iget v7, v7, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fMarkUpDepth:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fMarkUpDepth:I

    .line 1353
    :cond_a
    move-object v6, v0

    const/4 v7, 0x0

    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v8

    if-nez v8, :cond_e

    const/4 v8, 0x1

    :goto_2
    invoke-direct {v6, v7, v8}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v6

    .line 1354
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v6}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scanName()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 1355
    .local v5, "aName":Ljava/lang/String;
    move-object v6, v5

    if-nez v6, :cond_b

    .line 1356
    move-object v6, v0

    const-string v7, "MSG_NAME_REQUIRED_IN_NOTATIONTYPE"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v1

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x1

    move-object v11, v2

    aput-object v11, v9, v10

    invoke-virtual {v6, v7, v8}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1359
    :cond_b
    move-object v6, v0

    move-object v7, v0

    iget v7, v7, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEnumerationCount:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-direct {v6, v7}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->ensureEnumerationSize(I)V

    .line 1360
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEnumeration:[Ljava/lang/String;

    move-object v7, v0

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    iget v8, v8, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEnumerationCount:I

    move-object v12, v7

    move v13, v8

    move v7, v13

    move-object v8, v12

    move v9, v13

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEnumerationCount:I

    move-object v8, v5

    aput-object v8, v6, v7

    .line 1361
    move-object v6, v0

    const/4 v7, 0x0

    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v8

    if-nez v8, :cond_f

    const/4 v8, 0x1

    :goto_3
    invoke-direct {v6, v7, v8}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v6

    .line 1362
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v6}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scanChar()I

    move-result v6

    move v4, v6

    .line 1363
    move v6, v4

    const/16 v7, 0x7c

    if-eq v6, v7, :cond_a

    .line 1364
    move v6, v4

    const/16 v7, 0x29

    if-eq v6, v7, :cond_c

    .line 1365
    move-object v6, v0

    const-string v7, "NotationTypeUnterminated"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v1

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x1

    move-object v11, v2

    aput-object v11, v9, v10

    invoke-virtual {v6, v7, v8}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1368
    :cond_c
    move-object v6, v0

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    iget v7, v7, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fMarkUpDepth:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    iput v7, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fMarkUpDepth:I

    .line 1369
    goto/16 :goto_0

    .line 1341
    .end local v4    # "c":I
    .end local v5    # "aName":Ljava/lang/String;
    :cond_d
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 1353
    .restart local v4    # "c":I
    :cond_e
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 1361
    .restart local v5    # "aName":Ljava/lang/String;
    :cond_f
    const/4 v8, 0x0

    goto :goto_3

    .line 1371
    .end local v4    # "c":I
    .end local v5    # "aName":Ljava/lang/String;
    :cond_10
    const-string v6, "ENUMERATION"

    move-object v3, v6

    .line 1373
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v6}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scanChar()I

    move-result v6

    move v4, v6

    .line 1374
    .restart local v4    # "c":I
    move v6, v4

    const/16 v7, 0x28

    if-eq v6, v7, :cond_11

    .line 1376
    move-object v6, v0

    const-string v7, "AttTypeRequiredInAttDef"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v1

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x1

    move-object v11, v2

    aput-object v11, v9, v10

    invoke-virtual {v6, v7, v8}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1379
    :cond_11
    move-object v6, v0

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    iget v7, v7, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fMarkUpDepth:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fMarkUpDepth:I

    .line 1381
    :cond_12
    move-object v6, v0

    const/4 v7, 0x0

    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v8

    if-nez v8, :cond_15

    const/4 v8, 0x1

    :goto_4
    invoke-direct {v6, v7, v8}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v6

    .line 1382
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v6}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scanNmtoken()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 1383
    .local v5, "token":Ljava/lang/String;
    move-object v6, v5

    if-nez v6, :cond_13

    .line 1384
    move-object v6, v0

    const-string v7, "MSG_NMTOKEN_REQUIRED_IN_ENUMERATION"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v1

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x1

    move-object v11, v2

    aput-object v11, v9, v10

    invoke-virtual {v6, v7, v8}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1387
    :cond_13
    move-object v6, v0

    move-object v7, v0

    iget v7, v7, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEnumerationCount:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-direct {v6, v7}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->ensureEnumerationSize(I)V

    .line 1388
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEnumeration:[Ljava/lang/String;

    move-object v7, v0

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    iget v8, v8, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEnumerationCount:I

    move-object v12, v7

    move v13, v8

    move v7, v13

    move-object v8, v12

    move v9, v13

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEnumerationCount:I

    move-object v8, v5

    aput-object v8, v6, v7

    .line 1389
    move-object v6, v0

    const/4 v7, 0x0

    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v8

    if-nez v8, :cond_16

    const/4 v8, 0x1

    :goto_5
    invoke-direct {v6, v7, v8}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v6

    .line 1390
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v6}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scanChar()I

    move-result v6

    move v4, v6

    .line 1391
    move v6, v4

    const/16 v7, 0x7c

    if-eq v6, v7, :cond_12

    .line 1392
    move v6, v4

    const/16 v7, 0x29

    if-eq v6, v7, :cond_14

    .line 1393
    move-object v6, v0

    const-string v7, "EnumerationUnterminated"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v1

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x1

    move-object v11, v2

    aput-object v11, v9, v10

    invoke-virtual {v6, v7, v8}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1396
    :cond_14
    move-object v6, v0

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    iget v7, v7, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fMarkUpDepth:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    iput v7, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fMarkUpDepth:I

    goto/16 :goto_0

    .line 1381
    .end local v5    # "token":Ljava/lang/String;
    :cond_15
    const/4 v8, 0x0

    goto/16 :goto_4

    .line 1389
    .restart local v5    # "token":Ljava/lang/String;
    :cond_16
    const/4 v8, 0x0

    goto :goto_5
.end method

.method private final scanChildren(Ljava/lang/String;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1031
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDTDScannerImpl;
    move-object v1, p1

    .local v1, "elName":Ljava/lang/String;
    move-object v6, v0

    const/4 v7, 0x0

    iput v7, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fContentDepth:I

    .line 1032
    move-object v6, v0

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->pushContentStack(I)V

    .line 1033
    const/4 v6, 0x0

    move v2, v6

    .line 1036
    .local v2, "currentOp":I
    :goto_0
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const/16 v7, 0x28

    invoke-virtual {v6, v7}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1037
    move-object v6, v0

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    iget v7, v7, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fMarkUpDepth:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fMarkUpDepth:I

    .line 1038
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fStringBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    const/16 v7, 0x28

    invoke-virtual {v6, v7}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 1040
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v6, :cond_0

    .line 1041
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Lorg/apache/xerces/xni/XMLDTDContentModelHandler;->startGroup(Lorg/apache/xerces/xni/Augmentations;)V

    .line 1044
    :cond_0
    move-object v6, v0

    move v7, v2

    invoke-direct {v6, v7}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->pushContentStack(I)V

    .line 1045
    const/4 v6, 0x0

    move v2, v6

    .line 1046
    move-object v6, v0

    const/4 v7, 0x0

    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v8

    if-nez v8, :cond_1

    const/4 v8, 0x1

    :goto_1
    invoke-direct {v6, v7, v8}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v6

    .line 1047
    goto :goto_0

    .line 1046
    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    .line 1049
    :cond_2
    move-object v6, v0

    const/4 v7, 0x0

    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v8

    if-nez v8, :cond_3

    const/4 v8, 0x1

    :goto_2
    invoke-direct {v6, v7, v8}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v6

    .line 1050
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v6}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scanName()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 1051
    .local v4, "childName":Ljava/lang/String;
    move-object v6, v4

    if-nez v6, :cond_4

    .line 1052
    move-object v6, v0

    const-string v7, "MSG_OPEN_PAREN_OR_ELEMENT_TYPE_REQUIRED_IN_CHILDREN"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v1

    aput-object v11, v9, v10

    invoke-virtual {v6, v7, v8}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1054
    .line 1152
    :goto_3
    return-void

    .line 1049
    .end local v4    # "childName":Ljava/lang/String;
    :cond_3
    const/4 v8, 0x0

    goto :goto_2

    .line 1057
    .restart local v4    # "childName":Ljava/lang/String;
    :cond_4
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v6, :cond_5

    .line 1058
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    move-object v7, v4

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Lorg/apache/xerces/xni/XMLDTDContentModelHandler;->element(Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V

    .line 1060
    :cond_5
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fStringBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    move-object v7, v4

    invoke-virtual {v6, v7}, Lorg/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    .line 1061
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v6}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->peekChar()I

    move-result v6

    move v3, v6

    .line 1062
    .local v3, "c":I
    move v6, v3

    const/16 v7, 0x3f

    if-eq v6, v7, :cond_6

    move v6, v3

    const/16 v7, 0x2a

    if-eq v6, v7, :cond_6

    move v6, v3

    const/16 v7, 0x2b

    if-ne v6, v7, :cond_8

    .line 1064
    :cond_6
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v6, :cond_7

    .line 1066
    move v6, v3

    const/16 v7, 0x3f

    if-ne v6, v7, :cond_a

    .line 1067
    const/4 v6, 0x2

    move v5, v6

    .line 1075
    .local v5, "oc":S
    :goto_4
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    move v7, v5

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Lorg/apache/xerces/xni/XMLDTDContentModelHandler;->occurrence(SLorg/apache/xerces/xni/Augmentations;)V

    .line 1077
    .end local v5    # "oc":S
    :cond_7
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v6}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scanChar()I

    move-result v6

    .line 1078
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fStringBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    move v7, v3

    int-to-char v7, v7

    invoke-virtual {v6, v7}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 1081
    :cond_8
    move-object v6, v0

    const/4 v7, 0x0

    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v8

    if-nez v8, :cond_c

    const/4 v8, 0x1

    :goto_5
    invoke-direct {v6, v7, v8}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v6

    .line 1082
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v6}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->peekChar()I

    move-result v6

    move v3, v6

    .line 1083
    move v6, v3

    const/16 v7, 0x2c

    if-ne v6, v7, :cond_d

    move v6, v2

    const/16 v7, 0x7c

    if-eq v6, v7, :cond_d

    .line 1084
    move v6, v3

    move v2, v6

    .line 1086
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v6, :cond_9

    .line 1087
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Lorg/apache/xerces/xni/XMLDTDContentModelHandler;->separator(SLorg/apache/xerces/xni/Augmentations;)V

    .line 1090
    :cond_9
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v6}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scanChar()I

    move-result v6

    .line 1091
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fStringBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    const/16 v7, 0x2c

    invoke-virtual {v6, v7}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 1092
    .line 1155
    :goto_6
    move-object v6, v0

    const/4 v7, 0x0

    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v8

    if-nez v8, :cond_16

    const/4 v8, 0x1

    :goto_7
    invoke-direct {v6, v7, v8}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v6

    .line 1156
    goto/16 :goto_0

    .line 1069
    :cond_a
    move v6, v3

    const/16 v7, 0x2a

    if-ne v6, v7, :cond_b

    .line 1070
    const/4 v6, 0x3

    move v5, v6

    .restart local v5    # "oc":S
    goto :goto_4

    .line 1073
    .end local v5    # "oc":S
    :cond_b
    const/4 v6, 0x4

    move v5, v6

    .restart local v5    # "oc":S
    goto :goto_4

    .line 1081
    .end local v5    # "oc":S
    :cond_c
    const/4 v8, 0x0

    goto :goto_5

    .line 1094
    :cond_d
    move v6, v3

    const/16 v7, 0x7c

    if-ne v6, v7, :cond_f

    move v6, v2

    const/16 v7, 0x2c

    if-eq v6, v7, :cond_f

    .line 1095
    move v6, v3

    move v2, v6

    .line 1097
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v6, :cond_e

    .line 1098
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Lorg/apache/xerces/xni/XMLDTDContentModelHandler;->separator(SLorg/apache/xerces/xni/Augmentations;)V

    .line 1101
    :cond_e
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v6}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scanChar()I

    move-result v6

    .line 1102
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fStringBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    const/16 v7, 0x7c

    invoke-virtual {v6, v7}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 1103
    goto :goto_6

    .line 1105
    :cond_f
    move v6, v3

    const/16 v7, 0x29

    if-eq v6, v7, :cond_10

    .line 1106
    move-object v6, v0

    const-string v7, "MSG_CLOSE_PAREN_REQUIRED_IN_CHILDREN"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v1

    aput-object v11, v9, v10

    invoke-virtual {v6, v7, v8}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1110
    :cond_10
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v6, :cond_11

    .line 1111
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Lorg/apache/xerces/xni/XMLDTDContentModelHandler;->endGroup(Lorg/apache/xerces/xni/Augmentations;)V

    .line 1114
    :cond_11
    move-object v6, v0

    invoke-direct {v6}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->popContentStack()I

    move-result v6

    move v2, v6

    .line 1121
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const-string v7, ")?"

    invoke-virtual {v6, v7}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipString(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 1122
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fStringBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    const-string v7, ")?"

    invoke-virtual {v6, v7}, Lorg/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    .line 1124
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v6, :cond_12

    .line 1125
    const/4 v6, 0x2

    move v5, v6

    .line 1126
    .restart local v5    # "oc":S
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    move v7, v5

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Lorg/apache/xerces/xni/XMLDTDContentModelHandler;->occurrence(SLorg/apache/xerces/xni/Augmentations;)V

    .line 1150
    .end local v5    # "oc":S
    :cond_12
    :goto_8
    move-object v6, v0

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    iget v7, v7, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fMarkUpDepth:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    iput v7, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fMarkUpDepth:I

    .line 1151
    move-object v6, v0

    iget v6, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fContentDepth:I

    if-nez v6, :cond_8

    .line 1152
    goto/16 :goto_3

    .line 1129
    :cond_13
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const-string v7, ")+"

    invoke-virtual {v6, v7}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipString(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 1130
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fStringBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    const-string v7, ")+"

    invoke-virtual {v6, v7}, Lorg/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    .line 1132
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v6, :cond_12

    .line 1133
    const/4 v6, 0x4

    move v5, v6

    .line 1134
    .restart local v5    # "oc":S
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    move v7, v5

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Lorg/apache/xerces/xni/XMLDTDContentModelHandler;->occurrence(SLorg/apache/xerces/xni/Augmentations;)V

    goto :goto_8

    .line 1137
    .end local v5    # "oc":S
    :cond_14
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const-string v7, ")*"

    invoke-virtual {v6, v7}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipString(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 1138
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fStringBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    const-string v7, ")*"

    invoke-virtual {v6, v7}, Lorg/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    .line 1140
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v6, :cond_12

    .line 1141
    const/4 v6, 0x3

    move v5, v6

    .line 1142
    .restart local v5    # "oc":S
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    move v7, v5

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Lorg/apache/xerces/xni/XMLDTDContentModelHandler;->occurrence(SLorg/apache/xerces/xni/Augmentations;)V

    goto :goto_8

    .line 1147
    .end local v5    # "oc":S
    :cond_15
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v6}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scanChar()I

    move-result v6

    .line 1148
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fStringBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    const/16 v7, 0x29

    invoke-virtual {v6, v7}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto :goto_8

    .line 1155
    :cond_16
    const/4 v8, 0x0

    goto/16 :goto_7
.end method

.method private final scanConditionalSect(I)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1829
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDTDScannerImpl;
    move v1, p1

    .local v1, "currPEDepth":I
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fReportEntity:Z

    .line 1830
    move-object v4, v0

    const/4 v5, 0x0

    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v6

    if-nez v6, :cond_3

    const/4 v6, 0x1

    :goto_0
    invoke-direct {v4, v5, v6}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v4

    .line 1832
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const-string v5, "INCLUDE"

    invoke-virtual {v4, v5}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1833
    move-object v4, v0

    const/4 v5, 0x0

    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v6

    if-nez v6, :cond_4

    const/4 v6, 0x1

    :goto_1
    invoke-direct {v4, v5, v6}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v4

    .line 1834
    move v4, v1

    move-object v5, v0

    iget v5, v5, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fPEDepth:I

    if-eq v4, v5, :cond_0

    move-object v4, v0

    iget-boolean v4, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fValidation:Z

    if-eqz v4, :cond_0

    .line 1835
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fErrorReporter:Lcom/sun/xml/stream/XMLErrorReporter;

    const-string v5, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v6, "INVALID_PE_IN_CONDITIONAL"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityManager:Lcom/sun/xml/stream/XMLEntityManager;

    iget-object v10, v10, Lcom/sun/xml/stream/XMLEntityManager;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v10, v10, Lcom/sun/xml/stream/Entity$ScannedEntity;->name:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v8, 0x1

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/sun/xml/stream/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    .line 1841
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const/16 v5, 0x5b

    invoke-virtual {v4, v5}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1842
    move-object v4, v0

    const-string v5, "MSG_MARKUP_NOT_RECOGNIZED_IN_DTD"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1845
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v4, :cond_2

    .line 1846
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lorg/apache/xerces/xni/XMLDTDHandler;->startConditional(SLorg/apache/xerces/xni/Augmentations;)V

    .line 1849
    :cond_2
    move-object v4, v0

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    iget v5, v5, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fIncludeSectDepth:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fIncludeSectDepth:I

    .line 1851
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fReportEntity:Z

    .line 1946
    :goto_2
    return-void

    .line 1830
    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    .line 1833
    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    .line 1853
    :cond_5
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const-string v5, "IGNORE"

    invoke-virtual {v4, v5}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 1854
    move-object v4, v0

    const/4 v5, 0x0

    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v6

    if-nez v6, :cond_c

    const/4 v6, 0x1

    :goto_3
    invoke-direct {v4, v5, v6}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v4

    .line 1855
    move v4, v1

    move-object v5, v0

    iget v5, v5, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fPEDepth:I

    if-eq v4, v5, :cond_6

    move-object v4, v0

    iget-boolean v4, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fValidation:Z

    if-eqz v4, :cond_6

    .line 1856
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fErrorReporter:Lcom/sun/xml/stream/XMLErrorReporter;

    const-string v5, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v6, "INVALID_PE_IN_CONDITIONAL"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityManager:Lcom/sun/xml/stream/XMLEntityManager;

    iget-object v10, v10, Lcom/sun/xml/stream/XMLEntityManager;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v10, v10, Lcom/sun/xml/stream/Entity$ScannedEntity;->name:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v8, 0x1

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/sun/xml/stream/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    .line 1862
    :cond_6
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v4, :cond_7

    .line 1863
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lorg/apache/xerces/xni/XMLDTDHandler;->startConditional(SLorg/apache/xerces/xni/Augmentations;)V

    .line 1866
    :cond_7
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const/16 v5, 0x5b

    invoke-virtual {v4, v5}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v4

    if-nez v4, :cond_8

    .line 1867
    move-object v4, v0

    const-string v5, "MSG_MARKUP_NOT_RECOGNIZED_IN_DTD"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1869
    :cond_8
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fReportEntity:Z

    .line 1870
    move-object v4, v0

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    iget v5, v5, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fIncludeSectDepth:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    move-object v11, v4

    move v12, v5

    move v4, v12

    move-object v5, v11

    move v6, v12

    iput v6, v5, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fIncludeSectDepth:I

    move v2, v4

    .line 1871
    .local v2, "initialDepth":I
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v4, :cond_9

    .line 1872
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fIgnoreConditionalBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v4}, Lorg/apache/xerces/util/XMLStringBuffer;->clear()V

    .line 1875
    :cond_9
    :goto_4
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const/16 v5, 0x3c

    invoke-virtual {v4, v5}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1876
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v4, :cond_a

    .line 1877
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fIgnoreConditionalBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    const/16 v5, 0x3c

    invoke-virtual {v4, v5}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 1883
    :cond_a
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const/16 v5, 0x21

    invoke-virtual {v4, v5}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1884
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const/16 v5, 0x5b

    invoke-virtual {v4, v5}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1885
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v4, :cond_b

    .line 1886
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fIgnoreConditionalBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    const-string v5, "!["

    invoke-virtual {v4, v5}, Lorg/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    .line 1888
    :cond_b
    move-object v4, v0

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    iget v5, v5, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fIncludeSectDepth:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fIncludeSectDepth:I

    goto :goto_4

    .line 1854
    .end local v2    # "initialDepth":I
    :cond_c
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 1890
    .restart local v2    # "initialDepth":I
    :cond_d
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v4, :cond_9

    .line 1891
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fIgnoreConditionalBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    const-string v5, "!"

    invoke-virtual {v4, v5}, Lorg/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    goto :goto_4

    .line 1896
    :cond_e
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1897
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v4, :cond_f

    .line 1898
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fIgnoreConditionalBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 1903
    :cond_f
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1904
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v4, :cond_10

    .line 1905
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fIgnoreConditionalBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 1907
    :cond_10
    :goto_5
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1909
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v4, :cond_10

    .line 1910
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fIgnoreConditionalBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto :goto_5

    .line 1913
    :cond_11
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const/16 v5, 0x3e

    invoke-virtual {v4, v5}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1914
    move-object v4, v0

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    iget v5, v5, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fIncludeSectDepth:I

    move-object v11, v4

    move v12, v5

    move v4, v12

    move-object v5, v11

    move v6, v12

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    iput v6, v5, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fIncludeSectDepth:I

    move v5, v2

    if-ne v4, v5, :cond_13

    .line 1915
    move-object v4, v0

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    iget v5, v5, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fMarkUpDepth:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fMarkUpDepth:I

    .line 1917
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v4, :cond_12

    .line 1918
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fLiteral:Lorg/apache/xerces/xni/XMLString;

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fIgnoreConditionalBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    iget-object v5, v5, Lorg/apache/xerces/util/XMLStringBuffer;->ch:[C

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fIgnoreConditionalBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    iget v7, v7, Lorg/apache/xerces/util/XMLStringBuffer;->length:I

    const/4 v8, 0x2

    add-int/lit8 v7, v7, -0x2

    invoke-virtual {v4, v5, v6, v7}, Lorg/apache/xerces/xni/XMLString;->setValues([CII)V

    .line 1920
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fLiteral:Lorg/apache/xerces/xni/XMLString;

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lorg/apache/xerces/xni/XMLDTDHandler;->ignoredCharacters(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    .line 1921
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lorg/apache/xerces/xni/XMLDTDHandler;->endConditional(Lorg/apache/xerces/xni/Augmentations;)V

    .line 1923
    :cond_12
    goto/16 :goto_2

    .line 1924
    :cond_13
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v4, :cond_9

    .line 1925
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fIgnoreConditionalBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    const/16 v5, 0x3e

    invoke-virtual {v4, v5}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto/16 :goto_4

    .line 1931
    :cond_14
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v4}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scanChar()I

    move-result v4

    move v3, v4

    .line 1932
    .local v3, "c":I
    move-object v4, v0

    iget v4, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fScannerState:I

    if-nez v4, :cond_15

    .line 1933
    move-object v4, v0

    const-string v5, "IgnoreSectUnterminated"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1934
    goto/16 :goto_2

    .line 1936
    :cond_15
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v4, :cond_16

    .line 1937
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fIgnoreConditionalBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    move v5, v3

    int-to-char v5, v5

    invoke-virtual {v4, v5}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 1939
    :cond_16
    goto/16 :goto_4

    .line 1943
    .end local v2    # "initialDepth":I
    .end local v3    # "c":I
    :cond_17
    move-object v4, v0

    const-string v5, "MSG_MARKUP_NOT_RECOGNIZED_IN_DTD"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2
.end method

.method private final scanEntityDecl()V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1464
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDTDScannerImpl;
    const/4 v9, 0x0

    move v1, v9

    .line 1465
    .local v1, "isPEDecl":Z
    const/4 v9, 0x0

    move v2, v9

    .line 1466
    .local v2, "sawPERef":Z
    move-object v9, v0

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fReportEntity:Z

    .line 1467
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v9}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipSpaces()Z

    move-result v9

    if-eqz v9, :cond_11

    .line 1468
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const/16 v10, 0x25

    invoke-virtual {v9, v10}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v9

    if-nez v9, :cond_b

    .line 1469
    const/4 v9, 0x0

    move v1, v9

    .line 1504
    :goto_0
    move v9, v2

    if-eqz v9, :cond_0

    .line 1506
    :goto_1
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v9}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scanName()Ljava/lang/String;

    move-result-object v9

    move-object v3, v9

    .line 1507
    .local v3, "peName":Ljava/lang/String;
    move-object v9, v3

    if-nez v9, :cond_15

    .line 1508
    move-object v9, v0

    const-string v10, "NameRequiredInPEReference"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1517
    :goto_2
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v9}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipSpaces()Z

    move-result v9

    .line 1518
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const/16 v10, 0x25

    invoke-virtual {v9, v10}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v9

    if-nez v9, :cond_17

    .line 1519
    .line 1531
    .end local v3    # "peName":Ljava/lang/String;
    :cond_0
    :goto_3
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v9}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scanName()Ljava/lang/String;

    move-result-object v9

    move-object v3, v9

    .line 1532
    .local v3, "name":Ljava/lang/String;
    move-object v9, v3

    if-nez v9, :cond_1

    .line 1533
    move-object v9, v0

    const-string v10, "MSG_ENTITY_NAME_REQUIRED_IN_ENTITYDECL"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1537
    :cond_1
    move-object v9, v0

    const/4 v10, 0x1

    move-object v11, v0

    invoke-virtual {v11}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v11

    if-nez v11, :cond_1b

    const/4 v11, 0x1

    :goto_4
    invoke-direct {v9, v10, v11}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v9

    if-nez v9, :cond_2

    .line 1538
    move-object v9, v0

    const-string v10, "MSG_SPACE_REQUIRED_AFTER_ENTITY_NAME_IN_ENTITYDECL"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x0

    move-object v14, v3

    aput-object v14, v12, v13

    invoke-virtual {v9, v10, v11}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1543
    :cond_2
    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fStrings:[Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->scanExternalID([Ljava/lang/String;Z)V

    .line 1544
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fStrings:[Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    move-object v4, v9

    .line 1545
    .local v4, "systemId":Ljava/lang/String;
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fStrings:[Ljava/lang/String;

    const/4 v10, 0x1

    aget-object v9, v9, v10

    move-object v5, v9

    .line 1547
    .local v5, "publicId":Ljava/lang/String;
    move v9, v1

    if-eqz v9, :cond_3

    move-object v9, v4

    if-eqz v9, :cond_3

    .line 1548
    move-object v9, v0

    const/4 v10, 0x1

    iput-boolean v10, v9, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fSeenExternalPE:Z

    .line 1551
    :cond_3
    const/4 v9, 0x0

    move-object v6, v9

    .line 1553
    .local v6, "notation":Ljava/lang/String;
    move-object v9, v0

    const/4 v10, 0x1

    move-object v11, v0

    invoke-virtual {v11}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v11

    if-nez v11, :cond_1c

    const/4 v11, 0x1

    :goto_5
    invoke-direct {v9, v10, v11}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v9

    move v7, v9

    .line 1554
    .local v7, "sawSpace":Z
    move v9, v1

    if-nez v9, :cond_6

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const-string v10, "NDATA"

    invoke-virtual {v9, v10}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipString(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1556
    move v9, v7

    if-nez v9, :cond_4

    .line 1557
    move-object v9, v0

    const-string v10, "MSG_SPACE_REQUIRED_BEFORE_NDATA_IN_UNPARSED_ENTITYDECL"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x0

    move-object v14, v3

    aput-object v14, v12, v13

    invoke-virtual {v9, v10, v11}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1562
    :cond_4
    move-object v9, v0

    const/4 v10, 0x1

    move-object v11, v0

    invoke-virtual {v11}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v11

    if-nez v11, :cond_1d

    const/4 v11, 0x1

    :goto_6
    invoke-direct {v9, v10, v11}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v9

    if-nez v9, :cond_5

    .line 1563
    move-object v9, v0

    const-string v10, "MSG_SPACE_REQUIRED_BEFORE_NOTATION_NAME_IN_UNPARSED_ENTITYDECL"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x0

    move-object v14, v3

    aput-object v14, v12, v13

    invoke-virtual {v9, v10, v11}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1566
    :cond_5
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v9}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scanName()Ljava/lang/String;

    move-result-object v9

    move-object v6, v9

    .line 1567
    move-object v9, v6

    if-nez v9, :cond_6

    .line 1568
    move-object v9, v0

    const-string v10, "MSG_NOTATION_NAME_REQUIRED_FOR_UNPARSED_ENTITYDECL"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x0

    move-object v14, v3

    aput-object v14, v12, v13

    invoke-virtual {v9, v10, v11}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1574
    :cond_6
    move-object v9, v4

    if-nez v9, :cond_7

    .line 1575
    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fLiteral:Lorg/apache/xerces/xni/XMLString;

    move-object v11, v0

    iget-object v11, v11, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fLiteral2:Lorg/apache/xerces/xni/XMLString;

    invoke-virtual {v9, v10, v11}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->scanEntityValue(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/XMLString;)V

    .line 1578
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fStringBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v9}, Lorg/apache/xerces/util/XMLStringBuffer;->clear()V

    .line 1579
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fStringBuffer2:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v9}, Lorg/apache/xerces/util/XMLStringBuffer;->clear()V

    .line 1580
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fStringBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fLiteral:Lorg/apache/xerces/xni/XMLString;

    iget-object v10, v10, Lorg/apache/xerces/xni/XMLString;->ch:[C

    move-object v11, v0

    iget-object v11, v11, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fLiteral:Lorg/apache/xerces/xni/XMLString;

    iget v11, v11, Lorg/apache/xerces/xni/XMLString;->offset:I

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fLiteral:Lorg/apache/xerces/xni/XMLString;

    iget v12, v12, Lorg/apache/xerces/xni/XMLString;->length:I

    invoke-virtual {v9, v10, v11, v12}, Lorg/apache/xerces/util/XMLStringBuffer;->append([CII)V

    .line 1581
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fStringBuffer2:Lorg/apache/xerces/util/XMLStringBuffer;

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fLiteral2:Lorg/apache/xerces/xni/XMLString;

    iget-object v10, v10, Lorg/apache/xerces/xni/XMLString;->ch:[C

    move-object v11, v0

    iget-object v11, v11, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fLiteral2:Lorg/apache/xerces/xni/XMLString;

    iget v11, v11, Lorg/apache/xerces/xni/XMLString;->offset:I

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fLiteral2:Lorg/apache/xerces/xni/XMLString;

    iget v12, v12, Lorg/apache/xerces/xni/XMLString;->length:I

    invoke-virtual {v9, v10, v11, v12}, Lorg/apache/xerces/util/XMLStringBuffer;->append([CII)V

    .line 1585
    :cond_7
    move-object v9, v0

    const/4 v10, 0x0

    move-object v11, v0

    invoke-virtual {v11}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v11

    if-nez v11, :cond_1e

    const/4 v11, 0x1

    :goto_7
    invoke-direct {v9, v10, v11}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v9

    .line 1588
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const/16 v10, 0x3e

    invoke-virtual {v9, v10}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v9

    if-nez v9, :cond_8

    .line 1589
    move-object v9, v0

    const-string v10, "EntityDeclUnterminated"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x0

    move-object v14, v3

    aput-object v14, v12, v13

    invoke-virtual {v9, v10, v11}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1591
    :cond_8
    move-object v9, v0

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    iget v10, v10, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fMarkUpDepth:I

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    iput v10, v9, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fMarkUpDepth:I

    .line 1594
    move v9, v1

    if-eqz v9, :cond_9

    .line 1595
    new-instance v9, Ljava/lang/StringBuilder;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "%"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v3, v9

    .line 1597
    :cond_9
    move-object v9, v4

    if-eqz v9, :cond_21

    .line 1598
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v9}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->getBaseSystemId()Ljava/lang/String;

    move-result-object v9

    move-object v8, v9

    .line 1599
    .local v8, "baseSystemId":Ljava/lang/String;
    move-object v9, v6

    if-eqz v9, :cond_1f

    .line 1600
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityStore:Lcom/sun/xml/stream/XMLEntityStorage;

    move-object v10, v3

    move-object v11, v5

    move-object v12, v4

    move-object v13, v8

    move-object v14, v6

    invoke-virtual/range {v9 .. v14}, Lcom/sun/xml/stream/XMLEntityStorage;->addUnparsedEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1606
    :goto_8
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v9, :cond_a

    .line 1608
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fResourceIdentifier:Lorg/apache/xerces/util/XMLResourceIdentifierImpl;

    move-object v10, v5

    move-object v11, v4

    move-object v12, v8

    move-object v13, v4

    move-object v14, v8

    invoke-static {v13, v14}, Lcom/sun/xml/stream/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v10, v11, v12, v13}, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1610
    move-object v9, v6

    if-eqz v9, :cond_20

    .line 1611
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    move-object v10, v3

    move-object v11, v0

    iget-object v11, v11, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fResourceIdentifier:Lorg/apache/xerces/util/XMLResourceIdentifierImpl;

    move-object v12, v6

    const/4 v13, 0x0

    invoke-interface {v9, v10, v11, v12, v13}, Lorg/apache/xerces/xni/XMLDTDHandler;->unparsedEntityDecl(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V

    .line 1618
    .line 1625
    .end local v8    # "baseSystemId":Ljava/lang/String;
    :cond_a
    :goto_9
    move-object v9, v0

    const/4 v10, 0x1

    iput-boolean v10, v9, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fReportEntity:Z

    .line 1627
    return-void

    .line 1471
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "systemId":Ljava/lang/String;
    .end local v5    # "publicId":Ljava/lang/String;
    .end local v6    # "notation":Ljava/lang/String;
    .end local v7    # "sawSpace":Z
    :cond_b
    move-object v9, v0

    const/4 v10, 0x1

    move-object v11, v0

    invoke-virtual {v11}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v11

    if-nez v11, :cond_c

    const/4 v11, 0x1

    :goto_a
    invoke-direct {v9, v10, v11}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 1473
    const/4 v9, 0x1

    move v1, v9

    goto/16 :goto_0

    .line 1471
    :cond_c
    const/4 v11, 0x0

    goto :goto_a

    .line 1475
    :cond_d
    move-object v9, v0

    invoke-virtual {v9}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v9

    if-eqz v9, :cond_e

    .line 1476
    move-object v9, v0

    const-string v10, "MSG_SPACE_REQUIRED_BEFORE_ENTITY_NAME_IN_ENTITYDECL"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1478
    const/4 v9, 0x1

    move v1, v9

    goto/16 :goto_0

    .line 1480
    :cond_e
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v9}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->peekChar()I

    move-result v9

    const/16 v10, 0x25

    if-ne v9, v10, :cond_10

    .line 1482
    move-object v9, v0

    const/4 v10, 0x0

    move-object v11, v0

    invoke-virtual {v11}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v11

    if-nez v11, :cond_f

    const/4 v11, 0x1

    :goto_b
    invoke-direct {v9, v10, v11}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v9

    .line 1483
    const/4 v9, 0x1

    move v1, v9

    goto/16 :goto_0

    .line 1482
    :cond_f
    const/4 v11, 0x0

    goto :goto_b

    .line 1486
    :cond_10
    const/4 v9, 0x1

    move v2, v9

    goto/16 :goto_0

    .line 1489
    :cond_11
    move-object v9, v0

    invoke-virtual {v9}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v9

    if-nez v9, :cond_12

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const/16 v10, 0x25

    invoke-virtual {v9, v10}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v9

    if-nez v9, :cond_13

    .line 1491
    :cond_12
    move-object v9, v0

    const-string v10, "MSG_SPACE_REQUIRED_BEFORE_ENTITY_NAME_IN_ENTITYDECL"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1493
    const/4 v9, 0x0

    move v1, v9

    goto/16 :goto_0

    .line 1495
    :cond_13
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v9}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipSpaces()Z

    move-result v9

    if-eqz v9, :cond_14

    .line 1497
    move-object v9, v0

    const-string v10, "MSG_SPACE_REQUIRED_BEFORE_PERCENT_IN_PEDECL"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1499
    const/4 v9, 0x0

    move v1, v9

    goto/16 :goto_0

    .line 1502
    :cond_14
    const/4 v9, 0x1

    move v2, v9

    goto/16 :goto_0

    .line 1510
    .local v3, "peName":Ljava/lang/String;
    :cond_15
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const/16 v10, 0x3b

    invoke-virtual {v9, v10}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v9

    if-nez v9, :cond_16

    .line 1511
    move-object v9, v0

    const-string v10, "SemicolonRequiredInPEReference"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x0

    move-object v14, v3

    aput-object v14, v12, v13

    invoke-virtual {v9, v10, v11}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 1515
    :cond_16
    move-object v9, v0

    move-object v10, v3

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->startPE(Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 1520
    :cond_17
    move v9, v1

    if-nez v9, :cond_1a

    .line 1521
    move-object v9, v0

    const/4 v10, 0x1

    move-object v11, v0

    invoke-virtual {v11}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v11

    if-nez v11, :cond_18

    const/4 v11, 0x1

    :goto_c
    invoke-direct {v9, v10, v11}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v9

    if-eqz v9, :cond_19

    .line 1522
    const/4 v9, 0x1

    move v1, v9

    .line 1523
    goto/16 :goto_3

    .line 1521
    :cond_18
    const/4 v11, 0x0

    goto :goto_c

    .line 1525
    :cond_19
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const/16 v10, 0x25

    invoke-virtual {v9, v10}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v9

    move v1, v9

    .line 1527
    :cond_1a
    goto/16 :goto_1

    .line 1537
    .local v3, "name":Ljava/lang/String;
    :cond_1b
    const/4 v11, 0x0

    goto/16 :goto_4

    .line 1553
    .restart local v4    # "systemId":Ljava/lang/String;
    .restart local v5    # "publicId":Ljava/lang/String;
    .restart local v6    # "notation":Ljava/lang/String;
    :cond_1c
    const/4 v11, 0x0

    goto/16 :goto_5

    .line 1562
    .restart local v7    # "sawSpace":Z
    :cond_1d
    const/4 v11, 0x0

    goto/16 :goto_6

    .line 1585
    :cond_1e
    const/4 v11, 0x0

    goto/16 :goto_7

    .line 1603
    .restart local v8    # "baseSystemId":Ljava/lang/String;
    :cond_1f
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityStore:Lcom/sun/xml/stream/XMLEntityStorage;

    move-object v10, v3

    move-object v11, v5

    move-object v12, v4

    move-object v13, v8

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/sun/xml/stream/XMLEntityStorage;->addExternalEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 1615
    :cond_20
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    move-object v10, v3

    move-object v11, v0

    iget-object v11, v11, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fResourceIdentifier:Lorg/apache/xerces/util/XMLResourceIdentifierImpl;

    const/4 v12, 0x0

    invoke-interface {v9, v10, v11, v12}, Lorg/apache/xerces/xni/XMLDTDHandler;->externalEntityDecl(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Lorg/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_9

    .line 1620
    .end local v8    # "baseSystemId":Ljava/lang/String;
    :cond_21
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityStore:Lcom/sun/xml/stream/XMLEntityStorage;

    move-object v10, v3

    move-object v11, v0

    iget-object v11, v11, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fStringBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v11}, Lorg/apache/xerces/util/XMLStringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/sun/xml/stream/XMLEntityStorage;->addInternalEntity(Ljava/lang/String;Ljava/lang/String;)V

    .line 1621
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v9, :cond_a

    .line 1622
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    move-object v10, v3

    move-object v11, v0

    iget-object v11, v11, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fStringBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fStringBuffer2:Lorg/apache/xerces/util/XMLStringBuffer;

    const/4 v13, 0x0

    invoke-interface {v9, v10, v11, v12, v13}, Lorg/apache/xerces/xni/XMLDTDHandler;->internalEntityDecl(Ljava/lang/String;Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_9
.end method

.method private final scanMixed(Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 952
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDTDScannerImpl;
    move-object v1, p1

    .local v1, "elName":Ljava/lang/String;
    const/4 v3, 0x0

    move-object v2, v3

    .line 954
    .local v2, "childName":Ljava/lang/String;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fStringBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    const-string v4, "#PCDATA"

    invoke-virtual {v3, v4}, Lorg/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    .line 956
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v3, :cond_0

    .line 957
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lorg/apache/xerces/xni/XMLDTDContentModelHandler;->pcdata(Lorg/apache/xerces/xni/Augmentations;)V

    .line 959
    :cond_0
    move-object v3, v0

    const/4 v4, 0x0

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v5

    if-nez v5, :cond_4

    const/4 v5, 0x1

    :goto_0
    invoke-direct {v3, v4, v5}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v3

    .line 960
    :goto_1
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const/16 v4, 0x7c

    invoke-virtual {v3, v4}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 961
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fStringBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    const/16 v4, 0x7c

    invoke-virtual {v3, v4}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 963
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v3, :cond_1

    .line 964
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lorg/apache/xerces/xni/XMLDTDContentModelHandler;->separator(SLorg/apache/xerces/xni/Augmentations;)V

    .line 967
    :cond_1
    move-object v3, v0

    const/4 v4, 0x0

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v5

    if-nez v5, :cond_5

    const/4 v5, 0x1

    :goto_2
    invoke-direct {v3, v4, v5}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v3

    .line 969
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v3}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scanName()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 970
    move-object v3, v2

    if-nez v3, :cond_2

    .line 971
    move-object v3, v0

    const-string v4, "MSG_ELEMENT_TYPE_REQUIRED_IN_MIXED_CONTENT"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v1

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 974
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fStringBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lorg/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    .line 976
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v3, :cond_3

    .line 977
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    move-object v4, v2

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lorg/apache/xerces/xni/XMLDTDContentModelHandler;->element(Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V

    .line 979
    :cond_3
    move-object v3, v0

    const/4 v4, 0x0

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v5

    if-nez v5, :cond_6

    const/4 v5, 0x1

    :goto_3
    invoke-direct {v3, v4, v5}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v3

    goto :goto_1

    .line 959
    :cond_4
    const/4 v5, 0x0

    goto :goto_0

    .line 967
    :cond_5
    const/4 v5, 0x0

    goto :goto_2

    .line 979
    :cond_6
    const/4 v5, 0x0

    goto :goto_3

    .line 985
    :cond_7
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const-string v4, ")*"

    invoke-virtual {v3, v4}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 986
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fStringBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    const-string v4, ")*"

    invoke-virtual {v3, v4}, Lorg/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    .line 988
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v3, :cond_8

    .line 989
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lorg/apache/xerces/xni/XMLDTDContentModelHandler;->endGroup(Lorg/apache/xerces/xni/Augmentations;)V

    .line 990
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lorg/apache/xerces/xni/XMLDTDContentModelHandler;->occurrence(SLorg/apache/xerces/xni/Augmentations;)V

    .line 1009
    :cond_8
    :goto_4
    move-object v3, v0

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    iget v4, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fMarkUpDepth:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fMarkUpDepth:I

    .line 1011
    return-void

    .line 994
    :cond_9
    move-object v3, v2

    if-eqz v3, :cond_a

    .line 995
    move-object v3, v0

    const-string v4, "MixedContentUnterminated"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v1

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 998
    :cond_a
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const/16 v4, 0x29

    invoke-virtual {v3, v4}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 999
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fStringBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    const/16 v4, 0x29

    invoke-virtual {v3, v4}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 1001
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v3, :cond_8

    .line 1002
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lorg/apache/xerces/xni/XMLDTDContentModelHandler;->endGroup(Lorg/apache/xerces/xni/Augmentations;)V

    goto :goto_4

    .line 1006
    :cond_b
    move-object v3, v0

    const-string v4, "MSG_CLOSE_PAREN_REQUIRED_IN_CHILDREN"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v1

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4
.end method

.method private final scanNotationDecl()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1759
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDTDScannerImpl;
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fReportEntity:Z

    .line 1760
    move-object v5, v0

    const/4 v6, 0x1

    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v7

    if-nez v7, :cond_7

    const/4 v7, 0x1

    :goto_0
    invoke-direct {v5, v6, v7}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1761
    move-object v5, v0

    const-string v6, "MSG_SPACE_REQUIRED_BEFORE_NOTATION_NAME_IN_NOTATIONDECL"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1766
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v5}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scanName()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 1767
    .local v1, "name":Ljava/lang/String;
    move-object v5, v1

    if-nez v5, :cond_1

    .line 1768
    move-object v5, v0

    const-string v6, "MSG_NOTATION_NAME_REQUIRED_IN_NOTATIONDECL"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1773
    :cond_1
    move-object v5, v0

    const/4 v6, 0x1

    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v7

    if-nez v7, :cond_8

    const/4 v7, 0x1

    :goto_1
    invoke-direct {v5, v6, v7}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1774
    move-object v5, v0

    const-string v6, "MSG_SPACE_REQUIRED_AFTER_NOTATION_NAME_IN_NOTATIONDECL"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move-object v10, v1

    aput-object v10, v8, v9

    invoke-virtual {v5, v6, v7}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1779
    :cond_2
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fStrings:[Ljava/lang/String;

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->scanExternalID([Ljava/lang/String;Z)V

    .line 1780
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fStrings:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    move-object v2, v5

    .line 1781
    .local v2, "systemId":Ljava/lang/String;
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fStrings:[Ljava/lang/String;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    move-object v3, v5

    .line 1782
    .local v3, "publicId":Ljava/lang/String;
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v5}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->getBaseSystemId()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 1784
    .local v4, "baseSystemId":Ljava/lang/String;
    move-object v5, v2

    if-nez v5, :cond_3

    move-object v5, v3

    if-nez v5, :cond_3

    .line 1785
    move-object v5, v0

    const-string v6, "ExternalIDorPublicIDRequired"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move-object v10, v1

    aput-object v10, v8, v9

    invoke-virtual {v5, v6, v7}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1790
    :cond_3
    move-object v5, v0

    const/4 v6, 0x0

    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v7

    if-nez v7, :cond_9

    const/4 v7, 0x1

    :goto_2
    invoke-direct {v5, v6, v7}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v5

    .line 1793
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const/16 v6, 0x3e

    invoke-virtual {v5, v6}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1794
    move-object v5, v0

    const-string v6, "NotationDeclUnterminated"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move-object v10, v1

    aput-object v10, v8, v9

    invoke-virtual {v5, v6, v7}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1796
    :cond_4
    move-object v5, v0

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    iget v6, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fMarkUpDepth:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    iput v6, v5, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fMarkUpDepth:I

    .line 1798
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fResourceIdentifier:Lorg/apache/xerces/util/XMLResourceIdentifierImpl;

    move-object v6, v3

    move-object v7, v2

    move-object v8, v4

    move-object v9, v2

    move-object v10, v4

    invoke-static {v9, v10}, Lcom/sun/xml/stream/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v6, v7, v8, v9}, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1799
    move-object v5, v0

    iget-boolean v5, v5, Lcom/sun/xml/stream/XMLDTDScannerImpl;->nonValidatingMode:Z

    if-eqz v5, :cond_5

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLDTDScannerImpl;->nvGrammarInfo:Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;

    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fResourceIdentifier:Lorg/apache/xerces/util/XMLResourceIdentifierImpl;

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->notationDecl(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Lorg/apache/xerces/xni/Augmentations;)V

    .line 1801
    :cond_5
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v5, :cond_6

    .line 1804
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fResourceIdentifier:Lorg/apache/xerces/util/XMLResourceIdentifierImpl;

    const/4 v8, 0x0

    invoke-interface {v5, v6, v7, v8}, Lorg/apache/xerces/xni/XMLDTDHandler;->notationDecl(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Lorg/apache/xerces/xni/Augmentations;)V

    .line 1806
    :cond_6
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fReportEntity:Z

    .line 1808
    return-void

    .line 1760
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "systemId":Ljava/lang/String;
    .end local v3    # "publicId":Ljava/lang/String;
    .end local v4    # "baseSystemId":Ljava/lang/String;
    :cond_7
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 1773
    .restart local v1    # "name":Ljava/lang/String;
    :cond_8
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 1790
    .restart local v2    # "systemId":Ljava/lang/String;
    .restart local v3    # "publicId":Ljava/lang/String;
    .restart local v4    # "baseSystemId":Ljava/lang/String;
    :cond_9
    const/4 v7, 0x0

    goto :goto_2
.end method

.method private skipSeparator(ZZ)Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 2058
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDTDScannerImpl;
    move v1, p1

    .local v1, "spaceRequired":Z
    move v2, p2

    .local v2, "lookForPERefs":Z
    move-object v6, v0

    iget v6, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fPEDepth:I

    move v3, v6

    .line 2059
    .local v3, "depth":I
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v6}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipSpaces()Z

    move-result v6

    move v4, v6

    .line 2060
    .local v4, "sawSpace":Z
    move v6, v2

    if-eqz v6, :cond_0

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const/16 v7, 0x25

    invoke-virtual {v6, v7}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v6

    if-nez v6, :cond_3

    .line 2061
    :cond_0
    move v6, v1

    if-eqz v6, :cond_1

    move v6, v4

    if-nez v6, :cond_1

    move v6, v3

    move-object v7, v0

    iget v7, v7, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fPEDepth:I

    if-eq v6, v7, :cond_2

    :cond_1
    const/4 v6, 0x1

    :goto_0
    move v0, v6

    .line 2075
    .end local v0    # "this":Lcom/sun/xml/stream/XMLDTDScannerImpl;
    :goto_1
    return v0

    .line 2061
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLDTDScannerImpl;
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 2076
    .line 2064
    :cond_3
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v6}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scanName()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 2065
    .local v5, "name":Ljava/lang/String;
    move-object v6, v5

    if-nez v6, :cond_5

    .line 2066
    move-object v6, v0

    const-string v7, "NameRequiredInPEReference"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2072
    :cond_4
    :goto_2
    move-object v6, v0

    move-object v7, v5

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->startPE(Ljava/lang/String;Z)V

    .line 2073
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v6}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipSpaces()Z

    move-result v6

    .line 2074
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const/16 v7, 0x25

    invoke-virtual {v6, v7}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v6

    if-nez v6, :cond_3

    .line 2075
    const/4 v6, 0x1

    move v0, v6

    goto :goto_1

    .line 2068
    :cond_5
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const/16 v7, 0x3b

    invoke-virtual {v6, v7}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v6

    if-nez v6, :cond_4

    .line 2069
    move-object v6, v0

    const-string v7, "SemicolonRequiredInPEReference"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v5

    aput-object v11, v9, v10

    invoke-virtual {v6, v7, v8}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method


# virtual methods
.method public endEntity(Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 610
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDTDScannerImpl;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v1

    invoke-super {v4, v5}, Lcom/sun/xml/stream/XMLScanner;->endEntity(Ljava/lang/String;)V

    .line 614
    move-object v4, v0

    iget v4, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fScannerState:I

    if-nez v4, :cond_0

    .line 615
    .line 669
    :goto_0
    return-void

    .line 618
    :cond_0
    move-object v4, v0

    iget-boolean v4, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fReportEntity:Z

    move v2, v4

    .line 619
    .local v2, "reportEntity":Z
    move-object v4, v1

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 620
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->peekReportEntity()Z

    move-result v4

    move v2, v4

    .line 622
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->popPEStack()I

    move-result v4

    move v3, v4

    .line 625
    .local v3, "startMarkUpDepth":I
    move v4, v3

    if-nez v4, :cond_1

    move v4, v3

    move-object v5, v0

    iget v5, v5, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fMarkUpDepth:I

    if-ge v4, v5, :cond_1

    .line 627
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fErrorReporter:Lcom/sun/xml/stream/XMLErrorReporter;

    const-string v5, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v6, "ILL_FORMED_PARAMETER_ENTITY_WHEN_USED_IN_DECL"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityManager:Lcom/sun/xml/stream/XMLEntityManager;

    iget-object v10, v10, Lcom/sun/xml/stream/XMLEntityManager;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v10, v10, Lcom/sun/xml/stream/Entity$ScannedEntity;->name:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v8, 0x2

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/sun/xml/stream/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    .line 632
    :cond_1
    move v4, v3

    move-object v5, v0

    iget v5, v5, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fMarkUpDepth:I

    if-eq v4, v5, :cond_2

    .line 633
    const/4 v4, 0x0

    move v2, v4

    .line 634
    move-object v4, v0

    iget-boolean v4, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fValidation:Z

    if-eqz v4, :cond_2

    .line 637
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fErrorReporter:Lcom/sun/xml/stream/XMLErrorReporter;

    const-string v5, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v6, "ImproperDeclarationNesting"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move-object v10, v1

    aput-object v10, v8, v9

    const/4 v8, 0x1

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/sun/xml/stream/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    .line 643
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v4}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->isExternal()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 644
    move-object v4, v0

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    iget v5, v5, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fExtEntityDepth:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fExtEntityDepth:I

    .line 649
    .end local v3    # "startMarkUpDepth":I
    :cond_3
    move-object v4, v1

    const-string v5, "[dtd]"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    move v3, v4

    .line 650
    .local v3, "dtdEntity":Z
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v4, :cond_4

    move v4, v3

    if-nez v4, :cond_4

    move v4, v2

    if-eqz v4, :cond_4

    .line 651
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    move-object v5, v1

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lorg/apache/xerces/xni/XMLDTDHandler;->endParameterEntity(Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V

    .line 655
    :cond_4
    move v4, v3

    if-eqz v4, :cond_7

    .line 656
    move-object v4, v0

    iget v4, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fIncludeSectDepth:I

    if-eqz v4, :cond_5

    .line 657
    move-object v4, v0

    const-string v5, "IncludeSectUnterminated"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 659
    :cond_5
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fScannerState:I

    .line 661
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityManager:Lcom/sun/xml/stream/XMLEntityManager;

    invoke-virtual {v4}, Lcom/sun/xml/stream/XMLEntityManager;->endExternalSubset()V

    .line 662
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v4, :cond_6

    .line 663
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lorg/apache/xerces/xni/XMLDTDHandler;->endExternalSubset(Lorg/apache/xerces/xni/Augmentations;)V

    .line 664
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lorg/apache/xerces/xni/XMLDTDHandler;->endDTD(Lorg/apache/xerces/xni/Augmentations;)V

    .line 666
    :cond_6
    move-object v4, v0

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    iget v5, v5, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fExtEntityDepth:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fExtEntityDepth:I

    .line 669
    :cond_7
    goto/16 :goto_0
.end method

.method public getDTDContentModelHandler()Lorg/apache/xerces/xni/XMLDTDContentModelHandler;
    .locals 2

    .prologue
    .line 544
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDTDScannerImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLDTDScannerImpl;
    return-object v0
.end method

.method public getDTDHandler()Lorg/apache/xerces/xni/XMLDTDHandler;
    .locals 2

    .prologue
    .line 521
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDTDScannerImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLDTDScannerImpl;
    return-object v0
.end method

.method public getFeatureDefault(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 5

    .prologue
    .line 476
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDTDScannerImpl;
    move-object v1, p1

    .local v1, "featureId":Ljava/lang/String;
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    sget-object v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 477
    sget-object v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    move v4, v2

    aget-object v3, v3, v4

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 478
    sget-object v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

    move v4, v2

    aget-object v3, v3, v4

    move-object v0, v3

    .line 481
    .end local v0    # "this":Lcom/sun/xml/stream/XMLDTDScannerImpl;
    :goto_1
    return-object v0

    .line 476
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLDTDScannerImpl;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 481
    :cond_1
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_1
.end method

.method public getGrammar()Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;
    .locals 2

    .prologue
    .line 2159
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDTDScannerImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLDTDScannerImpl;->nvGrammarInfo:Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLDTDScannerImpl;
    return-object v0
.end method

.method public getPropertyDefault(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 494
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDTDScannerImpl;
    move-object v1, p1

    .local v1, "propertyId":Ljava/lang/String;
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    sget-object v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 495
    sget-object v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    move v4, v2

    aget-object v3, v3, v4

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 496
    sget-object v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

    move v4, v2

    aget-object v3, v3, v4

    move-object v0, v3

    .line 499
    .end local v0    # "this":Lcom/sun/xml/stream/XMLDTDScannerImpl;
    :goto_1
    return-object v0

    .line 494
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLDTDScannerImpl;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 499
    :cond_1
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_1
.end method

.method public getRecognizedFeatures()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 454
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDTDScannerImpl;
    sget-object v1, Lcom/sun/xml/stream/XMLDTDScannerImpl;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    invoke-virtual {v1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLDTDScannerImpl;
    return-object v0
.end method

.method public getRecognizedProperties()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 463
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDTDScannerImpl;
    sget-object v1, Lcom/sun/xml/stream/XMLDTDScannerImpl;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    invoke-virtual {v1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLDTDScannerImpl;
    return-object v0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 430
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDTDScannerImpl;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->init()V

    .line 431
    return-void
.end method

.method public reset(Lcom/sun/xml/stream/PropertyManager;)V
    .locals 7

    .prologue
    .line 434
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDTDScannerImpl;
    move-object v1, p1

    .local v1, "props":Lcom/sun/xml/stream/PropertyManager;
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->setPropertyManager(Lcom/sun/xml/stream/PropertyManager;)V

    .line 435
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Lcom/sun/xml/stream/XMLScanner;->reset(Lcom/sun/xml/stream/PropertyManager;)V

    .line 437
    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fAttributeCacheInitDone:Z

    if-nez v3, :cond_1

    .line 438
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->initialCacheCount:I

    if-ge v3, v4, :cond_0

    .line 439
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->attributeValueCache:Ljava/util/ArrayList;

    new-instance v4, Lorg/apache/xerces/xni/XMLString;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Lorg/apache/xerces/xni/XMLString;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 440
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->stringBufferCache:Ljava/util/ArrayList;

    new-instance v4, Lorg/apache/xerces/util/XMLStringBuffer;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Lorg/apache/xerces/util/XMLStringBuffer;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 438
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 442
    :cond_0
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fAttributeCacheInitDone:Z

    .line 444
    .end local v2    # "i":I
    :cond_1
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fStringBufferIndex:I

    .line 445
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fAttributeCacheUsedCount:I

    .line 446
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->init()V

    .line 447
    return-void
.end method

.method public reset(Lorg/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    .line 422
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDTDScannerImpl;
    move-object v1, p1

    .local v1, "componentManager":Lorg/apache/xerces/xni/parser/XMLComponentManager;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/sun/xml/stream/XMLScanner;->reset(Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    .line 423
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->init()V

    .line 425
    return-void
.end method

.method protected final scanAttDefaultDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/XMLString;)Ljava/lang/String;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1419
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDTDScannerImpl;
    move-object/from16 v1, p1

    .local v1, "elName":Ljava/lang/String;
    move-object/from16 v2, p2

    .local v2, "atName":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "type":Ljava/lang/String;
    move-object/from16 v4, p4

    .local v4, "defaultVal":Lorg/apache/xerces/xni/XMLString;
    move-object/from16 v5, p5

    .local v5, "nonNormalizedDefaultVal":Lorg/apache/xerces/xni/XMLString;
    const/4 v8, 0x0

    move-object v6, v8

    .line 1420
    .local v6, "defaultType":Ljava/lang/String;
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fString:Lorg/apache/xerces/xni/XMLString;

    invoke-virtual {v8}, Lorg/apache/xerces/xni/XMLString;->clear()V

    .line 1421
    move-object v8, v4

    invoke-virtual {v8}, Lorg/apache/xerces/xni/XMLString;->clear()V

    .line 1422
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const-string v9, "#REQUIRED"

    invoke-virtual {v8, v9}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipString(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1423
    const-string v8, "#REQUIRED"

    move-object v6, v8

    .line 1442
    :goto_0
    move-object v8, v6

    move-object v0, v8

    .end local v0    # "this":Lcom/sun/xml/stream/XMLDTDScannerImpl;
    return-object v0

    .line 1425
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLDTDScannerImpl;
    :cond_0
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const-string v9, "#IMPLIED"

    invoke-virtual {v8, v9}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipString(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1426
    const-string v8, "#IMPLIED"

    move-object v6, v8

    goto :goto_0

    .line 1429
    :cond_1
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const-string v9, "#FIXED"

    invoke-virtual {v8, v9}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipString(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1430
    const-string v8, "#FIXED"

    move-object v6, v8

    .line 1432
    move-object v8, v0

    const/4 v9, 0x1

    move-object v10, v0

    invoke-virtual {v10}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v10

    if-nez v10, :cond_4

    const/4 v10, 0x1

    :goto_1
    invoke-direct {v8, v9, v10}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1433
    move-object v8, v0

    const-string v9, "MSG_SPACE_REQUIRED_AFTER_FIXED_IN_DEFAULTDECL"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const/4 v12, 0x0

    move-object v13, v1

    aput-object v13, v11, v12

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const/4 v12, 0x1

    move-object v13, v2

    aput-object v13, v11, v12

    invoke-virtual {v8, v9, v10}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1438
    :cond_2
    move-object v8, v0

    iget-boolean v8, v8, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fStandalone:Z

    if-nez v8, :cond_5

    move-object v8, v0

    iget-boolean v8, v8, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fSeenExternalDTD:Z

    if-nez v8, :cond_3

    move-object v8, v0

    iget-boolean v8, v8, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fSeenExternalPE:Z

    if-eqz v8, :cond_5

    :cond_3
    const/4 v8, 0x1

    :goto_2
    move v7, v8

    .line 1439
    .local v7, "isVC":Z
    move-object v8, v0

    move-object v9, v4

    move-object v10, v5

    move-object v11, v2

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fAttributes:Lorg/apache/xerces/util/XMLAttributesImpl;

    const/4 v13, 0x0

    move v14, v7

    invoke-virtual/range {v8 .. v14}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->scanAttributeValue(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/XMLString;Ljava/lang/String;Lorg/apache/xerces/xni/XMLAttributes;IZ)V

    goto :goto_0

    .line 1432
    .end local v7    # "isVC":Z
    :cond_4
    const/4 v10, 0x0

    goto :goto_1

    .line 1438
    :cond_5
    const/4 v8, 0x0

    goto :goto_2
.end method

.method protected final scanAttlistDecl()V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1172
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDTDScannerImpl;
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fReportEntity:Z

    .line 1173
    move-object v6, v0

    const/4 v7, 0x1

    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v8

    if-nez v8, :cond_4

    const/4 v8, 0x1

    :goto_0
    invoke-direct {v6, v7, v8}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1174
    move-object v6, v0

    const-string v7, "MSG_SPACE_REQUIRED_BEFORE_ELEMENT_TYPE_IN_ATTLISTDECL"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1179
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v6}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scanName()Ljava/lang/String;

    move-result-object v6

    move-object v1, v6

    .line 1180
    .local v1, "elName":Ljava/lang/String;
    move-object v6, v1

    if-nez v6, :cond_1

    .line 1181
    move-object v6, v0

    const-string v7, "MSG_ELEMENT_TYPE_REQUIRED_IN_ATTLISTDECL"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1186
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v6, :cond_2

    .line 1187
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    move-object v7, v1

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Lorg/apache/xerces/xni/XMLDTDHandler;->startAttlist(Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V

    .line 1191
    :cond_2
    move-object v6, v0

    const/4 v7, 0x1

    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v8

    if-nez v8, :cond_5

    const/4 v8, 0x1

    :goto_1
    invoke-direct {v6, v7, v8}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v6

    if-nez v6, :cond_7

    .line 1193
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const/16 v7, 0x3e

    invoke-virtual {v6, v7}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1196
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v6, :cond_3

    .line 1197
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Lorg/apache/xerces/xni/XMLDTDHandler;->endAttlist(Lorg/apache/xerces/xni/Augmentations;)V

    .line 1199
    :cond_3
    move-object v6, v0

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    iget v7, v7, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fMarkUpDepth:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    iput v7, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fMarkUpDepth:I

    .line 1200
    .line 1279
    :goto_2
    return-void

    .line 1173
    .end local v1    # "elName":Ljava/lang/String;
    :cond_4
    const/4 v8, 0x0

    goto :goto_0

    .line 1191
    .restart local v1    # "elName":Ljava/lang/String;
    :cond_5
    const/4 v8, 0x0

    goto :goto_1

    .line 1203
    :cond_6
    move-object v6, v0

    const-string v7, "MSG_SPACE_REQUIRED_BEFORE_ATTRIBUTE_NAME_IN_ATTDEF"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    const/4 v10, 0x0

    move-object v11, v1

    aput-object v11, v9, v10

    invoke-virtual {v6, v7, v8}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1209
    :cond_7
    :goto_3
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const/16 v7, 0x3e

    invoke-virtual {v6, v7}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v6

    if-nez v6, :cond_15

    .line 1210
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v6}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scanName()Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 1211
    .local v2, "name":Ljava/lang/String;
    move-object v6, v2

    if-nez v6, :cond_8

    .line 1212
    move-object v6, v0

    const-string v7, "AttNameRequiredInAttDef"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    const/4 v10, 0x0

    move-object v11, v1

    aput-object v11, v9, v10

    invoke-virtual {v6, v7, v8}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1216
    :cond_8
    move-object v6, v0

    const/4 v7, 0x1

    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v8

    if-nez v8, :cond_10

    const/4 v8, 0x1

    :goto_4
    invoke-direct {v6, v7, v8}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v6

    if-nez v6, :cond_9

    .line 1217
    move-object v6, v0

    const-string v7, "MSG_SPACE_REQUIRED_BEFORE_ATTTYPE_IN_ATTDEF"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    const/4 v10, 0x0

    move-object v11, v1

    aput-object v11, v9, v10

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    const/4 v10, 0x1

    move-object v11, v2

    aput-object v11, v9, v10

    invoke-virtual {v6, v7, v8}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1221
    :cond_9
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->scanAttType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 1224
    .local v3, "type":Ljava/lang/String;
    move-object v6, v0

    const/4 v7, 0x1

    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v8

    if-nez v8, :cond_11

    const/4 v8, 0x1

    :goto_5
    invoke-direct {v6, v7, v8}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v6

    if-nez v6, :cond_a

    .line 1225
    move-object v6, v0

    const-string v7, "MSG_SPACE_REQUIRED_BEFORE_DEFAULTDECL_IN_ATTDEF"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    const/4 v10, 0x0

    move-object v11, v1

    aput-object v11, v9, v10

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    const/4 v10, 0x1

    move-object v11, v2

    aput-object v11, v9, v10

    invoke-virtual {v6, v7, v8}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1230
    :cond_a
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fLiteral:Lorg/apache/xerces/xni/XMLString;

    move-object v11, v0

    iget-object v11, v11, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fLiteral2:Lorg/apache/xerces/xni/XMLString;

    invoke-virtual/range {v6 .. v11}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->scanAttDefaultDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/XMLString;)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 1236
    .local v4, "defaultType":Ljava/lang/String;
    const/4 v6, 0x0

    move-object v5, v6

    .line 1237
    .local v5, "enumr":[Ljava/lang/String;
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-nez v6, :cond_b

    move-object v6, v0

    iget-boolean v6, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->nonValidatingMode:Z

    if-eqz v6, :cond_c

    .line 1238
    :cond_b
    move-object v6, v0

    iget v6, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEnumerationCount:I

    if-eqz v6, :cond_c

    .line 1239
    move-object v6, v0

    iget v6, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEnumerationCount:I

    new-array v6, v6, [Ljava/lang/String;

    move-object v5, v6

    .line 1240
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEnumeration:[Ljava/lang/String;

    const/4 v7, 0x0

    move-object v8, v5

    const/4 v9, 0x0

    move-object v10, v0

    iget v10, v10, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEnumerationCount:I

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1247
    :cond_c
    move-object v6, v4

    if-eqz v6, :cond_12

    move-object v6, v4

    const-string v7, "#REQUIRED"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    move-object v6, v4

    const-string v7, "#IMPLIED"

    .line 1248
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 1249
    :cond_d
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v6, :cond_e

    .line 1250
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v5

    move-object v11, v4

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-interface/range {v6 .. v14}, Lorg/apache/xerces/xni/XMLDTDHandler;->attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    .line 1253
    :cond_e
    move-object v6, v0

    iget-boolean v6, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->nonValidatingMode:Z

    if-eqz v6, :cond_f

    .line 1254
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->nvGrammarInfo:Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v5

    move-object v11, v4

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v6 .. v14}, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    .line 1269
    :cond_f
    :goto_6
    move-object v6, v0

    const/4 v7, 0x0

    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v8

    if-nez v8, :cond_14

    const/4 v8, 0x1

    :goto_7
    invoke-direct {v6, v7, v8}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v6

    .line 1270
    goto/16 :goto_3

    .line 1216
    .end local v3    # "type":Ljava/lang/String;
    .end local v4    # "defaultType":Ljava/lang/String;
    .end local v5    # "enumr":[Ljava/lang/String;
    :cond_10
    const/4 v8, 0x0

    goto/16 :goto_4

    .line 1224
    .restart local v3    # "type":Ljava/lang/String;
    :cond_11
    const/4 v8, 0x0

    goto/16 :goto_5

    .line 1260
    .restart local v4    # "defaultType":Ljava/lang/String;
    .restart local v5    # "enumr":[Ljava/lang/String;
    :cond_12
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v6, :cond_13

    .line 1261
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v5

    move-object v11, v4

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fLiteral:Lorg/apache/xerces/xni/XMLString;

    move-object v13, v0

    iget-object v13, v13, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fLiteral2:Lorg/apache/xerces/xni/XMLString;

    const/4 v14, 0x0

    invoke-interface/range {v6 .. v14}, Lorg/apache/xerces/xni/XMLDTDHandler;->attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    .line 1264
    :cond_13
    move-object v6, v0

    iget-boolean v6, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->nonValidatingMode:Z

    if-eqz v6, :cond_f

    .line 1265
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->nvGrammarInfo:Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v5

    move-object v11, v4

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fLiteral:Lorg/apache/xerces/xni/XMLString;

    move-object v13, v0

    iget-object v13, v13, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fLiteral2:Lorg/apache/xerces/xni/XMLString;

    const/4 v14, 0x0

    invoke-virtual/range {v6 .. v14}, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    goto :goto_6

    .line 1269
    :cond_14
    const/4 v8, 0x0

    goto :goto_7

    .line 1273
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "type":Ljava/lang/String;
    .end local v4    # "defaultType":Ljava/lang/String;
    .end local v5    # "enumr":[Ljava/lang/String;
    :cond_15
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v6, :cond_16

    .line 1274
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Lorg/apache/xerces/xni/XMLDTDHandler;->endAttlist(Lorg/apache/xerces/xni/Augmentations;)V

    .line 1276
    :cond_16
    move-object v6, v0

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    iget v7, v7, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fMarkUpDepth:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    iput v7, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fMarkUpDepth:I

    .line 1277
    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fReportEntity:Z

    .line 1279
    goto/16 :goto_2
.end method

.method protected final scanComment()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 828
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDTDScannerImpl;
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fReportEntity:Z

    .line 829
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fStringBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v1, v2}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->scanComment(Lorg/apache/xerces/util/XMLStringBuffer;)V

    .line 830
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fMarkUpDepth:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fMarkUpDepth:I

    .line 833
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v1, :cond_0

    .line 834
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fStringBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lorg/apache/xerces/xni/XMLDTDHandler;->comment(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    .line 836
    :cond_0
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fReportEntity:Z

    .line 838
    return-void
.end method

.method public scanDTDExternalSubset(Z)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 318
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDTDScannerImpl;
    move v1, p1

    .local v1, "complete":Z
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityManager:Lcom/sun/xml/stream/XMLEntityManager;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/sun/xml/stream/XMLEntityManager;->setEntityHandler(Lcom/sun/xml/stream/XMLEntityHandler;)V

    .line 319
    move-object v3, v0

    iget v3, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fScannerState:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 320
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fSeenExternalDTD:Z

    .line 321
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->scanTextDecl()Z

    move-result v3

    move v2, v3

    .line 322
    .local v2, "textDecl":Z
    move-object v3, v0

    iget v3, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fScannerState:I

    if-nez v3, :cond_0

    .line 323
    const/4 v3, 0x0

    move v0, v3

    .line 342
    .end local v0    # "this":Lcom/sun/xml/stream/XMLDTDScannerImpl;
    .end local v2    # "textDecl":Z
    :goto_0
    return v0

    .line 328
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLDTDScannerImpl;
    .restart local v2    # "textDecl":Z
    :cond_0
    move-object v3, v0

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->setScannerState(I)V

    .line 329
    move v3, v2

    if-eqz v3, :cond_1

    move v3, v1

    if-nez v3, :cond_1

    .line 330
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .line 336
    .end local v2    # "textDecl":Z
    :cond_1
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->scanDecls(Z)Z

    move-result v3

    if-nez v3, :cond_2

    .line 337
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 339
    :cond_2
    move v3, v1

    if-nez v3, :cond_1

    .line 342
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0
.end method

.method public scanDTDInternalSubset(ZZZ)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 371
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDTDScannerImpl;
    move v1, p1

    .local v1, "complete":Z
    move v2, p2

    .local v2, "standalone":Z
    move v3, p3

    .local v3, "hasExternalSubset":Z
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityManager:Lcom/sun/xml/stream/XMLEntityManager;

    invoke-virtual {v5}, Lcom/sun/xml/stream/XMLEntityManager;->getEntityReader()Lcom/sun/xml/stream/XMLEntityReader;

    move-result-object v5

    check-cast v5, Lcom/sun/xml/stream/XMLEntityReaderImpl;

    iput-object v5, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    .line 372
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityManager:Lcom/sun/xml/stream/XMLEntityManager;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/sun/xml/stream/XMLEntityManager;->setEntityHandler(Lcom/sun/xml/stream/XMLEntityHandler;)V

    .line 373
    move-object v4, v0

    move v5, v2

    iput-boolean v5, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fStandalone:Z

    .line 375
    move-object v4, v0

    iget v4, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fScannerState:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 377
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v4, :cond_0

    .line 378
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lorg/apache/xerces/xni/XMLDTDHandler;->startDTD(Lorg/apache/xerces/xni/XMLLocator;Lorg/apache/xerces/xni/Augmentations;)V

    .line 379
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fStartDTDCalled:Z

    .line 382
    :cond_0
    move-object v4, v0

    iget-boolean v4, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->nonValidatingMode:Z

    if-eqz v4, :cond_1

    .line 383
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fStartDTDCalled:Z

    .line 384
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->nvGrammarInfo:Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->startDTD(Lorg/apache/xerces/xni/XMLLocator;Lorg/apache/xerces/xni/Augmentations;)V

    .line 387
    :cond_1
    move-object v4, v0

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->setScannerState(I)V

    .line 391
    :cond_2
    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->scanDecls(Z)Z

    move-result v4

    if-nez v4, :cond_5

    .line 393
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v4, :cond_3

    move v4, v3

    if-nez v4, :cond_3

    .line 394
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lorg/apache/xerces/xni/XMLDTDHandler;->endDTD(Lorg/apache/xerces/xni/Augmentations;)V

    .line 396
    :cond_3
    move-object v4, v0

    iget-boolean v4, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->nonValidatingMode:Z

    if-eqz v4, :cond_4

    move v4, v3

    if-nez v4, :cond_4

    .line 397
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->nvGrammarInfo:Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->endDTD(Lorg/apache/xerces/xni/Augmentations;)V

    .line 400
    :cond_4
    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->setScannerState(I)V

    .line 401
    const/4 v4, 0x0

    move v0, v4

    .line 406
    .end local v0    # "this":Lcom/sun/xml/stream/XMLDTDScannerImpl;
    :goto_0
    return v0

    .line 403
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLDTDScannerImpl;
    :cond_5
    move v4, v1

    if-nez v4, :cond_2

    .line 406
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0
.end method

.method protected final scanDecls(Z)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1963
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDTDScannerImpl;
    move v1, p1

    .local v1, "complete":Z
    move-object v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v3

    .line 1964
    const/4 v3, 0x1

    move v2, v3

    .line 1966
    .local v2, "again":Z
    :goto_0
    move v3, v2

    if-eqz v3, :cond_10

    move-object v3, v0

    iget v3, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fScannerState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_10

    .line 1967
    move v3, v1

    move v2, v3

    .line 1968
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const/16 v4, 0x3c

    invoke-virtual {v3, v4}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1969
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fMarkUpDepth:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fMarkUpDepth:I

    .line 1970
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const/16 v4, 0x3f

    invoke-virtual {v3, v4}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1971
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fStringBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v3}, Lorg/apache/xerces/util/XMLStringBuffer;->clear()V

    .line 1972
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fStringBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v3, v4}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->scanPI(Lorg/apache/xerces/util/XMLStringBuffer;)V

    .line 2035
    :goto_1
    move-object v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v3

    goto :goto_0

    .line 1974
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const/16 v4, 0x21

    invoke-virtual {v3, v4}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1975
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const/16 v4, 0x2d

    invoke-virtual {v3, v4}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1976
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const/16 v4, 0x2d

    invoke-virtual {v3, v4}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1977
    move-object v3, v0

    const-string v4, "MSG_MARKUP_NOT_RECOGNIZED_IN_DTD"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 1980
    :cond_1
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->scanComment()V

    goto :goto_1

    .line 1983
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const-string v4, "ELEMENT"

    invoke-virtual {v3, v4}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1984
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->scanElementDecl()V

    goto :goto_1

    .line 1986
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const-string v4, "ATTLIST"

    invoke-virtual {v3, v4}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1987
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->scanAttlistDecl()V

    goto :goto_1

    .line 1989
    :cond_4
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const-string v4, "ENTITY"

    invoke-virtual {v3, v4}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1990
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->scanEntityDecl()V

    goto :goto_1

    .line 1992
    :cond_5
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const-string v4, "NOTATION"

    invoke-virtual {v3, v4}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1993
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->scanNotationDecl()V

    goto :goto_1

    .line 1995
    :cond_6
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const/16 v4, 0x5b

    invoke-virtual {v3, v4}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v3

    if-eqz v3, :cond_7

    move-object v3, v0

    .line 1996
    invoke-virtual {v3}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v3

    if-nez v3, :cond_7

    .line 1997
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fPEDepth:I

    invoke-direct {v3, v4}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->scanConditionalSect(I)V

    goto/16 :goto_1

    .line 2000
    :cond_7
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fMarkUpDepth:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fMarkUpDepth:I

    .line 2001
    move-object v3, v0

    const-string v4, "MSG_MARKUP_NOT_RECOGNIZED_IN_DTD"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 2006
    :cond_8
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fMarkUpDepth:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fMarkUpDepth:I

    .line 2007
    move-object v3, v0

    const-string v4, "MSG_MARKUP_NOT_RECOGNIZED_IN_DTD"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 2010
    :cond_9
    move-object v3, v0

    iget v3, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fIncludeSectDepth:I

    if-lez v3, :cond_d

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 2012
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v3

    if-eqz v3, :cond_a

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const/16 v4, 0x3e

    .line 2013
    invoke-virtual {v3, v4}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v3

    if-nez v3, :cond_b

    .line 2014
    :cond_a
    move-object v3, v0

    const-string v4, "IncludeSectUnterminated"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2017
    :cond_b
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v3, :cond_c

    .line 2018
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lorg/apache/xerces/xni/XMLDTDHandler;->endConditional(Lorg/apache/xerces/xni/Augmentations;)V

    .line 2021
    :cond_c
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fIncludeSectDepth:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fIncludeSectDepth:I

    .line 2022
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fMarkUpDepth:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fMarkUpDepth:I

    goto/16 :goto_1

    .line 2024
    :cond_d
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v3

    if-eqz v3, :cond_e

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    .line 2025
    invoke-virtual {v3}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->peekChar()I

    move-result v3

    const/16 v4, 0x5d

    if-ne v3, v4, :cond_e

    .line 2027
    const/4 v3, 0x0

    move v0, v3

    .line 2037
    .end local v0    # "this":Lcom/sun/xml/stream/XMLDTDScannerImpl;
    :goto_2
    return v0

    .line 2029
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLDTDScannerImpl;
    :cond_e
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v3}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipSpaces()Z

    move-result v3

    if-eqz v3, :cond_f

    goto/16 :goto_1

    .line 2033
    :cond_f
    move-object v3, v0

    const-string v4, "MSG_MARKUP_NOT_RECOGNIZED_IN_DTD"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 2037
    :cond_10
    move-object v3, v0

    iget v3, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fScannerState:I

    if-eqz v3, :cond_11

    const/4 v3, 0x1

    :goto_3
    move v0, v3

    goto :goto_2

    :cond_11
    const/4 v3, 0x0

    goto :goto_3
.end method

.method protected final scanElementDecl()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 853
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDTDScannerImpl;
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fReportEntity:Z

    .line 854
    move-object v3, v0

    const/4 v4, 0x1

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v5

    if-nez v5, :cond_9

    const/4 v5, 0x1

    :goto_0
    invoke-direct {v3, v4, v5}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v3

    if-nez v3, :cond_0

    .line 855
    move-object v3, v0

    const-string v4, "MSG_SPACE_REQUIRED_BEFORE_ELEMENT_TYPE_IN_ELEMENTDECL"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 860
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v3}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scanName()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 861
    .local v1, "name":Ljava/lang/String;
    move-object v3, v1

    if-nez v3, :cond_1

    .line 862
    move-object v3, v0

    const-string v4, "MSG_ELEMENT_TYPE_REQUIRED_IN_ELEMENTDECL"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 867
    :cond_1
    move-object v3, v0

    const/4 v4, 0x1

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v5

    if-nez v5, :cond_a

    const/4 v5, 0x1

    :goto_1
    invoke-direct {v3, v4, v5}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v3

    if-nez v3, :cond_2

    .line 868
    move-object v3, v0

    const-string v4, "MSG_SPACE_REQUIRED_BEFORE_CONTENTSPEC_IN_ELEMENTDECL"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v1

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 873
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v3, :cond_3

    .line 874
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    move-object v4, v1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lorg/apache/xerces/xni/XMLDTDContentModelHandler;->startContentModel(Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V

    .line 876
    :cond_3
    const/4 v3, 0x0

    move-object v2, v3

    .line 877
    .local v2, "contentModel":Ljava/lang/String;
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fReportEntity:Z

    .line 878
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const-string v4, "EMPTY"

    invoke-virtual {v3, v4}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 879
    const-string v3, "EMPTY"

    move-object v2, v3

    .line 881
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v3, :cond_4

    .line 882
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lorg/apache/xerces/xni/XMLDTDContentModelHandler;->empty(Lorg/apache/xerces/xni/Augmentations;)V

    .line 916
    :cond_4
    :goto_2
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v3, :cond_5

    .line 917
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lorg/apache/xerces/xni/XMLDTDContentModelHandler;->endContentModel(Lorg/apache/xerces/xni/Augmentations;)V

    .line 920
    :cond_5
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fReportEntity:Z

    .line 921
    move-object v3, v0

    const/4 v4, 0x0

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v5

    if-nez v5, :cond_11

    const/4 v5, 0x1

    :goto_3
    invoke-direct {v3, v4, v5}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v3

    .line 923
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const/16 v4, 0x3e

    invoke-virtual {v3, v4}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v3

    if-nez v3, :cond_6

    .line 924
    move-object v3, v0

    const-string v4, "ElementDeclUnterminated"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v1

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 926
    :cond_6
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fReportEntity:Z

    .line 927
    move-object v3, v0

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    iget v4, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fMarkUpDepth:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fMarkUpDepth:I

    .line 930
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v3, :cond_7

    .line 931
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-interface {v3, v4, v5, v6}, Lorg/apache/xerces/xni/XMLDTDHandler;->elementDecl(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V

    .line 933
    :cond_7
    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->nonValidatingMode:Z

    if-eqz v3, :cond_8

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->nvGrammarInfo:Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->elementDecl(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V

    .line 934
    :cond_8
    return-void

    .line 854
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "contentModel":Ljava/lang/String;
    :cond_9
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 867
    .restart local v1    # "name":Ljava/lang/String;
    :cond_a
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 885
    .restart local v2    # "contentModel":Ljava/lang/String;
    :cond_b
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const-string v4, "ANY"

    invoke-virtual {v3, v4}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 886
    const-string v3, "ANY"

    move-object v2, v3

    .line 888
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v3, :cond_4

    .line 889
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lorg/apache/xerces/xni/XMLDTDContentModelHandler;->any(Lorg/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_2

    .line 893
    :cond_c
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const/16 v4, 0x28

    invoke-virtual {v3, v4}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v3

    if-nez v3, :cond_d

    .line 894
    move-object v3, v0

    const-string v4, "MSG_OPEN_PAREN_OR_ELEMENT_TYPE_REQUIRED_IN_CHILDREN"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v1

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 897
    :cond_d
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v3, :cond_e

    .line 898
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lorg/apache/xerces/xni/XMLDTDContentModelHandler;->startGroup(Lorg/apache/xerces/xni/Augmentations;)V

    .line 900
    :cond_e
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fStringBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v3}, Lorg/apache/xerces/util/XMLStringBuffer;->clear()V

    .line 901
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fStringBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    const/16 v4, 0x28

    invoke-virtual {v3, v4}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 902
    move-object v3, v0

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    iget v4, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fMarkUpDepth:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fMarkUpDepth:I

    .line 903
    move-object v3, v0

    const/4 v4, 0x0

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v5

    if-nez v5, :cond_f

    const/4 v5, 0x1

    :goto_4
    invoke-direct {v3, v4, v5}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v3

    .line 906
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const-string v4, "#PCDATA"

    invoke-virtual {v3, v4}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 907
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->scanMixed(Ljava/lang/String;)V

    .line 912
    :goto_5
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fStringBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v3}, Lorg/apache/xerces/util/XMLStringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    goto/16 :goto_2

    .line 903
    :cond_f
    const/4 v5, 0x0

    goto :goto_4

    .line 910
    :cond_10
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->scanChildren(Ljava/lang/String;)V

    goto :goto_5

    .line 921
    :cond_11
    const/4 v5, 0x0

    goto/16 :goto_3
.end method

.method protected final scanEntityValue(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/XMLString;)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1643
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDTDScannerImpl;
    move-object/from16 v1, p1

    .local v1, "value":Lorg/apache/xerces/xni/XMLString;
    move-object/from16 v2, p2

    .local v2, "nonNormalizedValue":Lorg/apache/xerces/xni/XMLString;
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v8}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scanChar()I

    move-result v8

    move v3, v8

    .line 1644
    .local v3, "quote":I
    move v8, v3

    const/16 v9, 0x27

    if-eq v8, v9, :cond_0

    move v8, v3

    const/16 v9, 0x22

    if-eq v8, v9, :cond_0

    .line 1645
    move-object v8, v0

    const-string v9, "OpenQuoteMissingInDecl"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1648
    :cond_0
    move-object v8, v0

    iget v8, v8, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityDepth:I

    move v4, v8

    .line 1650
    .local v4, "entityDepth":I
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fString:Lorg/apache/xerces/xni/XMLString;

    move-object v5, v8

    .line 1651
    .local v5, "literal":Lorg/apache/xerces/xni/XMLString;
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fString:Lorg/apache/xerces/xni/XMLString;

    move-object v6, v8

    .line 1652
    .local v6, "literal2":Lorg/apache/xerces/xni/XMLString;
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    move v9, v3

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fString:Lorg/apache/xerces/xni/XMLString;

    invoke-virtual {v8, v9, v10}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scanLiteral(ILorg/apache/xerces/xni/XMLString;)I

    move-result v8

    move v9, v3

    if-eq v8, v9, :cond_3

    .line 1653
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fStringBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v8}, Lorg/apache/xerces/util/XMLStringBuffer;->clear()V

    .line 1654
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fStringBuffer2:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v8}, Lorg/apache/xerces/util/XMLStringBuffer;->clear()V

    .line 1656
    :cond_1
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fStringBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fString:Lorg/apache/xerces/xni/XMLString;

    invoke-virtual {v8, v9}, Lorg/apache/xerces/util/XMLStringBuffer;->append(Lorg/apache/xerces/xni/XMLString;)V

    .line 1657
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fStringBuffer2:Lorg/apache/xerces/util/XMLStringBuffer;

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fString:Lorg/apache/xerces/xni/XMLString;

    invoke-virtual {v8, v9}, Lorg/apache/xerces/util/XMLStringBuffer;->append(Lorg/apache/xerces/xni/XMLString;)V

    .line 1658
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const/16 v9, 0x26

    invoke-virtual {v8, v9}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1659
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const/16 v9, 0x23

    invoke-virtual {v8, v9}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1660
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fStringBuffer2:Lorg/apache/xerces/util/XMLStringBuffer;

    const-string v9, "&#"

    invoke-virtual {v8, v9}, Lorg/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    .line 1661
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fStringBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fStringBuffer2:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v8, v9, v10}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->scanCharReferenceValue(Lorg/apache/xerces/util/XMLStringBuffer;Lorg/apache/xerces/util/XMLStringBuffer;)I

    move-result v8

    .line 1733
    :cond_2
    :goto_0
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    move v9, v3

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fString:Lorg/apache/xerces/xni/XMLString;

    invoke-virtual {v8, v9, v10}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scanLiteral(ILorg/apache/xerces/xni/XMLString;)I

    move-result v8

    move v9, v3

    if-ne v8, v9, :cond_1

    .line 1734
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fStringBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fString:Lorg/apache/xerces/xni/XMLString;

    invoke-virtual {v8, v9}, Lorg/apache/xerces/util/XMLStringBuffer;->append(Lorg/apache/xerces/xni/XMLString;)V

    .line 1735
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fStringBuffer2:Lorg/apache/xerces/util/XMLStringBuffer;

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fString:Lorg/apache/xerces/xni/XMLString;

    invoke-virtual {v8, v9}, Lorg/apache/xerces/util/XMLStringBuffer;->append(Lorg/apache/xerces/xni/XMLString;)V

    .line 1736
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fStringBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    move-object v5, v8

    .line 1737
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fStringBuffer2:Lorg/apache/xerces/util/XMLStringBuffer;

    move-object v6, v8

    .line 1739
    :cond_3
    move-object v8, v1

    move-object v9, v5

    invoke-virtual {v8, v9}, Lorg/apache/xerces/xni/XMLString;->setValues(Lorg/apache/xerces/xni/XMLString;)V

    .line 1740
    move-object v8, v2

    move-object v9, v6

    invoke-virtual {v8, v9}, Lorg/apache/xerces/xni/XMLString;->setValues(Lorg/apache/xerces/xni/XMLString;)V

    .line 1741
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    move v9, v3

    invoke-virtual {v8, v9}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v8

    if-nez v8, :cond_4

    .line 1742
    move-object v8, v0

    const-string v9, "CloseQuoteMissingInDecl"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1744
    :cond_4
    return-void

    .line 1664
    :cond_5
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fStringBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    const/16 v9, 0x26

    invoke-virtual {v8, v9}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 1665
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fStringBuffer2:Lorg/apache/xerces/util/XMLStringBuffer;

    const/16 v9, 0x26

    invoke-virtual {v8, v9}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 1666
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v8}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scanName()Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 1667
    .local v7, "eName":Ljava/lang/String;
    move-object v8, v7

    if-nez v8, :cond_6

    .line 1668
    move-object v8, v0

    const-string v9, "NameRequiredInReference"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1675
    :goto_1
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const/16 v9, 0x3b

    invoke-virtual {v8, v9}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v8

    if-nez v8, :cond_7

    .line 1676
    move-object v8, v0

    const-string v9, "SemicolonRequiredInReference"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    move-object v13, v7

    aput-object v13, v11, v12

    invoke-virtual {v8, v9, v10}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1683
    :goto_2
    goto/16 :goto_0

    .line 1672
    :cond_6
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fStringBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    move-object v9, v7

    invoke-virtual {v8, v9}, Lorg/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    .line 1673
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fStringBuffer2:Lorg/apache/xerces/util/XMLStringBuffer;

    move-object v9, v7

    invoke-virtual {v8, v9}, Lorg/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    goto :goto_1

    .line 1680
    :cond_7
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fStringBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    const/16 v9, 0x3b

    invoke-virtual {v8, v9}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 1681
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fStringBuffer2:Lorg/apache/xerces/util/XMLStringBuffer;

    const/16 v9, 0x3b

    invoke-virtual {v8, v9}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto :goto_2

    .line 1685
    .end local v7    # "eName":Ljava/lang/String;
    :cond_8
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const/16 v9, 0x25

    invoke-virtual {v8, v9}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 1687
    :goto_3
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fStringBuffer2:Lorg/apache/xerces/util/XMLStringBuffer;

    const/16 v9, 0x25

    invoke-virtual {v8, v9}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 1688
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v8}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scanName()Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 1689
    .local v7, "peName":Ljava/lang/String;
    move-object v8, v7

    if-nez v8, :cond_9

    .line 1690
    move-object v8, v0

    const-string v9, "NameRequiredInPEReference"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1705
    :goto_4
    move-object v8, v0

    move-object v9, v7

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->startPE(Ljava/lang/String;Z)V

    .line 1709
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v8}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipSpaces()Z

    move-result v8

    .line 1710
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const/16 v9, 0x25

    invoke-virtual {v8, v9}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v8

    if-nez v8, :cond_c

    .line 1711
    goto/16 :goto_0

    .line 1693
    :cond_9
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const/16 v9, 0x3b

    invoke-virtual {v8, v9}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v8

    if-nez v8, :cond_a

    .line 1694
    move-object v8, v0

    const-string v9, "SemicolonRequiredInPEReference"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    move-object v13, v7

    aput-object v13, v11, v12

    invoke-virtual {v8, v9, v10}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 1698
    :cond_a
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 1699
    move-object v8, v0

    const-string v9, "PEReferenceWithinMarkup"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    move-object v13, v7

    aput-object v13, v11, v12

    invoke-virtual {v8, v9, v10}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1702
    :cond_b
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fStringBuffer2:Lorg/apache/xerces/util/XMLStringBuffer;

    move-object v9, v7

    invoke-virtual {v8, v9}, Lorg/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    .line 1703
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fStringBuffer2:Lorg/apache/xerces/util/XMLStringBuffer;

    const/16 v9, 0x3b

    invoke-virtual {v8, v9}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto :goto_4

    .line 1712
    :cond_c
    goto :goto_3

    .line 1715
    .end local v7    # "peName":Ljava/lang/String;
    :cond_d
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v8}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->peekChar()I

    move-result v8

    move v7, v8

    .line 1716
    .local v7, "c":I
    move v8, v7

    invoke-static {v8}, Lorg/apache/xerces/util/XMLChar;->isHighSurrogate(I)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 1717
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fStringBuffer2:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v8, v9}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->scanSurrogates(Lorg/apache/xerces/util/XMLStringBuffer;)Z

    move-result v8

    goto/16 :goto_0

    .line 1719
    :cond_e
    move v8, v7

    invoke-static {v8}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->isInvalidLiteral(I)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 1720
    move-object v8, v0

    const-string v9, "InvalidCharInLiteral"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    move v13, v7

    .line 1721
    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    .line 1720
    invoke-virtual {v8, v9, v10}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1722
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v8}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scanChar()I

    move-result v8

    goto/16 :goto_0

    .line 1727
    :cond_f
    move v8, v7

    move v9, v3

    if-ne v8, v9, :cond_10

    move v8, v4

    move-object v9, v0

    iget v9, v9, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityDepth:I

    if-eq v8, v9, :cond_2

    .line 1728
    :cond_10
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fStringBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    move v9, v7

    int-to-char v9, v9

    invoke-virtual {v8, v9}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 1729
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fStringBuffer2:Lorg/apache/xerces/util/XMLStringBuffer;

    move v9, v7

    int-to-char v9, v9

    invoke-virtual {v8, v9}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 1730
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v8}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scanChar()I

    move-result v8

    goto/16 :goto_0
.end method

.method protected final scanPIData(Ljava/lang/String;Lorg/apache/xerces/xni/XMLString;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 808
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDTDScannerImpl;
    move-object v1, p1

    .local v1, "target":Ljava/lang/String;
    move-object v2, p2

    .local v2, "data":Lorg/apache/xerces/xni/XMLString;
    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fMarkUpDepth:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fMarkUpDepth:I

    .line 811
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v3, :cond_0

    .line 812
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-interface {v3, v4, v5, v6}, Lorg/apache/xerces/xni/XMLDTDHandler;->processingInstruction(Ljava/lang/String;Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    .line 815
    :cond_0
    return-void
.end method

.method protected final scanTextDecl()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 751
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDTDScannerImpl;
    const/4 v4, 0x0

    move v1, v4

    .line 752
    .local v1, "textDecl":Z
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const-string v5, "<?xml"

    invoke-virtual {v4, v5}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 753
    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fMarkUpDepth:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fMarkUpDepth:I

    .line 756
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v4}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->peekChar()I

    move-result v4

    invoke-static {v4}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->isValidNameChar(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 757
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fStringBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v4}, Lorg/apache/xerces/util/XMLStringBuffer;->clear()V

    .line 758
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fStringBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    const-string v5, "xml"

    invoke-virtual {v4, v5}, Lorg/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    .line 759
    :goto_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v4}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->peekChar()I

    move-result v4

    invoke-static {v4}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->isValidNameChar(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 760
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fStringBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v5}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scanChar()I

    move-result v5

    int-to-char v5, v5

    invoke-virtual {v4, v5}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto :goto_0

    .line 762
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fStringBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    iget-object v5, v5, Lorg/apache/xerces/util/XMLStringBuffer;->ch:[C

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fStringBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    iget v6, v6, Lorg/apache/xerces/util/XMLStringBuffer;->offset:I

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fStringBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    iget v7, v7, Lorg/apache/xerces/util/XMLStringBuffer;->length:I

    .line 763
    invoke-virtual {v4, v5, v6, v7}, Lorg/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 766
    .local v2, "target":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fString:Lorg/apache/xerces/xni/XMLString;

    invoke-virtual {v4, v5, v6}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->scanPIData(Ljava/lang/String;Lorg/apache/xerces/xni/XMLString;)V

    .line 767
    .line 790
    .end local v2    # "target":Ljava/lang/String;
    :cond_1
    :goto_1
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityManager:Lcom/sun/xml/stream/XMLEntityManager;

    iget-object v4, v4, Lcom/sun/xml/stream/XMLEntityManager;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/sun/xml/stream/Entity$ScannedEntity;->mayReadChunks:Z

    .line 792
    move v4, v1

    move v0, v4

    .end local v0    # "this":Lcom/sun/xml/stream/XMLDTDScannerImpl;
    return v0

    .line 772
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLDTDScannerImpl;
    :cond_2
    const/4 v4, 0x0

    move-object v2, v4

    .line 773
    .local v2, "version":Ljava/lang/String;
    const/4 v4, 0x0

    move-object v3, v4

    .line 775
    .local v3, "encoding":Ljava/lang/String;
    move-object v4, v0

    const/4 v5, 0x1

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fStrings:[Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->scanXMLDeclOrTextDecl(Z[Ljava/lang/String;)V

    .line 776
    const/4 v4, 0x1

    move v1, v4

    .line 777
    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fMarkUpDepth:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fMarkUpDepth:I

    .line 779
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fStrings:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    move-object v2, v4

    .line 780
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fStrings:[Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    move-object v3, v4

    .line 782
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    move-object v5, v3

    invoke-virtual {v4, v5}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->setEncoding(Ljava/lang/String;)V

    .line 785
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v4, :cond_1

    .line 786
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    move-object v5, v2

    move-object v6, v3

    const/4 v7, 0x0

    invoke-interface {v4, v5, v6, v7}, Lorg/apache/xerces/xni/XMLDTDHandler;->textDecl(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V

    goto :goto_1
.end method

.method protected final scanningInternalSubset()Z
    .locals 2

    .prologue
    .line 709
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDTDScannerImpl;
    move-object v1, v0

    iget v1, v1, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fExtEntityDepth:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLDTDScannerImpl;
    return v0

    .restart local v0    # "this":Lcom/sun/xml/stream/XMLDTDScannerImpl;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setDTDContentModelHandler(Lorg/apache/xerces/xni/XMLDTDContentModelHandler;)V
    .locals 4

    .prologue
    .line 535
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDTDScannerImpl;
    move-object v1, p1

    .local v1, "dtdContentModelHandler":Lorg/apache/xerces/xni/XMLDTDContentModelHandler;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    .line 536
    return-void
.end method

.method public setDTDHandler(Lorg/apache/xerces/xni/XMLDTDHandler;)V
    .locals 4

    .prologue
    .line 512
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDTDScannerImpl;
    move-object v1, p1

    .local v1, "dtdHandler":Lorg/apache/xerces/xni/XMLDTDHandler;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    .line 513
    return-void
.end method

.method public setInputSource(Lorg/apache/xerces/xni/parser/XMLInputSource;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 286
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDTDScannerImpl;
    move-object v1, p1

    .local v1, "inputSource":Lorg/apache/xerces/xni/parser/XMLInputSource;
    move-object v2, v1

    if-nez v2, :cond_2

    .line 288
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v2, :cond_0

    .line 289
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lorg/apache/xerces/xni/XMLDTDHandler;->startDTD(Lorg/apache/xerces/xni/XMLLocator;Lorg/apache/xerces/xni/Augmentations;)V

    .line 290
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lorg/apache/xerces/xni/XMLDTDHandler;->endDTD(Lorg/apache/xerces/xni/Augmentations;)V

    .line 292
    :cond_0
    move-object v2, v0

    iget-boolean v2, v2, Lcom/sun/xml/stream/XMLDTDScannerImpl;->nonValidatingMode:Z

    if-eqz v2, :cond_1

    .line 293
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDTDScannerImpl;->nvGrammarInfo:Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->startDTD(Lorg/apache/xerces/xni/XMLLocator;Lorg/apache/xerces/xni/Augmentations;)V

    .line 294
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDTDScannerImpl;->nvGrammarInfo:Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->endDTD(Lorg/apache/xerces/xni/Augmentations;)V

    .line 296
    .line 300
    :cond_1
    :goto_0
    return-void

    .line 298
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityManager:Lcom/sun/xml/stream/XMLEntityManager;

    move-object v3, v0

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLEntityManager;->setEntityHandler(Lcom/sun/xml/stream/XMLEntityHandler;)V

    .line 299
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityManager:Lcom/sun/xml/stream/XMLEntityManager;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLEntityManager;->startDTDEntity(Lorg/apache/xerces/xni/parser/XMLInputSource;)V

    .line 300
    goto :goto_0
.end method

.method protected final setScannerState(I)V
    .locals 4

    .prologue
    .line 680
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDTDScannerImpl;
    move v1, p1

    .local v1, "state":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fScannerState:I

    .line 687
    return-void
.end method

.method public startEntity(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 570
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDTDScannerImpl;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "identifier":Lorg/apache/xerces/xni/XMLResourceIdentifier;
    move-object v3, p3

    .local v3, "encoding":Ljava/lang/String;
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-super {v5, v6, v7, v8}, Lcom/sun/xml/stream/XMLScanner;->startEntity(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;)V

    .line 572
    move-object v5, v1

    const-string v6, "[dtd]"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    move v4, v5

    .line 573
    .local v4, "dtdEntity":Z
    move v5, v4

    if-eqz v5, :cond_4

    .line 575
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-boolean v5, v5, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fStartDTDCalled:Z

    if-nez v5, :cond_0

    .line 576
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Lorg/apache/xerces/xni/XMLDTDHandler;->startDTD(Lorg/apache/xerces/xni/XMLLocator;Lorg/apache/xerces/xni/Augmentations;)V

    .line 578
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v5, :cond_1

    .line 579
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    move-object v6, v2

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Lorg/apache/xerces/xni/XMLDTDHandler;->startExternalSubset(Lorg/apache/xerces/xni/XMLResourceIdentifier;Lorg/apache/xerces/xni/Augmentations;)V

    .line 581
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityManager:Lcom/sun/xml/stream/XMLEntityManager;

    invoke-virtual {v5}, Lcom/sun/xml/stream/XMLEntityManager;->startExternalSubset()V

    .line 582
    move-object v5, v0

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget v6, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fExtEntityDepth:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fExtEntityDepth:I

    .line 592
    :cond_2
    :goto_0
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v5, :cond_3

    move v5, v4

    if-nez v5, :cond_3

    move-object v5, v0

    iget-boolean v5, v5, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fReportEntity:Z

    if-eqz v5, :cond_3

    .line 593
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    const/4 v9, 0x0

    invoke-interface {v5, v6, v7, v8, v9}, Lorg/apache/xerces/xni/XMLDTDHandler;->startParameterEntity(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V

    .line 596
    :cond_3
    return-void

    .line 584
    :cond_4
    move-object v5, v1

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x25

    if-ne v5, v6, :cond_2

    .line 585
    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fMarkUpDepth:I

    move-object v7, v0

    iget-boolean v7, v7, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fReportEntity:Z

    invoke-direct {v5, v6, v7}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->pushPEStack(IZ)V

    .line 586
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v5}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->isExternal()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 587
    move-object v5, v0

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget v6, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fExtEntityDepth:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fExtEntityDepth:I

    goto :goto_0
.end method

.method protected startPE(Ljava/lang/String;Z)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 720
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDTDScannerImpl;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move v2, p2

    .local v2, "literal":Z
    move-object v5, v0

    iget v5, v5, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fPEDepth:I

    move v3, v5

    .line 721
    .local v3, "depth":I
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 722
    .local v4, "pName":Ljava/lang/String;
    move-object v5, v0

    iget-boolean v5, v5, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fValidation:Z

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityStore:Lcom/sun/xml/stream/XMLEntityStorage;

    move-object v6, v4

    invoke-virtual {v5, v6}, Lcom/sun/xml/stream/XMLEntityStorage;->isDeclaredEntity(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 723
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fErrorReporter:Lcom/sun/xml/stream/XMLErrorReporter;

    const-string v6, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v7, "EntityNotDeclared"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v1

    aput-object v11, v9, v10

    const/4 v9, 0x1

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/sun/xml/stream/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    .line 726
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityManager:Lcom/sun/xml/stream/XMLEntityManager;

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v7, v4

    invoke-virtual {v6, v7}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move v7, v2

    invoke-virtual {v5, v6, v7}, Lcom/sun/xml/stream/XMLEntityManager;->startEntity(Ljava/lang/String;Z)V

    .line 730
    move v5, v3

    move-object v6, v0

    iget v6, v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fPEDepth:I

    if-eq v5, v6, :cond_1

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v5}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->isExternal()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 731
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->scanTextDecl()Z

    move-result v5

    .line 733
    :cond_1
    return-void
.end method
