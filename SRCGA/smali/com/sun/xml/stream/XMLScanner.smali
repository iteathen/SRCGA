.class public abstract Lcom/sun/xml/stream/XMLScanner;
.super Ljava/lang/Object;
.source "XMLScanner.java"

# interfaces
.implements Lorg/apache/xerces/xni/parser/XMLComponent;


# static fields
.field protected static final DEBUG_ATTR_NORMALIZATION:Z = false

.field protected static final ENTITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-manager"

.field protected static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field protected static final NOTIFY_CHAR_REFS:Ljava/lang/String; = "http://apache.org/xml/features/scanner/notify-char-refs"

.field protected static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field protected static final VALIDATION:Ljava/lang/String; = "http://xml.org/sax/features/validation"

.field protected static final fAmpSymbol:Ljava/lang/String;

.field protected static final fAposSymbol:Ljava/lang/String;

.field protected static final fEncodingSymbol:Ljava/lang/String;

.field protected static final fGtSymbol:Ljava/lang/String;

.field protected static final fLtSymbol:Ljava/lang/String;

.field protected static final fQuotSymbol:Ljava/lang/String;

.field protected static final fStandaloneSymbol:Ljava/lang/String;

.field protected static final fVersionSymbol:Ljava/lang/String;


# instance fields
.field protected attributeValueCache:Ljava/util/ArrayList;

.field protected fAttributeCacheInitDone:Z

.field protected fAttributeCacheUsedCount:I

.field protected fCharRefLiteral:Ljava/lang/String;

.field protected fEntityDepth:I

.field protected fEntityManager:Lcom/sun/xml/stream/XMLEntityManager;

.field protected fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

.field protected fEntityStore:Lcom/sun/xml/stream/XMLEntityStorage;

.field protected fErrorReporter:Lcom/sun/xml/stream/XMLErrorReporter;

.field protected fEvent:Ljavax/xml/stream/events/XMLEvent;

.field private fNeedNonNormalizedValue:Z

.field protected fNotifyCharRefs:Z

.field protected fPropertyManager:Lcom/sun/xml/stream/PropertyManager;

.field protected fReportEntity:Z

.field protected fResourceIdentifier:Lorg/apache/xerces/util/XMLResourceIdentifierImpl;

.field protected fScanningAttribute:Z

.field private fString:Lorg/apache/xerces/xni/XMLString;

.field private fStringBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

.field private fStringBuffer2:Lorg/apache/xerces/util/XMLStringBuffer;

.field private fStringBuffer3:Lorg/apache/xerces/util/XMLStringBuffer;

.field protected fStringBufferIndex:I

.field protected fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

.field protected fValidation:Z

.field initialCacheCount:I

.field protected stringBufferCache:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 208
    const-string v0, "version"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/xml/stream/XMLScanner;->fVersionSymbol:Ljava/lang/String;

    .line 211
    const-string v0, "encoding"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/xml/stream/XMLScanner;->fEncodingSymbol:Ljava/lang/String;

    .line 214
    const-string v0, "standalone"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/xml/stream/XMLScanner;->fStandaloneSymbol:Ljava/lang/String;

    .line 217
    const-string v0, "amp"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/xml/stream/XMLScanner;->fAmpSymbol:Ljava/lang/String;

    .line 220
    const-string v0, "lt"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/xml/stream/XMLScanner;->fLtSymbol:Ljava/lang/String;

    .line 223
    const-string v0, "gt"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/xml/stream/XMLScanner;->fGtSymbol:Ljava/lang/String;

    .line 226
    const-string v0, "quot"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/xml/stream/XMLScanner;->fQuotSymbol:Ljava/lang/String;

    .line 229
    const-string v0, "apos"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/xml/stream/XMLScanner;->fAposSymbol:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLScanner;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 146
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/xml/stream/XMLScanner;->fNeedNonNormalizedValue:Z

    .line 148
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/sun/xml/stream/XMLScanner;->attributeValueCache:Ljava/util/ArrayList;

    .line 149
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/sun/xml/stream/XMLScanner;->stringBufferCache:Ljava/util/ArrayList;

    .line 150
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/xml/stream/XMLScanner;->fStringBufferIndex:I

    .line 151
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/xml/stream/XMLScanner;->fAttributeCacheInitDone:Z

    .line 152
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/xml/stream/XMLScanner;->fAttributeCacheUsedCount:I

    .line 164
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/xml/stream/XMLScanner;->fValidation:Z

    .line 167
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/xml/stream/XMLScanner;->fNotifyCharRefs:Z

    .line 171
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/xml/stream/XMLScanner;->fPropertyManager:Lcom/sun/xml/stream/PropertyManager;

    .line 180
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/xml/stream/XMLScanner;->fEntityManager:Lcom/sun/xml/stream/XMLEntityManager;

    .line 183
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/xml/stream/XMLScanner;->fEntityStore:Lcom/sun/xml/stream/XMLEntityStorage;

    .line 191
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/xml/stream/XMLScanner;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    .line 197
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/xml/stream/XMLScanner;->fCharRefLiteral:Ljava/lang/String;

    .line 240
    move-object v1, v0

    new-instance v2, Lorg/apache/xerces/xni/XMLString;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lorg/apache/xerces/xni/XMLString;-><init>()V

    iput-object v2, v1, Lcom/sun/xml/stream/XMLScanner;->fString:Lorg/apache/xerces/xni/XMLString;

    .line 243
    move-object v1, v0

    new-instance v2, Lorg/apache/xerces/util/XMLStringBuffer;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lorg/apache/xerces/util/XMLStringBuffer;-><init>()V

    iput-object v2, v1, Lcom/sun/xml/stream/XMLScanner;->fStringBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    .line 246
    move-object v1, v0

    new-instance v2, Lorg/apache/xerces/util/XMLStringBuffer;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lorg/apache/xerces/util/XMLStringBuffer;-><init>()V

    iput-object v2, v1, Lcom/sun/xml/stream/XMLScanner;->fStringBuffer2:Lorg/apache/xerces/util/XMLStringBuffer;

    .line 249
    move-object v1, v0

    new-instance v2, Lorg/apache/xerces/util/XMLStringBuffer;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lorg/apache/xerces/util/XMLStringBuffer;-><init>()V

    iput-object v2, v1, Lcom/sun/xml/stream/XMLScanner;->fStringBuffer3:Lorg/apache/xerces/util/XMLStringBuffer;

    .line 252
    move-object v1, v0

    new-instance v2, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;-><init>()V

    iput-object v2, v1, Lcom/sun/xml/stream/XMLScanner;->fResourceIdentifier:Lorg/apache/xerces/util/XMLResourceIdentifierImpl;

    .line 253
    move-object v1, v0

    const/4 v2, 0x6

    iput v2, v1, Lcom/sun/xml/stream/XMLScanner;->initialCacheCount:I

    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 1382
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLScanner;
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/xml/stream/XMLScanner;->fEntityDepth:I

    .line 1383
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sun/xml/stream/XMLScanner;->fReportEntity:Z

    .line 1384
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLScanner;->fResourceIdentifier:Lorg/apache/xerces/util/XMLResourceIdentifierImpl;

    invoke-virtual {v1}, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;->clear()V

    .line 1385
    return-void
.end method

.method protected static isInvalid(I)Z
    .locals 2

    .prologue
    .line 1291
    move v0, p0

    .local v0, "value":I
    move v1, v0

    invoke-static {v1}, Lorg/apache/xerces/util/XMLChar;->isInvalid(I)Z

    move-result v1

    move v0, v1

    .end local v0    # "value":I
    return v0
.end method

.method protected static isInvalidLiteral(I)Z
    .locals 2

    .prologue
    .line 1298
    move v0, p0

    .local v0, "value":I
    move v1, v0

    invoke-static {v1}, Lorg/apache/xerces/util/XMLChar;->isInvalid(I)Z

    move-result v1

    move v0, v1

    .end local v0    # "value":I
    return v0
.end method

.method protected static isValidNCName(I)Z
    .locals 2

    .prologue
    .line 1312
    move v0, p0

    .local v0, "value":I
    move v1, v0

    invoke-static {v1}, Lorg/apache/xerces/util/XMLChar;->isNCName(I)Z

    move-result v1

    move v0, v1

    .end local v0    # "value":I
    return v0
.end method

.method protected static isValidNameChar(I)Z
    .locals 2

    .prologue
    .line 1305
    move v0, p0

    .local v0, "value":I
    move v1, v0

    invoke-static {v1}, Lorg/apache/xerces/util/XMLChar;->isName(I)Z

    move-result v1

    move v0, v1

    .end local v0    # "value":I
    return v0
.end method

.method protected static isValidNameStartChar(I)Z
    .locals 2

    .prologue
    .line 1319
    move v0, p0

    .local v0, "value":I
    move v1, v0

    invoke-static {v1}, Lorg/apache/xerces/util/XMLChar;->isNameStart(I)Z

    move-result v1

    move v0, v1

    .end local v0    # "value":I
    return v0
.end method


