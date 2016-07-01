.class public Lcom/sun/xml/stream/ZephyrParserFactory;
.super Ljavax/xml/stream/XMLInputFactory;
.source "ZephyrParserFactory.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field fPropertyChanged:Z

.field private fPropertyManager:Lcom/sun/xml/stream/PropertyManager;

.field fReuseInstance:Z

.field private fTempReader:Lcom/sun/xml/stream/XMLReaderImpl;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/ZephyrParserFactory;
    move-object v1, v0

    invoke-direct {v1}, Ljavax/xml/stream/XMLInputFactory;-><init>()V

    .line 69
    move-object v1, v0

    new-instance v2, Lcom/sun/xml/stream/PropertyManager;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcom/sun/xml/stream/PropertyManager;-><init>(I)V

    iput-object v2, v1, Lcom/sun/xml/stream/ZephyrParserFactory;->fPropertyManager:Lcom/sun/xml/stream/PropertyManager;

    .line 73
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/xml/stream/ZephyrParserFactory;->fTempReader:Lcom/sun/xml/stream/XMLReaderImpl;

    .line 75
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/xml/stream/ZephyrParserFactory;->fPropertyChanged:Z

    .line 77
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/xml/stream/ZephyrParserFactory;->fReuseInstance:Z

    .line 82
    return-void
.end method


# virtual methods
.method public createFilteredReader(Ljavax/xml/stream/XMLEventReader;Ljavax/xml/stream/EventFilter;)Ljavax/xml/stream/XMLEventReader;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 207
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/ZephyrParserFactory;
    move-object v1, p1

    .local v1, "reader":Ljavax/xml/stream/XMLEventReader;
    move-object v2, p2

    .local v2, "filter":Ljavax/xml/stream/EventFilter;
    new-instance v3, Lcom/sun/xml/stream/EventFilterSupport;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lcom/sun/xml/stream/EventFilterSupport;-><init>(Ljavax/xml/stream/XMLEventReader;Ljavax/xml/stream/EventFilter;)V

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/xml/stream/ZephyrParserFactory;
    return-object v0
.end method

.method public createFilteredReader(Ljavax/xml/stream/XMLStreamReader;Ljavax/xml/stream/StreamFilter;)Ljavax/xml/stream/XMLStreamReader;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 216
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/ZephyrParserFactory;
    move-object v1, p1

    .local v1, "reader":Ljavax/xml/stream/XMLStreamReader;
    move-object v2, p2

    .local v2, "filter":Ljavax/xml/stream/StreamFilter;
    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v2

    if-eqz v3, :cond_0

    .line 217
    new-instance v3, Lcom/sun/xml/stream/XMLStreamFilterImpl;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lcom/sun/xml/stream/XMLStreamFilterImpl;-><init>(Ljavax/xml/stream/XMLStreamReader;Ljavax/xml/stream/StreamFilter;)V

    move-object v0, v3

    .line 219
    .end local v0    # "this":Lcom/sun/xml/stream/ZephyrParserFactory;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/sun/xml/stream/ZephyrParserFactory;
    :cond_0
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method public createXMLEventReader(Ljava/io/InputStream;)Ljavax/xml/stream/XMLEventReader;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/ZephyrParserFactory;
    move-object v1, p1

    .local v1, "inputstream":Ljava/io/InputStream;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/xml/stream/ZephyrParserFactory;->initEventReader()V

    .line 95
    new-instance v2, Lcom/sun/xml/stream/XMLEventReaderImpl;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/sun/xml/stream/ZephyrParserFactory;->createXMLStreamReader(Ljava/io/InputStream;)Ljavax/xml/stream/XMLStreamReader;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sun/xml/stream/XMLEventReaderImpl;-><init>(Ljavax/xml/stream/XMLStreamReader;)V

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/xml/stream/ZephyrParserFactory;
    return-object v0
.end method

