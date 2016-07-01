.class public final Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
.super Ljava/util/AbstractMap;
.source "XMLStreamWriterImpl.java"

# interfaces
.implements Ljavax/xml/stream/XMLStreamWriter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;,
        Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$Attribute;,
        Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementState;,
        Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementStack;
    }
.end annotation


# static fields
.field public static final CLOSE_EMPTY_ELEMENT:Ljava/lang/String; = "/>"

.field public static final CLOSE_END_TAG:C = '>'

.field public static final CLOSE_START_TAG:C = '>'

.field public static final DEFAULT_ENCODING:Ljava/lang/String; = " encoding=\"utf-8\""

.field public static final DEFAULT_XMLDECL:Ljava/lang/String; = "<?xml version=\"1.0\" ?>"

.field public static final DEFAULT_XML_VERSION:Ljava/lang/String; = "1.0"

.field public static final END_CDATA:Ljava/lang/String; = "]]>"

.field public static final END_COMMENT:Ljava/lang/String; = "-->"

.field public static final OPEN_END_TAG:Ljava/lang/String; = "</"

.field public static final OPEN_START_TAG:C = '<'

.field public static final OUTPUTSTREAM_PROPERTY:Ljava/lang/String; = "sjsxp-outputstream"

.field public static final SPACE:Ljava/lang/String; = " "

.field public static final START_CDATA:Ljava/lang/String; = "<![CDATA["

.field public static final START_COMMENT:Ljava/lang/String; = "<!--"

.field public static final UTF_8:Ljava/lang/String; = "UTF-8"


# instance fields
.field private final DEFAULT_PREFIX:Ljava/lang/String;

.field fAttrNamespace:Ljava/util/HashMap;

.field private fAttributeCache:Ljava/util/ArrayList;

.field private fElementStack:Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementStack;

.field private fEncoder:Ljava/nio/charset/CharsetEncoder;

.field fEscapeCharacters:Z

.field private fInternalNamespaceContext:Lorg/apache/xerces/util/NamespaceSupport;

.field private fIsRepairingNamespace:Z

.field private fNamespaceContext:Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;

.field private fNamespaceDecls:Ljava/util/ArrayList;

.field private fOutputStream:Ljava/io/OutputStream;

.field private fPrefixGen:Ljava/util/Random;

.field private fPropertyManager:Lcom/sun/xml/stream/PropertyManager;

.field private final fReadOnlyIterator:Lcom/sun/xml/stream/util/ReadOnlyIterator;

.field private fReuse:Z

.field private fStartTagOpened:Z

.field private fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

.field private fWriter:Ljava/io/Writer;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lcom/sun/xml/stream/PropertyManager;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 219
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    move-object v1, p1

    .local v1, "outputStream":Ljava/io/OutputStream;
    move-object v2, p2

    .local v2, "props":Lcom/sun/xml/stream/PropertyManager;
    move-object v3, v0

    new-instance v4, Ljava/io/OutputStreamWriter;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;-><init>(Ljava/io/Writer;Lcom/sun/xml/stream/PropertyManager;)V

    .line 220
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/lang/String;Lcom/sun/xml/stream/PropertyManager;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 231
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    move-object v1, p1

    .local v1, "outputStream":Ljava/io/OutputStream;
    move-object v2, p2

    .local v2, "encoding":Ljava/lang/String;
    move-object v3, p3

    .local v3, "props":Lcom/sun/xml/stream/PropertyManager;
    move-object v4, v0

    new-instance v5, Ljavax/xml/transform/stream/StreamResult;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v1

    invoke-direct {v6, v7}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/OutputStream;)V

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;-><init>(Ljavax/xml/transform/stream/StreamResult;Ljava/lang/String;Lcom/sun/xml/stream/PropertyManager;)V

    .line 232
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Lcom/sun/xml/stream/PropertyManager;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 242
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    move-object v1, p1

    .local v1, "writer":Ljava/io/Writer;
    move-object v2, p2

    .local v2, "props":Lcom/sun/xml/stream/PropertyManager;
    move-object v3, v0

    new-instance v4, Ljavax/xml/transform/stream/StreamResult;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    const/4 v5, 0x0

    move-object v6, v2

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;-><init>(Ljavax/xml/transform/stream/StreamResult;Ljava/lang/String;Lcom/sun/xml/stream/PropertyManager;)V

    .line 243
    return-void
.end method