# virtual methods
.method public endEntity(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1156
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLScanner;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lcom/sun/xml/stream/XMLScanner;->fEntityDepth:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/sun/xml/stream/XMLScanner;->fEntityDepth:I

    .line 1158
    return-void
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    .line 342
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLScanner;
    move-object v1, p1

    .local v1, "featureId":Ljava/lang/String;
    const-string v2, "http://xml.org/sax/features/validation"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 343
    move-object v2, v0

    iget-boolean v2, v2, Lcom/sun/xml/stream/XMLScanner;->fValidation:Z

    move v0, v2

    .line 345
    .end local v0    # "this":Lcom/sun/xml/stream/XMLScanner;
    :goto_0
    return v0

    .line 344
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLScanner;
    :cond_0
    const-string v2, "http://apache.org/xml/features/scanner/notify-char-refs"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 345
    move-object v2, v0

    iget-boolean v2, v2, Lcom/sun/xml/stream/XMLScanner;->fNotifyCharRefs:Z

    move v0, v2

    goto :goto_0

    .line 347
    :cond_1
    new-instance v2, Lorg/apache/xerces/xni/parser/XMLConfigurationException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lorg/apache/xerces/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw v2
.end method

.method getStringBuffer()Lorg/apache/xerces/util/XMLStringBuffer;
    .locals 9

    .prologue
    .line 1388
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLScanner;
    move-object v2, v0

    iget v2, v2, Lcom/sun/xml/stream/XMLScanner;->fStringBufferIndex:I

    move-object v3, v0

    iget v3, v3, Lcom/sun/xml/stream/XMLScanner;->initialCacheCount:I

    if-lt v2, v3, :cond_0

    move-object v2, v0

    iget v2, v2, Lcom/sun/xml/stream/XMLScanner;->fStringBufferIndex:I

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLScanner;->stringBufferCache:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1389
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLScanner;->stringBufferCache:Ljava/util/ArrayList;

    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lcom/sun/xml/stream/XMLScanner;->fStringBufferIndex:I

    move-object v7, v3

    move v8, v4

    move v3, v8

    move-object v4, v7

    move v5, v8

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/sun/xml/stream/XMLScanner;->fStringBufferIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xerces/util/XMLStringBuffer;

    move-object v0, v2

    .line 1393
    .end local v0    # "this":Lcom/sun/xml/stream/XMLScanner;
    .local v1, "tmpObj":Lorg/apache/xerces/util/XMLStringBuffer;
    :goto_0
    return-object v0

    .line 1391
    .end local v1    # "tmpObj":Lorg/apache/xerces/util/XMLStringBuffer;
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLScanner;
    :cond_1
    new-instance v2, Lorg/apache/xerces/util/XMLStringBuffer;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    invoke-direct {v3}, Lorg/apache/xerces/util/XMLStringBuffer;-><init>()V

    move-object v1, v2

    .line 1392
    .restart local v1    # "tmpObj":Lorg/apache/xerces/util/XMLStringBuffer;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLScanner;->stringBufferCache:Ljava/util/ArrayList;

    move-object v3, v0

    iget v3, v3, Lcom/sun/xml/stream/XMLScanner;->fStringBufferIndex:I

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1393
    move-object v2, v1

    move-object v0, v2

    goto :goto_0
.end method

.method protected normalizeWhitespace(Lorg/apache/xerces/xni/XMLString;)V
    .locals 10

    .prologue
    .line 1100
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLScanner;
    move-object v1, p1

    .local v1, "value":Lorg/apache/xerces/xni/XMLString;
    const/4 v7, 0x0

    move v2, v7

    .line 1101
    .local v2, "i":I
    const/4 v7, 0x0

    move v3, v7

    .line 1102
    .local v3, "j":I
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLScanner;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    iget-object v7, v7, Lcom/sun/xml/stream/XMLEntityReaderImpl;->whiteSpaceLookup:[I

    move-object v4, v7

    .line 1103
    .local v4, "buff":[I
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLScanner;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    iget v7, v7, Lcom/sun/xml/stream/XMLEntityReaderImpl;->whiteSpaceLen:I

    move v5, v7

    .line 1104
    .local v5, "buffLen":I
    move-object v7, v1

    iget v7, v7, Lorg/apache/xerces/xni/XMLString;->offset:I

    move-object v8, v1

    iget v8, v8, Lorg/apache/xerces/xni/XMLString;->length:I

    add-int/2addr v7, v8

    move v6, v7

    .line 1105
    .local v6, "end":I
    :goto_0
    move v7, v2

    move v8, v5

    if-ge v7, v8, :cond_1

    .line 1106
    move-object v7, v4

    move v8, v2

    aget v7, v7, v8

    move v3, v7

    .line 1107
    move v7, v3

    move v8, v6

    if-ge v7, v8, :cond_0

    .line 1108
    move-object v7, v1

    iget-object v7, v7, Lorg/apache/xerces/xni/XMLString;->ch:[C

    move v8, v3

    const/16 v9, 0x20

    aput-char v9, v7, v8

    .line 1110
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1112
    :cond_1
    return-void
.end method

.method protected reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1371
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLScanner;
    move-object v1, p1

    .local v1, "msgId":Ljava/lang/String;
    move-object v2, p2

    .local v2, "args":[Ljava/lang/Object;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLScanner;->fErrorReporter:Lcom/sun/xml/stream/XMLErrorReporter;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLScanner;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const-string v5, "http://www.w3.org/TR/1998/REC-xml-19980210"

    move-object v6, v1

    move-object v7, v2

    const/4 v8, 0x2

    invoke-virtual/range {v3 .. v8}, Lcom/sun/xml/stream/XMLErrorReporter;->reportError(Lorg/apache/xerces/xni/XMLLocator;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    .line 1374
    return-void
.end method

.method public reset(Lcom/sun/xml/stream/PropertyManager;)V
    .locals 5

    .prologue
    .line 356
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLScanner;
    move-object v1, p1

    .local v1, "propertyManager":Lcom/sun/xml/stream/PropertyManager;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/xml/stream/XMLScanner;->init()V

    .line 358
    move-object v2, v0

    move-object v3, v1

    const-string v4, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-virtual {v3, v4}, Lcom/sun/xml/stream/PropertyManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xerces/util/SymbolTable;

    iput-object v3, v2, Lcom/sun/xml/stream/XMLScanner;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    .line 360
    move-object v2, v0

    move-object v3, v1

    const-string v4, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-virtual {v3, v4}, Lcom/sun/xml/stream/PropertyManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/xml/stream/XMLErrorReporter;

    iput-object v3, v2, Lcom/sun/xml/stream/XMLScanner;->fErrorReporter:Lcom/sun/xml/stream/XMLErrorReporter;

    .line 362
    move-object v2, v0

    move-object v3, v1

    const-string v4, "http://apache.org/xml/properties/internal/entity-manager"

    invoke-virtual {v3, v4}, Lcom/sun/xml/stream/PropertyManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/xml/stream/XMLEntityManager;

    iput-object v3, v2, Lcom/sun/xml/stream/XMLScanner;->fEntityManager:Lcom/sun/xml/stream/XMLEntityManager;

    .line 363
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLScanner;->fEntityManager:Lcom/sun/xml/stream/XMLEntityManager;

    invoke-virtual {v3}, Lcom/sun/xml/stream/XMLEntityManager;->getEntityStore()Lcom/sun/xml/stream/XMLEntityStorage;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/xml/stream/XMLScanner;->fEntityStore:Lcom/sun/xml/stream/XMLEntityStorage;

    .line 364
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLScanner;->fEntityManager:Lcom/sun/xml/stream/XMLEntityManager;

    invoke-virtual {v3}, Lcom/sun/xml/stream/XMLEntityManager;->getEntityReader()Lcom/sun/xml/stream/XMLEntityReader;

    move-result-object v3

    check-cast v3, Lcom/sun/xml/stream/XMLEntityReaderImpl;

    iput-object v3, v2, Lcom/sun/xml/stream/XMLScanner;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    .line 367
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/xml/stream/XMLScanner;->fValidation:Z

    .line 368
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/xml/stream/XMLScanner;->fNotifyCharRefs:Z

    .line 370
    return-void
.end method

.method public reset(Lorg/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    .line 270
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLScanner;
    move-object v1, p1

    .local v1, "componentManager":Lorg/apache/xerces/xni/parser/XMLComponentManager;
    move-object v3, v0

    move-object v4, v1

    const-string v5, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-interface {v4, v5}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/xerces/util/SymbolTable;

    iput-object v4, v3, Lcom/sun/xml/stream/XMLScanner;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    .line 271
    move-object v3, v0

    move-object v4, v1

    const-string v5, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-interface {v4, v5}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/xml/stream/XMLErrorReporter;

    iput-object v4, v3, Lcom/sun/xml/stream/XMLScanner;->fErrorReporter:Lcom/sun/xml/stream/XMLErrorReporter;

    .line 272
    move-object v3, v0

    move-object v4, v1

    const-string v5, "http://apache.org/xml/properties/internal/entity-manager"

    invoke-interface {v4, v5}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/xml/stream/XMLEntityManager;

    iput-object v4, v3, Lcom/sun/xml/stream/XMLScanner;->fEntityManager:Lcom/sun/xml/stream/XMLEntityManager;

    .line 274
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/xml/stream/XMLScanner;->init()V

    .line 277
    move-object v3, v0

    move-object v4, v1

    :try_start_0
    const-string v5, "http://xml.org/sax/features/validation"

    invoke-interface {v4, v5}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/sun/xml/stream/XMLScanner;->fValidation:Z
    :try_end_0
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    .line 282
    :goto_0
    move-object v3, v0

    move-object v4, v1

    :try_start_1
    const-string v5, "http://apache.org/xml/features/scanner/notify-char-refs"

    invoke-interface {v4, v5}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/sun/xml/stream/XMLScanner;->fNotifyCharRefs:Z
    :try_end_1
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 286
    .line 288
    :goto_1
    return-void

    .line 278
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 279
    .local v2, "e":Lorg/apache/xerces/xni/parser/XMLConfigurationException;
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/xml/stream/XMLScanner;->fValidation:Z

    goto :goto_0

    .line 284
    .end local v2    # "e":Lorg/apache/xerces/xni/parser/XMLConfigurationException;
    :catch_1
    move-exception v3

    move-object v2, v3

    .line 285
    .restart local v2    # "e":Lorg/apache/xerces/xni/parser/XMLConfigurationException;
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/xml/stream/XMLScanner;->fNotifyCharRefs:Z

    goto :goto_1
.end method

.method protected scanAttributeValue(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/XMLString;Ljava/lang/String;Lorg/apache/xerces/xni/XMLAttributes;IZ)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 765
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/xml/stream/XMLScanner;
    move-object/from16 v2, p1

    .local v2, "value":Lorg/apache/xerces/xni/XMLString;
    move-object/from16 v3, p2

    .local v3, "nonNormalizedValue":Lorg/apache/xerces/xni/XMLString;
    move-object/from16 v4, p3

    .local v4, "atName":Ljava/lang/String;
    move-object/from16 v5, p4

    .local v5, "attributes":Lorg/apache/xerces/xni/XMLAttributes;
    move/from16 v6, p5

    .local v6, "attrIndex":I
    move/from16 v7, p6

    .local v7, "checkEntities":Z
    const/4 v13, 0x0

    move-object v8, v13

    .line 767
    .local v8, "stringBuffer":Lorg/apache/xerces/util/XMLStringBuffer;
    move-object v13, v1

    iget-object v13, v13, Lcom/sun/xml/stream/XMLScanner;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v13}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->peekChar()I

    move-result v13

    move v9, v13

    .line 768
    .local v9, "quote":I
    move v13, v9

    const/16 v14, 0x27

    if-eq v13, v14, :cond_0

    move v13, v9

    const/16 v14, 0x22

    if-eq v13, v14, :cond_0

    .line 769
    move-object v13, v1

    const-string v14, "OpenQuoteExpected"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    const/16 v17, 0x0

    move-object/from16 v18, v4

    aput-object v18, v16, v17

    invoke-virtual {v13, v14, v15}, Lcom/sun/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 772
    :cond_0
    move-object v13, v1

    iget-object v13, v13, Lcom/sun/xml/stream/XMLScanner;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v13}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scanChar()I

    move-result v13

    .line 773
    move-object v13, v1

    iget v13, v13, Lcom/sun/xml/stream/XMLScanner;->fEntityDepth:I

    move v10, v13

    .line 775
    .local v10, "entityDepth":I
    move-object v13, v1

    iget-object v13, v13, Lcom/sun/xml/stream/XMLScanner;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    move v14, v9

    move-object v15, v2

    invoke-virtual {v13, v14, v15}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scanLiteral(ILorg/apache/xerces/xni/XMLString;)I

    move-result v13

    move v11, v13

    .line 780
    .local v11, "c":I
    move-object v13, v1

    iget-boolean v13, v13, Lcom/sun/xml/stream/XMLScanner;->fNeedNonNormalizedValue:Z

    if-eqz v13, :cond_1

    .line 781
    move-object v13, v1

    iget-object v13, v13, Lcom/sun/xml/stream/XMLScanner;->fStringBuffer2:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v13}, Lorg/apache/xerces/util/XMLStringBuffer;->clear()V

    .line 782
    move-object v13, v1

    iget-object v13, v13, Lcom/sun/xml/stream/XMLScanner;->fStringBuffer2:Lorg/apache/xerces/util/XMLStringBuffer;

    move-object v14, v2

    invoke-virtual {v13, v14}, Lorg/apache/xerces/util/XMLStringBuffer;->append(Lorg/apache/xerces/xni/XMLString;)V

    .line 784
    :cond_1
    move-object v13, v1

    iget-object v13, v13, Lcom/sun/xml/stream/XMLScanner;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    iget v13, v13, Lcom/sun/xml/stream/XMLEntityReaderImpl;->whiteSpaceLen:I

    if-lez v13, :cond_2

    .line 785
    move-object v13, v1

    move-object v14, v2

    invoke-virtual {v13, v14}, Lcom/sun/xml/stream/XMLScanner;->normalizeWhitespace(Lorg/apache/xerces/xni/XMLString;)V

    .line 790
    :cond_2
    move v13, v11

    move v14, v9

    if-eq v13, v14, :cond_9

    .line 791
    move-object v13, v1

    const/4 v14, 0x1

    iput-boolean v14, v13, Lcom/sun/xml/stream/XMLScanner;->fScanningAttribute:Z

    .line 792
    move-object v13, v1

    invoke-virtual {v13}, Lcom/sun/xml/stream/XMLScanner;->getStringBuffer()Lorg/apache/xerces/util/XMLStringBuffer;

    move-result-object v13

    move-object v8, v13

    .line 793
    move-object v13, v8

    invoke-virtual {v13}, Lorg/apache/xerces/util/XMLStringBuffer;->clear()V

    .line 795
    :cond_3
    move-object v13, v8

    move-object v14, v2

    invoke-virtual {v13, v14}, Lorg/apache/xerces/util/XMLStringBuffer;->append(Lorg/apache/xerces/xni/XMLString;)V

    .line 800
    move v13, v11

    const/16 v14, 0x26

    if-ne v13, v14, :cond_1a

    .line 801
    move-object v13, v1

    iget-object v13, v13, Lcom/sun/xml/stream/XMLScanner;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const/16 v14, 0x26

    invoke-virtual {v13, v14}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v13

    .line 802
    move v13, v10

    move-object v14, v1

    iget v14, v14, Lcom/sun/xml/stream/XMLScanner;->fEntityDepth:I

    if-ne v13, v14, :cond_4

    move-object v13, v1

    iget-boolean v13, v13, Lcom/sun/xml/stream/XMLScanner;->fNeedNonNormalizedValue:Z

    if-eqz v13, :cond_4

    .line 803
    move-object v13, v1

    iget-object v13, v13, Lcom/sun/xml/stream/XMLScanner;->fStringBuffer2:Lorg/apache/xerces/util/XMLStringBuffer;

    const/16 v14, 0x26

    invoke-virtual {v13, v14}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 805
    :cond_4
    move-object v13, v1

    iget-object v13, v13, Lcom/sun/xml/stream/XMLScanner;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const/16 v14, 0x23

    invoke-virtual {v13, v14}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 806
    move v13, v10

    move-object v14, v1

    iget v14, v14, Lcom/sun/xml/stream/XMLScanner;->fEntityDepth:I

    if-ne v13, v14, :cond_5

    move-object v13, v1

    iget-boolean v13, v13, Lcom/sun/xml/stream/XMLScanner;->fNeedNonNormalizedValue:Z

    if-eqz v13, :cond_5

    .line 807
    move-object v13, v1

    iget-object v13, v13, Lcom/sun/xml/stream/XMLScanner;->fStringBuffer2:Lorg/apache/xerces/util/XMLStringBuffer;

    const/16 v14, 0x23

    invoke-virtual {v13, v14}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 810
    :cond_5
    move-object v13, v1

    iget-boolean v13, v13, Lcom/sun/xml/stream/XMLScanner;->fNeedNonNormalizedValue:Z

    if-eqz v13, :cond_c

    .line 811
    move-object v13, v1

    move-object v14, v8

    move-object v15, v1

    iget-object v15, v15, Lcom/sun/xml/stream/XMLScanner;->fStringBuffer2:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v13, v14, v15}, Lcom/sun/xml/stream/XMLScanner;->scanCharReferenceValue(Lorg/apache/xerces/util/XMLStringBuffer;Lorg/apache/xerces/util/XMLStringBuffer;)I

    move-result v13

    move v12, v13

    .line 815
    .local v12, "ch":I
    :goto_0
    move v13, v12

    const/4 v14, -0x1

    if-eq v13, v14, :cond_6

    .line 822
    .line 936
    .end local v12    # "ch":I
    :cond_6
    :goto_1
    move-object v13, v1

    iget-object v13, v13, Lcom/sun/xml/stream/XMLScanner;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    move v14, v9

    move-object v15, v2

    invoke-virtual {v13, v14, v15}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scanLiteral(ILorg/apache/xerces/xni/XMLString;)I

    move-result v13

    move v11, v13

    .line 937
    move v13, v10

    move-object v14, v1

    iget v14, v14, Lcom/sun/xml/stream/XMLScanner;->fEntityDepth:I

    if-ne v13, v14, :cond_7

    move-object v13, v1

    iget-boolean v13, v13, Lcom/sun/xml/stream/XMLScanner;->fNeedNonNormalizedValue:Z

    if-eqz v13, :cond_7

    .line 938
    move-object v13, v1

    iget-object v13, v13, Lcom/sun/xml/stream/XMLScanner;->fStringBuffer2:Lorg/apache/xerces/util/XMLStringBuffer;

    move-object v14, v2

    invoke-virtual {v13, v14}, Lorg/apache/xerces/util/XMLStringBuffer;->append(Lorg/apache/xerces/xni/XMLString;)V

    .line 940
    :cond_7
    move-object v13, v1

    iget-object v13, v13, Lcom/sun/xml/stream/XMLScanner;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    iget v13, v13, Lcom/sun/xml/stream/XMLEntityReaderImpl;->whiteSpaceLen:I

    if-lez v13, :cond_8

    .line 941
    move-object v13, v1

    move-object v14, v2

    invoke-virtual {v13, v14}, Lcom/sun/xml/stream/XMLScanner;->normalizeWhitespace(Lorg/apache/xerces/xni/XMLString;)V

    .line 944
    :cond_8
    move v13, v11

    move v14, v9

    if-ne v13, v14, :cond_3

    move v13, v10

    move-object v14, v1

    iget v14, v14, Lcom/sun/xml/stream/XMLScanner;->fEntityDepth:I

    if-ne v13, v14, :cond_3

    .line 945
    move-object v13, v8

    move-object v14, v2

    invoke-virtual {v13, v14}, Lorg/apache/xerces/util/XMLStringBuffer;->append(Lorg/apache/xerces/xni/XMLString;)V

    .line 950
    move-object v13, v2

    move-object v14, v8

    invoke-virtual {v13, v14}, Lorg/apache/xerces/xni/XMLString;->setValues(Lorg/apache/xerces/xni/XMLString;)V

    .line 951
    move-object v13, v1

    const/4 v14, 0x0

    iput-boolean v14, v13, Lcom/sun/xml/stream/XMLScanner;->fScanningAttribute:Z

    .line 953
    :cond_9
    move-object v13, v1

    iget-boolean v13, v13, Lcom/sun/xml/stream/XMLScanner;->fNeedNonNormalizedValue:Z

    if-eqz v13, :cond_a

    .line 954
    move-object v13, v3

    move-object v14, v1

    iget-object v14, v14, Lcom/sun/xml/stream/XMLScanner;->fStringBuffer2:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v13, v14}, Lorg/apache/xerces/xni/XMLString;->setValues(Lorg/apache/xerces/xni/XMLString;)V

    .line 957
    :cond_a
    move-object v13, v1

    iget-object v13, v13, Lcom/sun/xml/stream/XMLScanner;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v13}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scanChar()I

    move-result v13

    move v12, v13

    .line 958
    .local v12, "cquote":I
    move v13, v12

    move v14, v9

    if-eq v13, v14, :cond_b

    .line 959
    move-object v13, v1

    const-string v14, "CloseQuoteExpected"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    const/16 v17, 0x0

    move-object/from16 v18, v4

    aput-object v18, v16, v17

    invoke-virtual {v13, v14, v15}, Lcom/sun/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 961
    :cond_b
    return-void

    .line 813
    .end local v12    # "cquote":I
    :cond_c
    move-object v13, v1

    move-object v14, v8

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/sun/xml/stream/XMLScanner;->scanCharReferenceValue(Lorg/apache/xerces/util/XMLStringBuffer;Lorg/apache/xerces/util/XMLStringBuffer;)I

    move-result v13

    move v12, v13

    .local v12, "ch":I
    goto :goto_0

    .line 823
    .end local v12    # "ch":I
    :cond_d
    move-object v13, v1

    iget-object v13, v13, Lcom/sun/xml/stream/XMLScanner;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v13}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scanName()Ljava/lang/String;

    move-result-object v13

    move-object v12, v13

    .line 824
    .local v12, "entityName":Ljava/lang/String;
    move-object v13, v12

    if-nez v13, :cond_10

    .line 825
    move-object v13, v1

    const-string v14, "NameRequiredInReference"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/sun/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 829
    :cond_e
    :goto_2
    move-object v13, v1

    iget-object v13, v13, Lcom/sun/xml/stream/XMLScanner;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const/16 v14, 0x3b

    invoke-virtual {v13, v14}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v13

    if-nez v13, :cond_11

    .line 830
    move-object v13, v1

    const-string v14, "SemicolonRequiredInReference"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    const/16 v17, 0x0

    move-object/from16 v18, v12

    aput-object v18, v16, v17

    invoke-virtual {v13, v14, v15}, Lcom/sun/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 835
    :cond_f
    :goto_3
    move-object v13, v12

    sget-object v14, Lcom/sun/xml/stream/XMLScanner;->fAmpSymbol:Ljava/lang/String;

    if-ne v13, v14, :cond_12

    .line 836
    move-object v13, v8

    const/16 v14, 0x26

    invoke-virtual {v13, v14}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 892
    :goto_4
    goto/16 :goto_1

    .line 826
    :cond_10
    move v13, v10

    move-object v14, v1

    iget v14, v14, Lcom/sun/xml/stream/XMLScanner;->fEntityDepth:I

    if-ne v13, v14, :cond_e

    move-object v13, v1

    iget-boolean v13, v13, Lcom/sun/xml/stream/XMLScanner;->fNeedNonNormalizedValue:Z

    if-eqz v13, :cond_e

    .line 827
    move-object v13, v1

    iget-object v13, v13, Lcom/sun/xml/stream/XMLScanner;->fStringBuffer2:Lorg/apache/xerces/util/XMLStringBuffer;

    move-object v14, v12

    invoke-virtual {v13, v14}, Lorg/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    goto :goto_2

    .line 832
    :cond_11
    move v13, v10

    move-object v14, v1

    iget v14, v14, Lcom/sun/xml/stream/XMLScanner;->fEntityDepth:I

    if-ne v13, v14, :cond_f

    move-object v13, v1

    iget-boolean v13, v13, Lcom/sun/xml/stream/XMLScanner;->fNeedNonNormalizedValue:Z

    if-eqz v13, :cond_f

    .line 833
    move-object v13, v1

    iget-object v13, v13, Lcom/sun/xml/stream/XMLScanner;->fStringBuffer2:Lorg/apache/xerces/util/XMLStringBuffer;

    const/16 v14, 0x3b

    invoke-virtual {v13, v14}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto :goto_3

    .line 842
    :cond_12
    move-object v13, v12

    sget-object v14, Lcom/sun/xml/stream/XMLScanner;->fAposSymbol:Ljava/lang/String;

    if-ne v13, v14, :cond_13

    .line 843
    move-object v13, v8

    const/16 v14, 0x27

    invoke-virtual {v13, v14}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto :goto_4

    .line 849
    :cond_13
    move-object v13, v12

    sget-object v14, Lcom/sun/xml/stream/XMLScanner;->fLtSymbol:Ljava/lang/String;

    if-ne v13, v14, :cond_14

    .line 850
    move-object v13, v8

    const/16 v14, 0x3c

    invoke-virtual {v13, v14}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto :goto_4

    .line 856
    :cond_14
    move-object v13, v12

    sget-object v14, Lcom/sun/xml/stream/XMLScanner;->fGtSymbol:Ljava/lang/String;

    if-ne v13, v14, :cond_15

    .line 857
    move-object v13, v8

    const/16 v14, 0x3e

    invoke-virtual {v13, v14}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto :goto_4

    .line 863
    :cond_15
    move-object v13, v12

    sget-object v14, Lcom/sun/xml/stream/XMLScanner;->fQuotSymbol:Ljava/lang/String;

    if-ne v13, v14, :cond_16

    .line 864
    move-object v13, v8

    const/16 v14, 0x22

    invoke-virtual {v13, v14}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto :goto_4

    .line 871
    :cond_16
    move-object v13, v1

    iget-object v13, v13, Lcom/sun/xml/stream/XMLScanner;->fEntityStore:Lcom/sun/xml/stream/XMLEntityStorage;

    move-object v14, v12

    invoke-virtual {v13, v14}, Lcom/sun/xml/stream/XMLEntityStorage;->isExternalEntity(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_17

    .line 872
    move-object v13, v1

    const-string v14, "ReferenceToExternalEntity"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    const/16 v17, 0x0

    move-object/from16 v18, v12

    aput-object v18, v16, v17

    invoke-virtual {v13, v14, v15}, Lcom/sun/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 875
    :cond_17
    move-object v13, v1

    iget-object v13, v13, Lcom/sun/xml/stream/XMLScanner;->fEntityStore:Lcom/sun/xml/stream/XMLEntityStorage;

    move-object v14, v12

    invoke-virtual {v13, v14}, Lcom/sun/xml/stream/XMLEntityStorage;->isDeclaredEntity(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_18

    .line 877
    move v13, v7

    if-eqz v13, :cond_19

    .line 878
    move-object v13, v1

    iget-boolean v13, v13, Lcom/sun/xml/stream/XMLScanner;->fValidation:Z

    if-eqz v13, :cond_18

    .line 879
    move-object v13, v1

    iget-object v13, v13, Lcom/sun/xml/stream/XMLScanner;->fErrorReporter:Lcom/sun/xml/stream/XMLErrorReporter;

    move-object v14, v1

    iget-object v14, v14, Lcom/sun/xml/stream/XMLScanner;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const-string v15, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v16, "EntityNotDeclared"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v21, v17

    move-object/from16 v17, v21

    move-object/from16 v18, v21

    const/16 v19, 0x0

    move-object/from16 v20, v12

    aput-object v20, v18, v19

    const/16 v18, 0x1

    invoke-virtual/range {v13 .. v18}, Lcom/sun/xml/stream/XMLErrorReporter;->reportError(Lorg/apache/xerces/xni/XMLLocator;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    .line 889
    :cond_18
    :goto_5
    move-object v13, v1

    iget-object v13, v13, Lcom/sun/xml/stream/XMLScanner;->fEntityManager:Lcom/sun/xml/stream/XMLEntityManager;

    move-object v14, v12

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Lcom/sun/xml/stream/XMLEntityManager;->startEntity(Ljava/lang/String;Z)V

    goto/16 :goto_4

    .line 885
    :cond_19
    move-object v13, v1

    const-string v14, "EntityNotDeclared"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    const/16 v17, 0x0

    move-object/from16 v18, v12

    aput-object v18, v16, v17

    invoke-virtual {v13, v14, v15}, Lcom/sun/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    .line 893
    .end local v12    # "entityName":Ljava/lang/String;
    :cond_1a
    move v13, v11

    const/16 v14, 0x3c

    if-ne v13, v14, :cond_1b

    .line 894
    move-object v13, v1

    const-string v14, "LessthanInAttValue"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    const/16 v17, 0x0

    const/16 v18, 0x0

    aput-object v18, v16, v17

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    const/16 v17, 0x1

    move-object/from16 v18, v4

    aput-object v18, v16, v17

    invoke-virtual {v13, v14, v15}, Lcom/sun/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 896
    move-object v13, v1

    iget-object v13, v13, Lcom/sun/xml/stream/XMLScanner;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v13}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scanChar()I

    move-result v13

    .line 897
    move v13, v10

    move-object v14, v1

    iget v14, v14, Lcom/sun/xml/stream/XMLScanner;->fEntityDepth:I

    if-ne v13, v14, :cond_6

    move-object v13, v1

    iget-boolean v13, v13, Lcom/sun/xml/stream/XMLScanner;->fNeedNonNormalizedValue:Z

    if-eqz v13, :cond_6

    .line 898
    move-object v13, v1

    iget-object v13, v13, Lcom/sun/xml/stream/XMLScanner;->fStringBuffer2:Lorg/apache/xerces/util/XMLStringBuffer;

    move v14, v11

    int-to-char v14, v14

    invoke-virtual {v13, v14}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto/16 :goto_1

    .line 900
    :cond_1b
    move v13, v11

    const/16 v14, 0x25

    if-eq v13, v14, :cond_1c

    move v13, v11

    const/16 v14, 0x5d

    if-ne v13, v14, :cond_1d

    .line 901
    :cond_1c
    move-object v13, v1

    iget-object v13, v13, Lcom/sun/xml/stream/XMLScanner;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v13}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scanChar()I

    move-result v13

    .line 902
    move-object v13, v8

    move v14, v11

    int-to-char v14, v14

    invoke-virtual {v13, v14}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 903
    move v13, v10

    move-object v14, v1

    iget v14, v14, Lcom/sun/xml/stream/XMLScanner;->fEntityDepth:I

    if-ne v13, v14, :cond_6

    move-object v13, v1

    iget-boolean v13, v13, Lcom/sun/xml/stream/XMLScanner;->fNeedNonNormalizedValue:Z

    if-eqz v13, :cond_6

    .line 904
    move-object v13, v1

    iget-object v13, v13, Lcom/sun/xml/stream/XMLScanner;->fStringBuffer2:Lorg/apache/xerces/util/XMLStringBuffer;

    move v14, v11

    int-to-char v14, v14

    invoke-virtual {v13, v14}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto/16 :goto_1

    .line 910
    :cond_1d
    move v13, v11

    const/16 v14, 0xa

    if-eq v13, v14, :cond_1e

    move v13, v11

    const/16 v14, 0xd

    if-ne v13, v14, :cond_1f

    .line 911
    :cond_1e
    move-object v13, v1

    iget-object v13, v13, Lcom/sun/xml/stream/XMLScanner;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v13}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scanChar()I

    move-result v13

    .line 912
    move-object v13, v8

    const/16 v14, 0x20

    invoke-virtual {v13, v14}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 913
    move v13, v10

    move-object v14, v1

    iget v14, v14, Lcom/sun/xml/stream/XMLScanner;->fEntityDepth:I

    if-ne v13, v14, :cond_6

    move-object v13, v1

    iget-boolean v13, v13, Lcom/sun/xml/stream/XMLScanner;->fNeedNonNormalizedValue:Z

    if-eqz v13, :cond_6

    .line 914
    move-object v13, v1

    iget-object v13, v13, Lcom/sun/xml/stream/XMLScanner;->fStringBuffer2:Lorg/apache/xerces/util/XMLStringBuffer;

    const/16 v14, 0xa

    invoke-virtual {v13, v14}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto/16 :goto_1

    .line 916
    :cond_1f
    move v13, v11

    const/4 v14, -0x1

    if-eq v13, v14, :cond_20

    move v13, v11

    invoke-static {v13}, Lorg/apache/xerces/util/XMLChar;->isHighSurrogate(I)Z

    move-result v13

    if-eqz v13, :cond_20

    .line 917
    move-object v13, v1

    move-object v14, v1

    iget-object v14, v14, Lcom/sun/xml/stream/XMLScanner;->fStringBuffer3:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v13, v14}, Lcom/sun/xml/stream/XMLScanner;->scanSurrogates(Lorg/apache/xerces/util/XMLStringBuffer;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 918
    move-object v13, v8

    move-object v14, v1

    iget-object v14, v14, Lcom/sun/xml/stream/XMLScanner;->fStringBuffer3:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v13, v14}, Lorg/apache/xerces/util/XMLStringBuffer;->append(Lorg/apache/xerces/xni/XMLString;)V

    .line 919
    move v13, v10

    move-object v14, v1

    iget v14, v14, Lcom/sun/xml/stream/XMLScanner;->fEntityDepth:I

    if-ne v13, v14, :cond_6

    move-object v13, v1

    iget-boolean v13, v13, Lcom/sun/xml/stream/XMLScanner;->fNeedNonNormalizedValue:Z

    if-eqz v13, :cond_6

    .line 920
    move-object v13, v1

    iget-object v13, v13, Lcom/sun/xml/stream/XMLScanner;->fStringBuffer2:Lorg/apache/xerces/util/XMLStringBuffer;

    move-object v14, v1

    iget-object v14, v14, Lcom/sun/xml/stream/XMLScanner;->fStringBuffer3:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v13, v14}, Lorg/apache/xerces/util/XMLStringBuffer;->append(Lorg/apache/xerces/xni/XMLString;)V

    goto/16 :goto_1

    .line 928
    :cond_20
    move v13, v11

    const/4 v14, -0x1

    if-eq v13, v14, :cond_6

    move v13, v11

    invoke-static {v13}, Lcom/sun/xml/stream/XMLScanner;->isInvalidLiteral(I)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 929
    move-object v13, v1

    const-string v14, "InvalidCharInAttValue"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    const/16 v17, 0x0

    move/from16 v18, v11

    const/16 v19, 0x10

    .line 930
    invoke-static/range {v18 .. v19}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    .line 929
    invoke-virtual {v13, v14, v15}, Lcom/sun/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 931
    move-object v13, v1

    iget-object v13, v13, Lcom/sun/xml/stream/XMLScanner;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v13}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scanChar()I

    move-result v13

    .line 932
    move v13, v10

    move-object v14, v1

    iget v14, v14, Lcom/sun/xml/stream/XMLScanner;->fEntityDepth:I

    if-ne v13, v14, :cond_6

    move-object v13, v1

    iget-boolean v13, v13, Lcom/sun/xml/stream/XMLScanner;->fNeedNonNormalizedValue:Z

    if-eqz v13, :cond_6

    .line 933
    move-object v13, v1

    iget-object v13, v13, Lcom/sun/xml/stream/XMLScanner;->fStringBuffer2:Lorg/apache/xerces/util/XMLStringBuffer;

    move v14, v11

    int-to-char v14, v14

    invoke-virtual {v13, v14}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto/16 :goto_1