.method public createXMLEventReader(Ljava/io/InputStream;Ljava/lang/String;)Ljavax/xml/stream/XMLEventReader;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/ZephyrParserFactory;
    move-object v1, p1

    .local v1, "stream":Ljava/io/InputStream;
    move-object v2, p2

    .local v2, "encoding":Ljava/lang/String;
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/xml/stream/ZephyrParserFactory;->initEventReader()V

    .line 119
    new-instance v3, Lcom/sun/xml/stream/XMLEventReaderImpl;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Lcom/sun/xml/stream/ZephyrParserFactory;->createXMLStreamReader(Ljava/io/InputStream;Ljava/lang/String;)Ljavax/xml/stream/XMLStreamReader;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/sun/xml/stream/XMLEventReaderImpl;-><init>(Ljavax/xml/stream/XMLStreamReader;)V

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/xml/stream/ZephyrParserFactory;
    return-object v0
.end method

.method public createXMLEventReader(Ljava/io/Reader;)Ljavax/xml/stream/XMLEventReader;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/ZephyrParserFactory;
    move-object v1, p1

    .local v1, "reader":Ljava/io/Reader;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/xml/stream/ZephyrParserFactory;->initEventReader()V

    .line 101
    new-instance v2, Lcom/sun/xml/stream/XMLEventReaderImpl;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/sun/xml/stream/ZephyrParserFactory;->createXMLStreamReader(Ljava/io/Reader;)Ljavax/xml/stream/XMLStreamReader;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sun/xml/stream/XMLEventReaderImpl;-><init>(Ljavax/xml/stream/XMLStreamReader;)V

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/xml/stream/ZephyrParserFactory;
    return-object v0
.end method

.method public createXMLEventReader(Ljava/lang/String;Ljava/io/InputStream;)Ljavax/xml/stream/XMLEventReader;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/ZephyrParserFactory;
    move-object v1, p1

    .local v1, "systemId":Ljava/lang/String;
    move-object v2, p2

    .local v2, "inputstream":Ljava/io/InputStream;
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/xml/stream/ZephyrParserFactory;->initEventReader()V

    .line 113
    new-instance v3, Lcom/sun/xml/stream/XMLEventReaderImpl;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Lcom/sun/xml/stream/ZephyrParserFactory;->createXMLStreamReader(Ljava/lang/String;Ljava/io/InputStream;)Ljavax/xml/stream/XMLStreamReader;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/sun/xml/stream/XMLEventReaderImpl;-><init>(Ljavax/xml/stream/XMLStreamReader;)V

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/xml/stream/ZephyrParserFactory;
    return-object v0
.end method

.method public createXMLEventReader(Ljava/lang/String;Ljava/io/Reader;)Ljavax/xml/stream/XMLEventReader;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/ZephyrParserFactory;
    move-object v1, p1

    .local v1, "systemId":Ljava/lang/String;
    move-object v2, p2

    .local v2, "reader":Ljava/io/Reader;
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/xml/stream/ZephyrParserFactory;->initEventReader()V

    .line 125
    new-instance v3, Lcom/sun/xml/stream/XMLEventReaderImpl;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Lcom/sun/xml/stream/ZephyrParserFactory;->createXMLStreamReader(Ljava/lang/String;Ljava/io/Reader;)Ljavax/xml/stream/XMLStreamReader;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/sun/xml/stream/XMLEventReaderImpl;-><init>(Ljavax/xml/stream/XMLStreamReader;)V

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/xml/stream/ZephyrParserFactory;
    return-object v0
.end method

.method public createXMLEventReader(Ljavax/xml/stream/XMLStreamReader;)Ljavax/xml/stream/XMLEventReader;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/ZephyrParserFactory;
    move-object v1, p1

    .local v1, "reader":Ljavax/xml/stream/XMLStreamReader;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/xml/stream/ZephyrParserFactory;->initEventReader()V

    .line 141
    new-instance v2, Lcom/sun/xml/stream/XMLEventReaderImpl;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/xml/stream/XMLEventReaderImpl;-><init>(Ljavax/xml/stream/XMLStreamReader;)V

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/xml/stream/ZephyrParserFactory;
    return-object v0
.end method

