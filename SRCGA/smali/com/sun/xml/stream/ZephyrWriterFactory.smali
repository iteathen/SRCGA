.class public Lcom/sun/xml/stream/ZephyrWriterFactory;
.super Ljavax/xml/stream/XMLOutputFactory;
.source "ZephyrWriterFactory.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field private fPropertyChanged:Z

.field private fPropertyManager:Lcom/sun/xml/stream/PropertyManager;

.field fReuseInstance:Z

.field private fStreamWriter:Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/ZephyrWriterFactory;
    move-object v1, v0

    invoke-direct {v1}, Ljavax/xml/stream/XMLOutputFactory;-><init>()V

    .line 76
    move-object v1, v0

    new-instance v2, Lcom/sun/xml/stream/PropertyManager;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Lcom/sun/xml/stream/PropertyManager;-><init>(I)V

    iput-object v2, v1, Lcom/sun/xml/stream/ZephyrWriterFactory;->fPropertyManager:Lcom/sun/xml/stream/PropertyManager;

    .line 79
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/xml/stream/ZephyrWriterFactory;->fStreamWriter:Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;

    .line 84
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/xml/stream/ZephyrWriterFactory;->fReuseInstance:Z

    .line 87
    return-void
.end method

.method private toStreamResult(Ljava/io/OutputStream;Ljava/io/Writer;Ljava/lang/String;)Ljavax/xml/transform/stream/StreamResult;
    .locals 8

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/ZephyrWriterFactory;
    move-object v1, p1

    .local v1, "os":Ljava/io/OutputStream;
    move-object v2, p2

    .local v2, "writer":Ljava/io/Writer;
    move-object v3, p3

    .local v3, "systemId":Ljava/lang/String;
    new-instance v5, Ljavax/xml/transform/stream/StreamResult;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljavax/xml/transform/stream/StreamResult;-><init>()V

    move-object v4, v5

    .line 172
    .local v4, "sr":Ljavax/xml/transform/stream/StreamResult;
    move-object v5, v4

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljavax/xml/transform/stream/StreamResult;->setOutputStream(Ljava/io/OutputStream;)V

    .line 173
    move-object v5, v4

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljavax/xml/transform/stream/StreamResult;->setWriter(Ljava/io/Writer;)V

    .line 174
    move-object v5, v4

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljavax/xml/transform/stream/StreamResult;->setSystemId(Ljava/lang/String;)V

    .line 175
    move-object v5, v4

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/xml/stream/ZephyrWriterFactory;
    return-object v0
.end method


# virtual methods
.method public createXMLEventWriter(Ljava/io/OutputStream;)Ljavax/xml/stream/XMLEventWriter;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/ZephyrWriterFactory;
    move-object v1, p1

    .local v1, "outputStream":Ljava/io/OutputStream;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sun/xml/stream/ZephyrWriterFactory;->createXMLEventWriter(Ljava/io/OutputStream;Ljava/lang/String;)Ljavax/xml/stream/XMLEventWriter;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/xml/stream/ZephyrWriterFactory;
    return-object v0
.end method

.method public createXMLEventWriter(Ljava/io/OutputStream;Ljava/lang/String;)Ljavax/xml/stream/XMLEventWriter;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/ZephyrWriterFactory;
    move-object v1, p1

    .local v1, "outputStream":Ljava/io/OutputStream;
    move-object v2, p2

    .local v2, "encoding":Ljava/lang/String;
    new-instance v3, Lcom/sun/xml/stream/writers/XMLEventWriterImpl;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Lcom/sun/xml/stream/ZephyrWriterFactory;->createXMLStreamWriter(Ljava/io/OutputStream;Ljava/lang/String;)Ljavax/xml/stream/XMLStreamWriter;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/sun/xml/stream/writers/XMLEventWriterImpl;-><init>(Ljavax/xml/stream/XMLStreamWriter;)V

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/xml/stream/ZephyrWriterFactory;
    return-object v0
.end method

.method public createXMLEventWriter(Ljava/io/Writer;)Ljavax/xml/stream/XMLEventWriter;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/ZephyrWriterFactory;
    move-object v1, p1

    .local v1, "writer":Ljava/io/Writer;
    new-instance v2, Lcom/sun/xml/stream/writers/XMLEventWriterImpl;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/sun/xml/stream/ZephyrWriterFactory;->createXMLStreamWriter(Ljava/io/Writer;)Ljavax/xml/stream/XMLStreamWriter;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sun/xml/stream/writers/XMLEventWriterImpl;-><init>(Ljavax/xml/stream/XMLStreamWriter;)V

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/xml/stream/ZephyrWriterFactory;
    return-object v0
.end method

