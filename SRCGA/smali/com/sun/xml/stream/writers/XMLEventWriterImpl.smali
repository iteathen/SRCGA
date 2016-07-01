.class public Lcom/sun/xml/stream/writers/XMLEventWriterImpl;
.super Ljava/lang/Object;
.source "XMLEventWriterImpl.java"

# interfaces
.implements Ljavax/xml/stream/XMLEventWriter;


# static fields
.field private static final DEBUG:Z


# instance fields
.field private fStreamWriter:Ljavax/xml/stream/XMLStreamWriter;


# direct methods
.method public constructor <init>(Ljavax/xml/stream/XMLStreamWriter;)V
    .locals 4

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLEventWriterImpl;
    move-object v1, p1

    .local v1, "streamWriter":Ljavax/xml/stream/XMLStreamWriter;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 78
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/xml/stream/writers/XMLEventWriterImpl;->fStreamWriter:Ljavax/xml/stream/XMLStreamWriter;

    .line 79
    return-void
.end method


# virtual methods
.method public add(Ljavax/xml/stream/XMLEventReader;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLEventWriterImpl;
    move-object v1, p1

    .local v1, "xMLEventReader":Ljavax/xml/stream/XMLEventReader;
    move-object v2, v1

    if-nez v2, :cond_0

    new-instance v2, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Event reader shouldn\'t be null"

    invoke-direct {v3, v4}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v2

    .line 88
    :cond_0
    :goto_0
    move-object v2, v1

    invoke-interface {v2}, Ljavax/xml/stream/XMLEventReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 89
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Ljavax/xml/stream/XMLEventReader;->nextEvent()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/writers/XMLEventWriterImpl;->add(Ljavax/xml/stream/events/XMLEvent;)V

    goto :goto_0

    .line 91
    :cond_1
    return-void
.end method

.method public add(Ljavax/xml/stream/events/XMLEvent;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLEventWriterImpl;
    move-object v1, p1

    .local v1, "xMLEvent":Ljavax/xml/stream/events/XMLEvent;
    move-object v9, v1

    invoke-interface {v9}, Ljavax/xml/stream/events/XMLEvent;->getEventType()I

    move-result v9

    move v2, v9

    .line 100
    .local v2, "type":I
    move v9, v2

    packed-switch v9, :pswitch_data_0

    .line 215
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 102
    :pswitch_1
    move-object v9, v1

    check-cast v9, Ljavax/xml/stream/events/DTD;

    move-object v3, v9

    .line 104
    .local v3, "dtd":Ljavax/xml/stream/events/DTD;
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/writers/XMLEventWriterImpl;->fStreamWriter:Ljavax/xml/stream/XMLStreamWriter;

    move-object v10, v3

    invoke-interface {v10}, Ljavax/xml/stream/events/DTD;->getDocumentTypeDeclaration()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljavax/xml/stream/XMLStreamWriter;->writeDTD(Ljava/lang/String;)V

    .line 105
    goto :goto_0

    .line 108
    .end local v3    # "dtd":Ljavax/xml/stream/events/DTD;
    :pswitch_2
    move-object v9, v1

    check-cast v9, Ljavax/xml/stream/events/StartDocument;

    move-object v3, v9

    .line 111
    .local v3, "startDocument":Ljavax/xml/stream/events/StartDocument;
    move-object v9, v0

    :try_start_0
    iget-object v9, v9, Lcom/sun/xml/stream/writers/XMLEventWriterImpl;->fStreamWriter:Ljavax/xml/stream/XMLStreamWriter;

    move-object v10, v3

    invoke-interface {v10}, Ljavax/xml/stream/events/StartDocument;->getCharacterEncodingScheme()Ljava/lang/String;

    move-result-object v10

    move-object v11, v3

    invoke-interface {v11}, Ljavax/xml/stream/events/StartDocument;->getVersion()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Ljavax/xml/stream/XMLStreamWriter;->writeStartDocument(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    goto :goto_0

    .line 112
    :catch_0
    move-exception v9

    move-object v4, v9

    .line 113
    .local v4, "e":Ljavax/xml/stream/XMLStreamException;
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/writers/XMLEventWriterImpl;->fStreamWriter:Ljavax/xml/stream/XMLStreamWriter;

    move-object v10, v3

    invoke-interface {v10}, Ljavax/xml/stream/events/StartDocument;->getVersion()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljavax/xml/stream/XMLStreamWriter;->writeStartDocument(Ljava/lang/String;)V

    .line 115
    goto :goto_0

    .line 118
    .end local v3    # "startDocument":Ljavax/xml/stream/events/StartDocument;
    .end local v4    # "e":Ljavax/xml/stream/XMLStreamException;
    :pswitch_3
    move-object v9, v1

    invoke-interface {v9}, Ljavax/xml/stream/events/XMLEvent;->asStartElement()Ljavax/xml/stream/events/StartElement;

    move-result-object v9

    move-object v3, v9

    .line 120
    .local v3, "startElement":Ljavax/xml/stream/events/StartElement;
    move-object v9, v3

    invoke-interface {v9}, Ljavax/xml/stream/events/StartElement;->getName()Ljavax/xml/namespace/QName;

    move-result-object v9

    move-object v4, v9

    .line 121
    .local v4, "qname":Ljavax/xml/namespace/QName;
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/writers/XMLEventWriterImpl;->fStreamWriter:Ljavax/xml/stream/XMLStreamWriter;

    move-object v10, v4

    invoke-virtual {v10}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v10

    move-object v11, v4

    invoke-virtual {v11}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v11

    move-object v12, v4

    invoke-virtual {v12}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9, v10, v11, v12}, Ljavax/xml/stream/XMLStreamWriter;->writeStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    move-object v9, v3

    invoke-interface {v9}, Ljavax/xml/stream/events/StartElement;->getNamespaces()Ljava/util/Iterator;

    move-result-object v9

    move-object v5, v9

    .line 130
    .local v5, "iterator":Ljava/util/Iterator;
    :goto_1
    move-object v9, v5

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 131
    move-object v9, v5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavax/xml/stream/events/Namespace;

    move-object v6, v9

    .line 132
    .local v6, "namespace":Ljavax/xml/stream/events/Namespace;
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/writers/XMLEventWriterImpl;->fStreamWriter:Ljavax/xml/stream/XMLStreamWriter;

    move-object v10, v6

    invoke-interface {v10}, Ljavax/xml/stream/events/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v10

    move-object v11, v6

    invoke-interface {v11}, Ljavax/xml/stream/events/Namespace;->getNamespaceURI()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Ljavax/xml/stream/XMLStreamWriter;->writeNamespace(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    goto :goto_1

    .line 135
    .end local v6    # "namespace":Ljavax/xml/stream/events/Namespace;
    :cond_1
    move-object v9, v3

    invoke-interface {v9}, Ljavax/xml/stream/events/StartElement;->getAttributes()Ljava/util/Iterator;

    move-result-object v9

    move-object v6, v9

    .line 136
    .local v6, "attributes":Ljava/util/Iterator;
    :goto_2
    move-object v9, v6

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 137
    move-object v9, v6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavax/xml/stream/events/Attribute;

    move-object v7, v9

    .line 138
    .local v7, "attribute":Ljavax/xml/stream/events/Attribute;
    move-object v9, v7

    invoke-interface {v9}, Ljavax/xml/stream/events/Attribute;->getName()Ljavax/xml/namespace/QName;

    move-result-object v9

    move-object v8, v9

    .line 139
    .local v8, "aqname":Ljavax/xml/namespace/QName;
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/writers/XMLEventWriterImpl;->fStreamWriter:Ljavax/xml/stream/XMLStreamWriter;

    move-object v10, v8

    invoke-virtual {v10}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v10

    move-object v11, v8

    invoke-virtual {v11}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v11

    move-object v12, v8

    invoke-virtual {v12}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v12

    move-object v13, v7

    invoke-interface {v13}, Ljavax/xml/stream/events/Attribute;->getValue()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v9, v10, v11, v12, v13}, Ljavax/xml/stream/XMLStreamWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    goto :goto_2

    .line 144
    .end local v3    # "startElement":Ljavax/xml/stream/events/StartElement;
    .end local v4    # "qname":Ljavax/xml/namespace/QName;
    .end local v5    # "iterator":Ljava/util/Iterator;
    .end local v6    # "attributes":Ljava/util/Iterator;
    .end local v7    # "attribute":Ljavax/xml/stream/events/Attribute;
    .end local v8    # "aqname":Ljavax/xml/namespace/QName;
    :pswitch_4
    move-object v9, v1

    check-cast v9, Ljavax/xml/stream/events/Namespace;

    move-object v3, v9

    .line 146
    .local v3, "namespace":Ljavax/xml/stream/events/Namespace;
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/writers/XMLEventWriterImpl;->fStreamWriter:Ljavax/xml/stream/XMLStreamWriter;

    move-object v10, v3

    invoke-interface {v10}, Ljavax/xml/stream/events/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v10

    move-object v11, v3

    invoke-interface {v11}, Ljavax/xml/stream/events/Namespace;->getNamespaceURI()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Ljavax/xml/stream/XMLStreamWriter;->writeNamespace(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    goto/16 :goto_0

    .line 150
    .end local v3    # "namespace":Ljavax/xml/stream/events/Namespace;
    :pswitch_5
    move-object v9, v1

    check-cast v9, Ljavax/xml/stream/events/Comment;

    move-object v3, v9

    .line 152
    .local v3, "comment":Ljavax/xml/stream/events/Comment;
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/writers/XMLEventWriterImpl;->fStreamWriter:Ljavax/xml/stream/XMLStreamWriter;

    move-object v10, v3

    invoke-interface {v10}, Ljavax/xml/stream/events/Comment;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljavax/xml/stream/XMLStreamWriter;->writeComment(Ljava/lang/String;)V

    .line 153
    goto/16 :goto_0

    .line 156
    .end local v3    # "comment":Ljavax/xml/stream/events/Comment;
    :pswitch_6
    move-object v9, v1

    check-cast v9, Ljavax/xml/stream/events/ProcessingInstruction;

    move-object v3, v9

    .line 158
    .local v3, "processingInstruction":Ljavax/xml/stream/events/ProcessingInstruction;
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/writers/XMLEventWriterImpl;->fStreamWriter:Ljavax/xml/stream/XMLStreamWriter;

    move-object v10, v3

    invoke-interface {v10}, Ljavax/xml/stream/events/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v10

    move-object v11, v3

    invoke-interface {v11}, Ljavax/xml/stream/events/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Ljavax/xml/stream/XMLStreamWriter;->writeProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    goto/16 :goto_0

    .line 162
    .end local v3    # "processingInstruction":Ljavax/xml/stream/events/ProcessingInstruction;
    :pswitch_7
    move-object v9, v1

    invoke-interface {v9}, Ljavax/xml/stream/events/XMLEvent;->asCharacters()Ljavax/xml/stream/events/Characters;

    move-result-object v9

    move-object v3, v9

    .line 165
    .local v3, "characters":Ljavax/xml/stream/events/Characters;
    move-object v9, v3

    invoke-interface {v9}, Ljavax/xml/stream/events/Characters;->isCData()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 166
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/writers/XMLEventWriterImpl;->fStreamWriter:Ljavax/xml/stream/XMLStreamWriter;

    move-object v10, v3

    invoke-interface {v10}, Ljavax/xml/stream/events/Characters;->getData()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljavax/xml/stream/XMLStreamWriter;->writeCData(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 169
    :cond_2
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/writers/XMLEventWriterImpl;->fStreamWriter:Ljavax/xml/stream/XMLStreamWriter;

    move-object v10, v3

    invoke-interface {v10}, Ljavax/xml/stream/events/Characters;->getData()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljavax/xml/stream/XMLStreamWriter;->writeCharacters(Ljava/lang/String;)V

    .line 171
    goto/16 :goto_0

    .line 174
    .end local v3    # "characters":Ljavax/xml/stream/events/Characters;
    :pswitch_8
    move-object v9, v1

    check-cast v9, Ljavax/xml/stream/events/EntityReference;

    move-object v3, v9

    .line 176
    .local v3, "entityReference":Ljavax/xml/stream/events/EntityReference;
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/writers/XMLEventWriterImpl;->fStreamWriter:Ljavax/xml/stream/XMLStreamWriter;

    move-object v10, v3

    invoke-interface {v10}, Ljavax/xml/stream/events/EntityReference;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljavax/xml/stream/XMLStreamWriter;->writeEntityRef(Ljava/lang/String;)V

    .line 177
    goto/16 :goto_0

    .line 180
    .end local v3    # "entityReference":Ljavax/xml/stream/events/EntityReference;
    :pswitch_9
    move-object v9, v1

    check-cast v9, Ljavax/xml/stream/events/Attribute;

    move-object v3, v9

    .line 182
    .local v3, "attribute":Ljavax/xml/stream/events/Attribute;
    move-object v9, v3

    invoke-interface {v9}, Ljavax/xml/stream/events/Attribute;->getName()Ljavax/xml/namespace/QName;

    move-result-object v9

    move-object v4, v9

    .line 183
    .restart local v4    # "qname":Ljavax/xml/namespace/QName;
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/writers/XMLEventWriterImpl;->fStreamWriter:Ljavax/xml/stream/XMLStreamWriter;

    move-object v10, v4

    invoke-virtual {v10}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v10

    move-object v11, v4

    invoke-virtual {v11}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v11

    move-object v12, v4

    invoke-virtual {v12}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v12

    move-object v13, v3

    invoke-interface {v13}, Ljavax/xml/stream/events/Attribute;->getValue()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v9, v10, v11, v12, v13}, Ljavax/xml/stream/XMLStreamWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    goto/16 :goto_0

    .line 189
    .end local v3    # "attribute":Ljavax/xml/stream/events/Attribute;
    .end local v4    # "qname":Ljavax/xml/namespace/QName;
    :pswitch_a
    move-object v9, v1

    check-cast v9, Ljavax/xml/stream/events/Characters;

    move-object v3, v9

    .line 191
    .local v3, "characters":Ljavax/xml/stream/events/Characters;
    move-object v9, v3

    invoke-interface {v9}, Ljavax/xml/stream/events/Characters;->isCData()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 192
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/writers/XMLEventWriterImpl;->fStreamWriter:Ljavax/xml/stream/XMLStreamWriter;

    move-object v10, v3

    invoke-interface {v10}, Ljavax/xml/stream/events/Characters;->getData()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljavax/xml/stream/XMLStreamWriter;->writeCData(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 203
    .end local v3    # "characters":Ljavax/xml/stream/events/Characters;
    :pswitch_b
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/writers/XMLEventWriterImpl;->fStreamWriter:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v9}, Ljavax/xml/stream/XMLStreamWriter;->writeEndElement()V

    .line 204
    goto/16 :goto_0

    .line 209
    :pswitch_c
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/writers/XMLEventWriterImpl;->fStreamWriter:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v9}, Ljavax/xml/stream/XMLStreamWriter;->writeEndDocument()V

    goto/16 :goto_0

    .line 100
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_b
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_c
        :pswitch_8
        :pswitch_9
        :pswitch_1
        :pswitch_a
        :pswitch_4
    .end packed-switch
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 222
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLEventWriterImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/writers/XMLEventWriterImpl;->fStreamWriter:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamWriter;->close()V

    .line 223
    return-void
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 231
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLEventWriterImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/writers/XMLEventWriterImpl;->fStreamWriter:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamWriter;->flush()V

    .line 232
    return-void
.end method

.method public getNamespaceContext()Ljavax/xml/namespace/NamespaceContext;
    .locals 2

    .prologue
    .line 239
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLEventWriterImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/writers/XMLEventWriterImpl;->fStreamWriter:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamWriter;->getNamespaceContext()Ljavax/xml/namespace/NamespaceContext;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/writers/XMLEventWriterImpl;
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
    .line 249
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLEventWriterImpl;
    move-object v1, p1

    .local v1, "namespaceURI":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/writers/XMLEventWriterImpl;->fStreamWriter:Ljavax/xml/stream/XMLStreamWriter;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavax/xml/stream/XMLStreamWriter;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/xml/stream/writers/XMLEventWriterImpl;
    return-object v0
.end method

.method public setDefaultNamespace(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 258
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLEventWriterImpl;
    move-object v1, p1

    .local v1, "uri":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/writers/XMLEventWriterImpl;->fStreamWriter:Ljavax/xml/stream/XMLStreamWriter;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavax/xml/stream/XMLStreamWriter;->setDefaultNamespace(Ljava/lang/String;)V

    .line 259
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
    .line 267
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLEventWriterImpl;
    move-object v1, p1

    .local v1, "namespaceContext":Ljavax/xml/namespace/NamespaceContext;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/writers/XMLEventWriterImpl;->fStreamWriter:Ljavax/xml/stream/XMLStreamWriter;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavax/xml/stream/XMLStreamWriter;->setNamespaceContext(Ljavax/xml/namespace/NamespaceContext;)V

    .line 268
    return-void
.end method

.method public setPrefix(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 277
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLEventWriterImpl;
    move-object v1, p1

    .local v1, "prefix":Ljava/lang/String;
    move-object v2, p2

    .local v2, "uri":Ljava/lang/String;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/XMLEventWriterImpl;->fStreamWriter:Ljavax/xml/stream/XMLStreamWriter;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Ljavax/xml/stream/XMLStreamWriter;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    return-void
.end method