.method public createXMLEventReader(Ljavax/xml/transform/Source;)Ljavax/xml/stream/XMLEventReader;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/ZephyrParserFactory;
    move-object v1, p1

    .local v1, "source":Ljavax/xml/transform/Source;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/xml/stream/ZephyrParserFactory;->initEventReader()V

    .line 107
    new-instance v2, Lcom/sun/xml/stream/XMLEventReaderImpl;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/sun/xml/stream/ZephyrParserFactory;->createXMLStreamReader(Ljavax/xml/transform/Source;)Ljavax/xml/stream/XMLStreamReader;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sun/xml/stream/XMLEventReaderImpl;-><init>(Ljavax/xml/stream/XMLStreamReader;)V

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/xml/stream/ZephyrParserFactory;
    return-object v0
.end method

.method public createXMLStreamReader(Ljava/io/InputStream;)Ljavax/xml/stream/XMLStreamReader;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/ZephyrParserFactory;
    move-object v1, p1

    .local v1, "inputStream":Ljava/io/InputStream;
    move-object v2, v0

    const/4 v3, 0x0

    move-object v4, v1

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/sun/xml/stream/ZephyrParserFactory;->createXMLStreamReader(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljavax/xml/stream/XMLStreamReader;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/xml/stream/ZephyrParserFactory;
    return-object v0
.end method

.method public createXMLStreamReader(Ljava/io/InputStream;Ljava/lang/String;)Ljavax/xml/stream/XMLStreamReader;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 168
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/ZephyrParserFactory;
    move-object v1, p1

    .local v1, "inputStream":Ljava/io/InputStream;
    move-object v2, p2

    .local v2, "encoding":Ljava/lang/String;
    move-object v3, v0

    const/4 v4, 0x0

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v3, v4, v5, v6}, Lcom/sun/xml/stream/ZephyrParserFactory;->createXMLStreamReader(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljavax/xml/stream/XMLStreamReader;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/xml/stream/ZephyrParserFactory;
    return-object v0
.end method

.method public createXMLStreamReader(Ljava/io/Reader;)Ljavax/xml/stream/XMLStreamReader;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/ZephyrParserFactory;
    move-object v1, p1

    .local v1, "reader":Ljava/io/Reader;
    move-object v2, v0

    const/4 v3, 0x0

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sun/xml/stream/ZephyrParserFactory;->createXMLStreamReader(Ljava/lang/String;Ljava/io/Reader;)Ljavax/xml/stream/XMLStreamReader;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/xml/stream/ZephyrParserFactory;
    return-object v0
.end method

.method public createXMLStreamReader(Ljava/lang/String;Ljava/io/InputStream;)Ljavax/xml/stream/XMLStreamReader;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/ZephyrParserFactory;
    move-object v1, p1

    .local v1, "systemId":Ljava/lang/String;
    move-object v2, p2

    .local v2, "inputStream":Ljava/io/InputStream;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/sun/xml/stream/ZephyrParserFactory;->createXMLStreamReader(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljavax/xml/stream/XMLStreamReader;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/xml/stream/ZephyrParserFactory;
    return-object v0
.end method

.method public createXMLStreamReader(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljavax/xml/stream/XMLStreamReader;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 175
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/ZephyrParserFactory;
    move-object v1, p1

    .local v1, "systemId":Ljava/lang/String;
    move-object v2, p2

    .local v2, "inputStream":Ljava/io/InputStream;
    move-object/from16 v3, p3

    .local v3, "encoding":Ljava/lang/String;
    new-instance v5, Lorg/apache/xerces/xni/parser/XMLInputSource;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    const/4 v7, 0x0

    move-object v8, v1

    const/4 v9, 0x0

    move-object v10, v2

    move-object v11, v3

    invoke-direct/range {v6 .. v11}, Lorg/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V

    move-object v4, v5

    .line 176
    .local v4, "inputSource":Lorg/apache/xerces/xni/parser/XMLInputSource;
    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v5, v6}, Lcom/sun/xml/stream/ZephyrParserFactory;->getXMLStreamReaderImpl(Lorg/apache/xerces/xni/parser/XMLInputSource;)Ljavax/xml/stream/XMLStreamReader;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/xml/stream/ZephyrParserFactory;
    return-object v0
.end method

.method public createXMLStreamReader(Ljava/lang/String;Ljava/io/Reader;)Ljavax/xml/stream/XMLStreamReader;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/ZephyrParserFactory;
    move-object v1, p1

    .local v1, "systemId":Ljava/lang/String;
    move-object v2, p2

    .local v2, "reader":Ljava/io/Reader;
    new-instance v4, Lorg/apache/xerces/xni/parser/XMLInputSource;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    const/4 v6, 0x0

    move-object v7, v1

    const/4 v8, 0x0

    move-object v9, v2

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v10}, Lorg/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/Reader;Ljava/lang/String;)V

    move-object v3, v4

    .line 150
    .local v3, "inputSource":Lorg/apache/xerces/xni/parser/XMLInputSource;
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Lcom/sun/xml/stream/ZephyrParserFactory;->getXMLStreamReaderImpl(Lorg/apache/xerces/xni/parser/XMLInputSource;)Ljavax/xml/stream/XMLStreamReader;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/xml/stream/ZephyrParserFactory;
    return-object v0
