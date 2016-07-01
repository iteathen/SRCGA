.class public Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;
.super Lcom/sun/xml/stream/XMLDocumentScannerImpl;
.source "XMLNSDocumentScannerImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/xml/stream/XMLNSDocumentScannerImpl$NSContentDriver;
    }
.end annotation


# instance fields
.field private fEmptyElement:Z

.field protected fPerformValidation:Z

.field private fXmlnsDeclared:Z

.field private listener:Lcom/sun/xml/stream/XMLDocumentScannerImpl$XMLBufferListenerImpl;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/xml/stream/XMLDocumentScannerImpl;-><init>()V

    .line 103
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fEmptyElement:Z

    .line 104
    move-object v1, v0

    new-instance v2, Lcom/sun/xml/stream/XMLDocumentScannerImpl$XMLBufferListenerImpl;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/sun/xml/stream/XMLDocumentScannerImpl$XMLBufferListenerImpl;-><init>(Lcom/sun/xml/stream/XMLDocumentScannerImpl;)V

    iput-object v2, v1, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->listener:Lcom/sun/xml/stream/XMLDocumentScannerImpl$XMLBufferListenerImpl;

    .line 107
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fXmlnsDeclared:Z

    return-void
.end method

.method private seekCloseOfStartTag()Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 402
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v3}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipSpaces()Z

    move-result v3

    move v1, v3

    .line 405
    .local v1, "sawSpace":Z
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v3}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->peekChar()I

    move-result v3

    move v2, v3

    .line 406
    .local v2, "c":I
    move v3, v2

    const/16 v4, 0x3e

    if-ne v3, v4, :cond_0

    .line 407
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v3}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scanChar()I

    move-result v3

    .line 408
    const/4 v3, 0x1

    move v0, v3

    .line 423
    .end local v0    # "this":Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;
    :goto_0
    return v0

    .line 410
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;
    :cond_0
    move v3, v2

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_2

    .line 411
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v3}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scanChar()I

    move-result v3

    .line 412
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const/16 v4, 0x3e

    invoke-virtual {v3, v4}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 413
    move-object v3, v0

    const-string v4, "ElementUnterminated"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fElementQName:Lorg/apache/xerces/xni/QName;

    iget-object v8, v8, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5}, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 416
    :cond_1
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fEmptyElement:Z

    .line 417
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .line 419
    :cond_2
    move v3, v2

    invoke-static {v3}, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->isValidNameStartChar(I)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v1

    if-nez v3, :cond_4

    .line 420
    :cond_3
    move-object v3, v0

    const-string v4, "ElementUnterminated"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fElementQName:Lorg/apache/xerces/xni/QName;

    iget-object v8, v8, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5}, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 423
    :cond_4
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method


# virtual methods
.method protected createContentDriver()Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$Driver;
    .locals 5

    .prologue
    .line 704
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;
    new-instance v1, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl$NSContentDriver;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl$NSContentDriver;-><init>(Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;)V

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;
    return-object v0
.end method

.method public getCharacterEncodingScheme()Ljava/lang/String;
    .locals 2

    .prologue
    .line 758
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fDeclaredEncoding:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;
    return-object v0
.end method