.end method

.method protected scanCharReferenceValue(Lorg/apache/xerces/util/XMLStringBuffer;Lorg/apache/xerces/util/XMLStringBuffer;)I
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1180
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLScanner;
    move-object v1, p1

    .local v1, "buf":Lorg/apache/xerces/util/XMLStringBuffer;
    move-object/from16 v2, p2

    .local v2, "buf2":Lorg/apache/xerces/util/XMLStringBuffer;
    const/4 v7, 0x0

    move v3, v7

    .line 1181
    .local v3, "hex":Z
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLScanner;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const/16 v8, 0x78

    invoke-virtual {v7, v8}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 1182
    move-object v7, v2

    if-eqz v7, :cond_0

    move-object v7, v2

    const/16 v8, 0x78

    invoke-virtual {v7, v8}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 1183
    :cond_0
    const/4 v7, 0x1

    move v3, v7

    .line 1184
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLScanner;->fStringBuffer3:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v7}, Lorg/apache/xerces/util/XMLStringBuffer;->clear()V

    .line 1185
    const/4 v7, 0x1

    move v4, v7

    .line 1187
    .local v4, "digit":Z
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLScanner;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v7}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->peekChar()I

    move-result v7

    move v5, v7

    .line 1188
    .local v5, "c":I
    move v7, v5

    const/16 v8, 0x30

    if-lt v7, v8, :cond_1

    move v7, v5

    const/16 v8, 0x39

    if-le v7, v8, :cond_3

    :cond_1
    move v7, v5

    const/16 v8, 0x61

    if-lt v7, v8, :cond_2

    move v7, v5

    const/16 v8, 0x66

    if-le v7, v8, :cond_3

    :cond_2
    move v7, v5

    const/16 v8, 0x41

    if-lt v7, v8, :cond_10

    move v7, v5

    const/16 v8, 0x46

    if-gt v7, v8, :cond_10

    :cond_3
    const/4 v7, 0x1

    :goto_0
    move v4, v7

    .line 1191
    move v7, v4

    if-eqz v7, :cond_12

    .line 1192
    move-object v7, v2

    if-eqz v7, :cond_4

    move-object v7, v2

    move v8, v5

    int-to-char v8, v8

    invoke-virtual {v7, v8}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 1193
    :cond_4
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLScanner;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v7}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scanChar()I

    move-result v7

    .line 1194
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLScanner;->fStringBuffer3:Lorg/apache/xerces/util/XMLStringBuffer;

    move v8, v5

    int-to-char v8, v8

    invoke-virtual {v7, v8}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 1197
    :cond_5
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLScanner;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v7}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->peekChar()I

    move-result v7

    move v5, v7

    .line 1198
    move v7, v5

    const/16 v8, 0x30

    if-lt v7, v8, :cond_6

    move v7, v5

    const/16 v8, 0x39

    if-le v7, v8, :cond_8

    :cond_6
    move v7, v5

    const/16 v8, 0x61

    if-lt v7, v8, :cond_7

    move v7, v5

    const/16 v8, 0x66

    if-le v7, v8, :cond_8

    :cond_7
    move v7, v5

    const/16 v8, 0x41

    if-lt v7, v8, :cond_11

    move v7, v5

    const/16 v8, 0x46

    if-gt v7, v8, :cond_11

    :cond_8
    const/4 v7, 0x1

    :goto_1
    move v4, v7

    .line 1201
    move v7, v4

    if-eqz v7, :cond_a

    .line 1202
    move-object v7, v2

    if-eqz v7, :cond_9

    move-object v7, v2

    move v8, v5

    int-to-char v8, v8

    invoke-virtual {v7, v8}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 1203
    :cond_9
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLScanner;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v7}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scanChar()I

    move-result v7

    .line 1204
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLScanner;->fStringBuffer3:Lorg/apache/xerces/util/XMLStringBuffer;

    move v8, v5

    int-to-char v8, v8

    invoke-virtual {v7, v8}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 1206
    :cond_a
    move v7, v4

    if-nez v7, :cond_5

    .line 1210
    .line 1239
    :goto_2
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLScanner;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const/16 v8, 0x3b

    invoke-virtual {v7, v8}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v7

    if-nez v7, :cond_b

    .line 1240
    move-object v7, v0

    const-string v8, "SemicolonRequiredInCharRef"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/sun/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1242
    :cond_b
    move-object v7, v2

    if-eqz v7, :cond_c

    move-object v7, v2

    const/16 v8, 0x3b

    invoke-virtual {v7, v8}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 1245
    :cond_c
    const/4 v7, -0x1

    move v4, v7

    .line 1247
    .local v4, "value":I
    move-object v7, v0

    :try_start_0
    iget-object v7, v7, Lcom/sun/xml/stream/XMLScanner;->fStringBuffer3:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v7}, Lorg/apache/xerces/util/XMLStringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    move v8, v3

    if-eqz v8, :cond_1b

    const/16 v8, 0x10

    :goto_3
    invoke-static {v7, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    move v4, v7

    .line 1251
    move v7, v4

    invoke-static {v7}, Lcom/sun/xml/stream/XMLScanner;->isInvalid(I)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 1252
    new-instance v7, Ljava/lang/StringBuffer;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLScanner;->fStringBuffer3:Lorg/apache/xerces/util/XMLStringBuffer;

    iget v9, v9, Lorg/apache/xerces/util/XMLStringBuffer;->length:I

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object v5, v7

    .line 1253
    .local v5, "errorBuf":Ljava/lang/StringBuffer;
    move v7, v3

    if-eqz v7, :cond_d

    move-object v7, v5

    const/16 v8, 0x78

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v7

    .line 1254
    :cond_d
    move-object v7, v5

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLScanner;->fStringBuffer3:Lorg/apache/xerces/util/XMLStringBuffer;

    iget-object v8, v8, Lorg/apache/xerces/util/XMLStringBuffer;->ch:[C

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLScanner;->fStringBuffer3:Lorg/apache/xerces/util/XMLStringBuffer;

    iget v9, v9, Lorg/apache/xerces/util/XMLStringBuffer;->offset:I

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/xml/stream/XMLScanner;->fStringBuffer3:Lorg/apache/xerces/util/XMLStringBuffer;

    iget v10, v10, Lorg/apache/xerces/util/XMLStringBuffer;->length:I

    invoke-virtual {v7, v8, v9, v10}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    move-result-object v7

    .line 1255
    move-object v7, v0

    const-string v8, "InvalidCharRef"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    move-object v12, v5

    .line 1256
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 1255
    invoke-virtual {v7, v8, v9}, Lcom/sun/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1266
    .line 1269
    .end local v5    # "errorBuf":Ljava/lang/StringBuffer;
    :cond_e
    :goto_4
    move v7, v4

    invoke-static {v7}, Lorg/apache/xerces/util/XMLChar;->isSupplemental(I)Z

    move-result v7

    if-nez v7, :cond_1d

    .line 1270
    move-object v7, v1

    move v8, v4

    int-to-char v8, v8

    invoke-virtual {v7, v8}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 1278
    :goto_5
    move-object v7, v0

    iget-boolean v7, v7, Lcom/sun/xml/stream/XMLScanner;->fNotifyCharRefs:Z

    if-eqz v7, :cond_f

    move v7, v4

    const/4 v8, -0x1

    if-eq v7, v8, :cond_f

    .line 1279
    new-instance v7, Ljava/lang/StringBuilder;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "#"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v3

    if-eqz v8, :cond_1e

    const-string v8, "x"

    :goto_6
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLScanner;->fStringBuffer3:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v8}, Lorg/apache/xerces/util/XMLStringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 1280
    .local v5, "literal":Ljava/lang/String;
    move-object v7, v0

    iget-boolean v7, v7, Lcom/sun/xml/stream/XMLScanner;->fScanningAttribute:Z

    if-nez v7, :cond_f

    .line 1281
    move-object v7, v0

    move-object v8, v5

    iput-object v8, v7, Lcom/sun/xml/stream/XMLScanner;->fCharRefLiteral:Ljava/lang/String;

    .line 1285
    .end local v5    # "literal":Ljava/lang/String;
    :cond_f
    move v7, v4

    move v0, v7

    .end local v0    # "this":Lcom/sun/xml/stream/XMLScanner;
    return v0

    .line 1188
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLScanner;
    .local v4, "digit":Z
    .local v5, "c":I
    :cond_10
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 1198
    :cond_11
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 1208
    :cond_12
    move-object v7, v0

    const-string v8, "HexdigitRequiredInCharRef"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/sun/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 1214
    .end local v4    # "digit":Z
    .end local v5    # "c":I
    :cond_13
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLScanner;->fStringBuffer3:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v7}, Lorg/apache/xerces/util/XMLStringBuffer;->clear()V

    .line 1215
    const/4 v7, 0x1

    move v4, v7

    .line 1217
    .restart local v4    # "digit":Z
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLScanner;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v7}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->peekChar()I

    move-result v7

    move v5, v7

    .line 1218
    .restart local v5    # "c":I
    move v7, v5

    const/16 v8, 0x30

    if-lt v7, v8, :cond_18

    move v7, v5

    const/16 v8, 0x39

    if-gt v7, v8, :cond_18

    const/4 v7, 0x1

    :goto_7
    move v4, v7

    .line 1219
    move v7, v4

    if-eqz v7, :cond_1a

    .line 1220
    move-object v7, v2

    if-eqz v7, :cond_14

    move-object v7, v2

    move v8, v5

    int-to-char v8, v8

    invoke-virtual {v7, v8}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 1221
    :cond_14
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLScanner;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v7}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scanChar()I

    move-result v7

    .line 1222
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLScanner;->fStringBuffer3:Lorg/apache/xerces/util/XMLStringBuffer;

    move v8, v5

    int-to-char v8, v8

    invoke-virtual {v7, v8}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 1225
    :cond_15
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLScanner;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v7}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->peekChar()I

    move-result v7

    move v5, v7

    .line 1226
    move v7, v5

    const/16 v8, 0x30

    if-lt v7, v8, :cond_19

    move v7, v5

    const/16 v8, 0x39

    if-gt v7, v8, :cond_19

    const/4 v7, 0x1

    :goto_8
    move v4, v7

    .line 1227
    move v7, v4

    if-eqz v7, :cond_17

    .line 1228
    move-object v7, v2

    if-eqz v7, :cond_16

    move-object v7, v2

    move v8, v5

    int-to-char v8, v8

    invoke-virtual {v7, v8}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 1229
    :cond_16
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLScanner;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v7}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scanChar()I

    move-result v7

    .line 1230
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLScanner;->fStringBuffer3:Lorg/apache/xerces/util/XMLStringBuffer;

    move v8, v5

    int-to-char v8, v8

    invoke-virtual {v7, v8}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 1232
    :cond_17
    move v7, v4

    if-nez v7, :cond_15

    goto/16 :goto_2

    .line 1218
    :cond_18
    const/4 v7, 0x0

    goto :goto_7

    .line 1226
    :cond_19
    const/4 v7, 0x0

    goto :goto_8

    .line 1234
    :cond_1a
    move-object v7, v0

    const-string v8, "DigitRequiredInCharRef"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/sun/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 1247
    .local v4, "value":I
    :cond_1b
    const/16 v8, 0xa

    goto/16 :goto_3

    .line 1258
    .end local v5    # "c":I
    :catch_0
    move-exception v7

    move-object v5, v7

    .line 1261
    .local v5, "e":Ljava/lang/NumberFormatException;
    new-instance v7, Ljava/lang/StringBuffer;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLScanner;->fStringBuffer3:Lorg/apache/xerces/util/XMLStringBuffer;

    iget v9, v9, Lorg/apache/xerces/util/XMLStringBuffer;->length:I

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object v6, v7

    .line 1262
    .local v6, "errorBuf":Ljava/lang/StringBuffer;
    move v7, v3

    if-eqz v7, :cond_1c

    move-object v7, v6

    const/16 v8, 0x78

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v7

    .line 1263
    :cond_1c
    move-object v7, v6

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLScanner;->fStringBuffer3:Lorg/apache/xerces/util/XMLStringBuffer;

    iget-object v8, v8, Lorg/apache/xerces/util/XMLStringBuffer;->ch:[C

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLScanner;->fStringBuffer3:Lorg/apache/xerces/util/XMLStringBuffer;

    iget v9, v9, Lorg/apache/xerces/util/XMLStringBuffer;->offset:I

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/xml/stream/XMLScanner;->fStringBuffer3:Lorg/apache/xerces/util/XMLStringBuffer;

    iget v10, v10, Lorg/apache/xerces/util/XMLStringBuffer;->length:I

    invoke-virtual {v7, v8, v9, v10}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    move-result-object v7

    .line 1264
    move-object v7, v0

    const-string v8, "InvalidCharRef"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    move-object v12, v6

    .line 1265
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 1264
    invoke-virtual {v7, v8, v9}, Lcom/sun/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 1273
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    .end local v6    # "errorBuf":Ljava/lang/StringBuffer;
    :cond_1d
    move-object v7, v1

    move v8, v4

    invoke-static {v8}, Lorg/apache/xerces/util/XMLChar;->highSurrogate(I)C

    move-result v8

    invoke-virtual {v7, v8}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 1274
    move-object v7, v1

    move v8, v4

    invoke-static {v8}, Lorg/apache/xerces/util/XMLChar;->lowSurrogate(I)C

    move-result v8

    invoke-virtual {v7, v8}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto/16 :goto_5

    .line 1279
    :cond_1e
    const-string v8, ""

    goto/16 :goto_6
.end method

.method protected scanComment(Lorg/apache/xerces/util/XMLStringBuffer;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 717
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLScanner;
    move-object v1, p1

    .local v1, "text":Lorg/apache/xerces/util/XMLStringBuffer;
    move-object v3, v1

    invoke-virtual {v3}, Lorg/apache/xerces/util/XMLStringBuffer;->clear()V

    .line 718
    :goto_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLScanner;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const-string v4, "--"

    move-object v5, v1

    invoke-virtual {v3, v4, v5}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scanData(Ljava/lang/String;Lorg/apache/xerces/util/XMLStringBuffer;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 719
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLScanner;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v3}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->peekChar()I

    move-result v3

    move v2, v3

    .line 724
    .local v2, "c":I
    move v3, v2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 725
    move v3, v2

    invoke-static {v3}, Lorg/apache/xerces/util/XMLChar;->isHighSurrogate(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 726
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/xml/stream/XMLScanner;->scanSurrogates(Lorg/apache/xerces/util/XMLStringBuffer;)Z

    move-result v3

    .line 728
    :cond_0
    move v3, v2

    invoke-static {v3}, Lcom/sun/xml/stream/XMLScanner;->isInvalidLiteral(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 729
    move-object v3, v0

    const-string v4, "InvalidCharInComment"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move v8, v2

    .line 730
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 729
    invoke-virtual {v3, v4, v5}, Lcom/sun/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 731
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLScanner;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v3}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scanChar()I

    move-result v3

    .line 734
    :cond_1
    goto :goto_0

    .line 735
    .end local v2    # "c":I
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLScanner;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const/16 v4, 0x3e

    invoke-virtual {v3, v4}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 736
    move-object v3, v0

    const-string v4, "DashDashInComment"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/sun/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 739
    :cond_3
    return-void
.end method

.method protected scanExternalID([Ljava/lang/String;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 978
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLScanner;
    move-object v1, p1

    .local v1, "identifiers":[Ljava/lang/String;
    move v2, p2

    .local v2, "optionalSystemId":Z
    const/4 v8, 0x0

    move-object v3, v8

    .line 979
    .local v3, "systemId":Ljava/lang/String;
    const/4 v8, 0x0

    move-object v4, v8

    .line 980
    .local v4, "publicId":Ljava/lang/String;
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLScanner;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const-string v9, "PUBLIC"

    invoke-virtual {v8, v9}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipString(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 981
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLScanner;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v8}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipSpaces()Z

    move-result v8

    if-nez v8, :cond_0

    .line 982
    move-object v8, v0

    const-string v9, "SpaceRequiredAfterPUBLIC"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/sun/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 984
    :cond_0
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLScanner;->fString:Lorg/apache/xerces/xni/XMLString;

    invoke-virtual {v8, v9}, Lcom/sun/xml/stream/XMLScanner;->scanPubidLiteral(Lorg/apache/xerces/xni/XMLString;)Z

    move-result v8

    .line 985
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLScanner;->fString:Lorg/apache/xerces/xni/XMLString;

    invoke-virtual {v8}, Lorg/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    .line 987
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLScanner;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v8}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipSpaces()Z

    move-result v8

    if-nez v8, :cond_1

    move v8, v2

    if-nez v8, :cond_1

    .line 988
    move-object v8, v0

    const-string v9, "SpaceRequiredBetweenPublicAndSystem"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/sun/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 992
    :cond_1
    move-object v8, v4

    if-nez v8, :cond_2

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLScanner;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const-string v9, "SYSTEM"

    invoke-virtual {v8, v9}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipString(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 993
    :cond_2
    move-object v8, v4

    if-nez v8, :cond_3

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLScanner;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v8}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipSpaces()Z

    move-result v8

    if-nez v8, :cond_3

    .line 994
    move-object v8, v0

    const-string v9, "SpaceRequiredAfterSYSTEM"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/sun/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 996
    :cond_3
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLScanner;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v8}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->peekChar()I

    move-result v8

    move v5, v8

    .line 997
    .local v5, "quote":I
    move v8, v5

    const/16 v9, 0x27

    if-eq v8, v9, :cond_5

    move v8, v5

    const/16 v9, 0x22

    if-eq v8, v9, :cond_5

    .line 998
    move-object v8, v4

    if-eqz v8, :cond_4

    move v8, v2

    if-eqz v8, :cond_4

    .line 1001
    move-object v8, v1

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput-object v10, v8, v9

    .line 1002
    move-object v8, v1

    const/4 v9, 0x1

    move-object v10, v4

    aput-object v10, v8, v9

    .line 1003
    .line 1030
    .end local v5    # "quote":I
    :goto_0
    return-void

    .line 1005
    .restart local v5    # "quote":I
    :cond_4
    move-object v8, v0

    const-string v9, "QuoteRequiredInSystemID"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/sun/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1007
    :cond_5
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLScanner;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v8}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scanChar()I

    move-result v8

    .line 1008
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLScanner;->fString:Lorg/apache/xerces/xni/XMLString;

    move-object v6, v8

    .line 1009
    .local v6, "ident":Lorg/apache/xerces/xni/XMLString;
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLScanner;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    move v9, v5

    move-object v10, v6

    invoke-virtual {v8, v9, v10}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scanLiteral(ILorg/apache/xerces/xni/XMLString;)I

    move-result v8

    move v9, v5

    if-eq v8, v9, :cond_9

    .line 1010
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLScanner;->fStringBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v8}, Lorg/apache/xerces/util/XMLStringBuffer;->clear()V

    .line 1012
    :cond_6
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLScanner;->fStringBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    move-object v9, v6

    invoke-virtual {v8, v9}, Lorg/apache/xerces/util/XMLStringBuffer;->append(Lorg/apache/xerces/xni/XMLString;)V

    .line 1013
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLScanner;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v8}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->peekChar()I

    move-result v8

    move v7, v8

    .line 1014
    .local v7, "c":I
    move v8, v7

    invoke-static {v8}, Lorg/apache/xerces/util/XMLChar;->isMarkup(I)Z

    move-result v8

    if-nez v8, :cond_7

    move v8, v7

    const/16 v9, 0x5d

    if-ne v8, v9, :cond_8

    .line 1015
    :cond_7
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLScanner;->fStringBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLScanner;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v9}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scanChar()I

    move-result v9

    int-to-char v9, v9

    invoke-virtual {v8, v9}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 1017
    :cond_8
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLScanner;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    move v9, v5

    move-object v10, v6

    invoke-virtual {v8, v9, v10}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scanLiteral(ILorg/apache/xerces/xni/XMLString;)I

    move-result v8

    move v9, v5

    if-ne v8, v9, :cond_6

    .line 1018
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLScanner;->fStringBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    move-object v9, v6

    invoke-virtual {v8, v9}, Lorg/apache/xerces/util/XMLStringBuffer;->append(Lorg/apache/xerces/xni/XMLString;)V

    .line 1019
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLScanner;->fStringBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    move-object v6, v8

    .line 1021
    .end local v7    # "c":I
    :cond_9
    move-object v8, v6

    invoke-virtual {v8}, Lorg/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v3, v8

    .line 1022
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLScanner;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    move v9, v5

    invoke-virtual {v8, v9}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v8

    if-nez v8, :cond_a

    .line 1023
    move-object v8, v0

    const-string v9, "SystemIDUnterminated"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/sun/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1028
    .end local v5    # "quote":I
    .end local v6    # "ident":Lorg/apache/xerces/xni/XMLString;
    :cond_a
    move-object v8, v1

    const/4 v9, 0x0

    move-object v10, v3

    aput-object v10, v8, v9

    .line 1029
    move-object v8, v1

    const/4 v9, 0x1

    move-object v10, v4

    aput-object v10, v8, v9

    .line 1030
    goto/16 :goto_0