.end method

.method public createXMLStreamReader(Ljavax/xml/transform/Source;)Ljavax/xml/stream/XMLStreamReader;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/ZephyrParserFactory;
    move-object v1, p1

    .local v1, "source":Ljavax/xml/transform/Source;
    new-instance v2, Lcom/sun/xml/stream/XMLReaderImpl;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/sun/xml/stream/ZephyrParserFactory;->jaxpSourcetoXMLInputSource(Ljavax/xml/transform/Source;)Lorg/apache/xerces/xni/parser/XMLInputSource;

    move-result-object v4

    new-instance v5, Lcom/sun/xml/stream/PropertyManager;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/ZephyrParserFactory;->fPropertyManager:Lcom/sun/xml/stream/PropertyManager;

    invoke-direct {v6, v7}, Lcom/sun/xml/stream/PropertyManager;-><init>(Lcom/sun/xml/stream/PropertyManager;)V

    invoke-direct {v3, v4, v5}, Lcom/sun/xml/stream/XMLReaderImpl;-><init>(Lorg/apache/xerces/xni/parser/XMLInputSource;Lcom/sun/xml/stream/PropertyManager;)V

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/xml/stream/ZephyrParserFactory;
    return-object v0
.end method

.method public getEventAllocator()Ljavax/xml/stream/util/XMLEventAllocator;
    .locals 3

    .prologue
    .line 180
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/ZephyrParserFactory;
    move-object v1, v0

    const-string v2, "javax.xml.stream.allocator"

    invoke-virtual {v1, v2}, Lcom/sun/xml/stream/ZephyrParserFactory;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/xml/stream/util/XMLEventAllocator;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/ZephyrParserFactory;
    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 230
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/ZephyrParserFactory;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 231
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Property not supported"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 233
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/ZephyrParserFactory;->fPropertyManager:Lcom/sun/xml/stream/PropertyManager;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/PropertyManager;->containsProperty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 234
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/ZephyrParserFactory;->fPropertyManager:Lcom/sun/xml/stream/PropertyManager;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/PropertyManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/xml/stream/ZephyrParserFactory;
    return-object v0

    .line 235
    .restart local v0    # "this":Lcom/sun/xml/stream/ZephyrParserFactory;
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Property not supported"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getXMLReporter()Ljavax/xml/stream/XMLReporter;
    .locals 3

    .prologue
    .line 184
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/ZephyrParserFactory;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/ZephyrParserFactory;->fPropertyManager:Lcom/sun/xml/stream/PropertyManager;

    const-string v2, "javax.xml.stream.reporter"

    invoke-virtual {v1, v2}, Lcom/sun/xml/stream/PropertyManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/xml/stream/XMLReporter;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/ZephyrParserFactory;
    return-object v0
.end method

.method public getXMLResolver()Ljavax/xml/stream/XMLResolver;
    .locals 4

    .prologue
    .line 188
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/ZephyrParserFactory;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/ZephyrParserFactory;->fPropertyManager:Lcom/sun/xml/stream/PropertyManager;

    const-string v3, "javax.xml.stream.resolver"

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/PropertyManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    .line 189
    .local v1, "object":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Ljavax/xml/stream/XMLResolver;

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/xml/stream/ZephyrParserFactory;
    return-object v0