.method public createXMLEventWriter(Ljavax/xml/transform/Result;)Ljavax/xml/stream/XMLEventWriter;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/ZephyrWriterFactory;
    move-object v1, p1

    .local v1, "result":Ljavax/xml/transform/Result;
    new-instance v2, Lcom/sun/xml/stream/writers/XMLEventWriterImpl;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/sun/xml/stream/ZephyrWriterFactory;->createXMLStreamWriter(Ljavax/xml/transform/Result;)Ljavax/xml/stream/XMLStreamWriter;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sun/xml/stream/writers/XMLEventWriterImpl;-><init>(Ljavax/xml/stream/XMLStreamWriter;)V

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/xml/stream/ZephyrWriterFactory;
    return-object v0
.end method

.method public createXMLStreamWriter(Ljava/io/OutputStream;)Ljavax/xml/stream/XMLStreamWriter;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/ZephyrWriterFactory;
    move-object v1, p1

    .local v1, "outputStream":Ljava/io/OutputStream;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sun/xml/stream/ZephyrWriterFactory;->createXMLStreamWriter(Ljava/io/OutputStream;Ljava/lang/String;)Ljavax/xml/stream/XMLStreamWriter;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/xml/stream/ZephyrWriterFactory;
    return-object v0
.end method

.method public createXMLStreamWriter(Ljava/io/OutputStream;Ljava/lang/String;)Ljavax/xml/stream/XMLStreamWriter;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/ZephyrWriterFactory;
    move-object v1, p1

    .local v1, "outputStream":Ljava/io/OutputStream;
    move-object v2, p2

    .local v2, "encoding":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v0

    move-object v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/xml/stream/ZephyrWriterFactory;->toStreamResult(Ljava/io/OutputStream;Ljava/io/Writer;Ljava/lang/String;)Ljavax/xml/transform/stream/StreamResult;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/xml/stream/ZephyrWriterFactory;->createXMLStreamWriter(Ljavax/xml/transform/stream/StreamResult;Ljava/lang/String;)Ljavax/xml/stream/XMLStreamWriter;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/xml/stream/ZephyrWriterFactory;
    return-object v0
.end method

.method public createXMLStreamWriter(Ljava/io/Writer;)Ljavax/xml/stream/XMLStreamWriter;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/ZephyrWriterFactory;
    move-object v1, p1

    .local v1, "writer":Ljava/io/Writer;
    move-object v2, v0

    move-object v3, v0

    const/4 v4, 0x0

    move-object v5, v1

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/xml/stream/ZephyrWriterFactory;->toStreamResult(Ljava/io/OutputStream;Ljava/io/Writer;Ljava/lang/String;)Ljavax/xml/transform/stream/StreamResult;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sun/xml/stream/ZephyrWriterFactory;->createXMLStreamWriter(Ljavax/xml/transform/stream/StreamResult;Ljava/lang/String;)Ljavax/xml/stream/XMLStreamWriter;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/xml/stream/ZephyrWriterFactory;
    return-object v0
.end method