.end method

.method protected scanPI(Lorg/apache/xerces/util/XMLStringBuffer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 624
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLScanner;
    move-object v1, p1

    .local v1, "data":Lorg/apache/xerces/util/XMLStringBuffer;
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/xml/stream/XMLScanner;->fReportEntity:Z

    .line 625
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLScanner;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v3}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scanName()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 626
    .local v2, "target":Ljava/lang/String;
    move-object v3, v2

    if-nez v3, :cond_0

    .line 627
    move-object v3, v0

    const-string v4, "PITargetRequired"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/sun/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 631
    :cond_0
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-virtual {v3, v4, v5}, Lcom/sun/xml/stream/XMLScanner;->scanPIData(Ljava/lang/String;Lorg/apache/xerces/util/XMLStringBuffer;)V

    .line 632
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/xml/stream/XMLScanner;->fReportEntity:Z

    .line 634
    return-void
.end method

.method protected scanPIData(Ljava/lang/String;Lorg/apache/xerces/util/XMLStringBuffer;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 658
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLScanner;
    move-object v1, p1

    .local v1, "target":Ljava/lang/String;
    move-object v2, p2

    .local v2, "data":Lorg/apache/xerces/util/XMLStringBuffer;
    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_0

    .line 659
    move-object v6, v1

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v6

    move v3, v6

    .line 660
    .local v3, "c0":C
    move-object v6, v1

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v6

    move v4, v6

    .line 661
    .local v4, "c1":C
    move-object v6, v1

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v6

    move v5, v6

    .line 662
    .local v5, "c2":C
    move v6, v3

    const/16 v7, 0x78

    if-ne v6, v7, :cond_0

    move v6, v4

    const/16 v7, 0x6d

    if-ne v6, v7, :cond_0

    move v6, v5

    const/16 v7, 0x6c

    if-ne v6, v7, :cond_0

    .line 663
    move-object v6, v0

    const-string v7, "ReservedPITarget"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/sun/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 668
    .end local v3    # "c0":C
    .end local v4    # "c1":C
    .end local v5    # "c2":C
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLScanner;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v6}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipSpaces()Z

    move-result v6

    if-nez v6, :cond_2

    .line 669
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLScanner;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const-string v7, "?>"

    invoke-virtual {v6, v7}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipString(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 671
    .line 696
    :goto_0
    return-void

    .line 674
    :cond_1
    move-object v6, v0

    const-string v7, "SpaceRequiredInPI"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/sun/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 681
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLScanner;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const-string v7, "?>"

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scanData(Ljava/lang/String;Lorg/apache/xerces/util/XMLStringBuffer;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 683
    :cond_3
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLScanner;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v6}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->peekChar()I

    move-result v6

    move v3, v6

    .line 684
    .local v3, "c":I
    move v6, v3

    const/4 v7, -0x1

    if-eq v6, v7, :cond_4

    .line 685
    move v6, v3

    invoke-static {v6}, Lorg/apache/xerces/util/XMLChar;->isHighSurrogate(I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 686
    move-object v6, v0

    move-object v7, v2

    invoke-virtual {v6, v7}, Lcom/sun/xml/stream/XMLScanner;->scanSurrogates(Lorg/apache/xerces/util/XMLStringBuffer;)Z

    move-result v6

    .line 693
    :cond_4
    :goto_1
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLScanner;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const-string v7, "?>"

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scanData(Ljava/lang/String;Lorg/apache/xerces/util/XMLStringBuffer;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 696
    .end local v3    # "c":I
    :cond_5
    goto :goto_0

    .line 687
    .restart local v3    # "c":I
    :cond_6
    move v6, v3

    invoke-static {v6}, Lcom/sun/xml/stream/XMLScanner;->isInvalidLiteral(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 688
    move-object v6, v0

    const-string v7, "InvalidCharInPI"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move v11, v3

    .line 689
    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 688
    invoke-virtual {v6, v7, v8}, Lcom/sun/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 690
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLScanner;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v6}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scanChar()I

    move-result v6

    goto :goto_1
.end method

.method public scanPseudoAttribute(ZLorg/apache/xerces/xni/XMLString;)Ljava/lang/String;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 555
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLScanner;
    move/from16 v1, p1

    .local v1, "scanningTextDecl":Z
    move-object/from16 v2, p2

    .local v2, "value":Lorg/apache/xerces/xni/XMLString;
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLScanner;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v7}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scanName()Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    .line 558
    .local v3, "name":Ljava/lang/String;
    move-object v7, v3

    if-nez v7, :cond_0

    .line 559
    move-object v7, v0

    const-string v8, "PseudoAttrNameExpected"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/sun/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 561
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLScanner;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v7}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipSpaces()Z

    move-result v7

    .line 562
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLScanner;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const/16 v8, 0x3d

    invoke-virtual {v7, v8}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 563
    move-object v7, v0

    move v8, v1

    if-eqz v8, :cond_8

    const-string v8, "EqRequiredInTextDecl"

    :goto_0
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const/4 v11, 0x0

    move-object v12, v3

    aput-object v12, v10, v11

    invoke-virtual {v7, v8, v9}, Lcom/sun/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 566
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLScanner;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v7}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipSpaces()Z

    move-result v7

    .line 567
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLScanner;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v7}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->peekChar()I

    move-result v7

    move v4, v7

    .line 568
    .local v4, "quote":I
    move v7, v4

    const/16 v8, 0x27

    if-eq v7, v8, :cond_2

    move v7, v4

    const/16 v8, 0x22

    if-eq v7, v8, :cond_2

    .line 569
    move-object v7, v0

    move v8, v1

    if-eqz v8, :cond_9

    const-string v8, "QuoteRequiredInTextDecl"

    :goto_1
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const/4 v11, 0x0

    move-object v12, v3

    aput-object v12, v10, v11

    invoke-virtual {v7, v8, v9}, Lcom/sun/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 572
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLScanner;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v7}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scanChar()I

    move-result v7

    .line 573
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLScanner;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    move v8, v4

    move-object v9, v2

    invoke-virtual {v7, v8, v9}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scanLiteral(ILorg/apache/xerces/xni/XMLString;)I

    move-result v7

    move v5, v7

    .line 574
    .local v5, "c":I
    move v7, v5

    move v8, v4

    if-eq v7, v8, :cond_6

    .line 575
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLScanner;->fStringBuffer2:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v7}, Lorg/apache/xerces/util/XMLStringBuffer;->clear()V

    .line 577
    :cond_3
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLScanner;->fStringBuffer2:Lorg/apache/xerces/util/XMLStringBuffer;

    move-object v8, v2

    invoke-virtual {v7, v8}, Lorg/apache/xerces/util/XMLStringBuffer;->append(Lorg/apache/xerces/xni/XMLString;)V

    .line 578
    move v7, v5

    const/4 v8, -0x1

    if-eq v7, v8, :cond_5

    .line 579
    move v7, v5

    const/16 v8, 0x26

    if-eq v7, v8, :cond_4

    move v7, v5

    const/16 v8, 0x25

    if-eq v7, v8, :cond_4

    move v7, v5

    const/16 v8, 0x3c

    if-eq v7, v8, :cond_4

    move v7, v5

    const/16 v8, 0x5d

    if-ne v7, v8, :cond_a

    .line 580
    :cond_4
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLScanner;->fStringBuffer2:Lorg/apache/xerces/util/XMLStringBuffer;

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLScanner;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v8}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scanChar()I

    move-result v8

    int-to-char v8, v8

    invoke-virtual {v7, v8}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 591
    :cond_5
    :goto_2
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLScanner;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    move v8, v4

    move-object v9, v2

    invoke-virtual {v7, v8, v9}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scanLiteral(ILorg/apache/xerces/xni/XMLString;)I

    move-result v7

    move v5, v7

    .line 592
    move v7, v5

    move v8, v4

    if-ne v7, v8, :cond_3

    .line 593
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLScanner;->fStringBuffer2:Lorg/apache/xerces/util/XMLStringBuffer;

    move-object v8, v2

    invoke-virtual {v7, v8}, Lorg/apache/xerces/util/XMLStringBuffer;->append(Lorg/apache/xerces/xni/XMLString;)V

    .line 594
    move-object v7, v2

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLScanner;->fStringBuffer2:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v7, v8}, Lorg/apache/xerces/xni/XMLString;->setValues(Lorg/apache/xerces/xni/XMLString;)V

    .line 596
    :cond_6
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLScanner;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    move v8, v4

    invoke-virtual {v7, v8}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v7

    if-nez v7, :cond_7

    .line 597
    move-object v7, v0

    move v8, v1

    if-eqz v8, :cond_d

    const-string v8, "CloseQuoteMissingInTextDecl"

    :goto_3
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const/4 v11, 0x0

    move-object v12, v3

    aput-object v12, v10, v11

    invoke-virtual {v7, v8, v9}, Lcom/sun/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 603
    :cond_7
    move-object v7, v3

    move-object v0, v7

    .end local v0    # "this":Lcom/sun/xml/stream/XMLScanner;
    return-object v0

    .line 563
    .end local v4    # "quote":I
    .end local v5    # "c":I
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLScanner;
    :cond_8
    const-string v8, "EqRequiredInXMLDecl"

    goto/16 :goto_0

    .line 569
    .restart local v4    # "quote":I
    :cond_9
    const-string v8, "QuoteRequiredInXMLDecl"

    goto/16 :goto_1

    .line 581
    .restart local v5    # "c":I
    :cond_a
    move v7, v5

    invoke-static {v7}, Lorg/apache/xerces/util/XMLChar;->isHighSurrogate(I)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 582
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLScanner;->fStringBuffer2:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v7, v8}, Lcom/sun/xml/stream/XMLScanner;->scanSurrogates(Lorg/apache/xerces/util/XMLStringBuffer;)Z

    move-result v7

    goto :goto_2

    .line 583
    :cond_b
    move v7, v5

    invoke-static {v7}, Lcom/sun/xml/stream/XMLScanner;->isInvalidLiteral(I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 584
    move v7, v1

    if-eqz v7, :cond_c

    const-string v7, "InvalidCharInTextDecl"

    :goto_4
    move-object v6, v7

    .line 586
    .local v6, "key":Ljava/lang/String;
    move-object v7, v0

    move-object v8, v6

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const/4 v11, 0x0

    move v12, v5

    const/16 v13, 0x10

    .line 587
    invoke-static {v12, v13}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 586
    invoke-virtual {v7, v8, v9}, Lcom/sun/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 588
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLScanner;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v7}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scanChar()I

    move-result v7

    goto :goto_2

    .line 584
    .end local v6    # "key":Ljava/lang/String;
    :cond_c
    const-string v7, "InvalidCharInXMLDecl"

    goto :goto_4

    .line 597
    :cond_d
    const-string v8, "CloseQuoteMissingInXMLDecl"

    goto :goto_3