.end method

.method getXMLStreamReaderImpl(Lorg/apache/xerces/xni/parser/XMLInputSource;)Ljavax/xml/stream/XMLStreamReader;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 282
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/ZephyrParserFactory;
    move-object v1, p1

    .local v1, "inputSource":Lorg/apache/xerces/xni/parser/XMLInputSource;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/ZephyrParserFactory;->fTempReader:Lcom/sun/xml/stream/XMLReaderImpl;

    if-nez v2, :cond_0

    .line 283
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/xml/stream/ZephyrParserFactory;->fPropertyChanged:Z

    .line 285
    move-object v2, v0

    new-instance v3, Lcom/sun/xml/stream/XMLReaderImpl;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v1

    new-instance v6, Lcom/sun/xml/stream/PropertyManager;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/ZephyrParserFactory;->fPropertyManager:Lcom/sun/xml/stream/PropertyManager;

    invoke-direct {v7, v8}, Lcom/sun/xml/stream/PropertyManager;-><init>(Lcom/sun/xml/stream/PropertyManager;)V

    invoke-direct {v4, v5, v6}, Lcom/sun/xml/stream/XMLReaderImpl;-><init>(Lorg/apache/xerces/xni/parser/XMLInputSource;Lcom/sun/xml/stream/PropertyManager;)V

    move-object v9, v2

    move-object v10, v3

    move-object v2, v10

    move-object v3, v9

    move-object v4, v10

    iput-object v4, v3, Lcom/sun/xml/stream/ZephyrParserFactory;->fTempReader:Lcom/sun/xml/stream/XMLReaderImpl;

    move-object v0, v2

    .line 301
    .end local v0    # "this":Lcom/sun/xml/stream/ZephyrParserFactory;
    :goto_0
    return-object v0

    .line 290
    .restart local v0    # "this":Lcom/sun/xml/stream/ZephyrParserFactory;
    :cond_0
    move-object v2, v0

    iget-boolean v2, v2, Lcom/sun/xml/stream/ZephyrParserFactory;->fReuseInstance:Z

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/ZephyrParserFactory;->fTempReader:Lcom/sun/xml/stream/XMLReaderImpl;

    invoke-virtual {v2}, Lcom/sun/xml/stream/XMLReaderImpl;->canReuse()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-boolean v2, v2, Lcom/sun/xml/stream/ZephyrParserFactory;->fPropertyChanged:Z

    if-nez v2, :cond_1

    .line 293
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/ZephyrParserFactory;->fTempReader:Lcom/sun/xml/stream/XMLReaderImpl;

    invoke-virtual {v2}, Lcom/sun/xml/stream/XMLReaderImpl;->reset()V

    .line 294
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/ZephyrParserFactory;->fTempReader:Lcom/sun/xml/stream/XMLReaderImpl;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLReaderImpl;->setInputSource(Lorg/apache/xerces/xni/parser/XMLInputSource;)V

    .line 295
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/xml/stream/ZephyrParserFactory;->fPropertyChanged:Z

    .line 296
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/ZephyrParserFactory;->fTempReader:Lcom/sun/xml/stream/XMLReaderImpl;

    move-object v0, v2

    goto :goto_0

    .line 298
    :cond_1
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/xml/stream/ZephyrParserFactory;->fPropertyChanged:Z

    .line 301
    move-object v2, v0

    new-instance v3, Lcom/sun/xml/stream/XMLReaderImpl;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v1

    new-instance v6, Lcom/sun/xml/stream/PropertyManager;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/ZephyrParserFactory;->fPropertyManager:Lcom/sun/xml/stream/PropertyManager;

    invoke-direct {v7, v8}, Lcom/sun/xml/stream/PropertyManager;-><init>(Lcom/sun/xml/stream/PropertyManager;)V

    invoke-direct {v4, v5, v6}, Lcom/sun/xml/stream/XMLReaderImpl;-><init>(Lorg/apache/xerces/xni/parser/XMLInputSource;Lcom/sun/xml/stream/PropertyManager;)V

    move-object v9, v2

    move-object v10, v3

    move-object v2, v10

    move-object v3, v9

    move-object v4, v10

    iput-object v4, v3, Lcom/sun/xml/stream/ZephyrParserFactory;->fTempReader:Lcom/sun/xml/stream/XMLReaderImpl;

    move-object v0, v2

    goto :goto_0