.method public createXMLStreamWriter(Ljavax/xml/transform/Result;)Ljavax/xml/stream/XMLStreamWriter;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/ZephyrWriterFactory;
    move-object v1, p1

    .local v1, "result":Ljavax/xml/transform/Result;
    move-object v2, v1

    instance-of v2, v2, Ljavax/xml/transform/stream/StreamResult;

    if-eqz v2, :cond_0

    .line 108
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavax/xml/transform/stream/StreamResult;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sun/xml/stream/ZephyrWriterFactory;->createXMLStreamWriter(Ljavax/xml/transform/stream/StreamResult;Ljava/lang/String;)Ljavax/xml/stream/XMLStreamWriter;

    move-result-object v2

    move-object v0, v2

    .line 112
    .end local v0    # "this":Lcom/sun/xml/stream/ZephyrWriterFactory;
    :goto_0
    return-object v0

    .line 109
    .restart local v0    # "this":Lcom/sun/xml/stream/ZephyrWriterFactory;
    :cond_0
    move-object v2, v1

    instance-of v2, v2, Ljavax/xml/transform/dom/DOMResult;

    if-eqz v2, :cond_1

    .line 110
    new-instance v2, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v1

    check-cast v4, Ljavax/xml/transform/dom/DOMResult;

    invoke-direct {v3, v4}, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;-><init>(Ljavax/xml/transform/dom/DOMResult;)V

    move-object v0, v2

    goto :goto_0

    .line 111
    :cond_1
    move-object v2, v1

    instance-of v2, v2, Ljavax/xml/transform/Result;

    if-eqz v2, :cond_2

    .line 112
    move-object v2, v0

    new-instance v3, Ljavax/xml/transform/stream/StreamResult;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-interface {v5}, Ljavax/xml/transform/Result;->getSystemId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/ZephyrWriterFactory;->createXMLStreamWriter(Ljavax/xml/transform/Result;)Ljavax/xml/stream/XMLStreamWriter;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 114
    :cond_2
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "result of type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not supported"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method createXMLStreamWriter(Ljavax/xml/transform/stream/StreamResult;Ljava/lang/String;)Ljavax/xml/stream/XMLStreamWriter;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 182
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/ZephyrWriterFactory;
    move-object v1, p1

    .local v1, "sr":Ljavax/xml/transform/stream/StreamResult;
    move-object/from16 v2, p2

    .local v2, "encoding":Ljava/lang/String;
    move-object v4, v0

    :try_start_0
    iget-boolean v4, v4, Lcom/sun/xml/stream/ZephyrWriterFactory;->fReuseInstance:Z

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/ZephyrWriterFactory;->fStreamWriter:Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/ZephyrWriterFactory;->fStreamWriter:Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;

    invoke-virtual {v4}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->canReuse()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-boolean v4, v4, Lcom/sun/xml/stream/ZephyrWriterFactory;->fPropertyChanged:Z

    if-nez v4, :cond_0

    .line 183
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/ZephyrWriterFactory;->fStreamWriter:Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;

    invoke-virtual {v4}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->reset()V

    .line 184
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/ZephyrWriterFactory;->fStreamWriter:Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->setOutput(Ljavax/xml/transform/stream/StreamResult;Ljava/lang/String;)V

    .line 186
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/ZephyrWriterFactory;->fStreamWriter:Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;

    move-object v0, v4

    .line 188
    .end local v0    # "this":Lcom/sun/xml/stream/ZephyrWriterFactory;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/sun/xml/stream/ZephyrWriterFactory;
    :cond_0
    move-object v4, v0

    new-instance v5, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v1

    move-object v8, v2

    new-instance v9, Lcom/sun/xml/stream/PropertyManager;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    move-object v11, v0

    iget-object v11, v11, Lcom/sun/xml/stream/ZephyrWriterFactory;->fPropertyManager:Lcom/sun/xml/stream/PropertyManager;

    invoke-direct {v10, v11}, Lcom/sun/xml/stream/PropertyManager;-><init>(Lcom/sun/xml/stream/PropertyManager;)V

    invoke-direct {v6, v7, v8, v9}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;-><init>(Ljavax/xml/transform/stream/StreamResult;Ljava/lang/String;Lcom/sun/xml/stream/PropertyManager;)V

    move-object v12, v4

    move-object v13, v5

    move-object v4, v13

    move-object v5, v12

    move-object v6, v13

    iput-object v6, v5, Lcom/sun/xml/stream/ZephyrWriterFactory;->fStreamWriter:Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    goto :goto_0

    .line 190
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 191
    .local v3, "io":Ljava/io/IOException;
    new-instance v4, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    move-object v6, v3

    invoke-direct {v5, v6}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/ZephyrWriterFactory;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 131
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Property not supported"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 133
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/ZephyrWriterFactory;->fPropertyManager:Lcom/sun/xml/stream/PropertyManager;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/PropertyManager;->containsProperty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 134
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/ZephyrWriterFactory;->fPropertyManager:Lcom/sun/xml/stream/PropertyManager;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/PropertyManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/xml/stream/ZephyrWriterFactory;
    return-object v0

    .line 135
    .restart local v0    # "this":Lcom/sun/xml/stream/ZephyrWriterFactory;
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Property not supported"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public isPropertySupported(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/ZephyrWriterFactory;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 140
    const/4 v2, 0x0

    move v0, v2

    .line 143
    .end local v0    # "this":Lcom/sun/xml/stream/ZephyrWriterFactory;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/sun/xml/stream/ZephyrWriterFactory;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/ZephyrWriterFactory;->fPropertyManager:Lcom/sun/xml/stream/PropertyManager;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/PropertyManager;->containsProperty(Ljava/lang/String;)Z

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 148
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/ZephyrWriterFactory;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/ZephyrWriterFactory;->fPropertyManager:Lcom/sun/xml/stream/PropertyManager;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/xml/stream/PropertyManager;->containsProperty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 149
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

    const-string v6, "is not supported"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 151
    :cond_1
    move-object v3, v1

    const-string v4, "reuse-instance"

    if-eq v3, v4, :cond_2

    move-object v3, v1

    const-string v4, "reuse-instance"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 152
    :cond_2
    move-object v3, v0

    move-object v4, v2

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, v3, Lcom/sun/xml/stream/ZephyrWriterFactory;->fReuseInstance:Z

    .line 157
    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/xml/stream/ZephyrWriterFactory;->fReuseInstance:Z

    if-eqz v3, :cond_4

    .line 158
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

    const-string v6, " is not supported: XMLStreamWriters are not Thread safe"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 165
    :cond_3
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/xml/stream/ZephyrWriterFactory;->fPropertyChanged:Z

    .line 167
    :cond_4
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/ZephyrWriterFactory;->fPropertyManager:Lcom/sun/xml/stream/PropertyManager;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/xml/stream/PropertyManager;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 168
    return-void
.end method