.method public getDTDDecl()Lorg/apache/xerces/util/XMLStringBuffer;
    .locals 7

    .prologue
    .line 750
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v2}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->getCurrentEntity()Lcom/sun/xml/stream/Entity$ScannedEntity;

    move-result-object v2

    move-object v1, v2

    .line 751
    .local v1, "entity":Lcom/sun/xml/stream/Entity;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fDTDDecl:Lorg/apache/xerces/util/XMLStringBuffer;

    move-object v3, v1

    check-cast v3, Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v3, v3, Lcom/sun/xml/stream/Entity$ScannedEntity;->ch:[C

    move-object v4, v0

    iget v4, v4, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fStartPos:I

    move-object v5, v0

    iget v5, v5, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fEndPos:I

    move-object v6, v0

    iget v6, v6, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fStartPos:I

    sub-int/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lorg/apache/xerces/util/XMLStringBuffer;->append([CII)V

    .line 752
    move-object v2, v0

    iget-boolean v2, v2, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fSeenInternalSubset:Z

    if-eqz v2, :cond_0

    .line 753
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fDTDDecl:Lorg/apache/xerces/util/XMLStringBuffer;

    const-string v3, "]>"

    invoke-virtual {v2, v3}, Lorg/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    .line 754
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fDTDDecl:Lorg/apache/xerces/util/XMLStringBuffer;

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;
    return-object v0
.end method

.method public getElementQName()Lorg/apache/xerces/xni/QName;
    .locals 3

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;
    move-object v1, v0

    iget v1, v1, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fScannerLastState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 146
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fElementQName:Lorg/apache/xerces/xni/QName;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fElementStack:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;

    invoke-virtual {v2}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->getLastPoppedElement()Lorg/apache/xerces/xni/QName;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/xerces/xni/QName;->setValues(Lorg/apache/xerces/xni/QName;)V

    .line 148
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fElementQName:Lorg/apache/xerces/xni/QName;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;
    return-object v0
.end method

.method public getNamespaceContext()Lorg/apache/xerces/xni/NamespaceContext;
    .locals 2

    .prologue
    .line 691
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;
    return-object v0
.end method

.method getString()Lorg/apache/xerces/xni/XMLString;
    .locals 9

    .prologue
    .line 739
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;
    move-object v2, v0

    iget v2, v2, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fAttributeCacheUsedCount:I

    move-object v3, v0

    iget v3, v3, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->initialCacheCount:I

    if-lt v2, v3, :cond_0

    move-object v2, v0

    iget v2, v2, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fAttributeCacheUsedCount:I

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->attributeValueCache:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 740
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->attributeValueCache:Ljava/util/ArrayList;

    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fAttributeCacheUsedCount:I

    move-object v7, v3

    move v8, v4

    move v3, v8

    move-object v4, v7

    move v5, v8

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fAttributeCacheUsedCount:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xerces/xni/XMLString;

    move-object v0, v2

    .line 746
    .end local v0    # "this":Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;
    .local v1, "str":Lorg/apache/xerces/xni/XMLString;
    :goto_0
    return-object v0

    .line 743
    .end local v1    # "str":Lorg/apache/xerces/xni/XMLString;
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;
    :cond_1
    new-instance v2, Lorg/apache/xerces/xni/XMLString;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    invoke-direct {v3}, Lorg/apache/xerces/xni/XMLString;-><init>()V

    move-object v1, v2

    .line 744
    .restart local v1    # "str":Lorg/apache/xerces/xni/XMLString;
    move-object v2, v0

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    iget v3, v3, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fAttributeCacheUsedCount:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fAttributeCacheUsedCount:I

    .line 745
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->attributeValueCache:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 746
    move-object v2, v1

    move-object v0, v2

    goto :goto_0
.end method

.method public reset(Lcom/sun/xml/stream/PropertyManager;)V
    .locals 7

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;
    move-object v1, p1

    .local v1, "propertyManager":Lcom/sun/xml/stream/PropertyManager;
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->setPropertyManager(Lcom/sun/xml/stream/PropertyManager;)V

    .line 113
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->reset(Lcom/sun/xml/stream/PropertyManager;)V

    .line 115
    move-object v3, v0

    :try_start_0
    iget-boolean v3, v3, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fAttributeCacheInitDone:Z

    if-nez v3, :cond_1

    .line 116
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->initialCacheCount:I

    if-ge v3, v4, :cond_0

    .line 117
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->attributeValueCache:Ljava/util/ArrayList;

    new-instance v4, Lorg/apache/xerces/xni/XMLString;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Lorg/apache/xerces/xni/XMLString;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 118
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->stringBufferCache:Ljava/util/ArrayList;

    new-instance v4, Lorg/apache/xerces/util/XMLStringBuffer;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Lorg/apache/xerces/util/XMLStringBuffer;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 116
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 120
    :cond_0
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fAttributeCacheInitDone:Z

    .line 122
    .end local v2    # "i":I
    :cond_1
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fStringBufferIndex:I

    .line 123
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fAttributeCacheUsedCount:I

    .line 124
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->listener:Lcom/sun/xml/stream/XMLDocumentScannerImpl$XMLBufferListenerImpl;

    invoke-virtual {v3, v4}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->registerListener(Lcom/sun/xml/stream/XMLBufferListener;)V

    .line 125
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->dtdGrammarUtil:Lcom/sun/xml/stream/dtd/DTDGrammarUtil;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .line 129
    :goto_1
    return-void

    .line 127
    :catch_0
    move-exception v3

    move-object v2, v3

    goto :goto_1
.end method

.method public reset(Lorg/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    .line 697
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;
    move-object v1, p1

    .local v1, "componentManager":Lorg/apache/xerces/xni/parser/XMLComponentManager;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/sun/xml/stream/XMLDocumentScannerImpl;->reset(Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    .line 698
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fPerformValidation:Z

    .line 699
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fBindNamespaces:Z

    .line 700
    return-void
.end method

.method protected scanAttribute(Lorg/apache/xerces/util/XMLAttributesImpl;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 450
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;
    move-object/from16 v2, p1

    .local v2, "attributes":Lorg/apache/xerces/util/XMLAttributesImpl;
    move-object v11, v1

    iget-object v11, v11, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    move-object v12, v1

    iget-object v12, v12, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    invoke-virtual {v11, v12}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scanQName(Lorg/apache/xerces/xni/QName;)Z

    move-result v11

    .line 453
    move-object v11, v1

    iget-object v11, v11, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v11}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipSpaces()Z

    move-result v11

    .line 454
    move-object v11, v1

    iget-object v11, v11, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const/16 v12, 0x3d

    invoke-virtual {v11, v12}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v11

    if-nez v11, :cond_0

    .line 455
    move-object v11, v1

    const-string v12, "EqRequiredInAttribute"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    const/4 v15, 0x0

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fCurrentElement:Lorg/apache/xerces/xni/QName;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    const/4 v15, 0x1

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    invoke-virtual {v11, v12, v13}, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 458
    :cond_0
    move-object v11, v1

    iget-object v11, v11, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v11}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipSpaces()Z

    move-result v11

    .line 461
    const/4 v11, 0x0

    move v3, v11

    .line 465
    .local v3, "attrIndex":I
    move-object v11, v1

    iget-boolean v11, v11, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fHasExternalDTD:Z

    if-eqz v11, :cond_9

    move-object v11, v1

    iget-boolean v11, v11, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fStandalone:Z

    if-nez v11, :cond_9

    const/4 v11, 0x1

    :goto_0
    move v4, v11

    .line 475
    .local v4, "isVC":Z
    move-object v11, v1

    invoke-virtual {v11}, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->getString()Lorg/apache/xerces/xni/XMLString;

    move-result-object v11

    move-object v5, v11

    .line 476
    .local v5, "tmpStr":Lorg/apache/xerces/xni/XMLString;
    move-object v11, v1

    move-object v12, v5

    move-object v13, v1

    iget-object v13, v13, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fTempString2:Lorg/apache/xerces/xni/XMLString;

    move-object v14, v1

    iget-object v14, v14, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    iget-object v14, v14, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object v15, v2

    move/from16 v16, v3

    move/from16 v17, v4

    invoke-virtual/range {v11 .. v17}, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->scanAttributeValue(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/XMLString;Ljava/lang/String;Lorg/apache/xerces/xni/XMLAttributes;IZ)V

    .line 480
    const/4 v11, 0x0

    move-object v6, v11

    .line 484
    .local v6, "value":Ljava/lang/String;
    move-object v11, v1

    iget-boolean v11, v11, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fBindNamespaces:Z

    if-eqz v11, :cond_e

    .line 486
    move-object v11, v1

    iget-object v11, v11, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    iget-object v11, v11, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    move-object v7, v11

    .line 487
    .local v7, "localpart":Ljava/lang/String;
    move-object v11, v1

    iget-object v11, v11, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    iget-object v11, v11, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v11, :cond_a

    move-object v11, v1

    iget-object v11, v11, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    iget-object v11, v11, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    :goto_1
    move-object v8, v11

    .line 492
    .local v8, "prefix":Ljava/lang/String;
    move-object v11, v8

    sget-object v12, Lorg/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-eq v11, v12, :cond_1

    move-object v11, v8

    sget-object v12, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-ne v11, v12, :cond_e

    move-object v11, v7

    sget-object v12, Lorg/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-ne v11, v12, :cond_e

    .line 496
    :cond_1
    move-object v11, v1

    iget-object v11, v11, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v12, v5

    iget-object v12, v12, Lorg/apache/xerces/xni/XMLString;->ch:[C

    move-object v13, v5

    iget v13, v13, Lorg/apache/xerces/xni/XMLString;->offset:I

    move-object v14, v5

    iget v14, v14, Lorg/apache/xerces/xni/XMLString;->length:I

    invoke-virtual {v11, v12, v13, v14}, Lorg/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v11

    move-object v9, v11

    .line 497
    .local v9, "uri":Ljava/lang/String;
    move-object v11, v9

    move-object v6, v11

    .line 499
    move-object v11, v8

    sget-object v12, Lorg/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-ne v11, v12, :cond_2

    move-object v11, v7

    sget-object v12, Lorg/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-ne v11, v12, :cond_2

    .line 500
    move-object v11, v1

    iget-object v11, v11, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fErrorReporter:Lcom/sun/xml/stream/XMLErrorReporter;

    const-string v12, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string v13, "CantBindXMLNS"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    const/16 v16, 0x0

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    const/4 v15, 0x2

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/sun/xml/stream/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    .line 507
    :cond_2
    move-object v11, v9

    sget-object v12, Lorg/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    if-ne v11, v12, :cond_3

    .line 508
    move-object v11, v1

    iget-object v11, v11, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fErrorReporter:Lcom/sun/xml/stream/XMLErrorReporter;

    const-string v12, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string v13, "CantBindXMLNS"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    const/16 v16, 0x0

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    const/4 v15, 0x2

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/sun/xml/stream/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    .line 515
    :cond_3
    move-object v11, v7

    sget-object v12, Lorg/apache/xerces/util/XMLSymbols;->PREFIX_XML:Ljava/lang/String;

    if-ne v11, v12, :cond_b

    .line 516
    move-object v11, v9

    sget-object v12, Lorg/apache/xerces/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    if-eq v11, v12, :cond_4

    .line 517
    move-object v11, v1

    iget-object v11, v11, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fErrorReporter:Lcom/sun/xml/stream/XMLErrorReporter;

    const-string v12, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string v13, "CantBindXML"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    const/16 v16, 0x0

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    const/4 v15, 0x2

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/sun/xml/stream/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    .line 533
    :cond_4
    :goto_2
    move-object v11, v7

    sget-object v12, Lorg/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-eq v11, v12, :cond_c

    move-object v11, v7

    :goto_3
    move-object v8, v11

    .line 538
    move-object v11, v9

    sget-object v12, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-ne v11, v12, :cond_5

    move-object v11, v7

    sget-object v12, Lorg/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-eq v11, v12, :cond_5

    .line 539
    move-object v11, v1

    iget-object v11, v11, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fErrorReporter:Lcom/sun/xml/stream/XMLErrorReporter;

    const-string v12, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string v13, "EmptyPrefixedAttName"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    const/16 v16, 0x0

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    const/4 v15, 0x2

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/sun/xml/stream/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    .line 546
    :cond_5
    move-object v11, v1

    iget-object v11, v11, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    check-cast v11, Lorg/apache/xerces/util/NamespaceSupport;

    move-object v12, v8

    invoke-virtual {v11, v12}, Lorg/apache/xerces/util/NamespaceSupport;->containsPrefixInCurrentContext(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 547
    move-object v11, v1

    const-string v12, "AttributeNotUnique"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    const/4 v15, 0x0

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fCurrentElement:Lorg/apache/xerces/xni/QName;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    const/4 v15, 0x1

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    invoke-virtual {v11, v12, v13}, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 553
    :cond_6
    move-object v11, v1

    iget-object v11, v11, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    move-object v12, v8

    move-object v13, v9

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v13, :cond_d

    move-object v13, v9

    :goto_4
    invoke-interface {v11, v12, v13}, Lorg/apache/xerces/xni/NamespaceContext;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    move v10, v11

    .line 556
    .local v10, "declared":Z
    move v11, v10

    if-nez v11, :cond_8

    .line 558
    move-object v11, v1

    iget-boolean v11, v11, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fXmlnsDeclared:Z

    if-eqz v11, :cond_7

    .line 559
    move-object v11, v1

    const-string v12, "AttributeNotUnique"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    const/4 v15, 0x0

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fCurrentElement:Lorg/apache/xerces/xni/QName;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    const/4 v15, 0x1

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    invoke-virtual {v11, v12, v13}, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 565
    :cond_7
    move-object v11, v1

    const/4 v12, 0x1

    iput-boolean v12, v11, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fXmlnsDeclared:Z

    .line 570
    .line 607
    .end local v7    # "localpart":Ljava/lang/String;
    .end local v8    # "prefix":Ljava/lang/String;
    .end local v9    # "uri":Ljava/lang/String;
    .end local v10    # "declared":Z
    :cond_8
    :goto_5
    return-void

    .line 465
    .end local v4    # "isVC":Z
    .end local v5    # "tmpStr":Lorg/apache/xerces/xni/XMLString;
    .end local v6    # "value":Ljava/lang/String;
    :cond_9
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 487
    .restart local v4    # "isVC":Z
    .restart local v5    # "tmpStr":Lorg/apache/xerces/xni/XMLString;
    .restart local v6    # "value":Ljava/lang/String;
    .restart local v7    # "localpart":Ljava/lang/String;
    :cond_a
    sget-object v11, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto/16 :goto_1

    .line 525
    .restart local v8    # "prefix":Ljava/lang/String;
    .restart local v9    # "uri":Ljava/lang/String;
    :cond_b
    move-object v11, v9

    sget-object v12, Lorg/apache/xerces/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    if-ne v11, v12, :cond_4

    .line 526
    move-object v11, v1

    iget-object v11, v11, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fErrorReporter:Lcom/sun/xml/stream/XMLErrorReporter;

    const-string v12, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string v13, "CantBindXML"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    const/16 v16, 0x0

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    const/4 v15, 0x2

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/sun/xml/stream/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    goto/16 :goto_2

    .line 533
    :cond_c
    sget-object v11, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto/16 :goto_3

    .line 553
    :cond_d
    const/4 v13, 0x0

    goto :goto_4

    .line 580
    .end local v7    # "localpart":Ljava/lang/String;
    .end local v8    # "prefix":Ljava/lang/String;
    .end local v9    # "uri":Ljava/lang/String;
    :cond_e
    move-object v11, v1

    iget-boolean v11, v11, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fBindNamespaces:Z

    if-eqz v11, :cond_11

    .line 581
    move-object v11, v2

    invoke-virtual {v11}, Lorg/apache/xerces/util/XMLAttributesImpl;->getLength()I

    move-result v11

    move v3, v11

    .line 582
    move-object v11, v2

    move-object v12, v1

    iget-object v12, v12, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    sget-object v13, Lorg/apache/xerces/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14}, Lorg/apache/xerces/util/XMLAttributesImpl;->addAttributeNS(Lorg/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    :cond_f
    :goto_6
    move-object v11, v2

    move v12, v3

    move-object v13, v6

    move-object v14, v5

    invoke-virtual {v11, v12, v13, v14}, Lorg/apache/xerces/util/XMLAttributesImpl;->setValue(ILjava/lang/String;Lorg/apache/xerces/xni/XMLString;)V

    .line 599
    move-object v11, v2

    move v12, v3

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Lorg/apache/xerces/util/XMLAttributesImpl;->setSpecified(IZ)V

    .line 602
    move-object v11, v1

    iget-object v11, v11, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    iget-object v11, v11, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v11, :cond_10

    .line 603
    move-object v11, v2

    move v12, v3

    move-object v13, v1

    iget-object v13, v13, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    move-object v14, v1

    iget-object v14, v14, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    iget-object v14, v14, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    invoke-interface {v13, v14}, Lorg/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lorg/apache/xerces/util/XMLAttributesImpl;->setURI(ILjava/lang/String;)V

    .line 607
    :cond_10
    goto :goto_5

    .line 585
    :cond_11
    move-object v11, v2

    invoke-virtual {v11}, Lorg/apache/xerces/util/XMLAttributesImpl;->getLength()I

    move-result v11

    move v7, v11

    .line 586
    .local v7, "oldLen":I
    move-object v11, v2

    move-object v12, v1

    iget-object v12, v12, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    sget-object v13, Lorg/apache/xerces/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14}, Lorg/apache/xerces/util/XMLAttributesImpl;->addAttribute(Lorg/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    move v3, v11

    .line 589
    move v11, v7

    move-object v12, v2

    invoke-virtual {v12}, Lorg/apache/xerces/util/XMLAttributesImpl;->getLength()I

    move-result v12

    if-ne v11, v12, :cond_f

    .line 590
    move-object v11, v1

    const-string v12, "AttributeNotUnique"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    const/4 v15, 0x0

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fCurrentElement:Lorg/apache/xerces/xni/QName;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    const/4 v15, 0x1

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    invoke-virtual {v11, v12, v13}, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6
.end method

.method protected scanEndElement()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 629
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fElementStack:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;

    invoke-virtual {v3}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->popElement()Lorg/apache/xerces/xni/QName;

    move-result-object v3

    move-object v1, v3

    .line 631
    .local v1, "endElementName":Lorg/apache/xerces/xni/QName;
    move-object v3, v1

    iget-object v3, v3, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object v2, v3

    .line 645
    .local v2, "rawname":Ljava/lang/String;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    move-object v4, v1

    iget-object v4, v4, Lorg/apache/xerces/xni/QName;->characters:[C

    invoke-virtual {v3, v4}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipString([C)Z

    move-result v3

    if-nez v3, :cond_0

    .line 646
    move-object v3, v0

    const-string v4, "ETagRequired"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v2

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5}, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 650
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v3}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipSpaces()Z

    move-result v3

    .line 651
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const/16 v4, 0x3e

    invoke-virtual {v3, v4}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 652
    move-object v3, v0

    const-string v4, "ETagUnterminated"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v2

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5}, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 655
    :cond_1
    move-object v3, v0

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    iget v4, v4, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fMarkupDepth:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fMarkupDepth:I

    .line 658
    move-object v3, v0

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    iget v4, v4, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fMarkupDepth:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fMarkupDepth:I

    .line 661
    move-object v3, v0

    iget v3, v3, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fMarkupDepth:I

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fEntityStack:[I

    move-object v5, v0

    iget v5, v5, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fEntityDepth:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    aget v4, v4, v5

    if-ge v3, v4, :cond_2

    .line 662
    move-object v3, v0

    const-string v4, "ElementEntityMismatch"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v2

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5}, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 674
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v3, :cond_3

    .line 681
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->dtdGrammarUtil:Lcom/sun/xml/stream/dtd/DTDGrammarUtil;

    if-eqz v3, :cond_4

    .line 682
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->dtdGrammarUtil:Lcom/sun/xml/stream/dtd/DTDGrammarUtil;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->endElement(Lorg/apache/xerces/xni/QName;)V

    .line 684
    :cond_4
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fScanEndElement:Z

    .line 685
    move-object v3, v0

    iget v3, v3, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fMarkupDepth:I

    move v0, v3

    .end local v0    # "this":Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;
    return v0
.end method

.method protected scanStartElement()Z
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;
    move-object v7, v0

    iget-boolean v7, v7, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fSkip:Z

    if-eqz v7, :cond_0

    move-object v7, v0

    iget-boolean v7, v7, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fAdd:Z

    if-nez v7, :cond_0

    .line 182
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fElementStack:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;

    invoke-virtual {v7}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->getNext()Lorg/apache/xerces/xni/QName;

    move-result-object v7

    move-object v1, v7

    .line 189
    .local v1, "name":Lorg/apache/xerces/xni/QName;
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    move-object v9, v1

    iget-object v9, v9, Lorg/apache/xerces/xni/QName;->characters:[C

    invoke-virtual {v8, v9}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipString([C)Z

    move-result v8

    iput-boolean v8, v7, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fSkip:Z

    .line 191
    move-object v7, v0

    iget-boolean v7, v7, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fSkip:Z

    if-eqz v7, :cond_c

    .line 195
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fElementStack:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;

    invoke-virtual {v7}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->push()V

    .line 196
    move-object v7, v0

    move-object v8, v1

    iput-object v8, v7, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fElementQName:Lorg/apache/xerces/xni/QName;

    .line 209
    .end local v1    # "name":Lorg/apache/xerces/xni/QName;
    :cond_0
    :goto_0
    move-object v7, v0

    iget-boolean v7, v7, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fSkip:Z

    if-eqz v7, :cond_1

    move-object v7, v0

    iget-boolean v7, v7, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fAdd:Z

    if-eqz v7, :cond_2

    .line 211
    :cond_1
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fElementStack:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;

    invoke-virtual {v8}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->nextElement()Lorg/apache/xerces/xni/QName;

    move-result-object v8

    iput-object v8, v7, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fElementQName:Lorg/apache/xerces/xni/QName;

    .line 213
    move-object v7, v0

    iget-boolean v7, v7, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fBindNamespaces:Z

    if-eqz v7, :cond_d

    .line 214
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fElementQName:Lorg/apache/xerces/xni/QName;

    invoke-virtual {v7, v8}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scanQName(Lorg/apache/xerces/xni/QName;)Z

    move-result v7

    .line 233
    :cond_2
    :goto_1
    move-object v7, v0

    iget-boolean v7, v7, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fAdd:Z

    if-eqz v7, :cond_3

    .line 235
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fElementStack:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fElementQName:Lorg/apache/xerces/xni/QName;

    invoke-virtual {v7, v8}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->matchElement(Lorg/apache/xerces/xni/QName;)Z

    move-result v7

    .line 239
    :cond_3
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fElementQName:Lorg/apache/xerces/xni/QName;

    iput-object v8, v7, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fCurrentElement:Lorg/apache/xerces/xni/QName;

    .line 241
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fElementQName:Lorg/apache/xerces/xni/QName;

    iget-object v7, v7, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object v1, v7

    .line 242
    .local v1, "rawname":Ljava/lang/String;
    move-object v7, v0

    iget-boolean v7, v7, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fBindNamespaces:Z

    if-eqz v7, :cond_5

    .line 243
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    invoke-interface {v7}, Lorg/apache/xerces/xni/NamespaceContext;->pushContext()V

    .line 244
    move-object v7, v0

    iget v7, v7, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fScannerState:I

    const/16 v8, 0x1a

    if-ne v7, v8, :cond_5

    .line 245
    move-object v7, v0

    iget-boolean v7, v7, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fPerformValidation:Z

    if-eqz v7, :cond_5

    .line 246
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fErrorReporter:Lcom/sun/xml/stream/XMLErrorReporter;

    const-string v8, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v9, "MSG_GRAMMAR_NOT_FOUND"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    move-object v13, v1

    aput-object v13, v11, v12

    const/4 v11, 0x1

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/sun/xml/stream/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    .line 251
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fDoctypeName:Ljava/lang/String;

    if-eqz v7, :cond_4

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fDoctypeName:Ljava/lang/String;

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 252
    :cond_4
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fErrorReporter:Lcom/sun/xml/stream/XMLErrorReporter;

    const-string v8, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v9, "RootElementTypeMustMatchDoctypedecl"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    move-object v13, v0

    iget-object v13, v13, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fDoctypeName:Ljava/lang/String;

    aput-object v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x1

    move-object v13, v1

    aput-object v13, v11, v12

    const/4 v11, 0x1

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/sun/xml/stream/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    .line 262
    :cond_5
    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fEmptyElement:Z

    .line 265
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fAttributes:Lorg/apache/xerces/util/XMLAttributesIteratorImpl;

    invoke-virtual {v7}, Lorg/apache/xerces/util/XMLAttributesIteratorImpl;->removeAllAttributes()V

    .line 266
    move-object v7, v0

    invoke-direct {v7}, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->seekCloseOfStartTag()Z

    move-result v7

    if-nez v7, :cond_7

    .line 267
    move-object v7, v0

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fReadingAttributes:Z

    .line 268
    move-object v7, v0

    const/4 v8, 0x0

    iput v8, v7, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fAttributeCacheUsedCount:I

    .line 269
    move-object v7, v0

    const/4 v8, 0x0

    iput v8, v7, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fStringBufferIndex:I

    .line 271
    move-object v7, v0

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fAddDefaultAttr:Z

    .line 272
    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fXmlnsDeclared:Z

    .line 275
    :cond_6
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fAttributes:Lorg/apache/xerces/util/XMLAttributesIteratorImpl;

    invoke-virtual {v7, v8}, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->scanAttribute(Lorg/apache/xerces/util/XMLAttributesImpl;)V

    .line 276
    move-object v7, v0

    invoke-direct {v7}, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->seekCloseOfStartTag()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 277
    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fReadingAttributes:Z

    .line 282
    :cond_7
    move-object v7, v0

    iget-boolean v7, v7, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fBindNamespaces:Z

    if-eqz v7, :cond_13

    .line 284
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fElementQName:Lorg/apache/xerces/xni/QName;

    iget-object v7, v7, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    sget-object v8, Lorg/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-ne v7, v8, :cond_8

    .line 285
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fErrorReporter:Lcom/sun/xml/stream/XMLErrorReporter;

    const-string v8, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string v9, "ElementXMLNSPrefix"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    move-object v13, v0

    iget-object v13, v13, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fElementQName:Lorg/apache/xerces/xni/QName;

    iget-object v13, v13, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v13, v11, v12

    const/4 v11, 0x2

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/sun/xml/stream/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    .line 292
    :cond_8
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fElementQName:Lorg/apache/xerces/xni/QName;

    iget-object v7, v7, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v7, :cond_e

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fElementQName:Lorg/apache/xerces/xni/QName;

    iget-object v7, v7, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    :goto_2
    move-object v2, v7

    .line 295
    .local v2, "prefix":Ljava/lang/String;
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fElementQName:Lorg/apache/xerces/xni/QName;

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    move-object v9, v2

    invoke-interface {v8, v9}, Lorg/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 297
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fCurrentElement:Lorg/apache/xerces/xni/QName;

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fElementQName:Lorg/apache/xerces/xni/QName;

    iget-object v8, v8, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iput-object v8, v7, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 299
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fElementQName:Lorg/apache/xerces/xni/QName;

    iget-object v7, v7, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-nez v7, :cond_9

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fElementQName:Lorg/apache/xerces/xni/QName;

    iget-object v7, v7, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v7, :cond_9

    .line 300
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fElementQName:Lorg/apache/xerces/xni/QName;

    sget-object v8, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    iput-object v8, v7, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    .line 302
    :cond_9
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fElementQName:Lorg/apache/xerces/xni/QName;

    iget-object v7, v7, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v7, :cond_a

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fElementQName:Lorg/apache/xerces/xni/QName;

    iget-object v7, v7, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-nez v7, :cond_a

    .line 303
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fErrorReporter:Lcom/sun/xml/stream/XMLErrorReporter;

    const-string v8, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string v9, "ElementPrefixUnbound"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    move-object v13, v0

    iget-object v13, v13, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fElementQName:Lorg/apache/xerces/xni/QName;

    iget-object v13, v13, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    aput-object v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x1

    move-object v13, v0

    iget-object v13, v13, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fElementQName:Lorg/apache/xerces/xni/QName;

    iget-object v13, v13, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v13, v11, v12

    const/4 v11, 0x2

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/sun/xml/stream/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    .line 310
    :cond_a
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fAttributes:Lorg/apache/xerces/util/XMLAttributesIteratorImpl;

    invoke-virtual {v7}, Lorg/apache/xerces/util/XMLAttributesIteratorImpl;->getLength()I

    move-result v7

    move v3, v7

    .line 312
    .local v3, "length":I
    const/4 v7, 0x0

    move v4, v7

    .local v4, "i":I
    :goto_3
    move v7, v4

    move v8, v3

    if-ge v7, v8, :cond_12

    .line 313
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fAttributes:Lorg/apache/xerces/util/XMLAttributesIteratorImpl;

    move v8, v4

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    invoke-virtual {v7, v8, v9}, Lorg/apache/xerces/util/XMLAttributesIteratorImpl;->getName(ILorg/apache/xerces/xni/QName;)V

    .line 315
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    iget-object v7, v7, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v7, :cond_f

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    iget-object v7, v7, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    :goto_4
    move-object v5, v7

    .line 317
    .local v5, "aprefix":Ljava/lang/String;
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    move-object v8, v5

    invoke-interface {v7, v8}, Lorg/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 320
    .local v6, "uri":Ljava/lang/String;
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    iget-object v7, v7, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v7, :cond_10

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    iget-object v7, v7, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    move-object v8, v6

    if-ne v7, v8, :cond_10

    .line 322
    .line 312
    :cond_b
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 199
    .end local v2    # "prefix":Ljava/lang/String;
    .end local v3    # "length":I
    .end local v4    # "i":I
    .end local v5    # "aprefix":Ljava/lang/String;
    .end local v6    # "uri":Ljava/lang/String;
    .local v1, "name":Lorg/apache/xerces/xni/QName;
    :cond_c
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fElementStack:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;

    invoke-virtual {v7}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->reposition()V

    goto/16 :goto_0

    .line 217
    .end local v1    # "name":Lorg/apache/xerces/xni/QName;
    :cond_d
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v7}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scanName()Ljava/lang/String;

    move-result-object v7

    move-object v1, v7

    .line 218
    .local v1, "name":Ljava/lang/String;
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fElementQName:Lorg/apache/xerces/xni/QName;

    const/4 v8, 0x0

    move-object v9, v1

    move-object v10, v1

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Lorg/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fElementQName:Lorg/apache/xerces/xni/QName;

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    iget-object v8, v8, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scannedName:[C

    iput-object v8, v7, Lorg/apache/xerces/xni/QName;->characters:[C

    goto/16 :goto_1

    .line 292
    .local v1, "rawname":Ljava/lang/String;
    :cond_e
    sget-object v7, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto/16 :goto_2

    .line 315
    .restart local v2    # "prefix":Ljava/lang/String;
    .restart local v3    # "length":I
    .restart local v4    # "i":I
    :cond_f
    sget-object v7, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_4

    .line 324
    .restart local v5    # "aprefix":Ljava/lang/String;
    .restart local v6    # "uri":Ljava/lang/String;
    :cond_10
    move-object v7, v5

    sget-object v8, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-eq v7, v8, :cond_b

    .line 325
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    move-object v8, v6

    iput-object v8, v7, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 326
    move-object v7, v6

    if-nez v7, :cond_11

    .line 327
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fErrorReporter:Lcom/sun/xml/stream/XMLErrorReporter;

    const-string v8, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string v9, "AttributePrefixUnbound"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    move-object v13, v0

    iget-object v13, v13, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fElementQName:Lorg/apache/xerces/xni/QName;

    iget-object v13, v13, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x1

    move-object v13, v0

    iget-object v13, v13, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    iget-object v13, v13, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x2

    move-object v13, v5

    aput-object v13, v11, v12

    const/4 v11, 0x2

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/sun/xml/stream/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    .line 332
    :cond_11
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fAttributes:Lorg/apache/xerces/util/XMLAttributesIteratorImpl;

    move v8, v4

    move-object v9, v6

    invoke-virtual {v7, v8, v9}, Lorg/apache/xerces/util/XMLAttributesIteratorImpl;->setURI(ILjava/lang/String;)V

    goto :goto_5

    .line 337
    .end local v5    # "aprefix":Ljava/lang/String;
    .end local v6    # "uri":Ljava/lang/String;
    :cond_12
    move v7, v3

    const/4 v8, 0x1

    if-le v7, v8, :cond_13

    .line 338
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fAttributes:Lorg/apache/xerces/util/XMLAttributesIteratorImpl;

    invoke-virtual {v7}, Lorg/apache/xerces/util/XMLAttributesIteratorImpl;->checkDuplicatesNS()Lorg/apache/xerces/xni/QName;

    move-result-object v7

    move-object v4, v7

    .line 339
    .local v4, "name":Lorg/apache/xerces/xni/QName;
    move-object v7, v4

    if-eqz v7, :cond_13

    .line 340
    move-object v7, v4

    iget-object v7, v7, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v7, :cond_17

    .line 341
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fErrorReporter:Lcom/sun/xml/stream/XMLErrorReporter;

    const-string v8, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string v9, "AttributeNSNotUnique"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    move-object v13, v0

    iget-object v13, v13, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fElementQName:Lorg/apache/xerces/xni/QName;

    iget-object v13, v13, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x1

    move-object v13, v4

    iget-object v13, v13, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    aput-object v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x2

    move-object v13, v4

    iget-object v13, v13, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    aput-object v13, v11, v12

    const/4 v11, 0x2

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/sun/xml/stream/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    .line 357
    .end local v2    # "prefix":Ljava/lang/String;
    .end local v3    # "length":I
    .end local v4    # "name":Lorg/apache/xerces/xni/QName;
    :cond_13
    :goto_6
    move-object v7, v0

    iget-boolean v7, v7, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fEmptyElement:Z

    if-eqz v7, :cond_18

    .line 359
    move-object v7, v0

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    iget v8, v8, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fMarkupDepth:I

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    iput v8, v7, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fMarkupDepth:I

    .line 362
    move-object v7, v0

    iget v7, v7, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fMarkupDepth:I

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fEntityStack:[I

    move-object v9, v0

    iget v9, v9, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fEntityDepth:I

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    aget v8, v8, v9

    if-ge v7, v8, :cond_14

    .line 363
    move-object v7, v0

    const-string v8, "ElementEntityMismatch"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const/4 v11, 0x0

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fCurrentElement:Lorg/apache/xerces/xni/QName;

    iget-object v12, v12, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v7, v8, v9}, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 367
    :cond_14
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v7, :cond_15

    .line 368
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fElementQName:Lorg/apache/xerces/xni/QName;

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fAttributes:Lorg/apache/xerces/util/XMLAttributesIteratorImpl;

    const/4 v10, 0x0

    invoke-interface {v7, v8, v9, v10}, Lorg/apache/xerces/xni/XMLDocumentHandler;->emptyElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)V

    .line 373
    :cond_15
    move-object v7, v0

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fScanEndElement:Z

    .line 379
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fElementStack:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;

    invoke-virtual {v7}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->popElement()Lorg/apache/xerces/xni/QName;

    move-result-object v7

    .line 392
    :cond_16
    :goto_7
    move-object v7, v0

    iget-boolean v7, v7, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fEmptyElement:Z

    move v0, v7

    .end local v0    # "this":Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;
    return v0

    .line 347
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;
    .restart local v2    # "prefix":Ljava/lang/String;
    .restart local v3    # "length":I
    .restart local v4    # "name":Lorg/apache/xerces/xni/QName;
    :cond_17
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fErrorReporter:Lcom/sun/xml/stream/XMLErrorReporter;

    const-string v8, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string v9, "AttributeNotUnique"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    move-object v13, v0

    iget-object v13, v13, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fElementQName:Lorg/apache/xerces/xni/QName;

    iget-object v13, v13, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x1

    move-object v13, v4

    iget-object v13, v13, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v13, v11, v12

    const/4 v11, 0x2

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/sun/xml/stream/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    goto :goto_6

    .line 382
    .end local v2    # "prefix":Ljava/lang/String;
    .end local v3    # "length":I
    .end local v4    # "name":Lorg/apache/xerces/xni/QName;
    :cond_18
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->dtdGrammarUtil:Lcom/sun/xml/stream/dtd/DTDGrammarUtil;

    if-eqz v7, :cond_19

    .line 383
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->dtdGrammarUtil:Lcom/sun/xml/stream/dtd/DTDGrammarUtil;

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fElementQName:Lorg/apache/xerces/xni/QName;

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fAttributes:Lorg/apache/xerces/util/XMLAttributesIteratorImpl;

    invoke-virtual {v7, v8, v9}, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->startElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;)V

    .line 385
    :cond_19
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v7, :cond_16

    goto :goto_7
.end method
