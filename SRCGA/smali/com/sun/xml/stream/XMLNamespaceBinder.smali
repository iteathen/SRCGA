.class public Lcom/sun/xml/stream/XMLNamespaceBinder;
.super Ljava/lang/Object;
.source "XMLNamespaceBinder.java"

# interfaces
.implements Lorg/apache/xerces/xni/parser/XMLComponent;
.implements Lorg/apache/xerces/xni/parser/XMLDocumentFilter;


# static fields
.field protected static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field private static final FEATURE_DEFAULTS:[Ljava/lang/Boolean;

.field protected static final NAMESPACES:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field private static final PROPERTY_DEFAULTS:[Ljava/lang/Object;

.field private static final RECOGNIZED_FEATURES:[Ljava/lang/String;

.field private static final RECOGNIZED_PROPERTIES:[Ljava/lang/String;

.field protected static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"


# instance fields
.field private fAttributeQName:Lorg/apache/xerces/xni/QName;

.field protected fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

.field protected fDocumentSource:Lorg/apache/xerces/xni/parser/XMLDocumentSource;

.field protected fErrorReporter:Lcom/sun/xml/stream/XMLErrorReporter;

.field private fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

.field protected fNamespaceSupport:Lorg/apache/xerces/util/NamespaceSupport;

.field protected fNamespaces:Z

.field protected fOnlyPassPrefixMappingEvents:Z

.field protected fSymbolTable:Lorg/apache/xerces/util/SymbolTable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 132
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string v3, "http://xml.org/sax/features/namespaces"

    aput-object v3, v1, v2

    sput-object v0, Lcom/sun/xml/stream/XMLNamespaceBinder;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    .line 137
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    sput-object v0, Lcom/sun/xml/stream/XMLNamespaceBinder;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

    .line 142
    const/4 v0, 0x2

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

    sput-object v0, Lcom/sun/xml/stream/XMLNamespaceBinder;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    .line 148
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

    sput-object v0, Lcom/sun/xml/stream/XMLNamespaceBinder;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 203
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLNamespaceBinder;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sun/xml/stream/XMLNamespaceBinder;-><init>(Lorg/apache/xerces/xni/NamespaceContext;)V

    .line 204
    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/xni/NamespaceContext;)V
    .locals 6

    .prologue
    .line 212
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLNamespaceBinder;
    move-object v1, p1

    .local v1, "namespaceContext":Lorg/apache/xerces/xni/NamespaceContext;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 180
    move-object v2, v0

    new-instance v3, Lorg/apache/xerces/util/NamespaceSupport;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lorg/apache/xerces/util/NamespaceSupport;-><init>()V

    iput-object v3, v2, Lcom/sun/xml/stream/XMLNamespaceBinder;->fNamespaceSupport:Lorg/apache/xerces/util/NamespaceSupport;

    .line 195
    move-object v2, v0

    new-instance v3, Lorg/apache/xerces/xni/QName;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lorg/apache/xerces/xni/QName;-><init>()V

    iput-object v3, v2, Lcom/sun/xml/stream/XMLNamespaceBinder;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    .line 213
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/xml/stream/XMLNamespaceBinder;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    .line 214
    return-void
.end method


# virtual methods
.method public characters(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 670
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLNamespaceBinder;
    move-object v1, p1

    .local v1, "text":Lorg/apache/xerces/xni/XMLString;
    move-object v2, p2

    .local v2, "augs":Lorg/apache/xerces/xni/Augmentations;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLNamespaceBinder;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/xml/stream/XMLNamespaceBinder;->fOnlyPassPrefixMappingEvents:Z

    if-nez v3, :cond_0

    .line 671
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLNamespaceBinder;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Lorg/apache/xerces/xni/XMLDocumentHandler;->characters(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    .line 673
    :cond_0
    return-void
.end method

.method public comment(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 559
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLNamespaceBinder;
    move-object v1, p1

    .local v1, "text":Lorg/apache/xerces/xni/XMLString;
    move-object v2, p2

    .local v2, "augs":Lorg/apache/xerces/xni/Augmentations;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLNamespaceBinder;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/xml/stream/XMLNamespaceBinder;->fOnlyPassPrefixMappingEvents:Z

    if-nez v3, :cond_0

    .line 560
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLNamespaceBinder;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Lorg/apache/xerces/xni/XMLDocumentHandler;->comment(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    .line 562
    :cond_0
    return-void
.end method

.method public doctypeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 545
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLNamespaceBinder;
    move-object v1, p1

    .local v1, "rootElement":Ljava/lang/String;
    move-object v2, p2

    .local v2, "publicId":Ljava/lang/String;
    move-object v3, p3

    .local v3, "systemId":Ljava/lang/String;
    move-object v4, p4

    .local v4, "augs":Lorg/apache/xerces/xni/Augmentations;
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLNamespaceBinder;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-boolean v5, v5, Lcom/sun/xml/stream/XMLNamespaceBinder;->fOnlyPassPrefixMappingEvents:Z

    if-nez v5, :cond_0

    .line 546
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLNamespaceBinder;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-interface {v5, v6, v7, v8, v9}, Lorg/apache/xerces/xni/XMLDocumentHandler;->doctypeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V

    .line 548
    :cond_0
    return-void
.end method

.method public emptyElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 651
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLNamespaceBinder;
    move-object v1, p1

    .local v1, "element":Lorg/apache/xerces/xni/QName;
    move-object v2, p2

    .local v2, "attributes":Lorg/apache/xerces/xni/XMLAttributes;
    move-object v3, p3

    .local v3, "augs":Lorg/apache/xerces/xni/Augmentations;
    move-object v4, v0

    iget-boolean v4, v4, Lcom/sun/xml/stream/XMLNamespaceBinder;->fNamespaces:Z

    if-eqz v4, :cond_1

    .line 652
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    const/4 v8, 0x1

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/sun/xml/stream/XMLNamespaceBinder;->handleStartElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;Z)V

    .line 653
    move-object v4, v0

    move-object v5, v1

    move-object v6, v3

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/sun/xml/stream/XMLNamespaceBinder;->handleEndElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/Augmentations;Z)V

    .line 659
    :cond_0
    :goto_0
    return-void

    .line 655
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLNamespaceBinder;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v4, :cond_0

    .line 656
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLNamespaceBinder;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-interface {v4, v5, v6, v7}, Lorg/apache/xerces/xni/XMLDocumentHandler;->emptyElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method public endCDATA(Lorg/apache/xerces/xni/Augmentations;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 753
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLNamespaceBinder;
    move-object v1, p1

    .local v1, "augs":Lorg/apache/xerces/xni/Augmentations;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLNamespaceBinder;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-boolean v2, v2, Lcom/sun/xml/stream/XMLNamespaceBinder;->fOnlyPassPrefixMappingEvents:Z

    if-nez v2, :cond_0

    .line 754
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLNamespaceBinder;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-object v3, v1

    invoke-interface {v2, v3}, Lorg/apache/xerces/xni/XMLDocumentHandler;->endCDATA(Lorg/apache/xerces/xni/Augmentations;)V

    .line 756
    :cond_0
    return-void
.end method

.method public endDocument(Lorg/apache/xerces/xni/Augmentations;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 765
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLNamespaceBinder;
    move-object v1, p1

    .local v1, "augs":Lorg/apache/xerces/xni/Augmentations;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLNamespaceBinder;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-boolean v2, v2, Lcom/sun/xml/stream/XMLNamespaceBinder;->fOnlyPassPrefixMappingEvents:Z

    if-nez v2, :cond_0

    .line 766
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLNamespaceBinder;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-object v3, v1

    invoke-interface {v2, v3}, Lorg/apache/xerces/xni/XMLDocumentHandler;->endDocument(Lorg/apache/xerces/xni/Augmentations;)V

    .line 768
    :cond_0
    return-void
.end method

.method public endElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 704
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLNamespaceBinder;
    move-object v1, p1

    .local v1, "element":Lorg/apache/xerces/xni/QName;
    move-object v2, p2

    .local v2, "augs":Lorg/apache/xerces/xni/Augmentations;
    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/xml/stream/XMLNamespaceBinder;->fNamespaces:Z

    if-eqz v3, :cond_1

    .line 705
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/sun/xml/stream/XMLNamespaceBinder;->handleEndElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/Augmentations;Z)V

    .line 711
    :cond_0
    :goto_0
    return-void

    .line 707
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLNamespaceBinder;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v3, :cond_0

    .line 708
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLNamespaceBinder;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Lorg/apache/xerces/xni/XMLDocumentHandler;->endElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method public endGeneralEntity(Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 783
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLNamespaceBinder;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "augs":Lorg/apache/xerces/xni/Augmentations;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLNamespaceBinder;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/xml/stream/XMLNamespaceBinder;->fOnlyPassPrefixMappingEvents:Z

    if-nez v3, :cond_0

    .line 784
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLNamespaceBinder;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Lorg/apache/xerces/xni/XMLDocumentHandler;->endGeneralEntity(Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V

    .line 786
    :cond_0
    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 728
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLNamespaceBinder;
    move-object v1, p1

    .local v1, "prefix":Ljava/lang/String;
    move-object v2, p2

    .local v2, "augs":Lorg/apache/xerces/xni/Augmentations;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLNamespaceBinder;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v3, :cond_0

    .line 729
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLNamespaceBinder;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Lorg/apache/xerces/xni/XMLDocumentHandler;->endPrefixMapping(Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V

    .line 732
    :cond_0
    return-void
.end method

.method public getDocumentHandler()Lorg/apache/xerces/xni/XMLDocumentHandler;
    .locals 2

    .prologue
    .line 408
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLNamespaceBinder;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLNamespaceBinder;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLNamespaceBinder;
    return-object v0
.end method

.method public getDocumentSource()Lorg/apache/xerces/xni/parser/XMLDocumentSource;
    .locals 2

    .prologue
    .line 423
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLNamespaceBinder;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLNamespaceBinder;->fDocumentSource:Lorg/apache/xerces/xni/parser/XMLDocumentSource;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLNamespaceBinder;
    return-object v0
.end method

.method public getFeatureDefault(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 5

    .prologue
    .line 371
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLNamespaceBinder;
    move-object v1, p1

    .local v1, "featureId":Ljava/lang/String;
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    sget-object v4, Lcom/sun/xml/stream/XMLNamespaceBinder;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 372
    sget-object v3, Lcom/sun/xml/stream/XMLNamespaceBinder;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    move v4, v2

    aget-object v3, v3, v4

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 373
    sget-object v3, Lcom/sun/xml/stream/XMLNamespaceBinder;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

    move v4, v2

    aget-object v3, v3, v4

    move-object v0, v3

    .line 376
    .end local v0    # "this":Lcom/sun/xml/stream/XMLNamespaceBinder;
    :goto_1
    return-object v0

    .line 371
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLNamespaceBinder;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 376
    :cond_1
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_1
.end method

.method public getNamespaceContext()Lorg/apache/xerces/xni/NamespaceContext;
    .locals 2

    .prologue
    .line 223
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLNamespaceBinder;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLNamespaceBinder;->fNamespaceSupport:Lorg/apache/xerces/util/NamespaceSupport;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLNamespaceBinder;
    return-object v0
.end method

.method public getOnlyPassPrefixMappingEvents()Z
    .locals 2

    .prologue
    .line 247
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLNamespaceBinder;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/xml/stream/XMLNamespaceBinder;->fOnlyPassPrefixMappingEvents:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLNamespaceBinder;
    return v0
.end method

.method public getPropertyDefault(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 389
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLNamespaceBinder;
    move-object v1, p1

    .local v1, "propertyId":Ljava/lang/String;
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    sget-object v4, Lcom/sun/xml/stream/XMLNamespaceBinder;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 390
    sget-object v3, Lcom/sun/xml/stream/XMLNamespaceBinder;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    move v4, v2

    aget-object v3, v3, v4

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 391
    sget-object v3, Lcom/sun/xml/stream/XMLNamespaceBinder;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

    move v4, v2

    aget-object v3, v3, v4

    move-object v0, v3

    .line 394
    .end local v0    # "this":Lcom/sun/xml/stream/XMLNamespaceBinder;
    :goto_1
    return-object v0

    .line 389
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLNamespaceBinder;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 394
    :cond_1
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_1
.end method

.method public getRecognizedFeatures()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 306
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLNamespaceBinder;
    sget-object v1, Lcom/sun/xml/stream/XMLNamespaceBinder;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    invoke-virtual {v1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLNamespaceBinder;
    return-object v0
.end method

.method public getRecognizedProperties()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 334
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLNamespaceBinder;
    sget-object v1, Lcom/sun/xml/stream/XMLNamespaceBinder;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    invoke-virtual {v1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLNamespaceBinder;
    return-object v0
.end method

.method protected handleEndElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/Augmentations;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 950
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLNamespaceBinder;
    move-object v1, p1

    .local v1, "element":Lorg/apache/xerces/xni/QName;
    move-object v2, p2

    .local v2, "augs":Lorg/apache/xerces/xni/Augmentations;
    move v3, p3

    .local v3, "isEmpty":Z
    move-object v8, v1

    iget-object v8, v8, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v8, :cond_2

    move-object v8, v1

    iget-object v8, v8, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    :goto_0
    move-object v4, v8

    .line 951
    .local v4, "eprefix":Ljava/lang/String;
    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLNamespaceBinder;->fNamespaceSupport:Lorg/apache/xerces/util/NamespaceSupport;

    move-object v10, v4

    invoke-virtual {v9, v10}, Lorg/apache/xerces/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 952
    move-object v8, v1

    iget-object v8, v8, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v8, :cond_0

    .line 953
    move-object v8, v1

    move-object v9, v4

    iput-object v9, v8, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    .line 957
    :cond_0
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLNamespaceBinder;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v8, :cond_1

    move-object v8, v0

    iget-boolean v8, v8, Lcom/sun/xml/stream/XMLNamespaceBinder;->fOnlyPassPrefixMappingEvents:Z

    if-nez v8, :cond_1

    .line 958
    move v8, v3

    if-nez v8, :cond_1

    .line 959
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLNamespaceBinder;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-object v9, v1

    move-object v10, v2

    invoke-interface {v8, v9, v10}, Lorg/apache/xerces/xni/XMLDocumentHandler;->endElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/Augmentations;)V

    .line 964
    :cond_1
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLNamespaceBinder;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v8, :cond_3

    .line 965
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLNamespaceBinder;->fNamespaceSupport:Lorg/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v8}, Lorg/apache/xerces/util/NamespaceSupport;->getDeclaredPrefixCount()I

    move-result v8

    move v5, v8

    .line 966
    .local v5, "count":I
    move v8, v5

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    move v6, v8

    .local v6, "i":I
    :goto_1
    move v8, v6

    if-ltz v8, :cond_3

    .line 967
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLNamespaceBinder;->fNamespaceSupport:Lorg/apache/xerces/util/NamespaceSupport;

    move v9, v6

    invoke-virtual {v8, v9}, Lorg/apache/xerces/util/NamespaceSupport;->getDeclaredPrefixAt(I)Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 968
    .local v7, "prefix":Ljava/lang/String;
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLNamespaceBinder;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-object v9, v7

    move-object v10, v2

    invoke-interface {v8, v9, v10}, Lorg/apache/xerces/xni/XMLDocumentHandler;->endPrefixMapping(Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V

    .line 966
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 950
    .end local v4    # "eprefix":Ljava/lang/String;
    .end local v5    # "count":I
    .end local v6    # "i":I
    .end local v7    # "prefix":Ljava/lang/String;
    :cond_2
    sget-object v8, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_0

    .line 973
    .restart local v4    # "eprefix":Ljava/lang/String;
    :cond_3
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLNamespaceBinder;->fNamespaceSupport:Lorg/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v8}, Lorg/apache/xerces/util/NamespaceSupport;->popContext()V

    .line 975
    return-void
.end method

.method protected handleStartElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;Z)V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 798
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/xml/stream/XMLNamespaceBinder;
    move-object/from16 v2, p1

    .local v2, "element":Lorg/apache/xerces/xni/QName;
    move-object/from16 v3, p2

    .local v3, "attributes":Lorg/apache/xerces/xni/XMLAttributes;
    move-object/from16 v4, p3

    .local v4, "augs":Lorg/apache/xerces/xni/Augmentations;
    move/from16 v5, p4

    .local v5, "isEmpty":Z
    move-object v15, v1

    iget-object v15, v15, Lcom/sun/xml/stream/XMLNamespaceBinder;->fNamespaceSupport:Lorg/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v15}, Lorg/apache/xerces/util/NamespaceSupport;->pushContext()V

    .line 800
    move-object v15, v2

    iget-object v15, v15, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    sget-object v16, Lorg/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 801
    move-object v15, v1

    iget-object v15, v15, Lcom/sun/xml/stream/XMLNamespaceBinder;->fErrorReporter:Lcom/sun/xml/stream/XMLErrorReporter;

    const-string v16, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string v17, "ElementXMLNSPrefix"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v23, v18

    move-object/from16 v18, v23

    move-object/from16 v19, v23

    const/16 v20, 0x0

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object/from16 v21, v0

    aput-object v21, v19, v20

    const/16 v19, 0x2

    invoke-virtual/range {v15 .. v19}, Lcom/sun/xml/stream/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    .line 808
    :cond_0
    move-object v15, v3

    invoke-interface {v15}, Lorg/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v15

    move v6, v15

    .line 809
    .local v6, "length":I
    const/4 v15, 0x0

    move v7, v15

    .local v7, "i":I
    :goto_0
    move v15, v7

    move/from16 v16, v6

    move/from16 v0, v16

    if-ge v15, v0, :cond_a

    .line 810
    move-object v15, v3

    move/from16 v16, v7

    invoke-interface/range {v15 .. v16}, Lorg/apache/xerces/xni/XMLAttributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v15

    move-object v8, v15

    .line 811
    .local v8, "localpart":Ljava/lang/String;
    move-object v15, v3

    move/from16 v16, v7

    invoke-interface/range {v15 .. v16}, Lorg/apache/xerces/xni/XMLAttributes;->getPrefix(I)Ljava/lang/String;

    move-result-object v15

    move-object v9, v15

    .line 814
    .local v9, "prefix":Ljava/lang/String;
    move-object v15, v9

    sget-object v16, Lorg/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_1

    move-object v15, v9

    sget-object v16, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_5

    move-object v15, v8

    sget-object v16, Lorg/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_5

    .line 818
    :cond_1
    move-object v15, v1

    iget-object v15, v15, Lcom/sun/xml/stream/XMLNamespaceBinder;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object/from16 v16, v3

    move/from16 v17, v7

    invoke-interface/range {v16 .. v17}, Lorg/apache/xerces/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object v10, v15

    .line 821
    .local v10, "uri":Ljava/lang/String;
    move-object v15, v9

    sget-object v16, Lorg/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_2

    move-object v15, v8

    sget-object v16, Lorg/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_2

    .line 822
    move-object v15, v1

    iget-object v15, v15, Lcom/sun/xml/stream/XMLNamespaceBinder;->fErrorReporter:Lcom/sun/xml/stream/XMLErrorReporter;

    const-string v16, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string v17, "CantBindXMLNS"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v23, v18

    move-object/from16 v18, v23

    move-object/from16 v19, v23

    const/16 v20, 0x0

    move-object/from16 v21, v3

    move/from16 v22, v7

    .line 824
    invoke-interface/range {v21 .. v22}, Lorg/apache/xerces/xni/XMLAttributes;->getQName(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v19, 0x2

    .line 822
    invoke-virtual/range {v15 .. v19}, Lcom/sun/xml/stream/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    .line 829
    :cond_2
    move-object v15, v10

    sget-object v16, Lorg/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_3

    .line 830
    move-object v15, v1

    iget-object v15, v15, Lcom/sun/xml/stream/XMLNamespaceBinder;->fErrorReporter:Lcom/sun/xml/stream/XMLErrorReporter;

    const-string v16, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string v17, "CantBindXMLNS"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v23, v18

    move-object/from16 v18, v23

    move-object/from16 v19, v23

    const/16 v20, 0x0

    move-object/from16 v21, v3

    move/from16 v22, v7

    .line 832
    invoke-interface/range {v21 .. v22}, Lorg/apache/xerces/xni/XMLAttributes;->getQName(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v19, 0x2

    .line 830
    invoke-virtual/range {v15 .. v19}, Lcom/sun/xml/stream/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    .line 837
    :cond_3
    move-object v15, v8

    sget-object v16, Lorg/apache/xerces/util/XMLSymbols;->PREFIX_XML:Ljava/lang/String;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_6

    .line 838
    move-object v15, v10

    sget-object v16, Lorg/apache/xerces/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_4

    .line 839
    move-object v15, v1

    iget-object v15, v15, Lcom/sun/xml/stream/XMLNamespaceBinder;->fErrorReporter:Lcom/sun/xml/stream/XMLErrorReporter;

    const-string v16, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string v17, "CantBindXML"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v23, v18

    move-object/from16 v18, v23

    move-object/from16 v19, v23

    const/16 v20, 0x0

    move-object/from16 v21, v3

    move/from16 v22, v7

    .line 841
    invoke-interface/range {v21 .. v22}, Lorg/apache/xerces/xni/XMLAttributes;->getQName(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v19, 0x2

    .line 839
    invoke-virtual/range {v15 .. v19}, Lcom/sun/xml/stream/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    .line 855
    :cond_4
    :goto_1
    move-object v15, v8

    sget-object v16, Lorg/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_7

    move-object v15, v8

    :goto_2
    move-object v9, v15

    .line 860
    move-object v15, v10

    sget-object v16, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_8

    move-object v15, v8

    sget-object v16, Lorg/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_8

    .line 861
    move-object v15, v1

    iget-object v15, v15, Lcom/sun/xml/stream/XMLNamespaceBinder;->fErrorReporter:Lcom/sun/xml/stream/XMLErrorReporter;

    const-string v16, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string v17, "EmptyPrefixedAttName"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v23, v18

    move-object/from16 v18, v23

    move-object/from16 v19, v23

    const/16 v20, 0x0

    move-object/from16 v21, v3

    move/from16 v22, v7

    .line 863
    invoke-interface/range {v21 .. v22}, Lorg/apache/xerces/xni/XMLAttributes;->getQName(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v19, 0x2

    .line 861
    invoke-virtual/range {v15 .. v19}, Lcom/sun/xml/stream/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    .line 865
    .line 809
    .end local v10    # "uri":Ljava/lang/String;
    :cond_5
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 847
    .restart local v10    # "uri":Ljava/lang/String;
    :cond_6
    move-object v15, v10

    sget-object v16, Lorg/apache/xerces/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_4

    .line 848
    move-object v15, v1

    iget-object v15, v15, Lcom/sun/xml/stream/XMLNamespaceBinder;->fErrorReporter:Lcom/sun/xml/stream/XMLErrorReporter;

    const-string v16, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string v17, "CantBindXML"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v23, v18

    move-object/from16 v18, v23

    move-object/from16 v19, v23

    const/16 v20, 0x0

    move-object/from16 v21, v3

    move/from16 v22, v7

    .line 850
    invoke-interface/range {v21 .. v22}, Lorg/apache/xerces/xni/XMLAttributes;->getQName(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v19, 0x2

    .line 848
    invoke-virtual/range {v15 .. v19}, Lcom/sun/xml/stream/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    goto :goto_1

    .line 855
    :cond_7
    sget-object v15, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_2

    .line 869
    :cond_8
    move-object v15, v1

    iget-object v15, v15, Lcom/sun/xml/stream/XMLNamespaceBinder;->fNamespaceSupport:Lorg/apache/xerces/util/NamespaceSupport;

    move-object/from16 v16, v9

    move-object/from16 v17, v10

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-eqz v17, :cond_9

    move-object/from16 v17, v10

    :goto_4
    invoke-virtual/range {v15 .. v17}, Lorg/apache/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    .line 872
    move-object v15, v1

    iget-object v15, v15, Lcom/sun/xml/stream/XMLNamespaceBinder;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v15, :cond_5

    .line 873
    move-object v15, v1

    iget-object v15, v15, Lcom/sun/xml/stream/XMLNamespaceBinder;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-object/from16 v16, v9

    move-object/from16 v17, v10

    move-object/from16 v18, v4

    invoke-interface/range {v15 .. v18}, Lorg/apache/xerces/xni/XMLDocumentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V

    goto :goto_3

    .line 869
    :cond_9
    const/16 v17, 0x0

    goto :goto_4

    .line 879
    .end local v8    # "localpart":Ljava/lang/String;
    .end local v9    # "prefix":Ljava/lang/String;
    .end local v10    # "uri":Ljava/lang/String;
    :cond_a
    move-object v15, v2

    iget-object v15, v15, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v15, :cond_e

    move-object v15, v2

    iget-object v15, v15, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    :goto_5
    move-object v7, v15

    .line 881
    .local v7, "prefix":Ljava/lang/String;
    move-object v15, v2

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/xml/stream/XMLNamespaceBinder;->fNamespaceSupport:Lorg/apache/xerces/util/NamespaceSupport;

    move-object/from16 v16, v0

    move-object/from16 v17, v7

    invoke-virtual/range {v16 .. v17}, Lorg/apache/xerces/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 882
    move-object v15, v2

    iget-object v15, v15, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-nez v15, :cond_b

    move-object v15, v2

    iget-object v15, v15, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v15, :cond_b

    .line 883
    move-object v15, v2

    sget-object v16, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    move-object/from16 v0, v16

    iput-object v0, v15, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    .line 885
    :cond_b
    move-object v15, v2

    iget-object v15, v15, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v15, :cond_c

    move-object v15, v2

    iget-object v15, v15, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-nez v15, :cond_c

    .line 886
    move-object v15, v1

    iget-object v15, v15, Lcom/sun/xml/stream/XMLNamespaceBinder;->fErrorReporter:Lcom/sun/xml/stream/XMLErrorReporter;

    const-string v16, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string v17, "ElementPrefixUnbound"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v23, v18

    move-object/from16 v18, v23

    move-object/from16 v19, v23

    const/16 v20, 0x0

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    move-object/from16 v21, v0

    aput-object v21, v19, v20

    move-object/from16 v23, v18

    move-object/from16 v18, v23

    move-object/from16 v19, v23

    const/16 v20, 0x1

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object/from16 v21, v0

    aput-object v21, v19, v20

    const/16 v19, 0x2

    invoke-virtual/range {v15 .. v19}, Lcom/sun/xml/stream/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    .line 893
    :cond_c
    const/4 v15, 0x0

    move v8, v15

    .local v8, "i":I
    :goto_6
    move v15, v8

    move/from16 v16, v6

    move/from16 v0, v16

    if-ge v15, v0, :cond_12

    .line 894
    move-object v15, v3

    move/from16 v16, v8

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/xml/stream/XMLNamespaceBinder;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    move-object/from16 v17, v0

    invoke-interface/range {v15 .. v17}, Lorg/apache/xerces/xni/XMLAttributes;->getName(ILorg/apache/xerces/xni/QName;)V

    .line 895
    move-object v15, v1

    iget-object v15, v15, Lcom/sun/xml/stream/XMLNamespaceBinder;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    iget-object v15, v15, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v15, :cond_f

    move-object v15, v1

    iget-object v15, v15, Lcom/sun/xml/stream/XMLNamespaceBinder;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    iget-object v15, v15, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    :goto_7
    move-object v9, v15

    .line 897
    .local v9, "aprefix":Ljava/lang/String;
    move-object v15, v1

    iget-object v15, v15, Lcom/sun/xml/stream/XMLNamespaceBinder;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    iget-object v15, v15, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object v10, v15

    .line 898
    .local v10, "arawname":Ljava/lang/String;
    move-object v15, v10

    sget-object v16, Lorg/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_10

    .line 899
    move-object v15, v1

    iget-object v15, v15, Lcom/sun/xml/stream/XMLNamespaceBinder;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/xml/stream/XMLNamespaceBinder;->fNamespaceSupport:Lorg/apache/xerces/util/NamespaceSupport;

    move-object/from16 v16, v0

    sget-object v17, Lorg/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Lorg/apache/xerces/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 900
    move-object v15, v3

    move/from16 v16, v8

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/xml/stream/XMLNamespaceBinder;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    move-object/from16 v17, v0

    invoke-interface/range {v15 .. v17}, Lorg/apache/xerces/xni/XMLAttributes;->setName(ILorg/apache/xerces/xni/QName;)V

    .line 893
    :cond_d
    :goto_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 879
    .end local v8    # "i":I
    .end local v9    # "aprefix":Ljava/lang/String;
    .end local v10    # "arawname":Ljava/lang/String;
    .local v7, "i":I
    :cond_e
    sget-object v15, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto/16 :goto_5

    .line 895
    .local v7, "prefix":Ljava/lang/String;
    .restart local v8    # "i":I
    :cond_f
    sget-object v15, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_7

    .line 902
    .restart local v9    # "aprefix":Ljava/lang/String;
    .restart local v10    # "arawname":Ljava/lang/String;
    :cond_10
    move-object v15, v9

    sget-object v16, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_d

    .line 903
    move-object v15, v1

    iget-object v15, v15, Lcom/sun/xml/stream/XMLNamespaceBinder;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/xml/stream/XMLNamespaceBinder;->fNamespaceSupport:Lorg/apache/xerces/util/NamespaceSupport;

    move-object/from16 v16, v0

    move-object/from16 v17, v9

    invoke-virtual/range {v16 .. v17}, Lorg/apache/xerces/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 904
    move-object v15, v1

    iget-object v15, v15, Lcom/sun/xml/stream/XMLNamespaceBinder;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    iget-object v15, v15, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-nez v15, :cond_11

    .line 905
    move-object v15, v1

    iget-object v15, v15, Lcom/sun/xml/stream/XMLNamespaceBinder;->fErrorReporter:Lcom/sun/xml/stream/XMLErrorReporter;

    const-string v16, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string v17, "AttributePrefixUnbound"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v23, v18

    move-object/from16 v18, v23

    move-object/from16 v19, v23

    const/16 v20, 0x0

    move-object/from16 v21, v9

    aput-object v21, v19, v20

    move-object/from16 v23, v18

    move-object/from16 v18, v23

    move-object/from16 v19, v23

    const/16 v20, 0x1

    move-object/from16 v21, v10

    aput-object v21, v19, v20

    const/16 v19, 0x2

    invoke-virtual/range {v15 .. v19}, Lcom/sun/xml/stream/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    .line 910
    :cond_11
    move-object v15, v3

    move/from16 v16, v8

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/xml/stream/XMLNamespaceBinder;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    move-object/from16 v17, v0

    invoke-interface/range {v15 .. v17}, Lorg/apache/xerces/xni/XMLAttributes;->setName(ILorg/apache/xerces/xni/QName;)V

    goto :goto_8

    .line 916
    .end local v9    # "aprefix":Ljava/lang/String;
    .end local v10    # "arawname":Ljava/lang/String;
    :cond_12
    move-object v15, v3

    invoke-interface {v15}, Lorg/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v15

    move v8, v15

    .line 917
    .local v8, "attrCount":I
    const/4 v15, 0x0

    move v9, v15

    .local v9, "i":I
    :goto_9
    move v15, v9

    move/from16 v16, v8

    const/16 v17, 0x1

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    if-ge v15, v0, :cond_15

    .line 918
    move-object v15, v3

    move/from16 v16, v9

    invoke-interface/range {v15 .. v16}, Lorg/apache/xerces/xni/XMLAttributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v15

    move-object v10, v15

    .line 919
    .local v10, "alocalpart":Ljava/lang/String;
    move-object v15, v3

    move/from16 v16, v9

    invoke-interface/range {v15 .. v16}, Lorg/apache/xerces/xni/XMLAttributes;->getURI(I)Ljava/lang/String;

    move-result-object v15

    move-object v11, v15

    .line 920
    .local v11, "auri":Ljava/lang/String;
    move v15, v9

    const/16 v16, 0x1

    add-int/lit8 v15, v15, 0x1

    move v12, v15

    .local v12, "j":I
    :goto_a
    move v15, v12

    move/from16 v16, v8

    move/from16 v0, v16

    if-ge v15, v0, :cond_14

    .line 921
    move-object v15, v3

    move/from16 v16, v12

    invoke-interface/range {v15 .. v16}, Lorg/apache/xerces/xni/XMLAttributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v15

    move-object v13, v15

    .line 922
    .local v13, "blocalpart":Ljava/lang/String;
    move-object v15, v3

    move/from16 v16, v12

    invoke-interface/range {v15 .. v16}, Lorg/apache/xerces/xni/XMLAttributes;->getURI(I)Ljava/lang/String;

    move-result-object v15

    move-object v14, v15

    .line 923
    .local v14, "buri":Ljava/lang/String;
    move-object v15, v10

    move-object/from16 v16, v13

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_13

    move-object v15, v11

    move-object/from16 v16, v14

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_13

    .line 924
    move-object v15, v1

    iget-object v15, v15, Lcom/sun/xml/stream/XMLNamespaceBinder;->fErrorReporter:Lcom/sun/xml/stream/XMLErrorReporter;

    const-string v16, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string v17, "AttributeNSNotUnique"

    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v23, v18

    move-object/from16 v18, v23

    move-object/from16 v19, v23

    const/16 v20, 0x0

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object/from16 v21, v0

    aput-object v21, v19, v20

    move-object/from16 v23, v18

    move-object/from16 v18, v23

    move-object/from16 v19, v23

    const/16 v20, 0x1

    move-object/from16 v21, v10

    aput-object v21, v19, v20

    move-object/from16 v23, v18

    move-object/from16 v18, v23

    move-object/from16 v19, v23

    const/16 v20, 0x2

    move-object/from16 v21, v11

    aput-object v21, v19, v20

    const/16 v19, 0x2

    invoke-virtual/range {v15 .. v19}, Lcom/sun/xml/stream/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    .line 920
    :cond_13
    add-int/lit8 v12, v12, 0x1

    goto :goto_a

    .line 917
    .end local v13    # "blocalpart":Ljava/lang/String;
    .end local v14    # "buri":Ljava/lang/String;
    :cond_14
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_9

    .line 933
    .end local v10    # "alocalpart":Ljava/lang/String;
    .end local v11    # "auri":Ljava/lang/String;
    .end local v12    # "j":I
    :cond_15
    move-object v15, v1

    iget-object v15, v15, Lcom/sun/xml/stream/XMLNamespaceBinder;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v15, :cond_16

    move-object v15, v1

    iget-boolean v15, v15, Lcom/sun/xml/stream/XMLNamespaceBinder;->fOnlyPassPrefixMappingEvents:Z

    if-nez v15, :cond_16

    .line 934
    move v15, v5

    if-eqz v15, :cond_17

    .line 935
    move-object v15, v1

    iget-object v15, v15, Lcom/sun/xml/stream/XMLNamespaceBinder;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    invoke-interface/range {v15 .. v18}, Lorg/apache/xerces/xni/XMLDocumentHandler;->emptyElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)V

    .line 943
    :cond_16
    :goto_b
    return-void

    .line 938
    :cond_17
    move-object v15, v1

    iget-object v15, v15, Lcom/sun/xml/stream/XMLNamespaceBinder;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    invoke-interface/range {v15 .. v18}, Lorg/apache/xerces/xni/XMLDocumentHandler;->startElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)V

    goto :goto_b
.end method

.method public ignorableWhitespace(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 689
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLNamespaceBinder;
    move-object v1, p1

    .local v1, "text":Lorg/apache/xerces/xni/XMLString;
    move-object v2, p2

    .local v2, "augs":Lorg/apache/xerces/xni/Augmentations;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLNamespaceBinder;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/xml/stream/XMLNamespaceBinder;->fOnlyPassPrefixMappingEvents:Z

    if-nez v3, :cond_0

    .line 690
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLNamespaceBinder;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Lorg/apache/xerces/xni/XMLDocumentHandler;->ignorableWhitespace(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    .line 692
    :cond_0
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 583
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLNamespaceBinder;
    move-object v1, p1

    .local v1, "target":Ljava/lang/String;
    move-object v2, p2

    .local v2, "data":Lorg/apache/xerces/xni/XMLString;
    move-object v3, p3

    .local v3, "augs":Lorg/apache/xerces/xni/Augmentations;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLNamespaceBinder;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-boolean v4, v4, Lcom/sun/xml/stream/XMLNamespaceBinder;->fOnlyPassPrefixMappingEvents:Z

    if-nez v4, :cond_0

    .line 584
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLNamespaceBinder;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-interface {v4, v5, v6, v7}, Lorg/apache/xerces/xni/XMLDocumentHandler;->processingInstruction(Ljava/lang/String;Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    .line 586
    :cond_0
    return-void
.end method

.method public reset(Lorg/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 273
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLNamespaceBinder;
    move-object v1, p1

    .local v1, "componentManager":Lorg/apache/xerces/xni/parser/XMLComponentManager;
    move-object v7, v0

    move-object v8, v1

    :try_start_0
    const-string v9, "http://xml.org/sax/features/namespaces"

    invoke-interface {v8, v9}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, v7, Lcom/sun/xml/stream/XMLNamespaceBinder;->fNamespaces:Z
    :try_end_0
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    .line 280
    :goto_0
    move-object v7, v0

    move-object v8, v1

    const-string v9, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-interface {v8, v9}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/xerces/util/SymbolTable;

    iput-object v8, v7, Lcom/sun/xml/stream/XMLNamespaceBinder;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    .line 281
    move-object v7, v0

    move-object v8, v1

    const-string v9, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-interface {v8, v9}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sun/xml/stream/XMLErrorReporter;

    iput-object v8, v7, Lcom/sun/xml/stream/XMLNamespaceBinder;->fErrorReporter:Lcom/sun/xml/stream/XMLErrorReporter;

    .line 283
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLNamespaceBinder;->fNamespaceSupport:Lorg/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v7}, Lorg/apache/xerces/util/NamespaceSupport;->reset()V

    .line 286
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLNamespaceBinder;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    move-object v2, v7

    .line 287
    .local v2, "context":Lorg/apache/xerces/xni/NamespaceContext;
    :goto_1
    move-object v7, v2

    if-eqz v7, :cond_2

    .line 288
    move-object v7, v2

    invoke-interface {v7}, Lorg/apache/xerces/xni/NamespaceContext;->getDeclaredPrefixCount()I

    move-result v7

    move v3, v7

    .line 289
    .local v3, "count":I
    const/4 v7, 0x0

    move v4, v7

    .local v4, "i":I
    :goto_2
    move v7, v4

    move v8, v3

    if-ge v7, v8, :cond_1

    .line 290
    move-object v7, v2

    move v8, v4

    invoke-interface {v7, v8}, Lorg/apache/xerces/xni/NamespaceContext;->getDeclaredPrefixAt(I)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 291
    .local v5, "prefix":Ljava/lang/String;
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLNamespaceBinder;->fNamespaceSupport:Lorg/apache/xerces/util/NamespaceSupport;

    move-object v8, v5

    invoke-virtual {v7, v8}, Lorg/apache/xerces/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_0

    .line 292
    move-object v7, v2

    move-object v8, v5

    invoke-interface {v7, v8}, Lorg/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 293
    .local v6, "uri":Ljava/lang/String;
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLNamespaceBinder;->fNamespaceSupport:Lorg/apache/xerces/util/NamespaceSupport;

    move-object v8, v5

    move-object v9, v6

    invoke-virtual {v7, v8, v9}, Lorg/apache/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    .line 289
    .end local v6    # "uri":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 275
    .end local v2    # "context":Lorg/apache/xerces/xni/NamespaceContext;
    .end local v3    # "count":I
    .end local v4    # "i":I
    .end local v5    # "prefix":Ljava/lang/String;
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 276
    .local v2, "e":Lorg/apache/xerces/xni/parser/XMLConfigurationException;
    move-object v7, v0

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/sun/xml/stream/XMLNamespaceBinder;->fNamespaces:Z

    goto :goto_0

    .line 296
    .local v2, "context":Lorg/apache/xerces/xni/NamespaceContext;
    .restart local v3    # "count":I
    .restart local v4    # "i":I
    :cond_1
    goto :goto_1

    .line 298
    .end local v3    # "count":I
    .end local v4    # "i":I
    :cond_2
    return-void
.end method

.method public setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V
    .locals 4

    .prologue
    .line 403
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLNamespaceBinder;
    move-object v1, p1

    .local v1, "documentHandler":Lorg/apache/xerces/xni/XMLDocumentHandler;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/xml/stream/XMLNamespaceBinder;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    .line 404
    return-void
.end method

.method public setDocumentSource(Lorg/apache/xerces/xni/parser/XMLDocumentSource;)V
    .locals 4

    .prologue
    .line 418
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLNamespaceBinder;
    move-object v1, p1

    .local v1, "source":Lorg/apache/xerces/xni/parser/XMLDocumentSource;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/xml/stream/XMLNamespaceBinder;->fDocumentSource:Lorg/apache/xerces/xni/parser/XMLDocumentSource;

    .line 419
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "featureId"    # Ljava/lang/String;
    .param p2, "state"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    .line 326
    return-void
.end method

.method public setOnlyPassPrefixMappingEvents(Z)V
    .locals 4

    .prologue
    .line 238
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLNamespaceBinder;
    move v1, p1

    .local v1, "onlyPassPrefixMappingEvents":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/sun/xml/stream/XMLNamespaceBinder;->fOnlyPassPrefixMappingEvents:Z

    .line 239
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    .line 347
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLNamespaceBinder;
    move-object v1, p1

    .local v1, "propertyId":Ljava/lang/String;
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    move-object v4, v1

    const-string v5, "http://apache.org/xml/properties/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 348
    move-object v4, v1

    const-string v5, "http://apache.org/xml/properties/"

    .line 349
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 350
    .local v3, "property":Ljava/lang/String;
    move-object v4, v3

    const-string v5, "internal/symbol-table"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 351
    move-object v4, v0

    move-object v5, v2

    check-cast v5, Lorg/apache/xerces/util/SymbolTable;

    iput-object v5, v4, Lcom/sun/xml/stream/XMLNamespaceBinder;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    .line 356
    .line 359
    .end local v3    # "property":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 353
    .restart local v3    # "property":Ljava/lang/String;
    :cond_1
    move-object v4, v3

    const-string v5, "internal/error-reporter"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 354
    move-object v4, v0

    move-object v5, v2

    check-cast v5, Lcom/sun/xml/stream/XMLErrorReporter;

    iput-object v5, v4, Lcom/sun/xml/stream/XMLNamespaceBinder;->fErrorReporter:Lcom/sun/xml/stream/XMLErrorReporter;

    goto :goto_0

    .line 359
    .end local v3    # "property":Ljava/lang/String;
    :cond_2
    goto :goto_0
.end method

.method public startCDATA(Lorg/apache/xerces/xni/Augmentations;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 741
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLNamespaceBinder;
    move-object v1, p1

    .local v1, "augs":Lorg/apache/xerces/xni/Augmentations;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLNamespaceBinder;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-boolean v2, v2, Lcom/sun/xml/stream/XMLNamespaceBinder;->fOnlyPassPrefixMappingEvents:Z

    if-nez v2, :cond_0

    .line 742
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLNamespaceBinder;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-object v3, v1

    invoke-interface {v2, v3}, Lorg/apache/xerces/xni/XMLDocumentHandler;->startCDATA(Lorg/apache/xerces/xni/Augmentations;)V

    .line 744
    :cond_0
    return-void
.end method

.method public startDocument(Lorg/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lorg/apache/xerces/xni/NamespaceContext;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 505
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLNamespaceBinder;
    move-object v1, p1

    .local v1, "locator":Lorg/apache/xerces/xni/XMLLocator;
    move-object v2, p2

    .local v2, "encoding":Ljava/lang/String;
    move-object v3, p3

    .local v3, "namespaceContext":Lorg/apache/xerces/xni/NamespaceContext;
    move-object v4, p4

    .local v4, "augs":Lorg/apache/xerces/xni/Augmentations;
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLNamespaceBinder;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-boolean v5, v5, Lcom/sun/xml/stream/XMLNamespaceBinder;->fOnlyPassPrefixMappingEvents:Z

    if-nez v5, :cond_0

    .line 506
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLNamespaceBinder;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-object v6, v1

    move-object v7, v2

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLNamespaceBinder;->fNamespaceSupport:Lorg/apache/xerces/util/NamespaceSupport;

    move-object v9, v4

    invoke-interface {v5, v6, v7, v8, v9}, Lorg/apache/xerces/xni/XMLDocumentHandler;->startDocument(Lorg/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lorg/apache/xerces/xni/NamespaceContext;Lorg/apache/xerces/xni/Augmentations;)V

    .line 508
    :cond_0
    return-void
.end method

.method public startElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 629
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLNamespaceBinder;
    move-object v1, p1

    .local v1, "element":Lorg/apache/xerces/xni/QName;
    move-object v2, p2

    .local v2, "attributes":Lorg/apache/xerces/xni/XMLAttributes;
    move-object v3, p3

    .local v3, "augs":Lorg/apache/xerces/xni/Augmentations;
    move-object v4, v0

    iget-boolean v4, v4, Lcom/sun/xml/stream/XMLNamespaceBinder;->fNamespaces:Z

    if-eqz v4, :cond_1

    .line 630
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/sun/xml/stream/XMLNamespaceBinder;->handleStartElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;Z)V

    .line 637
    :cond_0
    :goto_0
    return-void

    .line 632
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLNamespaceBinder;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v4, :cond_0

    .line 633
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLNamespaceBinder;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-interface {v4, v5, v6, v7}, Lorg/apache/xerces/xni/XMLDocumentHandler;->startElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method public startGeneralEntity(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 448
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLNamespaceBinder;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "identifier":Lorg/apache/xerces/xni/XMLResourceIdentifier;
    move-object v3, p3

    .local v3, "encoding":Ljava/lang/String;
    move-object v4, p4

    .local v4, "augs":Lorg/apache/xerces/xni/Augmentations;
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLNamespaceBinder;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-boolean v5, v5, Lcom/sun/xml/stream/XMLNamespaceBinder;->fOnlyPassPrefixMappingEvents:Z

    if-nez v5, :cond_0

    .line 449
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLNamespaceBinder;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-interface {v5, v6, v7, v8, v9}, Lorg/apache/xerces/xni/XMLDocumentHandler;->startGeneralEntity(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V

    .line 451
    :cond_0
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 605
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLNamespaceBinder;
    move-object v1, p1

    .local v1, "prefix":Ljava/lang/String;
    move-object v2, p2

    .local v2, "uri":Ljava/lang/String;
    move-object v3, p3

    .local v3, "augs":Lorg/apache/xerces/xni/Augmentations;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLNamespaceBinder;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v4, :cond_0

    .line 606
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLNamespaceBinder;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-interface {v4, v5, v6, v7}, Lorg/apache/xerces/xni/XMLDocumentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V

    .line 609
    :cond_0
    return-void
.end method

.method public textDecl(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 472
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLNamespaceBinder;
    move-object v1, p1

    .local v1, "version":Ljava/lang/String;
    move-object v2, p2

    .local v2, "encoding":Ljava/lang/String;
    move-object v3, p3

    .local v3, "augs":Lorg/apache/xerces/xni/Augmentations;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLNamespaceBinder;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-boolean v4, v4, Lcom/sun/xml/stream/XMLNamespaceBinder;->fOnlyPassPrefixMappingEvents:Z

    if-nez v4, :cond_0

    .line 473
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLNamespaceBinder;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-interface {v4, v5, v6, v7}, Lorg/apache/xerces/xni/XMLDocumentHandler;->textDecl(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V

    .line 475
    :cond_0
    return-void
.end method

.method public xmlDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 525
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLNamespaceBinder;
    move-object v1, p1

    .local v1, "version":Ljava/lang/String;
    move-object v2, p2

    .local v2, "encoding":Ljava/lang/String;
    move-object v3, p3

    .local v3, "standalone":Ljava/lang/String;
    move-object v4, p4

    .local v4, "augs":Lorg/apache/xerces/xni/Augmentations;
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLNamespaceBinder;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-boolean v5, v5, Lcom/sun/xml/stream/XMLNamespaceBinder;->fOnlyPassPrefixMappingEvents:Z

    if-nez v5, :cond_0

    .line 526
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLNamespaceBinder;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-interface {v5, v6, v7, v8, v9}, Lorg/apache/xerces/xni/XMLDocumentHandler;->xmlDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V

    .line 528
    :cond_0
    return-void
.end method
