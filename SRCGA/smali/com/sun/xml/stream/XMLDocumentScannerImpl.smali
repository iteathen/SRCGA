.class public Lcom/sun/xml/stream/XMLDocumentScannerImpl;
.super Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
.source "XMLDocumentScannerImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/xml/stream/XMLDocumentScannerImpl$XMLBufferListenerImpl;,
        Lcom/sun/xml/stream/XMLDocumentScannerImpl$TrailingMiscDriver;,
        Lcom/sun/xml/stream/XMLDocumentScannerImpl$ContentDriver;,
        Lcom/sun/xml/stream/XMLDocumentScannerImpl$DTDDriver;,
        Lcom/sun/xml/stream/XMLDocumentScannerImpl$PrologDriver;,
        Lcom/sun/xml/stream/XMLDocumentScannerImpl$XMLDeclDriver;
    }
.end annotation


# static fields
.field public static final COMMENTSTRING:[C

.field protected static final DISALLOW_DOCTYPE_DECL_FEATURE:Ljava/lang/String; = "http://apache.org/xml/features/disallow-doctype-decl"

.field public static final DOCTYPE:[C

.field protected static final DTD_SCANNER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/dtd-scanner"

.field private static final FEATURE_DEFAULTS:[Ljava/lang/Boolean;

.field protected static final LOAD_EXTERNAL_DTD:Ljava/lang/String; = "http://apache.org/xml/features/nonvalidating/load-external-dtd"

.field private static final PROPERTY_DEFAULTS:[Ljava/lang/Object;

.field private static final RECOGNIZED_FEATURES:[Ljava/lang/String;

.field private static final RECOGNIZED_PROPERTIES:[Ljava/lang/String;

.field protected static final SCANNER_STATE_DTD_EXTERNAL:I = 0x2e

.field protected static final SCANNER_STATE_DTD_EXTERNAL_DECLS:I = 0x2f

.field protected static final SCANNER_STATE_DTD_INTERNAL_DECLS:I = 0x2d

.field protected static final SCANNER_STATE_NO_SUCH_ELEMENT_EXCEPTION:I = 0x30

.field protected static final SCANNER_STATE_PROLOG:I = 0x2b

.field protected static final SCANNER_STATE_TRAILING_MISC:I = 0x2c

.field protected static final SCANNER_STATE_XML_DECL:I = 0x2a

.field protected static final VALIDATION_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validation-manager"


# instance fields
.field protected fBindNamespaces:Z

.field protected fDTDDecl:Lorg/apache/xerces/util/XMLStringBuffer;

.field protected fDTDDriver:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$Driver;

.field protected fDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

.field protected fDoctypeName:Ljava/lang/String;

.field protected fDoctypePublicId:Ljava/lang/String;

.field protected fDoctypeSystemId:Ljava/lang/String;

.field protected fEndOfDocument:Z

.field protected fEndPos:I

.field protected fLoadExternalDTD:Z

.field protected fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

.field protected fPrologDriver:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$Driver;

.field protected fReadingAttributes:Z

.field protected fReadingDTD:Z

.field protected fScanEndElement:Z

.field protected fScannerBufferlistener:Lcom/sun/xml/stream/XMLDocumentScannerImpl$XMLBufferListenerImpl;

.field protected fScannerLastState:I

.field protected fSeenDoctypeDecl:Z

.field protected fSeenInternalSubset:Z

.field protected fStartPos:I

.field private fString:Lorg/apache/xerces/xni/XMLString;

.field private fStrings:[Ljava/lang/String;

.field protected fTrailingMiscDriver:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$Driver;

.field protected fXMLDeclDriver:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$Driver;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 156
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string v3, "http://apache.org/xml/features/nonvalidating/load-external-dtd"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const-string v3, "http://apache.org/xml/features/disallow-doctype-decl"

    aput-object v3, v1, v2

    sput-object v0, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    .line 162
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v3, v1, v2

    sput-object v0, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

    .line 168
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string v3, "http://apache.org/xml/properties/internal/dtd-scanner"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const-string v3, "http://apache.org/xml/properties/internal/validation-manager"

    aput-object v3, v1, v2

    sput-object v0, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    .line 174
    const/4 v0, 0x2

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

    sput-object v0, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

    .line 248
    const/4 v0, 0x7

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->DOCTYPE:[C

    .line 249
    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->COMMENTSTRING:[C

    return-void

    .line 248
    nop

    :array_0
    .array-data 2
        0x44s
        0x4fs
        0x43s
        0x54s
        0x59s
        0x50s
        0x45s
    .end array-data

    .line 249
    nop

    :array_1
    .array-data 2
        0x2ds
        0x2ds
    .end array-data
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    .line 258
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentScannerImpl;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;-><init>()V

    .line 186
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    .line 187
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fDTDDecl:Lorg/apache/xerces/util/XMLStringBuffer;

    .line 188
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fReadingDTD:Z

    .line 207
    move-object v1, v0

    new-instance v2, Lorg/apache/xerces/util/NamespaceSupport;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Lorg/apache/xerces/util/NamespaceSupport;-><init>()V

    iput-object v2, v1, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    .line 212
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fLoadExternalDTD:Z

    .line 227
    move-object v1, v0

    new-instance v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$XMLDeclDriver;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/sun/xml/stream/XMLDocumentScannerImpl$XMLDeclDriver;-><init>(Lcom/sun/xml/stream/XMLDocumentScannerImpl;)V

    iput-object v2, v1, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fXMLDeclDriver:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$Driver;

    .line 230
    move-object v1, v0

    new-instance v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$PrologDriver;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/sun/xml/stream/XMLDocumentScannerImpl$PrologDriver;-><init>(Lcom/sun/xml/stream/XMLDocumentScannerImpl;)V

    iput-object v2, v1, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fPrologDriver:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$Driver;

    .line 233
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fDTDDriver:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$Driver;

    .line 236
    move-object v1, v0

    new-instance v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$TrailingMiscDriver;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/sun/xml/stream/XMLDocumentScannerImpl$TrailingMiscDriver;-><init>(Lcom/sun/xml/stream/XMLDocumentScannerImpl;)V

    iput-object v2, v1, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fTrailingMiscDriver:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$Driver;

    .line 237
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fStartPos:I

    .line 238
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fEndPos:I

    .line 239
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fSeenInternalSubset:Z

    .line 243
    move-object v1, v0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, v1, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fStrings:[Ljava/lang/String;

    .line 246
    move-object v1, v0

    new-instance v2, Lorg/apache/xerces/xni/XMLString;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Lorg/apache/xerces/xni/XMLString;-><init>()V

    iput-object v2, v1, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fString:Lorg/apache/xerces/xni/XMLString;

    .line 251
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fReadingAttributes:Z

    .line 252
    move-object v1, v0

    new-instance v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$XMLBufferListenerImpl;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/sun/xml/stream/XMLDocumentScannerImpl$XMLBufferListenerImpl;-><init>(Lcom/sun/xml/stream/XMLDocumentScannerImpl;)V

    iput-object v2, v1, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fScannerBufferlistener:Lcom/sun/xml/stream/XMLDocumentScannerImpl$XMLBufferListenerImpl;

    .line 258
    return-void
.end method


# virtual methods
.method protected createContentDriver()Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$Driver;
    .locals 5

    .prologue
    .line 601
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentScannerImpl;
    new-instance v1, Lcom/sun/xml/stream/XMLDocumentScannerImpl$ContentDriver;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/xml/stream/XMLDocumentScannerImpl$ContentDriver;-><init>(Lcom/sun/xml/stream/XMLDocumentScannerImpl;)V

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLDocumentScannerImpl;
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
    .line 568
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentScannerImpl;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->endEntity(Ljava/lang/String;)V

    .line 570
    move-object v2, v1

    const-string v3, "[xml]"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 576
    move-object v2, v0

    iget v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fMarkupDepth:I

    if-nez v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fDriver:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$Driver;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fTrailingMiscDriver:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$Driver;

    if-ne v2, v3, :cond_1

    .line 578
    move-object v2, v0

    const/16 v3, 0x22

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->setScannerState(I)V

    .line 587
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v2, :cond_0

    .line 588
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lorg/apache/xerces/xni/XMLDocumentHandler;->endDocument(Lorg/apache/xerces/xni/Augmentations;)V

    .line 591
    :cond_0
    return-void

    .line 582
    :cond_1
    new-instance v2, Ljava/io/EOFException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/io/EOFException;-><init>()V

    throw v2
.end method

.method public getFeatureDefault(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 5

    .prologue
    .line 491
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentScannerImpl;
    move-object v1, p1

    .local v1, "featureId":Ljava/lang/String;
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    sget-object v4, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 492
    sget-object v3, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    move v4, v2

    aget-object v3, v3, v4

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 493
    sget-object v3, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

    move v4, v2

    aget-object v3, v3, v4

    move-object v0, v3

    .line 496
    .end local v0    # "this":Lcom/sun/xml/stream/XMLDocumentScannerImpl;
    :goto_1
    return-object v0

    .line 491
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLDocumentScannerImpl;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 496
    :cond_1
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->getFeatureDefault(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    move-object v0, v3

    goto :goto_1
.end method

.method public getPropertyDefault(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 509
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentScannerImpl;
    move-object v1, p1

    .local v1, "propertyId":Ljava/lang/String;
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    sget-object v4, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 510
    sget-object v3, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    move v4, v2

    aget-object v3, v3, v4

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 511
    sget-object v3, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

    move v4, v2

    aget-object v3, v3, v4

    move-object v0, v3

    .line 514
    .end local v0    # "this":Lcom/sun/xml/stream/XMLDocumentScannerImpl;
    :goto_1
    return-object v0

    .line 509
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLDocumentScannerImpl;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 514
    :cond_1
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->getPropertyDefault(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    goto :goto_1
.end method

.method public getRecognizedFeatures()[Ljava/lang/String;
    .locals 9

    .prologue
    .line 392
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentScannerImpl;
    move-object v4, v0

    invoke-super {v4}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->getRecognizedFeatures()[Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 393
    .local v1, "featureIds":[Ljava/lang/String;
    move-object v4, v1

    if-eqz v4, :cond_1

    move-object v4, v1

    array-length v4, v4

    :goto_0
    move v2, v4

    .line 394
    .local v2, "length":I
    move v4, v2

    sget-object v5, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    array-length v5, v5

    add-int/2addr v4, v5

    new-array v4, v4, [Ljava/lang/String;

    move-object v3, v4

    .line 395
    .local v3, "combinedFeatureIds":[Ljava/lang/String;
    move-object v4, v1

    if-eqz v4, :cond_0

    .line 396
    move-object v4, v1

    const/4 v5, 0x0

    move-object v6, v3

    const/4 v7, 0x0

    move-object v8, v1

    array-length v8, v8

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 398
    :cond_0
    sget-object v4, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object v6, v3

    move v7, v2

    sget-object v8, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    array-length v8, v8

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 399
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/xml/stream/XMLDocumentScannerImpl;
    return-object v0

    .line 393
    .end local v2    # "length":I
    .end local v3    # "combinedFeatureIds":[Ljava/lang/String;
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLDocumentScannerImpl;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public getRecognizedProperties()[Ljava/lang/String;
    .locals 9

    .prologue
    .line 439
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentScannerImpl;
    move-object v4, v0

    invoke-super {v4}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->getRecognizedProperties()[Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 440
    .local v1, "propertyIds":[Ljava/lang/String;
    move-object v4, v1

    if-eqz v4, :cond_1

    move-object v4, v1

    array-length v4, v4

    :goto_0
    move v2, v4

    .line 441
    .local v2, "length":I
    move v4, v2

    sget-object v5, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    array-length v5, v5

    add-int/2addr v4, v5

    new-array v4, v4, [Ljava/lang/String;

    move-object v3, v4

    .line 442
    .local v3, "combinedPropertyIds":[Ljava/lang/String;
    move-object v4, v1

    if-eqz v4, :cond_0

    .line 443
    move-object v4, v1

    const/4 v5, 0x0

    move-object v6, v3

    const/4 v7, 0x0

    move-object v8, v1

    array-length v8, v8

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 445
    :cond_0
    sget-object v4, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object v6, v3

    move v7, v2

    sget-object v8, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    array-length v8, v8

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 446
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/xml/stream/XMLDocumentScannerImpl;
    return-object v0

    .line 440
    .end local v2    # "length":I
    .end local v3    # "combinedPropertyIds":[Ljava/lang/String;
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLDocumentScannerImpl;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected getScannerStateName(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 673
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentScannerImpl;
    move v1, p1

    .local v1, "state":I
    move v2, v1

    packed-switch v2, :pswitch_data_0

    .line 681
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->getScannerStateName(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/xml/stream/XMLDocumentScannerImpl;
    :goto_0
    return-object v0

    .line 674
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLDocumentScannerImpl;
    :pswitch_0
    const-string v2, "SCANNER_STATE_XML_DECL"

    move-object v0, v2

    goto :goto_0

    .line 675
    :pswitch_1
    const-string v2, "SCANNER_STATE_PROLOG"

    move-object v0, v2

    goto :goto_0

    .line 676
    :pswitch_2
    const-string v2, "SCANNER_STATE_TRAILING_MISC"

    move-object v0, v2

    goto :goto_0

    .line 677
    :pswitch_3
    const-string v2, "SCANNER_STATE_DTD_INTERNAL_DECLS"

    move-object v0, v2

    goto :goto_0

    .line 678
    :pswitch_4
    const-string v2, "SCANNER_STATE_DTD_EXTERNAL"

    move-object v0, v2

    goto :goto_0

    .line 679
    :pswitch_5
    const-string v2, "SCANNER_STATE_DTD_EXTERNAL_DECLS"

    move-object v0, v2

    goto :goto_0

    .line 673
    :pswitch_data_0
    .packed-switch 0x2a
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getScannetState()I
    .locals 2

    .prologue
    .line 308
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentScannerImpl;
    move-object v1, v0

    iget v1, v1, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fScannerState:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLDocumentScannerImpl;
    return v0
.end method

.method public next()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 322
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentScannerImpl;
    move-object v1, v0

    iget v1, v1, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fScannerLastState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fBindNamespaces:Z

    if-eqz v1, :cond_0

    .line 323
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fScannerLastState:I

    .line 324
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    invoke-interface {v1}, Lorg/apache/xerces/xni/NamespaceContext;->popContext()V

    .line 327
    :cond_0
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fDriver:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$Driver;

    invoke-interface {v2}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$Driver;->next()I

    move-result v2

    move-object v4, v1

    move v5, v2

    move v1, v5

    move-object v2, v4

    move v3, v5

    iput v3, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fScannerLastState:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLDocumentScannerImpl;
    return v0
.end method

.method public reset(Lcom/sun/xml/stream/PropertyManager;)V
    .locals 5

    .prologue
    .line 281
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentScannerImpl;
    move-object v1, p1

    .local v1, "propertyManager":Lcom/sun/xml/stream/PropertyManager;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->reset(Lcom/sun/xml/stream/PropertyManager;)V

    .line 283
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fDoctypeName:Ljava/lang/String;

    .line 284
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fDoctypePublicId:Ljava/lang/String;

    .line 285
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fDoctypeSystemId:Ljava/lang/String;

    .line 286
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fSeenDoctypeDecl:Z

    .line 287
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    invoke-interface {v2}, Lorg/apache/xerces/xni/NamespaceContext;->reset()V

    .line 288
    move-object v2, v0

    move-object v3, v1

    const-string v4, "javax.xml.stream.supportDTD"

    invoke-virtual {v3, v4}, Lcom/sun/xml/stream/PropertyManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fDisallowDoctype:Z

    .line 289
    move-object v2, v0

    move-object v3, v1

    const-string v4, "javax.xml.stream.isNamespaceAware"

    invoke-virtual {v3, v4}, Lcom/sun/xml/stream/PropertyManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fBindNamespaces:Z

    .line 291
    move-object v2, v0

    move-object v3, v1

    const-string v4, "http://java.sun.com/xml/stream/properties/ignore-external-dtd"

    invoke-virtual {v3, v4}, Lcom/sun/xml/stream/PropertyManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x1

    :goto_1
    iput-boolean v3, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fLoadExternalDTD:Z

    .line 293
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fEndOfDocument:Z

    .line 294
    move-object v2, v0

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->setScannerState(I)V

    .line 295
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fXMLDeclDriver:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$Driver;

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->setDriver(Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$Driver;)V

    .line 296
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fSeenInternalSubset:Z

    .line 297
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    if-eqz v2, :cond_0

    .line 298
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    check-cast v2, Lcom/sun/xml/stream/XMLDTDScannerImpl;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->reset(Lcom/sun/xml/stream/PropertyManager;)V

    .line 300
    :cond_0
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fEndPos:I

    .line 301
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fStartPos:I

    .line 302
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fDTDDecl:Lorg/apache/xerces/util/XMLStringBuffer;

    if-eqz v2, :cond_1

    .line 303
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fDTDDecl:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v2}, Lorg/apache/xerces/util/XMLStringBuffer;->clear()V

    .line 304
    :cond_1
    return-void

    .line 288
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 291
    :cond_3
    const/4 v3, 0x0

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
    .line 348
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentScannerImpl;
    move-object v1, p1

    .local v1, "componentManager":Lorg/apache/xerces/xni/parser/XMLComponentManager;
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->reset(Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    .line 351
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fDoctypeName:Ljava/lang/String;

    .line 352
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fDoctypePublicId:Ljava/lang/String;

    .line 353
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fDoctypeSystemId:Ljava/lang/String;

    .line 354
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fSeenDoctypeDecl:Z

    .line 355
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    invoke-interface {v3}, Lorg/apache/xerces/xni/NamespaceContext;->reset()V

    .line 359
    move-object v3, v0

    move-object v4, v1

    :try_start_0
    const-string v5, "http://apache.org/xml/features/nonvalidating/load-external-dtd"

    invoke-interface {v4, v5}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fLoadExternalDTD:Z
    :try_end_0
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    .line 366
    :goto_0
    move-object v3, v0

    move-object v4, v1

    :try_start_1
    const-string v5, "http://apache.org/xml/features/disallow-doctype-decl"

    invoke-interface {v4, v5}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fDisallowDoctype:Z
    :try_end_1
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 370
    .line 373
    :goto_1
    move-object v3, v0

    move-object v4, v1

    const-string v5, "http://apache.org/xml/properties/internal/dtd-scanner"

    invoke-interface {v4, v5}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    iput-object v4, v3, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    .line 374
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fEndPos:I

    .line 375
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fStartPos:I

    .line 376
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fDTDDecl:Lorg/apache/xerces/util/XMLStringBuffer;

    if-eqz v3, :cond_0

    .line 377
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fDTDDecl:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v3}, Lorg/apache/xerces/util/XMLStringBuffer;->clear()V

    .line 380
    :cond_0
    move-object v3, v0

    const/16 v4, 0x2a

    invoke-virtual {v3, v4}, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->setScannerState(I)V

    .line 381
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fXMLDeclDriver:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$Driver;

    invoke-virtual {v3, v4}, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->setDriver(Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$Driver;)V

    .line 383
    return-void

    .line 361
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 362
    .local v2, "e":Lorg/apache/xerces/xni/parser/XMLConfigurationException;
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fLoadExternalDTD:Z

    goto :goto_0

    .line 368
    .end local v2    # "e":Lorg/apache/xerces/xni/parser/XMLConfigurationException;
    :catch_1
    move-exception v3

    move-object v2, v3

    .line 369
    .restart local v2    # "e":Lorg/apache/xerces/xni/parser/XMLConfigurationException;
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fDisallowDoctype:Z

    goto :goto_1
.end method

.method protected scanDoctypeDecl(Z)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 616
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentScannerImpl;
    move v1, p1

    .local v1, "ignore":Z
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v3}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipSpaces()Z

    move-result v3

    if-nez v3, :cond_0

    .line 617
    move-object v3, v0

    const-string v4, "MSG_SPACE_REQUIRED_BEFORE_ROOT_ELEMENT_TYPE_IN_DOCTYPEDECL"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 622
    :cond_0
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v4}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scanName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fDoctypeName:Ljava/lang/String;

    .line 623
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fDoctypeName:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 624
    move-object v3, v0

    const-string v4, "MSG_ROOT_ELEMENT_TYPE_REQUIRED"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 628
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v3}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipSpaces()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 629
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fStrings:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->scanExternalID([Ljava/lang/String;Z)V

    .line 630
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fStrings:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    iput-object v4, v3, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fDoctypeSystemId:Ljava/lang/String;

    .line 631
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fStrings:[Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    iput-object v4, v3, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fDoctypePublicId:Ljava/lang/String;

    .line 632
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v3}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipSpaces()Z

    move-result v3

    .line 635
    :cond_2
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fDoctypeSystemId:Ljava/lang/String;

    if-eqz v4, :cond_6

    const/4 v4, 0x1

    :goto_0
    iput-boolean v4, v3, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fHasExternalDTD:Z

    .line 638
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v3, :cond_3

    move v3, v1

    if-nez v3, :cond_3

    .line 644
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fDoctypeName:Ljava/lang/String;

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fDoctypePublicId:Ljava/lang/String;

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fDoctypeSystemId:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-interface {v3, v4, v5, v6, v7}, Lorg/apache/xerces/xni/XMLDocumentHandler;->doctypeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V

    .line 648
    :cond_3
    const/4 v3, 0x1

    move v2, v3

    .line 649
    .local v2, "internalSubset":Z
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const/16 v4, 0x5b

    invoke-virtual {v3, v4}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v3

    if-nez v3, :cond_5

    .line 650
    const/4 v3, 0x0

    move v2, v3

    .line 651
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v3}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipSpaces()Z

    move-result v3

    .line 652
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const/16 v4, 0x3e

    invoke-virtual {v3, v4}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 653
    move-object v3, v0

    const-string v4, "DoctypedeclUnterminated"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fDoctypeName:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5}, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 655
    :cond_4
    move-object v3, v0

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    iget v4, v4, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fMarkupDepth:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fMarkupDepth:I

    .line 657
    :cond_5
    move v3, v2

    move v0, v3

    .end local v0    # "this":Lcom/sun/xml/stream/XMLDocumentScannerImpl;
    return v0

    .line 635
    .end local v2    # "internalSubset":Z
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLDocumentScannerImpl;
    :cond_6
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected setEndDTDScanState()V
    .locals 3

    .prologue
    .line 666
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentScannerImpl;
    move-object v1, v0

    const/16 v2, 0x2b

    invoke-virtual {v1, v2}, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->setScannerState(I)V

    .line 667
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fPrologDriver:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$Driver;

    invoke-virtual {v1, v2}, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->setDriver(Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$Driver;)V

    .line 668
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fEntityManager:Lcom/sun/xml/stream/XMLEntityManager;

    move-object v2, v0

    invoke-virtual {v1, v2}, Lcom/sun/xml/stream/XMLEntityManager;->setEntityHandler(Lcom/sun/xml/stream/XMLEntityHandler;)V

    .line 669
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
    .line 420
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentScannerImpl;
    move-object v1, p1

    .local v1, "featureId":Ljava/lang/String;
    move v2, p2

    .local v2, "state":Z
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-super {v4, v5, v6}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->setFeature(Ljava/lang/String;Z)V

    .line 423
    move-object v4, v1

    const-string v5, "http://apache.org/xml/features/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 424
    move-object v4, v1

    const-string v5, "http://apache.org/xml/features/"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 425
    .local v3, "feature":Ljava/lang/String;
    move-object v4, v3

    const-string v5, "nonvalidating/load-external-dtd"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 426
    move-object v4, v0

    move v5, v2

    iput-boolean v5, v4, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fLoadExternalDTD:Z

    .line 427
    .line 431
    .end local v3    # "feature":Ljava/lang/String;
    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public setInputSource(Lorg/apache/xerces/xni/parser/XMLInputSource;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 272
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentScannerImpl;
    move-object v1, p1

    .local v1, "inputSource":Lorg/apache/xerces/xni/parser/XMLInputSource;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fEntityManager:Lcom/sun/xml/stream/XMLEntityManager;

    move-object v3, v0

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLEntityManager;->setEntityHandler(Lcom/sun/xml/stream/XMLEntityHandler;)V

    .line 274
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fEntityManager:Lcom/sun/xml/stream/XMLEntityManager;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLEntityManager;->startDocumentEntity(Lorg/apache/xerces/xni/parser/XMLInputSource;)V

    .line 276
    move-object v2, v0

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->setScannerState(I)V

    .line 277
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
    .line 467
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentScannerImpl;
    move-object v1, p1

    .local v1, "propertyId":Ljava/lang/String;
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-super {v4, v5, v6}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 470
    move-object v4, v1

    const-string v5, "http://apache.org/xml/properties/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 471
    move-object v4, v1

    const-string v5, "http://apache.org/xml/properties/"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 472
    .local v3, "property":Ljava/lang/String;
    move-object v4, v3

    const-string v5, "internal/dtd-scanner"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 473
    move-object v4, v0

    move-object v5, v2

    check-cast v5, Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    iput-object v5, v4, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    .line 475
    .line 478
    .end local v3    # "property":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    :cond_1
    goto :goto_0
.end method

.method public startEntity(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 540
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentScannerImpl;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "identifier":Lorg/apache/xerces/xni/XMLResourceIdentifier;
    move-object v3, p3

    .local v3, "encoding":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->startEntity(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;)V

    .line 543
    move-object v4, v1

    const-string v5, "[xml]"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v4}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->isExternal()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 544
    move-object v4, v0

    iget-boolean v4, v4, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fReplaceEntityReferences:Z

    if-eqz v4, :cond_0

    .line 545
    move-object v4, v0

    const/16 v5, 0x24

    invoke-virtual {v4, v5}, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->setScannerState(I)V

    .line 551
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v4, :cond_1

    move-object v4, v1

    const-string v5, "[xml]"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 552
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    move-object v6, v3

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    const/4 v8, 0x0

    invoke-interface {v4, v5, v6, v7, v8}, Lorg/apache/xerces/xni/XMLDocumentHandler;->startDocument(Lorg/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lorg/apache/xerces/xni/NamespaceContext;Lorg/apache/xerces/xni/Augmentations;)V

    .line 555
    :cond_1
    return-void
.end method