.method public constructor <init>(Ljavax/xml/transform/stream/StreamResult;Ljava/lang/String;Lcom/sun/xml/stream/PropertyManager;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 253
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    move-object v1, p1

    .local v1, "sr":Ljavax/xml/transform/stream/StreamResult;
    move-object v2, p2

    .local v2, "encoding":Ljava/lang/String;
    move-object v3, p3

    .local v3, "props":Lcom/sun/xml/stream/PropertyManager;
    move-object v4, v0

    invoke-direct {v4}, Ljava/util/AbstractMap;-><init>()V

    .line 129
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fEscapeCharacters:Z

    .line 134
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fIsRepairingNamespace:Z

    .line 145
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fOutputStream:Ljava/io/OutputStream;

    .line 161
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fNamespaceContext:Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;

    .line 163
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fInternalNamespaceContext:Lorg/apache/xerces/util/NamespaceSupport;

    .line 165
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fPrefixGen:Ljava/util/Random;

    .line 170
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fPropertyManager:Lcom/sun/xml/stream/PropertyManager;

    .line 175
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fStartTagOpened:Z

    .line 182
    move-object v4, v0

    new-instance v5, Lorg/apache/xerces/util/SymbolTable;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Lorg/apache/xerces/util/SymbolTable;-><init>()V

    iput-object v5, v4, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    .line 184
    move-object v4, v0

    new-instance v5, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementStack;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementStack;-><init>(Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;)V

    iput-object v5, v4, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fElementStack:Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementStack;

    .line 186
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    const-string v6, ""

    invoke-virtual {v5, v6}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->DEFAULT_PREFIX:Ljava/lang/String;

    .line 188
    move-object v4, v0

    new-instance v5, Lcom/sun/xml/stream/util/ReadOnlyIterator;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Lcom/sun/xml/stream/util/ReadOnlyIterator;-><init>()V

    iput-object v5, v4, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fReadOnlyIterator:Lcom/sun/xml/stream/util/ReadOnlyIterator;

    .line 196
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fEncoder:Ljava/nio/charset/CharsetEncoder;

    .line 203
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fAttrNamespace:Ljava/util/HashMap;

    .line 254
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->setOutput(Ljavax/xml/transform/stream/StreamResult;Ljava/lang/String;)V

    .line 255
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fPropertyManager:Lcom/sun/xml/stream/PropertyManager;

    .line 256
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->init()V

    .line 257
    return-void
.end method

.method static synthetic access$000(Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;)Lorg/apache/xerces/util/SymbolTable;
    .locals 2

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "x0":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    return-object v0
.end method

.method static synthetic access$100(Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;)Lcom/sun/xml/stream/util/ReadOnlyIterator;
    .locals 2

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "x0":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fReadOnlyIterator:Lcom/sun/xml/stream/util/ReadOnlyIterator;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    return-object v0
.end method

.method private addAttrNamespace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 1695
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    move-object v1, p1

    .local v1, "prefix":Ljava/lang/String;
    move-object v2, p2

    .local v2, "uri":Ljava/lang/String;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fAttrNamespace:Ljava/util/HashMap;

    if-nez v3, :cond_0

    .line 1696
    move-object v3, v0

    new-instance v4, Ljava/util/HashMap;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v3, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fAttrNamespace:Ljava/util/HashMap;

    .line 1698
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fAttrNamespace:Ljava/util/HashMap;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1699
    return-void
.end method

.method private checkUserNamespaceContext(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .prologue
    .line 1720
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    move-object v1, p1

    .local v1, "prefix":Ljava/lang/String;
    move-object v2, p2

    .local v2, "uri":Ljava/lang/String;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fNamespaceContext:Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;

    iget-object v4, v4, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;->userContext:Ljavax/xml/namespace/NamespaceContext;

    if-eqz v4, :cond_0

    .line 1721
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fNamespaceContext:Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;

    iget-object v4, v4, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;->userContext:Ljavax/xml/namespace/NamespaceContext;

    move-object v5, v1

    invoke-interface {v4, v5}, Ljavax/xml/namespace/NamespaceContext;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 1723
    .local v3, "tmpURI":Ljava/lang/String;
    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v3

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1724
    const/4 v4, 0x1

    move v0, v4

    .line 1728
    .end local v0    # "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    .end local v3    # "tmpURI":Ljava/lang/String;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    :cond_0
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method private closeStartTag()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 1525
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    move-object v7, v0

    :try_start_0
    iget-object v7, v7, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fElementStack:Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementStack;

    invoke-virtual {v7}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->peek()Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementState;

    move-result-object v7

    move-object v1, v7

    .line 1527
    .local v1, "currentElement":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementState;
    move-object v7, v0

    iget-boolean v7, v7, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fIsRepairingNamespace:Z

    if-eqz v7, :cond_7

    .line 1528
    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->repair()V

    .line 1529
    move-object v7, v0

    move-object v8, v1

    const/4 v9, 0x1

    invoke-direct {v7, v8, v9}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->correctPrefix(Lorg/apache/xerces/xni/QName;I)V

    .line 1531
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementState;->prefix:Ljava/lang/String;

    if-eqz v7, :cond_0

    move-object v7, v1

    iget-object v7, v7, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementState;->prefix:Ljava/lang/String;

    const-string v8, ""

    if-eq v7, v8, :cond_0

    .line 1533
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementState;->prefix:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1534
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1537
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementState;->localpart:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1539
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fNamespaceDecls:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v2, v7

    .line 1540
    .local v2, "len":I
    const/4 v7, 0x0

    move-object v3, v7

    .line 1542
    .local v3, "qname":Lorg/apache/xerces/xni/QName;
    const/4 v7, 0x0

    move v4, v7

    .local v4, "i":I
    :goto_0
    move v7, v4

    move v8, v2

    if-ge v7, v8, :cond_2

    .line 1543
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fNamespaceDecls:Ljava/util/ArrayList;

    move v8, v4

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/xerces/xni/QName;

    move-object v3, v7

    .line 1545
    move-object v7, v3

    if-eqz v7, :cond_1

    .line 1546
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fInternalNamespaceContext:Lorg/apache/xerces/util/NamespaceSupport;

    move-object v8, v3

    iget-object v8, v8, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    move-object v9, v3

    iget-object v9, v9, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lorg/apache/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1548
    move-object v7, v0

    move-object v8, v3

    iget-object v8, v8, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    move-object v9, v3

    iget-object v9, v9, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->writenamespace(Ljava/lang/String;Ljava/lang/String;)V

    .line 1542
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1553
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fNamespaceDecls:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 1555
    const/4 v7, 0x0

    move-object v4, v7

    .line 1557
    .local v4, "attr":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$Attribute;
    const/4 v7, 0x0

    move v5, v7

    .local v5, "j":I
    :goto_1
    move v7, v5

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fAttributeCache:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_6

    .line 1558
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fAttributeCache:Ljava/util/ArrayList;

    move v8, v5

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$Attribute;

    move-object v4, v7

    .line 1560
    move-object v7, v4

    iget-object v7, v7, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$Attribute;->prefix:Ljava/lang/String;

    if-eqz v7, :cond_4

    move-object v7, v4

    iget-object v7, v7, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$Attribute;->uri:Ljava/lang/String;

    if-eqz v7, :cond_4

    .line 1561
    move-object v7, v4

    iget-object v7, v7, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$Attribute;->prefix:Ljava/lang/String;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    move-object v7, v4

    iget-object v7, v7, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$Attribute;->uri:Ljava/lang/String;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 1562
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fInternalNamespaceContext:Lorg/apache/xerces/util/NamespaceSupport;

    move-object v8, v4

    iget-object v8, v8, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$Attribute;->uri:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lorg/apache/xerces/util/NamespaceSupport;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 1564
    .local v6, "tmp":Ljava/lang/String;
    move-object v7, v6

    if-eqz v7, :cond_3

    move-object v7, v6

    move-object v8, v4

    iget-object v8, v8, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$Attribute;->prefix:Ljava/lang/String;

    if-eq v7, v8, :cond_4

    .line 1565
    :cond_3
    move-object v7, v0

    move-object v8, v4

    iget-object v8, v8, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$Attribute;->uri:Ljava/lang/String;

    invoke-direct {v7, v8}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->getAttrPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 1566
    move-object v7, v6

    if-nez v7, :cond_5

    .line 1567
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fInternalNamespaceContext:Lorg/apache/xerces/util/NamespaceSupport;

    move-object v8, v4

    iget-object v8, v8, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$Attribute;->prefix:Ljava/lang/String;

    move-object v9, v4

    iget-object v9, v9, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$Attribute;->uri:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lorg/apache/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1569
    move-object v7, v0

    move-object v8, v4

    iget-object v8, v8, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$Attribute;->prefix:Ljava/lang/String;

    move-object v9, v4

    iget-object v9, v9, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$Attribute;->uri:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->writenamespace(Ljava/lang/String;Ljava/lang/String;)V

    .line 1578
    .end local v6    # "tmp":Ljava/lang/String;
    :cond_4
    :goto_2
    move-object v7, v0

    move-object v8, v4

    iget-object v8, v8, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$Attribute;->prefix:Ljava/lang/String;

    move-object v9, v4

    iget-object v9, v9, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$Attribute;->localpart:Ljava/lang/String;

    move-object v10, v4

    iget-object v10, v10, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$Attribute;->value:Ljava/lang/String;

    invoke-direct {v7, v8, v9, v10}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->writeAttributeWithPrefix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1557
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1572
    .restart local v6    # "tmp":Ljava/lang/String;
    :cond_5
    move-object v7, v0

    move-object v8, v4

    iget-object v8, v8, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$Attribute;->prefix:Ljava/lang/String;

    move-object v9, v4

    iget-object v9, v9, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$Attribute;->uri:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->writenamespace(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1594
    .end local v1    # "currentElement":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementState;
    .end local v2    # "len":I
    .end local v3    # "qname":Lorg/apache/xerces/xni/QName;
    .end local v4    # "attr":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$Attribute;
    .end local v5    # "j":I
    .end local v6    # "tmp":Ljava/lang/String;
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 1595
    .local v1, "ex":Ljava/io/IOException;
    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fStartTagOpened:Z

    .line 1596
    new-instance v7, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v1

    invoke-direct {v8, v9}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 1581
    .local v1, "currentElement":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementState;
    .restart local v2    # "len":I
    .restart local v3    # "qname":Lorg/apache/xerces/xni/QName;
    .restart local v4    # "attr":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$Attribute;
    .restart local v5    # "j":I
    :cond_6
    move-object v7, v0

    const/4 v8, 0x0

    :try_start_1
    iput-object v8, v7, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fAttrNamespace:Ljava/util/HashMap;

    .line 1582
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fAttributeCache:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 1585
    .end local v2    # "len":I
    .end local v3    # "qname":Lorg/apache/xerces/xni/QName;
    .end local v4    # "attr":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$Attribute;
    .end local v5    # "j":I
    :cond_7
    move-object v7, v1

    iget-boolean v7, v7, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementState;->isEmpty:Z

    if-eqz v7, :cond_8

    .line 1586
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fElementStack:Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementStack;

    invoke-virtual {v7}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->pop()Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementState;

    move-result-object v7

    .line 1587
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fInternalNamespaceContext:Lorg/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v7}, Lorg/apache/xerces/util/NamespaceSupport;->popContext()V

    .line 1588
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const-string v8, "/>"

    invoke-virtual {v7, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1593
    :goto_3
    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fStartTagOpened:Z

    .line 1597
    .line 1598
    return-void

    .line 1590
    :cond_8
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const/16 v8, 0x3e

    invoke-virtual {v7, v8}, Ljava/io/Writer;->write(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method private correctPrefix(Lorg/apache/xerces/xni/QName;I)V
    .locals 16

    .prologue
    .line 1614
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    move-object/from16 v1, p1

    .local v1, "attr":Lorg/apache/xerces/xni/QName;
    move/from16 v2, p2

    .local v2, "type":I
    const/4 v10, 0x0

    move-object v3, v10

    .line 1617
    .local v3, "tmpPrefix":Ljava/lang/String;
    move-object v10, v1

    iget-object v10, v10, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    move-object v4, v10

    .line 1618
    .local v4, "prefix":Ljava/lang/String;
    move-object v10, v1

    iget-object v10, v10, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    move-object v5, v10

    .line 1619
    .local v5, "uri":Ljava/lang/String;
    const/4 v10, 0x0

    move v6, v10

    .line 1621
    .local v6, "isSpecialCaseURI":Z
    move-object v10, v4

    if-eqz v10, :cond_0

    move-object v10, v4

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 1622
    :cond_0
    move-object v10, v5

    if-nez v10, :cond_1

    .line 1623
    .line 1683
    :goto_0
    return-void

    .line 1626
    :cond_1
    move-object v10, v4

    const-string v11, ""

    if-ne v10, v11, :cond_2

    move-object v10, v5

    const-string v11, ""

    if-ne v10, v11, :cond_2

    .line 1627
    goto :goto_0

    .line 1629
    :cond_2
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v11, v5

    invoke-virtual {v10, v11}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v5, v10

    .line 1631
    const/4 v10, 0x0

    move-object v7, v10

    .line 1633
    .local v7, "decl":Lorg/apache/xerces/xni/QName;
    const/4 v10, 0x0

    move v8, v10

    .local v8, "i":I
    :goto_1
    move v10, v8

    move-object v11, v0

    iget-object v11, v11, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fNamespaceDecls:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_4

    .line 1634
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fNamespaceDecls:Ljava/util/ArrayList;

    move v11, v8

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/xerces/xni/QName;

    move-object v7, v10

    .line 1636
    move-object v10, v7

    if-eqz v10, :cond_3

    move-object v10, v7

    iget-object v10, v10, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    move-object v11, v1

    iget-object v11, v11, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-ne v10, v11, :cond_3

    .line 1637
    move-object v10, v1

    move-object v11, v7

    iget-object v11, v11, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    iput-object v11, v10, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    .line 1639
    goto :goto_0

    .line 1633
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1643
    :cond_4
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fNamespaceContext:Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;

    move-object v11, v5

    invoke-virtual {v10, v11}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v3, v10

    .line 1645
    move-object v10, v3

    const-string v11, ""

    if-ne v10, v11, :cond_6

    .line 1646
    move v10, v2

    const/4 v11, 0x1

    if-ne v10, v11, :cond_5

    .line 1647
    goto :goto_0

    .line 1649
    :cond_5
    move v10, v2

    const/16 v11, 0xa

    if-ne v10, v11, :cond_6

    .line 1651
    move-object v10, v0

    move-object v11, v5

    invoke-direct {v10, v11}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->getAttrPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v3, v10

    .line 1652
    const/4 v10, 0x1

    move v6, v10

    .line 1656
    :cond_6
    move-object v10, v3

    if-nez v10, :cond_9

    .line 1657
    new-instance v10, Ljava/lang/StringBuffer;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const-string v12, "zdef"

    invoke-direct {v11, v12}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v8, v10

    .line 1659
    .local v8, "genPrefix":Ljava/lang/StringBuffer;
    const/4 v10, 0x0

    move v9, v10

    .local v9, "i":I
    :goto_2
    move v10, v9

    const/4 v11, 0x1

    if-ge v10, v11, :cond_7

    .line 1660
    move-object v10, v8

    move-object v11, v0

    iget-object v11, v11, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fPrefixGen:Ljava/util/Random;

    invoke-virtual {v11}, Ljava/util/Random;->nextInt()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 1659
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1663
    :cond_7
    move-object v10, v8

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v4, v10

    .line 1664
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v11, v4

    invoke-virtual {v10, v11}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v4, v10

    .line 1669
    .end local v8    # "genPrefix":Ljava/lang/StringBuffer;
    .end local v9    # "i":I
    :goto_3
    move-object v10, v3

    if-nez v10, :cond_8

    .line 1670
    move v10, v6

    if-eqz v10, :cond_a

    .line 1671
    move-object v10, v0

    move-object v11, v4

    move-object v12, v5

    invoke-direct {v10, v11, v12}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->addAttrNamespace(Ljava/lang/String;Ljava/lang/String;)V

    .line 1682
    .end local v7    # "decl":Lorg/apache/xerces/xni/QName;
    :cond_8
    :goto_4
    move-object v10, v1

    move-object v11, v4

    iput-object v11, v10, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    .line 1683
    goto/16 :goto_0

    .line 1666
    .restart local v7    # "decl":Lorg/apache/xerces/xni/QName;
    .local v8, "i":I
    :cond_9
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v11, v3

    invoke-virtual {v10, v11}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v4, v10

    goto :goto_3

    .line 1673
    .end local v8    # "i":I
    :cond_a
    new-instance v10, Lorg/apache/xerces/xni/QName;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    invoke-direct {v11}, Lorg/apache/xerces/xni/QName;-><init>()V

    move-object v8, v10

    .line 1674
    .local v8, "qname":Lorg/apache/xerces/xni/QName;
    move-object v10, v8

    move-object v11, v4

    const-string v12, "xmlns"

    const/4 v13, 0x0

    move-object v14, v5

    invoke-virtual {v10, v11, v12, v13, v14}, Lorg/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1675
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fNamespaceDecls:Ljava/util/ArrayList;

    move-object v11, v8

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v10

    .line 1676
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fInternalNamespaceContext:Lorg/apache/xerces/util/NamespaceSupport;

    move-object v11, v0

    iget-object v11, v11, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v12, v4

    invoke-virtual {v11, v12}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v12, v5

    invoke-virtual {v10, v11, v12}, Lorg/apache/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    goto :goto_4
.end method

.method private getAttrPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 1689
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    move-object v1, p1

    .local v1, "uri":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fAttrNamespace:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 1690
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fAttrNamespace:Ljava/util/HashMap;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v0, v2

    .line 1692
    .end local v0    # "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method private init()V
    .locals 7

    .prologue
    .line 264
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fReuse:Z

    .line 265
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fNamespaceDecls:Ljava/util/ArrayList;

    .line 266
    move-object v2, v0

    new-instance v3, Ljava/util/Random;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    iput-object v3, v2, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fPrefixGen:Ljava/util/Random;

    .line 267
    move-object v2, v0

    new-instance v3, Lorg/apache/xerces/util/NamespaceSupport;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lorg/apache/xerces/util/NamespaceSupport;-><init>()V

    iput-object v3, v2, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fInternalNamespaceContext:Lorg/apache/xerces/util/NamespaceSupport;

    .line 268
    move-object v2, v0

    new-instance v3, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;-><init>(Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;)V

    iput-object v3, v2, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fNamespaceContext:Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;

    .line 269
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fNamespaceContext:Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fInternalNamespaceContext:Lorg/apache/xerces/util/NamespaceSupport;

    iput-object v3, v2, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;->internalContext:Lorg/apache/xerces/util/NamespaceSupport;

    .line 272
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fPropertyManager:Lcom/sun/xml/stream/PropertyManager;

    const-string v3, "javax.xml.stream.isRepairingNamespaces"

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/PropertyManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    move-object v1, v2

    .line 273
    .local v1, "ob":Ljava/lang/Boolean;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, v2, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fIsRepairingNamespace:Z

    .line 274
    move-object v2, v0

    iget-boolean v2, v2, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fIsRepairingNamespace:Z

    if-eqz v2, :cond_0

    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fAttributeCache:Ljava/util/ArrayList;

    .line 275
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fPropertyManager:Lcom/sun/xml/stream/PropertyManager;

    const-string v3, "escapeCharacters"

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/PropertyManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    move-object v1, v2

    .line 276
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->setEscapeCharacters(Z)V

    .line 277
    return-void
.end method

.method private isDefaultNamespace(Ljava/lang/String;)Z
    .locals 5

    .prologue
    .line 1705
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    move-object v1, p1

    .local v1, "uri":Ljava/lang/String;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fInternalNamespaceContext:Lorg/apache/xerces/util/NamespaceSupport;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->DEFAULT_PREFIX:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/apache/xerces/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 1707
    .local v2, "defaultNamespace":Ljava/lang/String;
    move-object v3, v1

    move-object v4, v2

    if-ne v3, v4, :cond_0

    .line 1708
    const/4 v3, 0x1

    move v0, v3

    .line 1711
    .end local v0    # "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    :cond_0
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method private openStartTag()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1604
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fStartTagOpened:Z

    .line 1605
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const/16 v2, 0x3c

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    .line 1606
    return-void
.end method

.method private setOutputUsingStream(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 364
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    move-object v1, p1

    .local v1, "os":Ljava/io/OutputStream;
    move-object v2, p2

    .local v2, "encoding":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fOutputStream:Ljava/io/OutputStream;

    .line 366
    move-object v3, v2

    if-eqz v3, :cond_1

    .line 367
    move-object v3, v2

    const-string v4, "utf-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 368
    move-object v3, v0

    new-instance v4, Lcom/sun/xml/stream/writers/UTF8OutputStreamWriter;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/sun/xml/stream/writers/UTF8OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v4, v3, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    .line 382
    :goto_0
    return-void

    .line 371
    :cond_0
    move-object v3, v0

    new-instance v4, Lcom/sun/xml/stream/writers/XMLWriter;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    new-instance v6, Ljava/io/OutputStreamWriter;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v1

    move-object v9, v2

    invoke-direct {v7, v8, v9}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lcom/sun/xml/stream/writers/XMLWriter;-><init>(Ljava/io/Writer;)V

    iput-object v4, v3, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    .line 372
    move-object v3, v0

    move-object v4, v2

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fEncoder:Ljava/nio/charset/CharsetEncoder;

    goto :goto_0

    .line 375
    :cond_1
    const-string v3, "file.encoding"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 376
    move-object v3, v2

    if-eqz v3, :cond_2

    move-object v3, v2

    const-string v4, "utf-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 377
    move-object v3, v0

    new-instance v4, Lcom/sun/xml/stream/writers/UTF8OutputStreamWriter;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/sun/xml/stream/writers/UTF8OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v4, v3, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    goto :goto_0

    .line 379
    :cond_2
    move-object v3, v0

    new-instance v4, Lcom/sun/xml/stream/writers/XMLWriter;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    new-instance v6, Ljava/io/OutputStreamWriter;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v1

    invoke-direct {v7, v8}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v5, v6}, Lcom/sun/xml/stream/writers/XMLWriter;-><init>(Ljava/io/Writer;)V

    iput-object v4, v3, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    goto :goto_0
.end method

.method private setOutputUsingWriter(Ljava/io/Writer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 344
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    move-object v1, p1

    .local v1, "writer":Ljava/io/Writer;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    .line 346
    move-object v3, v1

    instance-of v3, v3, Ljava/io/OutputStreamWriter;

    if-eqz v3, :cond_0

    .line 347
    move-object v3, v1

    check-cast v3, Ljava/io/OutputStreamWriter;

    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->getEncoding()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 348
    .local v2, "charset":Ljava/lang/String;
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    const-string v4, "utf-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 349
    move-object v3, v0

    move-object v4, v2

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fEncoder:Ljava/nio/charset/CharsetEncoder;

    .line 352
    .end local v2    # "charset":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private writeAttributeWithPrefix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 622
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    move-object v1, p1

    .local v1, "prefix":Ljava/lang/String;
    move-object v2, p2

    .local v2, "localName":Ljava/lang/String;
    move-object v3, p3

    .local v3, "value":Ljava/lang/String;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 624
    move-object v4, v1

    if-eqz v4, :cond_0

    move-object v4, v1

    const-string v5, ""

    if-eq v4, v5, :cond_0

    .line 625
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 626
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 629
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 630
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const-string v5, "=\""

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 631
    move-object v4, v0

    move-object v5, v3

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->writeXMLContent(Ljava/lang/String;ZZ)V

    .line 634
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 635
    return-void
.end method

.method private writeXMLContent(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1439
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    move-object v1, p1

    .local v1, "content":Ljava/lang/String;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1440
    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    iget-boolean v4, v4, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fEscapeCharacters:Z

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->writeXMLContent(Ljava/lang/String;ZZ)V

    .line 1444
    :cond_0
    return-void
.end method

.method private writeXMLContent(Ljava/lang/String;ZZ)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1456
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    move-object v1, p1

    .local v1, "content":Ljava/lang/String;
    move v2, p2

    .local v2, "escapeChars":Z
    move/from16 v3, p3

    .local v3, "escapeDoubleQuotes":Z
    move v8, v2

    if-nez v8, :cond_0

    .line 1457
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1459
    .line 1518
    :goto_0
    return-void

    .line 1463
    :cond_0
    const/4 v8, 0x0

    move v4, v8

    .line 1465
    .local v4, "startWritePos":I
    move-object v8, v1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    move v5, v8

    .line 1467
    .local v5, "end":I
    const/4 v8, 0x0

    move v6, v8

    .local v6, "index":I
    :goto_1
    move v8, v6

    move v9, v5

    if-ge v8, v9, :cond_3

    .line 1468
    move-object v8, v1

    move v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move v7, v8

    .line 1470
    .local v7, "ch":C
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fEncoder:Ljava/nio/charset/CharsetEncoder;

    if-eqz v8, :cond_1

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fEncoder:Ljava/nio/charset/CharsetEncoder;

    move v9, v7

    invoke-virtual {v8, v9}, Ljava/nio/charset/CharsetEncoder;->canEncode(C)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1471
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    move-object v9, v1

    move v10, v4

    move v11, v6

    move v12, v4

    sub-int/2addr v11, v12

    invoke-virtual {v8, v9, v10, v11}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 1474
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const-string v9, "&#x"

    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1475
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    move v9, v7

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1476
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const/16 v9, 0x3b

    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(I)V

    .line 1477
    move v8, v6

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move v4, v8

    .line 1467
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1481
    :cond_1
    move v8, v7

    sparse-switch v8, :sswitch_data_0

    goto :goto_2

    .line 1504
    :sswitch_0
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    move-object v9, v1

    move v10, v4

    move v11, v6

    move v12, v4

    sub-int/2addr v11, v12

    invoke-virtual {v8, v9, v10, v11}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 1505
    move v8, v3

    if-eqz v8, :cond_2

    .line 1506
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const-string v9, "&quot;"

    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1510
    :goto_3
    move v8, v6

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move v4, v8

    goto :goto_2

    .line 1483
    :sswitch_1
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    move-object v9, v1

    move v10, v4

    move v11, v6

    move v12, v4

    sub-int/2addr v11, v12

    invoke-virtual {v8, v9, v10, v11}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 1484
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const-string v9, "&lt;"

    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1485
    move v8, v6

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move v4, v8

    .line 1487
    goto :goto_2

    .line 1490
    :sswitch_2
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    move-object v9, v1

    move v10, v4

    move v11, v6

    move v12, v4

    sub-int/2addr v11, v12

    invoke-virtual {v8, v9, v10, v11}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 1491
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const-string v9, "&amp;"

    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1492
    move v8, v6

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move v4, v8

    .line 1494
    goto :goto_2

    .line 1497
    :sswitch_3
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    move-object v9, v1

    move v10, v4

    move v11, v6

    move v12, v4

    sub-int/2addr v11, v12

    invoke-virtual {v8, v9, v10, v11}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 1498
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const-string v9, "&gt;"

    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1499
    move v8, v6

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move v4, v8

    .line 1501
    goto :goto_2

    .line 1508
    :cond_2
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const/16 v9, 0x22

    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(I)V

    goto :goto_3

    .line 1517
    .end local v7    # "ch":C
    :cond_3
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    move-object v9, v1

    move v10, v4

    move v11, v5

    move v12, v4

    sub-int/2addr v11, v12

    invoke-virtual {v8, v9, v10, v11}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 1518
    goto/16 :goto_0

    .line 1481
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x26 -> :sswitch_2
        0x3c -> :sswitch_1
        0x3e -> :sswitch_3
    .end sparse-switch
.end method

.method private writeXMLContent([CIIZ)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1385
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    move-object v1, p1

    .local v1, "content":[C
    move/from16 v2, p2

    .local v2, "start":I
    move/from16 v3, p3

    .local v3, "length":I
    move/from16 v4, p4

    .local v4, "escapeChars":Z
    move v9, v4

    if-nez v9, :cond_0

    .line 1386
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    move-object v10, v1

    move v11, v2

    move v12, v3

    invoke-virtual {v9, v10, v11, v12}, Ljava/io/Writer;->write([CII)V

    .line 1388
    .line 1436
    :goto_0
    return-void

    .line 1392
    :cond_0
    move v9, v2

    move v5, v9

    .line 1394
    .local v5, "startWritePos":I
    move v9, v2

    move v10, v3

    add-int/2addr v9, v10

    move v6, v9

    .line 1396
    .local v6, "end":I
    move v9, v2

    move v7, v9

    .local v7, "index":I
    :goto_1
    move v9, v7

    move v10, v6

    if-ge v9, v10, :cond_2

    .line 1397
    move-object v9, v1

    move v10, v7

    aget-char v9, v9, v10

    move v8, v9

    .line 1399
    .local v8, "ch":C
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fEncoder:Ljava/nio/charset/CharsetEncoder;

    if-eqz v9, :cond_1

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fEncoder:Ljava/nio/charset/CharsetEncoder;

    move v10, v8

    invoke-virtual {v9, v10}, Ljava/nio/charset/CharsetEncoder;->canEncode(C)Z

    move-result v9

    if-nez v9, :cond_1

    .line 1400
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    move-object v10, v1

    move v11, v5

    move v12, v7

    move v13, v5

    sub-int/2addr v12, v13

    invoke-virtual {v9, v10, v11, v12}, Ljava/io/Writer;->write([CII)V

    .line 1403
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const-string v10, "&#x"

    invoke-virtual {v9, v10}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1404
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    move v10, v8

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1405
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const/16 v10, 0x3b

    invoke-virtual {v9, v10}, Ljava/io/Writer;->write(I)V

    .line 1406
    move v9, v7

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    move v5, v9

    .line 1396
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1410
    :cond_1
    move v9, v8

    sparse-switch v9, :sswitch_data_0

    goto :goto_2

    .line 1419
    :sswitch_0
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    move-object v10, v1

    move v11, v5

    move v12, v7

    move v13, v5

    sub-int/2addr v12, v13

    invoke-virtual {v9, v10, v11, v12}, Ljava/io/Writer;->write([CII)V

    .line 1420
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const-string v10, "&amp;"

    invoke-virtual {v9, v10}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1421
    move v9, v7

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    move v5, v9

    .line 1423
    goto :goto_2

    .line 1412
    :sswitch_1
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    move-object v10, v1

    move v11, v5

    move v12, v7

    move v13, v5

    sub-int/2addr v12, v13

    invoke-virtual {v9, v10, v11, v12}, Ljava/io/Writer;->write([CII)V

    .line 1413
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const-string v10, "&lt;"

    invoke-virtual {v9, v10}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1414
    move v9, v7

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    move v5, v9

    .line 1416
    goto :goto_2

    .line 1426
    :sswitch_2
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    move-object v10, v1

    move v11, v5

    move v12, v7

    move v13, v5

    sub-int/2addr v12, v13

    invoke-virtual {v9, v10, v11, v12}, Ljava/io/Writer;->write([CII)V

    .line 1427
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const-string v10, "&gt;"

    invoke-virtual {v9, v10}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1428
    move v9, v7

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    move v5, v9

    goto :goto_2

    .line 1435
    .end local v8    # "ch":C
    :cond_2
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    move-object v10, v1

    move v11, v5

    move v12, v6

    move v13, v5

    sub-int/2addr v12, v13

    invoke-virtual {v9, v10, v11, v12}, Ljava/io/Writer;->write([CII)V

    .line 1436
    goto/16 :goto_0

    .line 1410
    :sswitch_data_0
    .sparse-switch
        0x26 -> :sswitch_0
        0x3c -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch
.end method

.method private writenamespace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1083
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    move-object v1, p1

    .local v1, "prefix":Ljava/lang/String;
    move-object v2, p2

    .local v2, "namespaceURI":Ljava/lang/String;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const-string v4, " xmlns"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1085
    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    const-string v4, ""

    if-eq v3, v4, :cond_0

    .line 1086
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1087
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1090
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const-string v4, "=\""

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1091
    move-object v3, v0

    move-object v4, v2

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->writeXMLContent(Ljava/lang/String;ZZ)V

    .line 1095
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1096
    return-void
.end method


# virtual methods
.method public canReuse()Z
    .locals 2

    .prologue
    .line 389
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fReuse:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    return v0
.end method

.method checkForNull(Lorg/apache/xerces/xni/QName;)V
    .locals 4

    .prologue
    .line 1848
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    move-object v1, p1

    .local v1, "attr":Lorg/apache/xerces/xni/QName;
    move-object v2, v1

    iget-object v2, v2, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-nez v2, :cond_0

    move-object v2, v1

    const-string v3, ""

    iput-object v3, v2, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    .line 1849
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-nez v2, :cond_1

    move-object v2, v1

    const-string v3, ""

    iput-object v3, v2, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 1850
    :cond_1
    return-void
.end method

.method public close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 404
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    if-eqz v2, :cond_0

    .line 407
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    .line 412
    :cond_0
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    .line 413
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fOutputStream:Ljava/io/OutputStream;

    .line 414
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fNamespaceDecls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 415
    move-object v2, v0

    iget-boolean v2, v2, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fIsRepairingNamespace:Z

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fAttributeCache:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 416
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fElementStack:Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementStack;

    invoke-virtual {v2}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->clear()V

    .line 417
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fInternalNamespaceContext:Lorg/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v2}, Lorg/apache/xerces/util/NamespaceSupport;->reset()V

    .line 418
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fReuse:Z

    .line 419
    return-void

    .line 408
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 409
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 2177
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;
    move-object v2, v1

    const-string v3, "sjsxp-outputstream"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    return v0
.end method

.method correctPrefix(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/QName;)V
    .locals 14

    .prologue
    .line 1804
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    move-object v1, p1

    .local v1, "attr1":Lorg/apache/xerces/xni/QName;
    move-object/from16 v2, p2

    .local v2, "attr2":Lorg/apache/xerces/xni/QName;
    const/4 v8, 0x0

    move-object v3, v8

    .line 1805
    .local v3, "tmpPrefix":Ljava/lang/String;
    const/4 v8, 0x0

    move-object v4, v8

    .line 1806
    .local v4, "decl":Lorg/apache/xerces/xni/QName;
    const/4 v8, 0x0

    move v5, v8

    .line 1808
    .local v5, "done":Z
    move-object v8, v0

    move-object v9, v1

    invoke-virtual {v8, v9}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->checkForNull(Lorg/apache/xerces/xni/QName;)V

    .line 1809
    move-object v8, v0

    move-object v9, v2

    invoke-virtual {v8, v9}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->checkForNull(Lorg/apache/xerces/xni/QName;)V

    .line 1811
    move-object v8, v1

    iget-object v8, v8, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    move-object v9, v2

    iget-object v9, v9, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v8, v1

    iget-object v8, v8, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    move-object v9, v2

    iget-object v9, v9, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1813
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fNamespaceContext:Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;

    move-object v9, v2

    iget-object v9, v9, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v3, v8

    .line 1815
    move-object v8, v3

    if-eqz v8, :cond_1

    .line 1816
    move-object v8, v2

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v10, v3

    invoke-virtual {v9, v10}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    .line 1845
    :cond_0
    :goto_0
    return-void

    .line 1818
    :cond_1
    const/4 v8, 0x0

    move-object v4, v8

    .line 1819
    const/4 v8, 0x0

    move v6, v8

    .local v6, "n":I
    :goto_1
    move v8, v6

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fNamespaceDecls:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 1820
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fNamespaceDecls:Ljava/util/ArrayList;

    move v9, v6

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/xerces/xni/QName;

    move-object v4, v8

    .line 1821
    move-object v8, v4

    if-eqz v8, :cond_2

    move-object v8, v4

    iget-object v8, v8, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    move-object v9, v2

    iget-object v9, v9, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-ne v8, v9, :cond_2

    .line 1822
    move-object v8, v2

    move-object v9, v4

    iget-object v9, v9, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    iput-object v9, v8, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    .line 1824
    goto :goto_0

    .line 1819
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1829
    :cond_3
    new-instance v8, Ljava/lang/StringBuffer;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const-string v10, "zdef"

    invoke-direct {v9, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v6, v8

    .line 1831
    .local v6, "genPrefix":Ljava/lang/StringBuffer;
    const/4 v8, 0x0

    move v7, v8

    .local v7, "k":I
    :goto_2
    move v8, v7

    const/4 v9, 0x1

    if-ge v8, v9, :cond_4

    .line 1832
    move-object v8, v6

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fPrefixGen:Ljava/util/Random;

    invoke-virtual {v9}, Ljava/util/Random;->nextInt()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    .line 1831
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1835
    :cond_4
    move-object v8, v6

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v3, v8

    .line 1836
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v9, v3

    invoke-virtual {v8, v9}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v3, v8

    .line 1837
    move-object v8, v2

    move-object v9, v3

    iput-object v9, v8, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    .line 1839
    new-instance v8, Lorg/apache/xerces/xni/QName;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Lorg/apache/xerces/xni/QName;-><init>()V

    move-object v7, v8

    .line 1840
    .local v7, "qname":Lorg/apache/xerces/xni/QName;
    move-object v8, v7

    move-object v9, v3

    const-string v10, "xmlns"

    const/4 v11, 0x0

    move-object v12, v2

    iget-object v12, v12, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v8, v9, v10, v11, v12}, Lorg/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1842
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fNamespaceDecls:Ljava/util/ArrayList;

    move-object v9, v7

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v8

    goto :goto_0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 4

    .prologue
    .line 2192
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 2217
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    return v0

    .restart local v0    # "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public flush()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 426
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 429
    .line 430
    return-void

    .line 427
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 428
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 2185
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;
    move-object v2, v1

    const-string v3, "sjsxp-outputstream"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2186
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fOutputStream:Ljava/io/OutputStream;

    move-object v0, v2

    .line 2188
    .end local v0    # "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public getEscapeCharacters()Z
    .locals 2

    .prologue
    .line 397
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fEscapeCharacters:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    return v0
.end method

.method public getNamespaceContext()Ljavax/xml/namespace/NamespaceContext;
    .locals 2

    .prologue
    .line 438
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fNamespaceContext:Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    return-object v0
.end method

.method public getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 449
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    move-object v1, p1

    .local v1, "uri":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fNamespaceContext:Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 461
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    move-object v1, p1

    .local v1, "str":Ljava/lang/String;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 462
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 465
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fPropertyManager:Lcom/sun/xml/stream/PropertyManager;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/PropertyManager;->containsProperty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 466
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Property \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' is not supported"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 469
    :cond_1
    move-object v2, v1

    const-string v3, "http://java.sun.com/xml/stream/properties/outputstream"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 470
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fOutputStream:Ljava/io/OutputStream;

    move-object v0, v2

    .line 472
    .end local v0    # "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fPropertyManager:Lcom/sun/xml/stream/PropertyManager;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/PropertyManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 2210
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fElementStack:Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementStack;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    return v0
.end method

.method isDeclared(Lorg/apache/xerces/xni/QName;)Z
    .locals 6

    .prologue
    .line 1903
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    move-object v1, p1

    .local v1, "attr":Lorg/apache/xerces/xni/QName;
    const/4 v4, 0x0

    move-object v2, v4

    .line 1905
    .local v2, "decl":Lorg/apache/xerces/xni/QName;
    const/4 v4, 0x0

    move v3, v4

    .local v3, "n":I
    :goto_0
    move v4, v3

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fNamespaceDecls:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 1906
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fNamespaceDecls:Ljava/util/ArrayList;

    move v5, v3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/xerces/xni/QName;

    move-object v2, v4

    .line 1908
    move-object v4, v1

    iget-object v4, v4, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v4, :cond_0

    move-object v4, v1

    iget-object v4, v4, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    move-object v5, v2

    iget-object v5, v5, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-ne v4, v5, :cond_0

    move-object v4, v2

    iget-object v4, v4, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    move-object v5, v1

    iget-object v5, v5, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-ne v4, v5, :cond_0

    .line 1910
    const/4 v4, 0x1

    move v0, v4

    .line 1920
    .end local v0    # "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    :goto_1
    return v0

    .line 1905
    .restart local v0    # "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1914
    :cond_1
    move-object v4, v1

    iget-object v4, v4, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 1915
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fNamespaceContext:Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;

    move-object v5, v1

    iget-object v5, v5, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1916
    const/4 v4, 0x1

    move v0, v4

    goto :goto_1

    .line 1920
    :cond_2
    const/4 v4, 0x0

    move v0, v4

    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 2173
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    return v0
.end method

.method removeDuplicateDecls()V
    .locals 7

    .prologue
    .line 1854
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    const/4 v5, 0x0

    move v3, v5

    .local v3, "i":I
    :goto_0
    move v5, v3

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fNamespaceDecls:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 1855
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fNamespaceDecls:Ljava/util/ArrayList;

    move v6, v3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/xerces/xni/QName;

    move-object v1, v5

    .line 1856
    .local v1, "decl1":Lorg/apache/xerces/xni/QName;
    move-object v5, v1

    if-eqz v5, :cond_1

    .line 1857
    move v5, v3

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    move v4, v5

    .local v4, "j":I
    :goto_1
    move v5, v4

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fNamespaceDecls:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 1858
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fNamespaceDecls:Ljava/util/ArrayList;

    move v6, v4

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/xerces/xni/QName;

    move-object v2, v5

    .line 1861
    .local v2, "decl2":Lorg/apache/xerces/xni/QName;
    move-object v5, v2

    if-eqz v5, :cond_0

    move-object v5, v1

    iget-object v5, v5, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    move-object v6, v2

    iget-object v6, v6, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v1

    iget-object v5, v5, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    move-object v6, v2

    iget-object v6, v6, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1862
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fNamespaceDecls:Ljava/util/ArrayList;

    move v6, v4

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    .line 1857
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1854
    .end local v2    # "decl2":Lorg/apache/xerces/xni/QName;
    .end local v4    # "j":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1866
    .end local v1    # "decl1":Lorg/apache/xerces/xni/QName;
    :cond_2
    return-void
.end method

.method protected repair()V
    .locals 9

    .prologue
    .line 1735
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    const/4 v6, 0x0

    move-object v1, v6

    .line 1736
    .local v1, "attr":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$Attribute;
    const/4 v6, 0x0

    move-object v2, v6

    .line 1737
    .local v2, "attr2":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$Attribute;
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fElementStack:Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementStack;

    invoke-virtual {v6}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->peek()Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementState;

    move-result-object v6

    move-object v3, v6

    .line 1738
    .local v3, "currentElement":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementState;
    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->removeDuplicateDecls()V

    .line 1740
    const/4 v6, 0x0

    move v4, v6

    .local v4, "i":I
    :goto_0
    move v6, v4

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fAttributeCache:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 1741
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fAttributeCache:Ljava/util/ArrayList;

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$Attribute;

    move-object v1, v6

    .line 1742
    move-object v6, v1

    iget-object v6, v6, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$Attribute;->prefix:Ljava/lang/String;

    if-eqz v6, :cond_0

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$Attribute;->prefix:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    move-object v6, v1

    iget-object v6, v6, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$Attribute;->uri:Ljava/lang/String;

    if-eqz v6, :cond_2

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$Attribute;->uri:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1743
    :cond_1
    move-object v6, v0

    move-object v7, v3

    move-object v8, v1

    invoke-virtual {v6, v7, v8}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->correctPrefix(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/QName;)V

    .line 1740
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1747
    :cond_3
    move-object v6, v0

    move-object v7, v3

    invoke-virtual {v6, v7}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->isDeclared(Lorg/apache/xerces/xni/QName;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 1748
    move-object v6, v3

    iget-object v6, v6, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementState;->prefix:Ljava/lang/String;

    if-eqz v6, :cond_4

    move-object v6, v3

    iget-object v6, v6, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementState;->uri:Ljava/lang/String;

    if-eqz v6, :cond_4

    .line 1750
    move-object v6, v3

    iget-object v6, v6, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementState;->prefix:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    move-object v6, v3

    iget-object v6, v6, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementState;->uri:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 1751
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fNamespaceDecls:Ljava/util/ArrayList;

    move-object v7, v3

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 1756
    :cond_4
    const/4 v6, 0x0

    move v4, v6

    :goto_1
    move v6, v4

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fAttributeCache:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_7

    .line 1757
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fAttributeCache:Ljava/util/ArrayList;

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$Attribute;

    move-object v1, v6

    .line 1758
    move v6, v4

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    move v5, v6

    .local v5, "j":I
    :goto_2
    move v6, v5

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fAttributeCache:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_6

    .line 1759
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fAttributeCache:Ljava/util/ArrayList;

    move v7, v5

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$Attribute;

    move-object v2, v6

    .line 1760
    const-string v6, ""

    move-object v7, v1

    iget-object v7, v7, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$Attribute;->prefix:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, ""

    move-object v7, v2

    iget-object v7, v7, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$Attribute;->prefix:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 1761
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->correctPrefix(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/QName;)V

    .line 1758
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1756
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1766
    .end local v5    # "j":I
    :cond_7
    move-object v6, v0

    move-object v7, v3

    invoke-virtual {v6, v7}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->repairNamespaceDecl(Lorg/apache/xerces/xni/QName;)V

    .line 1768
    const/4 v6, 0x0

    move v4, v6

    .line 1770
    const/4 v6, 0x0

    move v4, v6

    :goto_3
    move v6, v4

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fAttributeCache:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_9

    .line 1771
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fAttributeCache:Ljava/util/ArrayList;

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$Attribute;

    move-object v1, v6

    .line 1775
    move-object v6, v1

    iget-object v6, v6, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$Attribute;->prefix:Ljava/lang/String;

    if-eqz v6, :cond_8

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$Attribute;->prefix:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$Attribute;->uri:Ljava/lang/String;

    if-eqz v6, :cond_8

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$Attribute;->uri:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1776
    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v6, v7}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->repairNamespaceDecl(Lorg/apache/xerces/xni/QName;)V

    .line 1770
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1780
    :cond_9
    const/4 v6, 0x0

    move-object v5, v6

    .line 1782
    .local v5, "qname":Lorg/apache/xerces/xni/QName;
    const/4 v6, 0x0

    move v4, v6

    :goto_4
    move v6, v4

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fNamespaceDecls:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_b

    .line 1783
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fNamespaceDecls:Ljava/util/ArrayList;

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/xerces/xni/QName;

    move-object v5, v6

    .line 1785
    move-object v6, v5

    if-eqz v6, :cond_a

    .line 1786
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fInternalNamespaceContext:Lorg/apache/xerces/util/NamespaceSupport;

    move-object v7, v5

    iget-object v7, v7, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    move-object v8, v5

    iget-object v8, v8, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lorg/apache/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 1782
    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1790
    :cond_b
    const/4 v6, 0x0

    move v4, v6

    :goto_5
    move v6, v4

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fAttributeCache:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_c

    .line 1791
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fAttributeCache:Ljava/util/ArrayList;

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$Attribute;

    move-object v1, v6

    .line 1792
    move-object v6, v0

    move-object v7, v1

    const/16 v8, 0xa

    invoke-direct {v6, v7, v8}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->correctPrefix(Lorg/apache/xerces/xni/QName;I)V

    .line 1790
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 1794
    :cond_c
    return-void
.end method

.method repairNamespaceDecl(Lorg/apache/xerces/xni/QName;)V
    .locals 8

    .prologue
    .line 1876
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    move-object v1, p1

    .local v1, "attr":Lorg/apache/xerces/xni/QName;
    const/4 v5, 0x0

    move-object v2, v5

    .line 1880
    .local v2, "decl":Lorg/apache/xerces/xni/QName;
    const/4 v5, 0x0

    move v4, v5

    .local v4, "j":I
    :goto_0
    move v5, v4

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fNamespaceDecls:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 1881
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fNamespaceDecls:Ljava/util/ArrayList;

    move v6, v4

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/xerces/xni/QName;

    move-object v2, v5

    .line 1883
    move-object v5, v2

    if-eqz v5, :cond_0

    .line 1884
    move-object v5, v1

    iget-object v5, v5, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v5, :cond_0

    move-object v5, v1

    iget-object v5, v5, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    move-object v6, v2

    iget-object v6, v6, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    .line 1885
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v1

    iget-object v5, v5, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    move-object v6, v2

    iget-object v6, v6, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 1886
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1887
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fNamespaceContext:Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;

    move-object v6, v1

    iget-object v6, v6, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 1890
    .local v3, "tmpURI":Ljava/lang/String;
    move-object v5, v3

    if-eqz v5, :cond_0

    .line 1891
    move-object v5, v3

    move-object v6, v1

    iget-object v6, v6, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1892
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fNamespaceDecls:Ljava/util/ArrayList;

    move v6, v4

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1880
    .end local v3    # "tmpURI":Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1894
    .restart local v3    # "tmpURI":Ljava/lang/String;
    :cond_1
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iput-object v6, v5, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    goto :goto_1

    .line 1900
    .end local v3    # "tmpURI":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 285
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->reset(Z)V

    .line 286
    return-void
.end method

.method reset(Z)V
    .locals 7

    .prologue
    .line 295
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    move v1, p1

    .local v1, "resetProperties":Z
    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fReuse:Z

    if-nez v3, :cond_0

    .line 296
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "close() Must be called before calling reset()"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 300
    :cond_0
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fReuse:Z

    .line 301
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fNamespaceDecls:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 302
    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fIsRepairingNamespace:Z

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fAttributeCache:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 305
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fElementStack:Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementStack;

    invoke-virtual {v3}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->clear()V

    .line 306
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fInternalNamespaceContext:Lorg/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v3}, Lorg/apache/xerces/util/NamespaceSupport;->reset()V

    .line 308
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fStartTagOpened:Z

    .line 309
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fNamespaceContext:Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;->userContext:Ljavax/xml/namespace/NamespaceContext;

    .line 311
    move v3, v1

    if-eqz v3, :cond_2

    .line 312
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fPropertyManager:Lcom/sun/xml/stream/PropertyManager;

    const-string v4, "javax.xml.stream.isRepairingNamespaces"

    invoke-virtual {v3, v4}, Lcom/sun/xml/stream/PropertyManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    move-object v2, v3

    .line 313
    .local v2, "ob":Ljava/lang/Boolean;
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, v3, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fIsRepairingNamespace:Z

    .line 314
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fPropertyManager:Lcom/sun/xml/stream/PropertyManager;

    const-string v4, "escapeCharacters"

    invoke-virtual {v3, v4}, Lcom/sun/xml/stream/PropertyManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    move-object v2, v3

    .line 315
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->setEscapeCharacters(Z)V

    .line 317
    .end local v2    # "ob":Ljava/lang/Boolean;
    :cond_2
    return-void
.end method

.method public setDefaultNamespace(Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 481
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    move-object v1, p1

    .local v1, "uri":Ljava/lang/String;
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 482
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 485
    :cond_0
    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fIsRepairingNamespace:Z

    if-eqz v3, :cond_2

    .line 486
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->isDefaultNamespace(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 487
    .line 496
    :goto_0
    return-void

    .line 490
    :cond_1
    new-instance v3, Lorg/apache/xerces/xni/QName;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Lorg/apache/xerces/xni/QName;-><init>()V

    move-object v2, v3

    .line 491
    .local v2, "qname":Lorg/apache/xerces/xni/QName;
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->DEFAULT_PREFIX:Ljava/lang/String;

    const-string v5, "xmlns"

    const/4 v6, 0x0

    move-object v7, v1

    invoke-virtual {v3, v4, v5, v6, v7}, Lorg/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fNamespaceDecls:Ljava/util/ArrayList;

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 493
    .line 496
    .end local v2    # "qname":Lorg/apache/xerces/xni/QName;
    :goto_1
    goto :goto_0

    .line 494
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fInternalNamespaceContext:Lorg/apache/xerces/util/NamespaceSupport;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->DEFAULT_PREFIX:Ljava/lang/String;

    move-object v5, v1

    invoke-virtual {v3, v4, v5}, Lorg/apache/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    goto :goto_1
.end method

.method public setEscapeCharacters(Z)V
    .locals 4

    .prologue
    .line 393
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    move v1, p1

    .local v1, "escape":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fEscapeCharacters:Z

    .line 394
    return-void
.end method

.method public setNamespaceContext(Ljavax/xml/namespace/NamespaceContext;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 515
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    move-object v1, p1

    .local v1, "namespaceContext":Ljavax/xml/namespace/NamespaceContext;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fNamespaceContext:Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;->userContext:Ljavax/xml/namespace/NamespaceContext;

    .line 516
    return-void
.end method

.method public setOutput(Ljavax/xml/transform/stream/StreamResult;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 329
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    move-object v1, p1

    .local v1, "sr":Ljavax/xml/transform/stream/StreamResult;
    move-object v2, p2

    .local v2, "encoding":Ljava/lang/String;
    move-object v3, v1

    invoke-virtual {v3}, Ljavax/xml/transform/stream/StreamResult;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 330
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Ljavax/xml/transform/stream/StreamResult;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->setOutputUsingStream(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    move-object v3, v1

    invoke-virtual {v3}, Ljavax/xml/transform/stream/StreamResult;->getWriter()Ljava/io/Writer;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 333
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Ljavax/xml/transform/stream/StreamResult;->getWriter()Ljava/io/Writer;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->setOutputUsingWriter(Ljava/io/Writer;)V

    goto :goto_0

    .line 335
    :cond_2
    move-object v3, v1

    invoke-virtual {v3}, Ljavax/xml/transform/stream/StreamResult;->getSystemId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 336
    move-object v3, v0

    new-instance v4, Ljava/io/FileOutputStream;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-virtual {v6}, Ljavax/xml/transform/stream/StreamResult;->getSystemId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->setOutputUsingStream(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setPrefix(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 529
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    move-object v1, p1

    .local v1, "prefix":Ljava/lang/String;
    move-object v2, p2

    .local v2, "uri":Ljava/lang/String;
    move-object v5, v1

    if-nez v5, :cond_0

    .line 530
    new-instance v5, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string v7, "Prefix cannot be null"

    invoke-direct {v6, v7}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v5

    .line 533
    :cond_0
    move-object v5, v2

    if-nez v5, :cond_1

    .line 534
    new-instance v5, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string v7, "URI cannot be null"

    invoke-direct {v6, v7}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v5

    .line 537
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v6, v1

    invoke-virtual {v5, v6}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 538
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v6, v2

    invoke-virtual {v5, v6}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 540
    move-object v5, v0

    iget-boolean v5, v5, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fIsRepairingNamespace:Z

    if-eqz v5, :cond_4

    .line 541
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fInternalNamespaceContext:Lorg/apache/xerces/util/NamespaceSupport;

    move-object v6, v1

    invoke-virtual {v5, v6}, Lorg/apache/xerces/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 543
    .local v3, "tmpURI":Ljava/lang/String;
    move-object v5, v3

    if-eqz v5, :cond_2

    move-object v5, v3

    move-object v6, v2

    if-ne v5, v6, :cond_2

    .line 544
    .line 557
    .end local v3    # "tmpURI":Ljava/lang/String;
    :goto_0
    return-void

    .line 547
    .restart local v3    # "tmpURI":Ljava/lang/String;
    :cond_2
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->checkUserNamespaceContext(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 548
    goto :goto_0

    .line 549
    :cond_3
    new-instance v5, Lorg/apache/xerces/xni/QName;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Lorg/apache/xerces/xni/QName;-><init>()V

    move-object v4, v5

    .line 550
    .local v4, "qname":Lorg/apache/xerces/xni/QName;
    move-object v5, v4

    move-object v6, v1

    const-string v7, "xmlns"

    const/4 v8, 0x0

    move-object v9, v2

    invoke-virtual {v5, v6, v7, v8, v9}, Lorg/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fNamespaceDecls:Ljava/util/ArrayList;

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 553
    goto :goto_0

    .line 556
    .end local v3    # "tmpURI":Ljava/lang/String;
    .end local v4    # "qname":Lorg/apache/xerces/xni/QName;
    :cond_4
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fInternalNamespaceContext:Lorg/apache/xerces/util/NamespaceSupport;

    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Lorg/apache/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    .line 557
    goto :goto_0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 2169
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2202
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    return-object v0
.end method

.method public writeAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 562
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    move-object v1, p1

    .local v1, "localName":Ljava/lang/String;
    move-object v2, p2

    .local v2, "value":Ljava/lang/String;
    move-object v4, v0

    :try_start_0
    iget-boolean v4, v4, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fStartTagOpened:Z

    if-nez v4, :cond_0

    .line 563
    new-instance v4, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string v6, "Attribute not associated with any element"

    invoke-direct {v5, v6}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 583
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 584
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v3

    invoke-direct {v5, v6}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 567
    .end local v3    # "e":Ljava/io/IOException;
    :cond_0
    move-object v4, v0

    :try_start_1
    iget-boolean v4, v4, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fIsRepairingNamespace:Z

    if-eqz v4, :cond_1

    .line 568
    new-instance v4, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$Attribute;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$Attribute;-><init>(Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;Ljava/lang/String;)V

    move-object v3, v4

    .line 569
    .local v3, "attr":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$Attribute;
    move-object v4, v3

    const/4 v5, 0x0

    move-object v6, v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$Attribute;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fAttributeCache:Ljava/util/ArrayList;

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 572
    .line 586
    .end local v3    # "attr":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$Attribute;
    :goto_0
    return-void

    .line 575
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 576
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 577
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const-string v5, "=\""

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 578
    move-object v4, v0

    move-object v5, v2

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->writeXMLContent(Ljava/lang/String;ZZ)V

    .line 582
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 585
    .line 586
    goto :goto_0
.end method

.method public writeAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 591
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    move-object v1, p1

    .local v1, "namespaceURI":Ljava/lang/String;
    move-object v2, p2

    .local v2, "localName":Ljava/lang/String;
    move-object v3, p3

    .local v3, "value":Ljava/lang/String;
    move-object v6, v0

    :try_start_0
    iget-boolean v6, v6, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fStartTagOpened:Z

    if-nez v6, :cond_0

    .line 592
    new-instance v6, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const-string v8, "Attribute not associated with any element"

    invoke-direct {v7, v8}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 615
    :catch_0
    move-exception v6

    move-object v4, v6

    .line 616
    .local v4, "e":Ljava/io/IOException;
    new-instance v6, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v4

    invoke-direct {v7, v8}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 596
    .end local v4    # "e":Ljava/io/IOException;
    :cond_0
    move-object v6, v1

    if-nez v6, :cond_1

    .line 597
    :try_start_1
    new-instance v6, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const-string v8, "NamespaceURI cannot be null"

    invoke-direct {v7, v8}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v6

    .line 600
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v7, v1

    invoke-virtual {v6, v7}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v1, v6

    .line 602
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fInternalNamespaceContext:Lorg/apache/xerces/util/NamespaceSupport;

    move-object v7, v1

    invoke-virtual {v6, v7}, Lorg/apache/xerces/util/NamespaceSupport;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 604
    .local v4, "prefix":Ljava/lang/String;
    move-object v6, v0

    iget-boolean v6, v6, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fIsRepairingNamespace:Z

    if-nez v6, :cond_3

    .line 605
    move-object v6, v4

    if-nez v6, :cond_2

    .line 606
    new-instance v6, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const-string v8, "Prefix cannot be null"

    invoke-direct {v7, v8}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v6

    .line 609
    :cond_2
    move-object v6, v0

    move-object v7, v4

    move-object v8, v2

    move-object v9, v3

    invoke-direct {v6, v7, v8, v9}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->writeAttributeWithPrefix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    .line 618
    :goto_0
    return-void

    .line 611
    :cond_3
    new-instance v6, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$Attribute;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    move-object v9, v3

    invoke-direct {v7, v8, v9}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$Attribute;-><init>(Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;Ljava/lang/String;)V

    move-object v5, v6

    .line 612
    .local v5, "attr":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$Attribute;
    move-object v6, v5

    const/4 v7, 0x0

    move-object v8, v2

    const/4 v9, 0x0

    move-object v10, v1

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$Attribute;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fAttributeCache:Ljava/util/ArrayList;

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v6

    goto :goto_0
.end method

.method public writeAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 640
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    move-object v1, p1

    .local v1, "prefix":Ljava/lang/String;
    move-object v2, p2

    .local v2, "namespaceURI":Ljava/lang/String;
    move-object v3, p3

    .local v3, "localName":Ljava/lang/String;
    move-object/from16 v4, p4

    .local v4, "value":Ljava/lang/String;
    move-object v6, v0

    :try_start_0
    iget-boolean v6, v6, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fStartTagOpened:Z

    if-nez v6, :cond_0

    .line 641
    new-instance v6, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const-string v8, "Attribute not associated with any element"

    invoke-direct {v7, v8}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 692
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 693
    .local v5, "e":Ljava/io/IOException;
    new-instance v6, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v5

    invoke-direct {v7, v8}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 645
    .end local v5    # "e":Ljava/io/IOException;
    :cond_0
    move-object v6, v2

    if-nez v6, :cond_1

    .line 646
    :try_start_1
    new-instance v6, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const-string v8, "NamespaceURI cannot be null"

    invoke-direct {v7, v8}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v6

    .line 649
    :cond_1
    move-object v6, v3

    if-nez v6, :cond_2

    .line 650
    new-instance v6, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const-string v8, "Local name cannot be null"

    invoke-direct {v7, v8}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v6

    .line 653
    :cond_2
    move-object v6, v0

    iget-boolean v6, v6, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fIsRepairingNamespace:Z

    if-nez v6, :cond_9

    .line 654
    move-object v6, v1

    if-eqz v6, :cond_3

    move-object v6, v1

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 655
    :cond_3
    move-object v6, v2

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 656
    new-instance v6, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const-string v8, "prefix cannot be null or empty"

    invoke-direct {v7, v8}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v6

    .line 658
    :cond_4
    move-object v6, v0

    const/4 v7, 0x0

    move-object v8, v3

    move-object v9, v4

    invoke-direct {v6, v7, v8, v9}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->writeAttributeWithPrefix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    .line 695
    :goto_0
    return-void

    .line 663
    :cond_5
    move-object v6, v1

    const-string v7, "xml"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    move-object v6, v2

    const-string v7, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 665
    :cond_6
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v7, v1

    invoke-virtual {v6, v7}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v1, v6

    .line 666
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v7, v2

    invoke-virtual {v6, v7}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 668
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fInternalNamespaceContext:Lorg/apache/xerces/util/NamespaceSupport;

    move-object v7, v1

    invoke-virtual {v6, v7}, Lorg/apache/xerces/util/NamespaceSupport;->containsPrefixInCurrentContext(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 670
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fInternalNamespaceContext:Lorg/apache/xerces/util/NamespaceSupport;

    move-object v7, v1

    invoke-virtual {v6, v7}, Lorg/apache/xerces/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 672
    .local v5, "tmpURI":Ljava/lang/String;
    move-object v6, v5

    if-eqz v6, :cond_7

    move-object v6, v5

    move-object v7, v2

    if-eq v6, v7, :cond_7

    .line 673
    new-instance v6, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Prefix "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "already bound to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ". Trying to rebind it to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is an error."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v6

    .line 678
    .end local v5    # "tmpURI":Ljava/lang/String;
    :cond_7
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fInternalNamespaceContext:Lorg/apache/xerces/util/NamespaceSupport;

    move-object v7, v1

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Lorg/apache/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 680
    :cond_8
    move-object v6, v0

    move-object v7, v1

    move-object v8, v3

    move-object v9, v4

    invoke-direct {v6, v7, v8, v9}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->writeAttributeWithPrefix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    .line 695
    :goto_1
    goto/16 :goto_0

    .line 682
    :cond_9
    move-object v6, v1

    if-eqz v6, :cond_a

    .line 683
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v7, v1

    invoke-virtual {v6, v7}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v1, v6

    .line 686
    :cond_a
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v7, v2

    invoke-virtual {v6, v7}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 688
    new-instance v6, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$Attribute;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    move-object v9, v4

    invoke-direct {v7, v8, v9}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$Attribute;-><init>(Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;Ljava/lang/String;)V

    move-object v5, v6

    .line 689
    .local v5, "attr":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$Attribute;
    move-object v6, v5

    move-object v7, v1

    move-object v8, v3

    const/4 v9, 0x0

    move-object v10, v2

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$Attribute;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fAttributeCache:Ljava/util/ArrayList;

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v6

    goto :goto_1
.end method

.method public writeCData(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 699
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    move-object v1, p1

    .local v1, "cdata":Ljava/lang/String;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 700
    :try_start_0
    new-instance v3, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "cdata cannot be null"

    invoke-direct {v4, v5}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 710
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 711
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-direct {v4, v5}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 703
    .end local v2    # "e":Ljava/io/IOException;
    :cond_0
    move-object v3, v0

    :try_start_1
    iget-boolean v3, v3, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fStartTagOpened:Z

    if-eqz v3, :cond_1

    .line 704
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->closeStartTag()V

    .line 707
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const-string v4, "<![CDATA["

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 708
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 709
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const-string v4, "]]>"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 712
    .line 713
    return-void
.end method

.method public writeCharacters(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 717
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    move-object v1, p1

    .local v1, "data":Ljava/lang/String;
    move-object v3, v0

    :try_start_0
    iget-boolean v3, v3, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fStartTagOpened:Z

    if-eqz v3, :cond_0

    .line 718
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->closeStartTag()V

    .line 721
    :cond_0
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->writeXMLContent(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 724
    .line 725
    return-void

    .line 722
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 723
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-direct {v4, v5}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public writeCharacters([CII)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 730
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    move-object v1, p1

    .local v1, "data":[C
    move v2, p2

    .local v2, "start":I
    move v3, p3

    .local v3, "len":I
    move-object v5, v0

    :try_start_0
    iget-boolean v5, v5, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fStartTagOpened:Z

    if-eqz v5, :cond_0

    .line 731
    move-object v5, v0

    invoke-direct {v5}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->closeStartTag()V

    .line 734
    :cond_0
    move-object v5, v0

    move-object v6, v1

    move v7, v2

    move v8, v3

    move-object v9, v0

    iget-boolean v9, v9, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fEscapeCharacters:Z

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->writeXMLContent([CIIZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 737
    .line 738
    return-void

    .line 735
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 736
    .local v4, "e":Ljava/io/IOException;
    new-instance v5, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v4

    invoke-direct {v6, v7}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public writeComment(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 742
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    move-object v1, p1

    .local v1, "comment":Ljava/lang/String;
    move-object v3, v0

    :try_start_0
    iget-boolean v3, v3, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fStartTagOpened:Z

    if-eqz v3, :cond_0

    .line 743
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->closeStartTag()V

    .line 746
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const-string v4, "<!--"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 748
    move-object v3, v1

    if-eqz v3, :cond_1

    .line 749
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 752
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const-string v4, "-->"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 755
    .line 756
    return-void

    .line 753
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 754
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-direct {v4, v5}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public writeDTD(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 760
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    move-object v1, p1

    .local v1, "dtd":Ljava/lang/String;
    move-object v3, v0

    :try_start_0
    iget-boolean v3, v3, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fStartTagOpened:Z

    if-eqz v3, :cond_0

    .line 761
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->closeStartTag()V

    .line 764
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 767
    .line 768
    return-void

    .line 765
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 766
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-direct {v4, v5}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public writeDefaultNamespace(Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 788
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    move-object v1, p1

    .local v1, "namespaceURI":Ljava/lang/String;
    const/4 v4, 0x0

    move-object v2, v4

    .line 789
    .local v2, "namespaceURINormalized":Ljava/lang/String;
    move-object v4, v1

    if-nez v4, :cond_0

    .line 790
    const-string v4, ""

    move-object v2, v4

    .line 796
    :goto_0
    move-object v4, v0

    :try_start_0
    iget-boolean v4, v4, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fStartTagOpened:Z

    if-nez v4, :cond_1

    .line 797
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string v6, "Namespace Attribute not associated with any element"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 827
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 828
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v3

    invoke-direct {v5, v6}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 792
    .end local v3    # "e":Ljava/io/IOException;
    :cond_0
    move-object v4, v1

    move-object v2, v4

    goto :goto_0

    .line 801
    :cond_1
    move-object v4, v0

    :try_start_1
    iget-boolean v4, v4, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fIsRepairingNamespace:Z

    if-eqz v4, :cond_2

    .line 802
    new-instance v4, Lorg/apache/xerces/xni/QName;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Lorg/apache/xerces/xni/QName;-><init>()V

    move-object v3, v4

    .line 803
    .local v3, "qname":Lorg/apache/xerces/xni/QName;
    move-object v4, v3

    const-string v5, ""

    const-string v6, "xmlns"

    const/4 v7, 0x0

    move-object v8, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Lorg/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fNamespaceDecls:Ljava/util/ArrayList;

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 807
    .line 830
    .end local v3    # "qname":Lorg/apache/xerces/xni/QName;
    :goto_1
    return-void

    .line 810
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v5, v2

    invoke-virtual {v4, v5}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 812
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fInternalNamespaceContext:Lorg/apache/xerces/util/NamespaceSupport;

    const-string v5, ""

    invoke-virtual {v4, v5}, Lorg/apache/xerces/util/NamespaceSupport;->containsPrefixInCurrentContext(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 814
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fInternalNamespaceContext:Lorg/apache/xerces/util/NamespaceSupport;

    const-string v5, ""

    invoke-virtual {v4, v5}, Lorg/apache/xerces/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 816
    .local v3, "tmp":Ljava/lang/String;
    move-object v4, v3

    if-eqz v4, :cond_3

    move-object v4, v3

    move-object v5, v2

    if-eq v4, v5, :cond_3

    .line 817
    new-instance v4, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "xmlns has been already bound to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". Rebinding it to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is an error"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v4

    .line 823
    .end local v3    # "tmp":Ljava/lang/String;
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fInternalNamespaceContext:Lorg/apache/xerces/util/NamespaceSupport;

    const-string v5, ""

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lorg/apache/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 826
    move-object v4, v0

    const/4 v5, 0x0

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->writenamespace(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 829
    .line 830
    goto :goto_1
.end method

.method public writeEmptyElement(Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 834
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    move-object v1, p1

    .local v1, "localName":Ljava/lang/String;
    move-object v3, v0

    :try_start_0
    iget-boolean v3, v3, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fStartTagOpened:Z

    if-eqz v3, :cond_0

    .line 835
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->closeStartTag()V

    .line 838
    :cond_0
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->openStartTag()V

    .line 839
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fElementStack:Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementStack;

    const/4 v4, 0x0

    move-object v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->push(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementState;

    move-result-object v3

    .line 840
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fInternalNamespaceContext:Lorg/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v3}, Lorg/apache/xerces/util/NamespaceSupport;->pushContext()V

    .line 842
    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fIsRepairingNamespace:Z

    if-nez v3, :cond_1

    .line 843
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 847
    .line 848
    :cond_1
    return-void

    .line 845
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 846
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v2

    invoke-direct {v4, v5}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public writeEmptyElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 852
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    move-object v1, p1

    .local v1, "namespaceURI":Ljava/lang/String;
    move-object v2, p2

    .local v2, "localName":Ljava/lang/String;
    move-object v4, v1

    if-nez v4, :cond_0

    .line 853
    new-instance v4, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "NamespaceURI cannot be null"

    invoke-direct {v5, v6}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v4

    .line 856
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v5, v1

    invoke-virtual {v4, v5}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 858
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fNamespaceContext:Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 859
    .local v3, "prefix":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v3

    move-object v6, v2

    move-object v7, v1

    invoke-virtual {v4, v5, v6, v7}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->writeEmptyElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    return-void
.end method

.method public writeEmptyElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 865
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    move-object v1, p1

    .local v1, "prefix":Ljava/lang/String;
    move-object v2, p2

    .local v2, "localName":Ljava/lang/String;
    move-object v3, p3

    .local v3, "namespaceURI":Ljava/lang/String;
    move-object v5, v2

    if-nez v5, :cond_0

    .line 866
    :try_start_0
    new-instance v5, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    const-string v7, "Local Name cannot be null"

    invoke-direct {v6, v7}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 903
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 904
    .local v4, "e":Ljava/io/IOException;
    new-instance v5, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v4

    invoke-direct {v6, v7}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 869
    .end local v4    # "e":Ljava/io/IOException;
    :cond_0
    move-object v5, v3

    if-nez v5, :cond_1

    .line 870
    :try_start_1
    new-instance v5, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    const-string v7, "NamespaceURI cannot be null"

    invoke-direct {v6, v7}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v5

    .line 873
    :cond_1
    move-object v5, v1

    if-eqz v5, :cond_2

    .line 874
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v6, v1

    invoke-virtual {v5, v6}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 877
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v6, v3

    invoke-virtual {v5, v6}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 879
    move-object v5, v0

    iget-boolean v5, v5, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fStartTagOpened:Z

    if-eqz v5, :cond_3

    .line 880
    move-object v5, v0

    invoke-direct {v5}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->closeStartTag()V

    .line 883
    :cond_3
    move-object v5, v0

    invoke-direct {v5}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->openStartTag()V

    .line 885
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fElementStack:Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementStack;

    move-object v6, v1

    move-object v7, v2

    const/4 v8, 0x0

    move-object v9, v3

    const/4 v10, 0x1

    invoke-virtual/range {v5 .. v10}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->push(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementState;

    move-result-object v5

    .line 886
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fInternalNamespaceContext:Lorg/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v5}, Lorg/apache/xerces/util/NamespaceSupport;->pushContext()V

    .line 888
    move-object v5, v0

    iget-boolean v5, v5, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fIsRepairingNamespace:Z

    if-nez v5, :cond_4

    .line 889
    move-object v5, v1

    if-nez v5, :cond_5

    .line 890
    new-instance v5, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NamespaceURI "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has not been bound to any prefix"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v5

    .line 894
    .line 906
    :cond_4
    :goto_0
    return-void

    .line 897
    :cond_5
    move-object v5, v1

    if-eqz v5, :cond_6

    move-object v5, v1

    const-string v6, ""

    if-eq v5, v6, :cond_6

    .line 898
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 899
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 902
    :cond_6
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 905
    .line 906
    goto :goto_0
.end method

.method public writeEndDocument()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 910
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    move-object v2, v0

    :try_start_0
    iget-boolean v2, v2, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fStartTagOpened:Z

    if-eqz v2, :cond_0

    .line 911
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->closeStartTag()V

    .line 914
    :cond_0
    const/4 v2, 0x0

    move-object v1, v2

    .line 916
    .local v1, "elem":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementState;
    :goto_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fElementStack:Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementStack;

    invoke-virtual {v2}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->empty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 917
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fElementStack:Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementStack;

    invoke-virtual {v2}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->pop()Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementState;

    move-result-object v2

    move-object v1, v2

    .line 918
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fInternalNamespaceContext:Lorg/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v2}, Lorg/apache/xerces/util/NamespaceSupport;->popContext()V

    .line 920
    move-object v2, v1

    iget-boolean v2, v2, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementState;->isEmpty:Z

    if-eqz v2, :cond_1

    goto :goto_0

    .line 923
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const-string v3, "</"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 925
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementState;->prefix:Ljava/lang/String;

    if-eqz v2, :cond_2

    move-object v2, v1

    iget-object v2, v2, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementState;->prefix:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 926
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    move-object v3, v1

    iget-object v3, v3, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementState;->prefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 927
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 930
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    move-object v3, v1

    iget-object v3, v3, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementState;->localpart:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 931
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const/16 v3, 0x3e

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 938
    .line 939
    :cond_3
    return-void

    .line 934
    .end local v1    # "elem":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementState;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 935
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 936
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 937
    .local v1, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v2, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "No more elements to write"

    invoke-direct {v3, v4}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public writeEndElement()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 943
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    move-object v2, v0

    :try_start_0
    iget-boolean v2, v2, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fStartTagOpened:Z

    if-eqz v2, :cond_0

    .line 944
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->closeStartTag()V

    .line 947
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fElementStack:Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementStack;

    invoke-virtual {v2}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->pop()Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementState;

    move-result-object v2

    move-object v1, v2

    .line 949
    .local v1, "currentElement":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementState;
    move-object v2, v1

    if-nez v2, :cond_1

    .line 950
    new-instance v2, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "No element was found to write"

    invoke-direct {v3, v4}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 969
    .end local v1    # "currentElement":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementState;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 970
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 953
    .local v1, "currentElement":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementState;
    :cond_1
    move-object v2, v1

    :try_start_1
    iget-boolean v2, v2, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementState;->isEmpty:Z

    if-eqz v2, :cond_2

    .line 955
    .line 976
    :goto_0
    return-void

    .line 958
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const-string v3, "</"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 960
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementState;->prefix:Ljava/lang/String;

    if-eqz v2, :cond_3

    move-object v2, v1

    iget-object v2, v2, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementState;->prefix:Ljava/lang/String;

    const-string v3, ""

    .line 961
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 962
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    move-object v3, v1

    iget-object v3, v3, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementState;->prefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 963
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 966
    :cond_3
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    move-object v3, v1

    iget-object v3, v3, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementState;->localpart:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 967
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const/16 v3, 0x3e

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(I)V

    .line 968
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fInternalNamespaceContext:Lorg/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v2}, Lorg/apache/xerces/util/NamespaceSupport;->popContext()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 975
    .line 976
    goto :goto_0

    .line 971
    .end local v1    # "currentElement":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementState;
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 972
    .local v1, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v2, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No element was found to write: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    .line 974
    invoke-virtual {v5}, Ljava/lang/ArrayIndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public writeEntityRef(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 980
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    move-object v1, p1

    .local v1, "refName":Ljava/lang/String;
    move-object v3, v0

    :try_start_0
    iget-boolean v3, v3, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fStartTagOpened:Z

    if-eqz v3, :cond_0

    .line 981
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->closeStartTag()V

    .line 984
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const/16 v4, 0x26

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(I)V

    .line 985
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 986
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const/16 v4, 0x3b

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 989
    .line 990
    return-void

    .line 987
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 988
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-direct {v4, v5}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public writeNamespace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 1011
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    move-object v1, p1

    .local v1, "prefix":Ljava/lang/String;
    move-object v2, p2

    .local v2, "namespaceURI":Ljava/lang/String;
    const/4 v6, 0x0

    move-object v3, v6

    .line 1012
    .local v3, "namespaceURINormalized":Ljava/lang/String;
    move-object v6, v2

    if-nez v6, :cond_0

    .line 1013
    const-string v6, ""

    move-object v3, v6

    .line 1019
    :goto_0
    const/4 v6, 0x0

    move-object v4, v6

    .line 1021
    .local v4, "qname":Lorg/apache/xerces/xni/QName;
    move-object v6, v0

    :try_start_0
    iget-boolean v6, v6, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fStartTagOpened:Z

    if-nez v6, :cond_1

    .line 1022
    new-instance v6, Ljava/lang/IllegalStateException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid state: start tag is not opened at writeNamespace("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1076
    :catch_0
    move-exception v6

    move-object v4, v6

    .line 1077
    .local v4, "e":Ljava/io/IOException;
    new-instance v6, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v4

    invoke-direct {v7, v8}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 1015
    .end local v4    # "e":Ljava/io/IOException;
    :cond_0
    move-object v6, v2

    move-object v3, v6

    goto :goto_0

    .line 1031
    .local v4, "qname":Lorg/apache/xerces/xni/QName;
    :cond_1
    move-object v6, v1

    if-eqz v6, :cond_2

    move-object v6, v1

    :try_start_1
    const-string v7, ""

    .line 1032
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    move-object v6, v1

    const-string v7, "xmlns"

    .line 1033
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1034
    :cond_2
    move-object v6, v0

    move-object v7, v3

    invoke-virtual {v6, v7}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->writeDefaultNamespace(Ljava/lang/String;)V

    .line 1035
    .line 1079
    :goto_1
    return-void

    .line 1038
    :cond_3
    move-object v6, v1

    const-string v7, "xml"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v6, v3

    const-string v7, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1039
    goto :goto_1

    .line 1041
    :cond_4
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v7, v1

    invoke-virtual {v6, v7}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v1, v6

    .line 1042
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v7, v3

    invoke-virtual {v6, v7}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 1044
    move-object v6, v0

    iget-boolean v6, v6, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fIsRepairingNamespace:Z

    if-eqz v6, :cond_6

    .line 1045
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fInternalNamespaceContext:Lorg/apache/xerces/util/NamespaceSupport;

    move-object v7, v1

    invoke-virtual {v6, v7}, Lorg/apache/xerces/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 1047
    .local v5, "tmpURI":Ljava/lang/String;
    move-object v6, v5

    if-eqz v6, :cond_5

    move-object v6, v5

    move-object v7, v3

    if-ne v6, v7, :cond_5

    .line 1048
    goto :goto_1

    .line 1051
    :cond_5
    new-instance v6, Lorg/apache/xerces/xni/QName;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-direct {v7}, Lorg/apache/xerces/xni/QName;-><init>()V

    move-object v4, v6

    .line 1052
    move-object v6, v4

    move-object v7, v1

    const-string v8, "xmlns"

    const/4 v9, 0x0

    move-object v10, v3

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fNamespaceDecls:Ljava/util/ArrayList;

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 1056
    goto :goto_1

    .line 1060
    .end local v5    # "tmpURI":Ljava/lang/String;
    :cond_6
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fInternalNamespaceContext:Lorg/apache/xerces/util/NamespaceSupport;

    move-object v7, v1

    invoke-virtual {v6, v7}, Lorg/apache/xerces/util/NamespaceSupport;->containsPrefixInCurrentContext(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1062
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fInternalNamespaceContext:Lorg/apache/xerces/util/NamespaceSupport;

    move-object v7, v1

    invoke-virtual {v6, v7}, Lorg/apache/xerces/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 1064
    .local v5, "tmp":Ljava/lang/String;
    move-object v6, v5

    if-eqz v6, :cond_7

    move-object v6, v5

    move-object v7, v3

    if-eq v6, v7, :cond_7

    .line 1066
    new-instance v6, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "prefix "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " has been already bound to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ". Rebinding it to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is an error"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1073
    .end local v5    # "tmp":Ljava/lang/String;
    :cond_7
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fInternalNamespaceContext:Lorg/apache/xerces/util/NamespaceSupport;

    move-object v7, v1

    move-object v8, v3

    invoke-virtual {v6, v7, v8}, Lorg/apache/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 1074
    move-object v6, v0

    move-object v7, v1

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->writenamespace(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1078
    .line 1079
    goto/16 :goto_1
.end method

.method public writeProcessingInstruction(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 1101
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    move-object v1, p1

    .local v1, "target":Ljava/lang/String;
    move-object v3, v0

    :try_start_0
    iget-boolean v3, v3, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fStartTagOpened:Z

    if-eqz v3, :cond_0

    .line 1102
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->closeStartTag()V

    .line 1105
    :cond_0
    move-object v3, v1

    if-eqz v3, :cond_1

    .line 1106
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const-string v4, "<?"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1107
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1108
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const-string v4, "?>"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1110
    return-void

    .line 1114
    .line 1116
    :cond_1
    new-instance v3, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "PI target cannot be null"

    invoke-direct {v4, v5}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1112
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 1113
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-direct {v4, v5}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public writeProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 1127
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    move-object v1, p1

    .local v1, "target":Ljava/lang/String;
    move-object v2, p2

    .local v2, "data":Ljava/lang/String;
    move-object v4, v0

    :try_start_0
    iget-boolean v4, v4, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fStartTagOpened:Z

    if-eqz v4, :cond_0

    .line 1128
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->closeStartTag()V

    .line 1131
    :cond_0
    move-object v4, v1

    if-eqz v4, :cond_1

    move-object v4, v2

    if-nez v4, :cond_2

    .line 1132
    :cond_1
    new-instance v4, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "PI target cannot be null"

    invoke-direct {v5, v6}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1140
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 1141
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v3

    invoke-direct {v5, v6}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 1135
    .end local v3    # "e":Ljava/io/IOException;
    :cond_2
    move-object v4, v0

    :try_start_1
    iget-object v4, v4, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const-string v5, "<?"

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1136
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1137
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1138
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1139
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const-string v5, "?>"

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1142
    .line 1143
    return-void
.end method

.method public writeStartDocument()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 1150
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const-string v3, "<?xml version=\"1.0\" ?>"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1153
    .line 1154
    return-void

    .line 1151
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 1152
    .local v1, "ex":Ljava/io/IOException;
    new-instance v2, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public writeStartDocument(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 1162
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    move-object v1, p1

    .local v1, "version":Ljava/lang/String;
    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    :try_start_0
    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1163
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->writeStartDocument()V

    .line 1165
    .line 1177
    :goto_0
    return-void

    .line 1168
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const-string v4, "<?xml version=\""

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1169
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1170
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1173
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const-string v4, "?>"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1176
    .line 1177
    goto :goto_0

    .line 1174
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 1175
    .local v2, "ex":Ljava/io/IOException;
    new-instance v3, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-direct {v4, v5}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public writeStartDocument(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 1188
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    move-object v1, p1

    .local v1, "encoding":Ljava/lang/String;
    move-object v2, p2

    .local v2, "version":Ljava/lang/String;
    move-object v7, v1

    if-nez v7, :cond_0

    move-object v7, v2

    if-nez v7, :cond_0

    .line 1189
    move-object v7, v0

    :try_start_0
    invoke-virtual {v7}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->writeStartDocument()V

    .line 1191
    .line 1247
    :goto_0
    return-void

    .line 1194
    :cond_0
    move-object v7, v1

    if-nez v7, :cond_1

    .line 1195
    move-object v7, v0

    move-object v8, v2

    invoke-virtual {v7, v8}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->writeStartDocument(Ljava/lang/String;)V

    .line 1197
    goto :goto_0

    .line 1200
    :cond_1
    const/4 v7, 0x0

    move-object v3, v7

    .line 1201
    .local v3, "streamEncoding":Ljava/lang/String;
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    instance-of v7, v7, Ljava/io/OutputStreamWriter;

    if-eqz v7, :cond_4

    .line 1202
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    check-cast v7, Ljava/io/OutputStreamWriter;

    invoke-virtual {v7}, Ljava/io/OutputStreamWriter;->getEncoding()Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    .line 1211
    :cond_2
    :goto_1
    move-object v7, v3

    if-eqz v7, :cond_7

    move-object v7, v3

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 1213
    const/4 v7, 0x0

    move v4, v7

    .line 1214
    .local v4, "foundAlias":Z
    move-object v7, v1

    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/charset/Charset;->aliases()Ljava/util/Set;

    move-result-object v7

    move-object v5, v7

    .line 1215
    .local v5, "aliases":Ljava/util/Set;
    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v6, v7

    .local v6, "it":Ljava/util/Iterator;
    :cond_3
    :goto_2
    move v7, v4

    if-nez v7, :cond_6

    move-object v7, v6

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1216
    move-object v7, v3

    move-object v8, v6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1217
    const/4 v7, 0x1

    move v4, v7

    goto :goto_2

    .line 1204
    .end local v4    # "foundAlias":Z
    .end local v5    # "aliases":Ljava/util/Set;
    .end local v6    # "it":Ljava/util/Iterator;
    :cond_4
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    instance-of v7, v7, Lcom/sun/xml/stream/writers/UTF8OutputStreamWriter;

    if-eqz v7, :cond_5

    .line 1205
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    check-cast v7, Lcom/sun/xml/stream/writers/UTF8OutputStreamWriter;

    invoke-virtual {v7}, Lcom/sun/xml/stream/writers/UTF8OutputStreamWriter;->getEncoding()Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    goto :goto_1

    .line 1207
    :cond_5
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    instance-of v7, v7, Lcom/sun/xml/stream/writers/XMLWriter;

    if-eqz v7, :cond_2

    .line 1208
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    check-cast v7, Lcom/sun/xml/stream/writers/XMLWriter;

    invoke-virtual {v7}, Lcom/sun/xml/stream/writers/XMLWriter;->getWriter()Ljava/io/Writer;

    move-result-object v7

    check-cast v7, Ljava/io/OutputStreamWriter;

    invoke-virtual {v7}, Ljava/io/OutputStreamWriter;->getEncoding()Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    goto :goto_1

    .line 1221
    .restart local v4    # "foundAlias":Z
    .restart local v5    # "aliases":Ljava/util/Set;
    .restart local v6    # "it":Ljava/util/Iterator;
    :cond_6
    move v7, v4

    if-nez v7, :cond_7

    .line 1222
    new-instance v7, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Underlying stream encoding \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' and input paramter for writeStartDocument() method \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' do not match."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1244
    .end local v3    # "streamEncoding":Ljava/lang/String;
    .end local v4    # "foundAlias":Z
    .end local v5    # "aliases":Ljava/util/Set;
    .end local v6    # "it":Ljava/util/Iterator;
    :catch_0
    move-exception v7

    move-object v3, v7

    .line 1245
    .local v3, "ex":Ljava/io/IOException;
    new-instance v7, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v3

    invoke-direct {v8, v9}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 1230
    .local v3, "streamEncoding":Ljava/lang/String;
    :cond_7
    move-object v7, v0

    :try_start_1
    iget-object v7, v7, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const-string v8, "<?xml version=\""

    invoke-virtual {v7, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1232
    move-object v7, v2

    if-eqz v7, :cond_8

    move-object v7, v2

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1233
    :cond_8
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const-string v8, "1.0"

    invoke-virtual {v7, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1238
    :goto_3
    move-object v7, v1

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 1239
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const-string v8, "\" encoding=\""

    invoke-virtual {v7, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1240
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1243
    :cond_9
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const-string v8, "\"?>"

    invoke-virtual {v7, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1246
    .line 1247
    goto/16 :goto_0

    .line 1235
    :cond_a
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method public writeStartElement(Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 1255
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    move-object v1, p1

    .local v1, "localName":Ljava/lang/String;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 1256
    :try_start_0
    new-instance v3, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const-string v5, "Local Name cannot be null"

    invoke-direct {v4, v5}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1272
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 1273
    .local v2, "ex":Ljava/io/IOException;
    new-instance v3, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v2

    invoke-direct {v4, v5}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1259
    .end local v2    # "ex":Ljava/io/IOException;
    :cond_0
    move-object v3, v0

    :try_start_1
    iget-boolean v3, v3, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fStartTagOpened:Z

    if-eqz v3, :cond_1

    .line 1260
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->closeStartTag()V

    .line 1263
    :cond_1
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->openStartTag()V

    .line 1264
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fElementStack:Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementStack;

    const/4 v4, 0x0

    move-object v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->push(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementState;

    move-result-object v3

    .line 1265
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fInternalNamespaceContext:Lorg/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v3}, Lorg/apache/xerces/util/NamespaceSupport;->pushContext()V

    .line 1267
    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fIsRepairingNamespace:Z

    if-eqz v3, :cond_2

    .line 1268
    .line 1275
    :goto_0
    return-void

    .line 1271
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1274
    .line 1275
    goto :goto_0
.end method

.method public writeStartElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 1284
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    move-object v1, p1

    .local v1, "namespaceURI":Ljava/lang/String;
    move-object v2, p2

    .local v2, "localName":Ljava/lang/String;
    move-object v4, v2

    if-nez v4, :cond_0

    .line 1285
    new-instance v4, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "Local Name cannot be null"

    invoke-direct {v5, v6}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1288
    :cond_0
    move-object v4, v1

    if-nez v4, :cond_1

    .line 1289
    new-instance v4, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "NamespaceURI cannot be null"

    invoke-direct {v5, v6}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1292
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v5, v1

    invoke-virtual {v4, v5}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 1294
    const/4 v4, 0x0

    move-object v3, v4

    .line 1296
    .local v3, "prefix":Ljava/lang/String;
    move-object v4, v0

    iget-boolean v4, v4, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fIsRepairingNamespace:Z

    if-nez v4, :cond_2

    .line 1297
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fNamespaceContext:Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 1299
    move-object v4, v3

    if-eqz v4, :cond_2

    .line 1300
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v5, v3

    invoke-virtual {v4, v5}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 1304
    :cond_2
    move-object v4, v0

    move-object v5, v3

    move-object v6, v2

    move-object v7, v1

    invoke-virtual {v4, v5, v6, v7}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->writeStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1305
    return-void
.end method

.method public writeStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 1316
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    move-object v1, p1

    .local v1, "prefix":Ljava/lang/String;
    move-object v2, p2

    .local v2, "localName":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "namespaceURI":Ljava/lang/String;
    move-object v6, v2

    if-nez v6, :cond_0

    .line 1317
    :try_start_0
    new-instance v6, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const-string v8, "Local Name cannot be null"

    invoke-direct {v7, v8}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1374
    :catch_0
    move-exception v6

    move-object v4, v6

    .line 1375
    .local v4, "ex":Ljava/io/IOException;
    new-instance v6, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v4

    invoke-direct {v7, v8}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 1320
    .end local v4    # "ex":Ljava/io/IOException;
    :cond_0
    move-object v6, v3

    if-nez v6, :cond_1

    .line 1321
    :try_start_1
    new-instance v6, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const-string v8, "NamespaceURI cannot be null"

    invoke-direct {v7, v8}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1324
    :cond_1
    move-object v6, v0

    iget-boolean v6, v6, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fIsRepairingNamespace:Z

    if-nez v6, :cond_2

    .line 1325
    move-object v6, v1

    if-nez v6, :cond_2

    .line 1326
    new-instance v6, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const-string v8, "Prefix cannot be null"

    invoke-direct {v7, v8}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1330
    :cond_2
    move-object v6, v0

    iget-boolean v6, v6, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fStartTagOpened:Z

    if-eqz v6, :cond_3

    .line 1331
    move-object v6, v0

    invoke-direct {v6}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->closeStartTag()V

    .line 1334
    :cond_3
    move-object v6, v0

    invoke-direct {v6}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->openStartTag()V

    .line 1335
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v7, v3

    invoke-virtual {v6, v7}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 1337
    move-object v6, v1

    if-eqz v6, :cond_4

    .line 1338
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v7, v1

    invoke-virtual {v6, v7}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v1, v6

    .line 1341
    :cond_4
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fElementStack:Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementStack;

    move-object v7, v1

    move-object v8, v2

    const/4 v9, 0x0

    move-object v10, v3

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->push(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementState;

    move-result-object v6

    .line 1342
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fInternalNamespaceContext:Lorg/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v6}, Lorg/apache/xerces/util/NamespaceSupport;->pushContext()V

    .line 1344
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fNamespaceContext:Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;

    move-object v7, v3

    invoke-virtual {v6, v7}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 1347
    .local v4, "tmpPrefix":Ljava/lang/String;
    move-object v6, v1

    if-eqz v6, :cond_6

    move-object v6, v4

    if-eqz v6, :cond_5

    move-object v6, v1

    move-object v7, v4

    .line 1348
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 1349
    :cond_5
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fInternalNamespaceContext:Lorg/apache/xerces/util/NamespaceSupport;

    move-object v7, v1

    move-object v8, v3

    invoke-virtual {v6, v7, v8}, Lorg/apache/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 1353
    :cond_6
    move-object v6, v0

    iget-boolean v6, v6, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fIsRepairingNamespace:Z

    if-eqz v6, :cond_9

    .line 1354
    move-object v6, v1

    if-eqz v6, :cond_7

    move-object v6, v4

    if-eqz v6, :cond_8

    move-object v6, v1

    move-object v7, v4

    .line 1355
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1356
    .line 1377
    :cond_7
    :goto_0
    return-void

    .line 1359
    :cond_8
    new-instance v6, Lorg/apache/xerces/xni/QName;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Lorg/apache/xerces/xni/QName;-><init>()V

    move-object v5, v6

    .line 1360
    .local v5, "qname":Lorg/apache/xerces/xni/QName;
    move-object v6, v5

    move-object v7, v1

    const-string v8, "xmlns"

    const/4 v9, 0x0

    move-object v10, v3

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1362
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fNamespaceDecls:Ljava/util/ArrayList;

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 1364
    goto :goto_0

    .line 1367
    .end local v5    # "qname":Lorg/apache/xerces/xni/QName;
    :cond_9
    move-object v6, v1

    if-eqz v6, :cond_a

    move-object v6, v1

    const-string v7, ""

    if-eq v6, v7, :cond_a

    .line 1368
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1369
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1372
    :cond_a
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1376
    .line 1377
    goto :goto_0
.end method