.end method

.method protected scanPubidLiteral(Lorg/apache/xerces/xni/XMLString;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1054
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLScanner;
    move-object v1, p1

    .local v1, "literal":Lorg/apache/xerces/xni/XMLString;
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLScanner;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v6}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scanChar()I

    move-result v6

    move v2, v6

    .line 1055
    .local v2, "quote":I
    move v6, v2

    const/16 v7, 0x27

    if-eq v6, v7, :cond_0

    move v6, v2

    const/16 v7, 0x22

    if-eq v6, v7, :cond_0

    .line 1056
    move-object v6, v0

    const-string v7, "QuoteRequiredInPublicID"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/sun/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1057
    const/4 v6, 0x0

    move v0, v6

    .line 1091
    .end local v0    # "this":Lcom/sun/xml/stream/XMLScanner;
    :goto_0
    return v0

    .line 1060
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLScanner;
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLScanner;->fStringBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v6}, Lorg/apache/xerces/util/XMLStringBuffer;->clear()V

    .line 1062
    const/4 v6, 0x1

    move v3, v6

    .line 1063
    .local v3, "skipSpace":Z
    const/4 v6, 0x1

    move v4, v6

    .line 1065
    .local v4, "dataok":Z
    :goto_1
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLScanner;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v6}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scanChar()I

    move-result v6

    move v5, v6

    .line 1066
    .local v5, "c":I
    move v6, v5

    const/16 v7, 0x20

    if-eq v6, v7, :cond_1

    move v6, v5

    const/16 v7, 0xa

    if-eq v6, v7, :cond_1

    move v6, v5

    const/16 v7, 0xd

    if-ne v6, v7, :cond_3

    .line 1067
    :cond_1
    move v6, v3

    if-nez v6, :cond_2

    .line 1069
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLScanner;->fStringBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 1070
    const/4 v6, 0x1

    move v3, v6

    .line 1090
    :cond_2
    :goto_2
    goto :goto_1

    .line 1072
    :cond_3
    move v6, v5

    move v7, v2

    if-ne v6, v7, :cond_5

    .line 1073
    move v6, v3

    if-eqz v6, :cond_4

    .line 1075
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLScanner;->fStringBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    iget v7, v7, Lorg/apache/xerces/util/XMLStringBuffer;->length:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    iput v7, v6, Lorg/apache/xerces/util/XMLStringBuffer;->length:I

    .line 1077
    :cond_4
    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLScanner;->fStringBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v6, v7}, Lorg/apache/xerces/xni/XMLString;->setValues(Lorg/apache/xerces/xni/XMLString;)V

    .line 1078
    .line 1091
    move v6, v4

    move v0, v6

    goto :goto_0

    .line 1079
    :cond_5
    move v6, v5

    invoke-static {v6}, Lorg/apache/xerces/util/XMLChar;->isPubid(I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1080
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLScanner;->fStringBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    move v7, v5

    int-to-char v7, v7

    invoke-virtual {v6, v7}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 1081
    const/4 v6, 0x0

    move v3, v6

    goto :goto_2

    .line 1082
    :cond_6
    move v6, v5

    const/4 v7, -0x1

    if-ne v6, v7, :cond_7

    .line 1083
    move-object v6, v0

    const-string v7, "PublicIDUnterminated"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/sun/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1084
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    .line 1086
    :cond_7
    const/4 v6, 0x0

    move v4, v6

    .line 1087
    move-object v6, v0

    const-string v7, "InvalidCharInPublicID"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move v11, v5

    .line 1088
    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 1087
    invoke-virtual {v6, v7, v8}, Lcom/sun/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method protected scanSurrogates(Lorg/apache/xerces/util/XMLStringBuffer;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1338
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLScanner;
    move-object v1, p1

    .local v1, "buf":Lorg/apache/xerces/util/XMLStringBuffer;
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLScanner;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v5}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scanChar()I

    move-result v5

    move v2, v5

    .line 1339
    .local v2, "high":I
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLScanner;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v5}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->peekChar()I

    move-result v5

    move v3, v5

    .line 1340
    .local v3, "low":I
    move v5, v3

    invoke-static {v5}, Lorg/apache/xerces/util/XMLChar;->isLowSurrogate(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1341
    move-object v5, v0

    const-string v6, "InvalidCharInContent"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x0

    move v10, v2

    const/16 v11, 0x10

    .line 1342
    invoke-static {v10, v11}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 1341
    invoke-virtual {v5, v6, v7}, Lcom/sun/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1343
    const/4 v5, 0x0

    move v0, v5

    .line 1361
    .end local v0    # "this":Lcom/sun/xml/stream/XMLScanner;
    :goto_0
    return v0

    .line 1345
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLScanner;
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLScanner;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v5}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scanChar()I

    move-result v5

    .line 1348
    move v5, v2

    int-to-char v5, v5

    move v6, v3

    int-to-char v6, v6

    invoke-static {v5, v6}, Lorg/apache/xerces/util/XMLChar;->supplemental(CC)I

    move-result v5

    move v4, v5

    .line 1351
    .local v4, "c":I
    move v5, v4

    invoke-static {v5}, Lcom/sun/xml/stream/XMLScanner;->isInvalid(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1352
    move-object v5, v0

    const-string v6, "InvalidCharInContent"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x0

    move v10, v4

    const/16 v11, 0x10

    .line 1353
    invoke-static {v10, v11}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 1352
    invoke-virtual {v5, v6, v7}, Lcom/sun/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1354
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 1358
    :cond_1
    move-object v5, v1

    move v6, v2

    int-to-char v6, v6

    invoke-virtual {v5, v6}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 1359
    move-object v5, v1

    move v6, v3

    int-to-char v6, v6

    invoke-virtual {v5, v6}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 1361
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0
.end method

.method protected scanXMLDeclOrTextDecl(Z[Ljava/lang/String;)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 402
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/xml/stream/XMLScanner;
    move/from16 v2, p1

    .local v2, "scanningTextDecl":Z
    move-object/from16 v3, p2

    .local v3, "pseudoAttributeValues":[Ljava/lang/String;
    const/4 v15, 0x0

    move-object v4, v15

    .line 403
    .local v4, "version":Ljava/lang/String;
    const/4 v15, 0x0

    move-object v5, v15

    .line 404
    .local v5, "encoding":Ljava/lang/String;
    const/4 v15, 0x0

    move-object v6, v15

    .line 407
    .local v6, "standalone":Ljava/lang/String;
    const/4 v15, 0x0

    move v7, v15

    .line 408
    .local v7, "STATE_VERSION":I
    const/4 v15, 0x1

    move v8, v15

    .line 409
    .local v8, "STATE_ENCODING":I
    const/4 v15, 0x2

    move v9, v15

    .line 410
    .local v9, "STATE_STANDALONE":I
    const/4 v15, 0x3

    move v10, v15

    .line 411
    .local v10, "STATE_DONE":I
    const/4 v15, 0x0

    move v11, v15

    .line 413
    .local v11, "state":I
    const/4 v15, 0x0

    move v12, v15

    .line 414
    .local v12, "dataFoundForTarget":Z
    move-object v15, v1

    iget-object v15, v15, Lcom/sun/xml/stream/XMLScanner;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v15}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipSpaces()Z

    move-result v15

    move v13, v15

    .line 415
    .local v13, "sawSpace":Z
    :goto_0
    move-object v15, v1

    iget-object v15, v15, Lcom/sun/xml/stream/XMLScanner;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v15}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->peekChar()I

    move-result v15

    const/16 v16, 0x3f

    move/from16 v0, v16

    if-eq v15, v0, :cond_12

    .line 416
    const/4 v15, 0x1

    move v12, v15

    .line 417
    move-object v15, v1

    move/from16 v16, v2

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/xml/stream/XMLScanner;->fString:Lorg/apache/xerces/xni/XMLString;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Lcom/sun/xml/stream/XMLScanner;->scanPseudoAttribute(ZLorg/apache/xerces/xni/XMLString;)Ljava/lang/String;

    move-result-object v15

    move-object v14, v15

    .line 418
    .local v14, "name":Ljava/lang/String;
    move v15, v11

    packed-switch v15, :pswitch_data_0

    .line 498
    move-object v15, v1

    const-string v16, "NoMorePseudoAttributes"

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Lcom/sun/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 501
    :cond_0
    :goto_1
    move-object v15, v1

    iget-object v15, v15, Lcom/sun/xml/stream/XMLScanner;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v15}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipSpaces()Z

    move-result v15

    move v13, v15

    .line 502
    goto :goto_0

    .line 420
    :pswitch_0
    move-object v15, v14

    sget-object v16, Lcom/sun/xml/stream/XMLScanner;->fVersionSymbol:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 421
    move v15, v13

    if-nez v15, :cond_1

    .line 422
    move-object v15, v1

    move/from16 v16, v2

    if-eqz v16, :cond_2

    const-string v16, "SpaceRequiredBeforeVersionInTextDecl"

    :goto_2
    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Lcom/sun/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 427
    :cond_1
    move-object v15, v1

    iget-object v15, v15, Lcom/sun/xml/stream/XMLScanner;->fString:Lorg/apache/xerces/xni/XMLString;

    invoke-virtual {v15}, Lorg/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v15

    move-object v4, v15

    .line 428
    const/4 v15, 0x1

    move v11, v15

    .line 429
    move-object v15, v1

    move-object/from16 v16, v4

    invoke-virtual/range {v15 .. v16}, Lcom/sun/xml/stream/XMLScanner;->versionSupported(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 430
    move-object v15, v1

    const-string v16, "VersionNotSupported"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v21, v17

    move-object/from16 v17, v21

    move-object/from16 v18, v21

    const/16 v19, 0x0

    move-object/from16 v20, v4

    aput-object v20, v18, v19

    invoke-virtual/range {v15 .. v17}, Lcom/sun/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 422
    :cond_2
    const-string v16, "SpaceRequiredBeforeVersionInXMLDecl"

    goto :goto_2

    .line 433
    :cond_3
    move-object v15, v14

    sget-object v16, Lcom/sun/xml/stream/XMLScanner;->fEncodingSymbol:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 434
    move v15, v2

    if-nez v15, :cond_4

    .line 435
    move-object v15, v1

    const-string v16, "VersionInfoRequired"

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Lcom/sun/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 437
    :cond_4
    move v15, v13

    if-nez v15, :cond_5

    .line 438
    move-object v15, v1

    move/from16 v16, v2

    if-eqz v16, :cond_6

    const-string v16, "SpaceRequiredBeforeEncodingInTextDecl"

    :goto_3
    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Lcom/sun/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 443
    :cond_5
    move-object v15, v1

    iget-object v15, v15, Lcom/sun/xml/stream/XMLScanner;->fString:Lorg/apache/xerces/xni/XMLString;

    invoke-virtual {v15}, Lorg/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v15

    move-object v5, v15

    .line 444
    move v15, v2

    if-eqz v15, :cond_7

    const/4 v15, 0x3

    :goto_4
    move v11, v15

    goto/16 :goto_1

    .line 438
    :cond_6
    const-string v16, "SpaceRequiredBeforeEncodingInXMLDecl"

    goto :goto_3

    .line 444
    :cond_7
    const/4 v15, 0x2

    goto :goto_4

    .line 446
    :cond_8
    move v15, v2

    if-eqz v15, :cond_9

    .line 447
    move-object v15, v1

    const-string v16, "EncodingDeclRequired"

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Lcom/sun/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 449
    :cond_9
    move-object v15, v1

    const-string v16, "VersionInfoRequired"

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Lcom/sun/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 452
    goto/16 :goto_1

    .line 455
    :pswitch_1
    move-object v15, v14

    sget-object v16, Lcom/sun/xml/stream/XMLScanner;->fEncodingSymbol:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_d

    .line 456
    move v15, v13

    if-nez v15, :cond_a

    .line 457
    move-object v15, v1

    move/from16 v16, v2

    if-eqz v16, :cond_b

    const-string v16, "SpaceRequiredBeforeEncodingInTextDecl"

    :goto_5
    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Lcom/sun/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 462
    :cond_a
    move-object v15, v1

    iget-object v15, v15, Lcom/sun/xml/stream/XMLScanner;->fString:Lorg/apache/xerces/xni/XMLString;

    invoke-virtual {v15}, Lorg/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v15

    move-object v5, v15

    .line 463
    move v15, v2

    if-eqz v15, :cond_c

    const/4 v15, 0x3

    :goto_6
    move v11, v15

    goto/16 :goto_1

    .line 457
    :cond_b
    const-string v16, "SpaceRequiredBeforeEncodingInXMLDecl"

    goto :goto_5

    .line 463
    :cond_c
    const/4 v15, 0x2

    goto :goto_6

    .line 466
    :cond_d
    move v15, v2

    if-nez v15, :cond_f

    move-object v15, v14

    sget-object v16, Lcom/sun/xml/stream/XMLScanner;->fStandaloneSymbol:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_f

    .line 467
    move v15, v13

    if-nez v15, :cond_e

    .line 468
    move-object v15, v1

    const-string v16, "SpaceRequiredBeforeStandalone"

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Lcom/sun/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 471
    :cond_e
    move-object v15, v1

    iget-object v15, v15, Lcom/sun/xml/stream/XMLScanner;->fString:Lorg/apache/xerces/xni/XMLString;

    invoke-virtual {v15}, Lorg/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v15

    move-object v6, v15

    .line 472
    const/4 v15, 0x3

    move v11, v15

    .line 473
    move-object v15, v6

    const-string v16, "yes"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    move-object v15, v6

    const-string v16, "no"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 474
    move-object v15, v1

    const-string v16, "SDDeclInvalid"

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Lcom/sun/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 477
    :cond_f
    move-object v15, v1

    const-string v16, "EncodingDeclRequired"

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Lcom/sun/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 479
    goto/16 :goto_1

    .line 482
    :pswitch_2
    move-object v15, v14

    sget-object v16, Lcom/sun/xml/stream/XMLScanner;->fStandaloneSymbol:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_11

    .line 483
    move v15, v13

    if-nez v15, :cond_10

    .line 484
    move-object v15, v1

    const-string v16, "SpaceRequiredBeforeStandalone"

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Lcom/sun/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 487
    :cond_10
    move-object v15, v1

    iget-object v15, v15, Lcom/sun/xml/stream/XMLScanner;->fString:Lorg/apache/xerces/xni/XMLString;

    invoke-virtual {v15}, Lorg/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v15

    move-object v6, v15

    .line 488
    const/4 v15, 0x3

    move v11, v15

    .line 489
    move-object v15, v6

    const-string v16, "yes"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    move-object v15, v6

    const-string v16, "no"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 490
    move-object v15, v1

    const-string v16, "SDDeclInvalid"

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Lcom/sun/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 493
    :cond_11
    move-object v15, v1

    const-string v16, "EncodingDeclRequired"

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Lcom/sun/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 495
    goto/16 :goto_1

    .line 504
    .end local v14    # "name":Ljava/lang/String;
    :cond_12
    move v15, v2

    if-eqz v15, :cond_13

    move v15, v11

    const/16 v16, 0x3

    move/from16 v0, v16

    if-eq v15, v0, :cond_13

    .line 505
    move-object v15, v1

    const-string v16, "MorePseudoAttributes"

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Lcom/sun/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 510
    :cond_13
    move v15, v2

    if-eqz v15, :cond_17

    .line 511
    move v15, v12

    if-nez v15, :cond_14

    move-object v15, v5

    if-nez v15, :cond_14

    .line 512
    move-object v15, v1

    const-string v16, "EncodingDeclRequired"

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Lcom/sun/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 521
    :cond_14
    :goto_7
    move-object v15, v1

    iget-object v15, v15, Lcom/sun/xml/stream/XMLScanner;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const/16 v16, 0x3f

    invoke-virtual/range {v15 .. v16}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v15

    if-nez v15, :cond_15

    .line 522
    move-object v15, v1

    const-string v16, "XMLDeclUnterminated"

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Lcom/sun/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 524
    :cond_15
    move-object v15, v1

    iget-object v15, v15, Lcom/sun/xml/stream/XMLScanner;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    const/16 v16, 0x3e

    invoke-virtual/range {v15 .. v16}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v15

    if-nez v15, :cond_16

    .line 525
    move-object v15, v1

    const-string v16, "XMLDeclUnterminated"

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Lcom/sun/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 530
    :cond_16
    move-object v15, v3

    const/16 v16, 0x0

    move-object/from16 v17, v4

    aput-object v17, v15, v16

    .line 531
    move-object v15, v3

    const/16 v16, 0x1

    move-object/from16 v17, v5

    aput-object v17, v15, v16

    .line 532
    move-object v15, v3

    const/16 v16, 0x2

    move-object/from16 v17, v6

    aput-object v17, v15, v16

    .line 534
    return-void

    .line 515
    :cond_17
    move v15, v12

    if-nez v15, :cond_14

    move-object v15, v4

    if-nez v15, :cond_14

    .line 516
    move-object v15, v1

    const-string v16, "VersionInfoRequired"

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Lcom/sun/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_7

    .line 418
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    .line 329
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLScanner;
    move-object v1, p1

    .local v1, "featureId":Ljava/lang/String;
    move v2, p2

    .local v2, "value":Z
    const-string v3, "http://xml.org/sax/features/validation"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 330
    move-object v3, v0

    move v4, v2

    iput-boolean v4, v3, Lcom/sun/xml/stream/XMLScanner;->fValidation:Z

    .line 334
    :cond_0
    :goto_0
    return-void

    .line 331
    :cond_1
    const-string v3, "http://apache.org/xml/features/scanner/notify-char-refs"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 332
    move-object v3, v0

    move v4, v2

    iput-boolean v4, v3, Lcom/sun/xml/stream/XMLScanner;->fNotifyCharRefs:Z

    goto :goto_0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    .line 304
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLScanner;
    move-object v1, p1

    .local v1, "propertyId":Ljava/lang/String;
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    move-object v4, v1

    const-string v5, "http://apache.org/xml/properties/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 305
    move-object v4, v1

    const-string v5, "http://apache.org/xml/properties/"

    .line 306
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 307
    .local v3, "property":Ljava/lang/String;
    move-object v4, v3

    const-string v5, "internal/symbol-table"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 308
    move-object v4, v0

    move-object v5, v2

    check-cast v5, Lorg/apache/xerces/util/SymbolTable;

    iput-object v5, v4, Lcom/sun/xml/stream/XMLScanner;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    .line 321
    .end local v3    # "property":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 309
    .restart local v3    # "property":Ljava/lang/String;
    :cond_1
    move-object v4, v3

    const-string v5, "internal/error-reporter"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 310
    move-object v4, v0

    move-object v5, v2

    check-cast v5, Lcom/sun/xml/stream/XMLErrorReporter;

    iput-object v5, v4, Lcom/sun/xml/stream/XMLScanner;->fErrorReporter:Lcom/sun/xml/stream/XMLErrorReporter;

    goto :goto_0

    .line 311
    :cond_2
    move-object v4, v3

    const-string v5, "internal/entity-manager"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 312
    move-object v4, v0

    move-object v5, v2

    check-cast v5, Lcom/sun/xml/stream/XMLEntityManager;

    iput-object v5, v4, Lcom/sun/xml/stream/XMLScanner;->fEntityManager:Lcom/sun/xml/stream/XMLEntityManager;

    goto :goto_0
.end method

.method protected setPropertyManager(Lcom/sun/xml/stream/PropertyManager;)V
    .locals 4

    .prologue
    .line 291
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLScanner;
    move-object v1, p1

    .local v1, "propertyManager":Lcom/sun/xml/stream/PropertyManager;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/xml/stream/XMLScanner;->fPropertyManager:Lcom/sun/xml/stream/PropertyManager;

    .line 292
    return-void
.end method

.method public startEntity(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1139
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLScanner;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "identifier":Lorg/apache/xerces/xni/XMLResourceIdentifier;
    move-object v3, p3

    .local v3, "encoding":Ljava/lang/String;
    move-object v4, v0

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    iget v5, v5, Lcom/sun/xml/stream/XMLScanner;->fEntityDepth:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/sun/xml/stream/XMLScanner;->fEntityDepth:I

    .line 1141
    return-void
.end method

.method protected versionSupported(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 1323
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLScanner;
    move-object v1, p1

    .local v1, "version":Ljava/lang/String;
    move-object v2, v1

    const-string v3, "1.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/xml/stream/XMLScanner;
    return v0
.end method