.end method

.method initEventReader()V
    .locals 3

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/ZephyrParserFactory;
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sun/xml/stream/ZephyrParserFactory;->fPropertyChanged:Z

    .line 86
    return-void
.end method

.method public isPropertySupported(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 244
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/ZephyrParserFactory;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 245
    const/4 v2, 0x0

    move v0, v2

    .line 247
    .end local v0    # "this":Lcom/sun/xml/stream/ZephyrParserFactory;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/sun/xml/stream/ZephyrParserFactory;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/ZephyrParserFactory;->fPropertyManager:Lcom/sun/xml/stream/PropertyManager;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/PropertyManager;->containsProperty(Ljava/lang/String;)Z

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method jaxpSourcetoXMLInputSource(Ljavax/xml/transform/Source;)Lorg/apache/xerces/xni/parser/XMLInputSource;
    .locals 7

    .prologue
    .line 307
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/ZephyrParserFactory;
    move-object v1, p1

    .local v1, "source":Ljavax/xml/transform/Source;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot create XMLStreamReader or XMLEventReader from a "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    .line 309
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setEventAllocator(Ljavax/xml/stream/util/XMLEventAllocator;)V
    .locals 5

    .prologue
    .line 254
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/ZephyrParserFactory;
    move-object v1, p1

    .local v1, "allocator":Ljavax/xml/stream/util/XMLEventAllocator;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/ZephyrParserFactory;->fPropertyManager:Lcom/sun/xml/stream/PropertyManager;

    const-string v3, "javax.xml.stream.allocator"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sun/xml/stream/PropertyManager;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 255
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 266
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/ZephyrParserFactory;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/ZephyrParserFactory;->fPropertyManager:Lcom/sun/xml/stream/PropertyManager;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/xml/stream/PropertyManager;->containsProperty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 267
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Property "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not supported"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 269
    :cond_1
    move-object v3, v1

    const-string v4, "reuse-instance"

    if-eq v3, v4, :cond_2

    move-object v3, v1

    const-string v4, "reuse-instance"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 270
    :cond_2
    move-object v3, v0

    move-object v4, v2

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, v3, Lcom/sun/xml/stream/ZephyrParserFactory;->fReuseInstance:Z

    .line 277
    :goto_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/ZephyrParserFactory;->fPropertyManager:Lcom/sun/xml/stream/PropertyManager;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/xml/stream/PropertyManager;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 278
    return-void

    .line 274
    :cond_3
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/xml/stream/ZephyrParserFactory;->fPropertyChanged:Z

    goto :goto_0
.end method

.method public setXMLReporter(Ljavax/xml/stream/XMLReporter;)V
    .locals 5

    .prologue
    .line 194
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/ZephyrParserFactory;
    move-object v1, p1

    .local v1, "xmlreporter":Ljavax/xml/stream/XMLReporter;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/ZephyrParserFactory;->fPropertyManager:Lcom/sun/xml/stream/PropertyManager;

    const-string v3, "javax.xml.stream.reporter"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sun/xml/stream/PropertyManager;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 195
    return-void
.end method

.method public setXMLResolver(Ljavax/xml/stream/XMLResolver;)V
    .locals 5

    .prologue
    .line 198
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/ZephyrParserFactory;
    move-object v1, p1

    .local v1, "xmlresolver":Ljavax/xml/stream/XMLResolver;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/ZephyrParserFactory;->fPropertyManager:Lcom/sun/xml/stream/PropertyManager;

    const-string v3, "javax.xml.stream.resolver"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sun/xml/stream/PropertyManager;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 199
    return-void
.end method
