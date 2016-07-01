.class public Lcom/sun/xml/stream/XMLEventReaderImpl;
.super Ljava/lang/Object;
.source "XMLEventReaderImpl.java"

# interfaces
.implements Ljavax/xml/stream/XMLEventReader;


# instance fields
.field private fLastEvent:Ljavax/xml/stream/events/XMLEvent;

.field private fPeekedEvent:Ljavax/xml/stream/events/XMLEvent;

.field protected fXMLEventAllocator:Ljavax/xml/stream/util/XMLEventAllocator;

.field protected fXMLReader:Ljavax/xml/stream/XMLStreamReader;


# direct methods
.method public constructor <init>(Ljavax/xml/stream/XMLStreamReader;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEventReaderImpl;
    move-object v1, p1

    .local v1, "reader":Ljavax/xml/stream/XMLStreamReader;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 69
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/xml/stream/XMLEventReaderImpl;->fXMLReader:Ljavax/xml/stream/XMLStreamReader;

    .line 70
    move-object v2, v0

    move-object v3, v1

    const-string v4, "javax.xml.stream.allocator"

    invoke-interface {v3, v4}, Ljavax/xml/stream/XMLStreamReader;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/xml/stream/util/XMLEventAllocator;

    iput-object v3, v2, Lcom/sun/xml/stream/XMLEventReaderImpl;->fXMLEventAllocator:Ljavax/xml/stream/util/XMLEventAllocator;

    .line 71
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLEventReaderImpl;->fXMLEventAllocator:Ljavax/xml/stream/util/XMLEventAllocator;

    if-nez v2, :cond_0

    .line 72
    move-object v2, v0

    new-instance v3, Lcom/sun/xml/stream/events/XMLEventAllocatorImpl;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lcom/sun/xml/stream/events/XMLEventAllocatorImpl;-><init>()V

    iput-object v3, v2, Lcom/sun/xml/stream/XMLEventReaderImpl;->fXMLEventAllocator:Ljavax/xml/stream/util/XMLEventAllocator;

    .line 74
    :cond_0
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLEventReaderImpl;->fXMLEventAllocator:Ljavax/xml/stream/util/XMLEventAllocator;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLEventReaderImpl;->fXMLReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v3, v4}, Ljavax/xml/stream/util/XMLEventAllocator;->allocate(Ljavax/xml/stream/XMLStreamReader;)Ljavax/xml/stream/events/XMLEvent;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/xml/stream/XMLEventReaderImpl;->fPeekedEvent:Ljavax/xml/stream/events/XMLEvent;

    .line 75
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEventReaderImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLEventReaderImpl;->fXMLReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamReader;->close()V

    .line 119
    return-void
.end method

.method public getElementText()Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEventReaderImpl;
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLEventReaderImpl;->fLastEvent:Ljavax/xml/stream/events/XMLEvent;

    invoke-interface {v5}, Ljavax/xml/stream/events/XMLEvent;->getEventType()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    .line 131
    new-instance v5, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string v7, "parser must be on START_ELEMENT to read next text"

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLEventReaderImpl;->fLastEvent:Ljavax/xml/stream/events/XMLEvent;

    .line 132
    invoke-interface {v8}, Ljavax/xml/stream/events/XMLEvent;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v5

    .line 141
    :cond_0
    const/4 v5, 0x0

    move-object v1, v5

    .line 143
    .local v1, "data":Ljava/lang/String;
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLEventReaderImpl;->fPeekedEvent:Ljavax/xml/stream/events/XMLEvent;

    if-eqz v5, :cond_11

    .line 144
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLEventReaderImpl;->fPeekedEvent:Ljavax/xml/stream/events/XMLEvent;

    move-object v2, v5

    .line 145
    .local v2, "event":Ljavax/xml/stream/events/XMLEvent;
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/sun/xml/stream/XMLEventReaderImpl;->fPeekedEvent:Ljavax/xml/stream/events/XMLEvent;

    .line 146
    move-object v5, v2

    invoke-interface {v5}, Ljavax/xml/stream/events/XMLEvent;->getEventType()I

    move-result v5

    move v3, v5

    .line 149
    .local v3, "type":I
    move v5, v3

    const/4 v6, 0x4

    if-eq v5, v6, :cond_1

    move v5, v3

    const/4 v6, 0x6

    if-eq v5, v6, :cond_1

    move v5, v3

    const/16 v6, 0xc

    if-ne v5, v6, :cond_7

    .line 151
    :cond_1
    move-object v5, v2

    invoke-interface {v5}, Ljavax/xml/stream/events/XMLEvent;->asCharacters()Ljavax/xml/stream/events/Characters;

    move-result-object v5

    invoke-interface {v5}, Ljavax/xml/stream/events/Characters;->getData()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 166
    :cond_2
    :goto_0
    new-instance v5, Ljava/lang/StringBuffer;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    move-object v4, v5

    .line 167
    .local v4, "buffer":Ljava/lang/StringBuffer;
    move-object v5, v1

    if-eqz v5, :cond_3

    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 168
    move-object v5, v4

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 175
    :cond_3
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/xml/stream/XMLEventReaderImpl;->nextEvent()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v5

    move-object v2, v5

    .line 176
    :goto_1
    move-object v5, v2

    invoke-interface {v5}, Ljavax/xml/stream/events/XMLEvent;->getEventType()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_10

    .line 177
    move v5, v3

    const/4 v6, 0x4

    if-eq v5, v6, :cond_4

    move v5, v3

    const/4 v6, 0x6

    if-eq v5, v6, :cond_4

    move v5, v3

    const/16 v6, 0xc

    if-ne v5, v6, :cond_b

    .line 179
    :cond_4
    move-object v5, v2

    invoke-interface {v5}, Ljavax/xml/stream/events/XMLEvent;->asCharacters()Ljavax/xml/stream/events/Characters;

    move-result-object v5

    invoke-interface {v5}, Ljavax/xml/stream/events/Characters;->getData()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 196
    :cond_5
    :goto_2
    move-object v5, v1

    if-eqz v5, :cond_6

    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_6

    .line 197
    move-object v5, v4

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 199
    :cond_6
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/xml/stream/XMLEventReaderImpl;->nextEvent()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v5

    move-object v2, v5

    goto :goto_1

    .line 153
    .end local v4    # "buffer":Ljava/lang/StringBuffer;
    :cond_7
    move v5, v3

    const/16 v6, 0x9

    if-ne v5, v6, :cond_8

    .line 154
    move-object v5, v2

    check-cast v5, Ljavax/xml/stream/events/EntityReference;

    invoke-interface {v5}, Ljavax/xml/stream/events/EntityReference;->getDeclaration()Ljavax/xml/stream/events/EntityDeclaration;

    move-result-object v5

    invoke-interface {v5}, Ljavax/xml/stream/events/EntityDeclaration;->getReplacementText()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    goto :goto_0

    .line 156
    :cond_8
    move v5, v3

    const/4 v6, 0x5

    if-eq v5, v6, :cond_2

    move v5, v3

    const/4 v6, 0x3

    if-ne v5, v6, :cond_9

    goto :goto_0

    .line 158
    :cond_9
    move v5, v3

    const/4 v6, 0x1

    if-ne v5, v6, :cond_a

    .line 159
    new-instance v5, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string v7, "elementGetText() function expects text only elment but START_ELEMENT was encountered."

    move-object v8, v2

    .line 160
    invoke-interface {v8}, Ljavax/xml/stream/events/XMLEvent;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v5

    .line 161
    :cond_a
    move v5, v3

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 162
    const-string v5, ""

    move-object v0, v5

    .line 208
    .end local v0    # "this":Lcom/sun/xml/stream/XMLEventReaderImpl;
    .end local v2    # "event":Ljavax/xml/stream/events/XMLEvent;
    .end local v3    # "type":I
    :goto_3
    return-object v0

    .line 181
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLEventReaderImpl;
    .restart local v2    # "event":Ljavax/xml/stream/events/XMLEvent;
    .restart local v3    # "type":I
    .restart local v4    # "buffer":Ljava/lang/StringBuffer;
    :cond_b
    move v5, v3

    const/16 v6, 0x9

    if-ne v5, v6, :cond_c

    .line 182
    move-object v5, v2

    check-cast v5, Ljavax/xml/stream/events/EntityReference;

    invoke-interface {v5}, Ljavax/xml/stream/events/EntityReference;->getDeclaration()Ljavax/xml/stream/events/EntityDeclaration;

    move-result-object v5

    invoke-interface {v5}, Ljavax/xml/stream/events/EntityDeclaration;->getReplacementText()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    goto :goto_2

    .line 184
    :cond_c
    move v5, v3

    const/4 v6, 0x5

    if-eq v5, v6, :cond_5

    move v5, v3

    const/4 v6, 0x3

    if-ne v5, v6, :cond_d

    goto :goto_2

    .line 186
    :cond_d
    move v5, v3

    const/16 v6, 0x8

    if-ne v5, v6, :cond_e

    .line 187
    new-instance v5, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string v7, "unexpected end of document when reading element text content"

    invoke-direct {v6, v7}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v5

    .line 188
    :cond_e
    move v5, v3

    const/4 v6, 0x1

    if-ne v5, v6, :cond_f

    .line 189
    new-instance v5, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string v7, "elementGetText() function expects text only elment but START_ELEMENT was encountered."

    move-object v8, v2

    .line 190
    invoke-interface {v8}, Ljavax/xml/stream/events/XMLEvent;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v5

    .line 192
    :cond_f
    new-instance v5, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected event type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v8, v2

    .line 193
    invoke-interface {v8}, Ljavax/xml/stream/events/XMLEvent;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v5

    .line 201
    :cond_10
    move-object v5, v4

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    goto :goto_3

    .line 206
    .end local v2    # "event":Ljavax/xml/stream/events/XMLEvent;
    .end local v3    # "type":I
    .end local v4    # "buffer":Ljava/lang/StringBuffer;
    :cond_11
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLEventReaderImpl;->fXMLReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v5}, Ljavax/xml/stream/XMLStreamReader;->getElementText()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 207
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLEventReaderImpl;->fXMLEventAllocator:Ljavax/xml/stream/util/XMLEventAllocator;

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLEventReaderImpl;->fXMLReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v6, v7}, Ljavax/xml/stream/util/XMLEventAllocator;->allocate(Ljavax/xml/stream/XMLStreamReader;)Ljavax/xml/stream/events/XMLEvent;

    move-result-object v6

    iput-object v6, v5, Lcom/sun/xml/stream/XMLEventReaderImpl;->fLastEvent:Ljavax/xml/stream/events/XMLEvent;

    .line 208
    move-object v5, v1

    move-object v0, v5

    goto/16 :goto_3
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 217
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEventReaderImpl;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLEventReaderImpl;->fXMLReader:Ljavax/xml/stream/XMLStreamReader;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavax/xml/stream/XMLStreamReader;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/xml/stream/XMLEventReaderImpl;
    return-object v0
.end method

.method public hasNext()Z
    .locals 4

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEventReaderImpl;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLEventReaderImpl;->fPeekedEvent:Ljavax/xml/stream/events/XMLEvent;

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    move v0, v3

    .line 89
    .end local v0    # "this":Lcom/sun/xml/stream/XMLEventReaderImpl;
    .local v1, "next":Z
    :goto_0
    return v0

    .line 83
    .end local v1    # "next":Z
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLEventReaderImpl;
    :cond_0
    const/4 v3, 0x0

    move v1, v3

    .line 85
    .restart local v1    # "next":Z
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/sun/xml/stream/XMLEventReaderImpl;->fXMLReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v3}, Ljavax/xml/stream/XMLStreamReader;->hasNext()Z
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    move v1, v3

    .line 88
    .line 89
    move v3, v1

    move v0, v3

    goto :goto_0

    .line 86
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 87
    .local v2, "ex":Ljavax/xml/stream/XMLStreamException;
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 266
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEventReaderImpl;
    const/4 v3, 0x0

    move-object v1, v3

    .line 268
    .local v1, "object":Ljava/lang/Object;
    move-object v3, v0

    :try_start_0
    invoke-virtual {v3}, Lcom/sun/xml/stream/XMLEventReaderImpl;->nextEvent()Ljavax/xml/stream/events/XMLEvent;
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v1, v3

    .line 273
    .line 274
    .local v1, "object":Ljavax/xml/stream/events/XMLEvent;
    move-object v3, v1

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/xml/stream/XMLEventReaderImpl;
    return-object v0

    .line 269
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLEventReaderImpl;
    .local v1, "object":Ljava/lang/Object;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 270
    .local v2, "streamException":Ljavax/xml/stream/XMLStreamException;
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/xml/stream/XMLEventReaderImpl;->fLastEvent:Ljavax/xml/stream/events/XMLEvent;

    .line 272
    new-instance v3, Ljava/util/NoSuchElementException;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/NoSuchElementException;-><init>()V

    throw v3
.end method

.method public nextEvent()Ljavax/xml/stream/events/XMLEvent;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEventReaderImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLEventReaderImpl;->fPeekedEvent:Ljavax/xml/stream/events/XMLEvent;

    if-eqz v1, :cond_0

    .line 96
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLEventReaderImpl;->fPeekedEvent:Ljavax/xml/stream/events/XMLEvent;

    iput-object v2, v1, Lcom/sun/xml/stream/XMLEventReaderImpl;->fLastEvent:Ljavax/xml/stream/events/XMLEvent;

    .line 97
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/xml/stream/XMLEventReaderImpl;->fPeekedEvent:Ljavax/xml/stream/events/XMLEvent;

    .line 98
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLEventReaderImpl;->fLastEvent:Ljavax/xml/stream/events/XMLEvent;

    move-object v0, v1

    .line 103
    .end local v0    # "this":Lcom/sun/xml/stream/XMLEventReaderImpl;
    :goto_0
    return-object v0

    .line 100
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLEventReaderImpl;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLEventReaderImpl;->fXMLReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 102
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLEventReaderImpl;->fXMLReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamReader;->next()I

    move-result v1

    .line 103
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLEventReaderImpl;->fXMLEventAllocator:Ljavax/xml/stream/util/XMLEventAllocator;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLEventReaderImpl;->fXMLReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v2, v3}, Ljavax/xml/stream/util/XMLEventAllocator;->allocate(Ljavax/xml/stream/XMLStreamReader;)Ljavax/xml/stream/events/XMLEvent;

    move-result-object v2

    move-object v4, v1

    move-object v5, v2

    move-object v1, v5

    move-object v2, v4

    move-object v3, v5

    iput-object v3, v2, Lcom/sun/xml/stream/XMLEventReaderImpl;->fLastEvent:Ljavax/xml/stream/events/XMLEvent;

    move-object v0, v1

    goto :goto_0

    .line 106
    :cond_1
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/xml/stream/XMLEventReaderImpl;->fLastEvent:Ljavax/xml/stream/events/XMLEvent;

    .line 107
    new-instance v1, Ljava/util/NoSuchElementException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public nextTag()Ljavax/xml/stream/events/XMLEvent;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 230
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEventReaderImpl;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLEventReaderImpl;->fPeekedEvent:Ljavax/xml/stream/events/XMLEvent;

    if-eqz v3, :cond_7

    .line 232
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLEventReaderImpl;->fPeekedEvent:Ljavax/xml/stream/events/XMLEvent;

    move-object v1, v3

    .line 233
    .local v1, "event":Ljavax/xml/stream/events/XMLEvent;
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/xml/stream/XMLEventReaderImpl;->fPeekedEvent:Ljavax/xml/stream/events/XMLEvent;

    .line 234
    move-object v3, v1

    invoke-interface {v3}, Ljavax/xml/stream/events/XMLEvent;->getEventType()I

    move-result v3

    move v2, v3

    .line 237
    .local v2, "eventType":I
    move-object v3, v1

    invoke-interface {v3}, Ljavax/xml/stream/events/XMLEvent;->isCharacters()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-interface {v3}, Ljavax/xml/stream/events/XMLEvent;->asCharacters()Ljavax/xml/stream/events/Characters;

    move-result-object v3

    invoke-interface {v3}, Ljavax/xml/stream/events/Characters;->isWhiteSpace()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move v3, v2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    move v3, v2

    const/4 v4, 0x5

    if-eq v3, v4, :cond_1

    move v3, v2

    const/4 v4, 0x7

    if-ne v3, v4, :cond_2

    .line 241
    :cond_1
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/xml/stream/XMLEventReaderImpl;->nextEvent()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v3

    move-object v1, v3

    .line 242
    move-object v3, v1

    invoke-interface {v3}, Ljavax/xml/stream/events/XMLEvent;->getEventType()I

    move-result v3

    move v2, v3

    .line 246
    :cond_2
    :goto_0
    move-object v3, v1

    invoke-interface {v3}, Ljavax/xml/stream/events/XMLEvent;->isCharacters()Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v3, v1

    invoke-interface {v3}, Ljavax/xml/stream/events/XMLEvent;->asCharacters()Ljavax/xml/stream/events/Characters;

    move-result-object v3

    invoke-interface {v3}, Ljavax/xml/stream/events/Characters;->isWhiteSpace()Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    move v3, v2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_4

    move v3, v2

    const/4 v4, 0x5

    if-ne v3, v4, :cond_5

    .line 250
    :cond_4
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/xml/stream/XMLEventReaderImpl;->nextEvent()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v3

    move-object v1, v3

    .line 251
    move-object v3, v1

    invoke-interface {v3}, Ljavax/xml/stream/events/XMLEvent;->getEventType()I

    move-result v3

    move v2, v3

    goto :goto_0

    .line 254
    :cond_5
    move v3, v2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_6

    move v3, v2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_6

    .line 255
    new-instance v3, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "expected start or end tag"

    move-object v6, v1

    invoke-interface {v6}, Ljavax/xml/stream/events/XMLEvent;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v3

    .line 257
    :cond_6
    move-object v3, v1

    move-object v0, v3

    .line 262
    .end local v0    # "this":Lcom/sun/xml/stream/XMLEventReaderImpl;
    .end local v1    # "event":Ljavax/xml/stream/events/XMLEvent;
    .end local v2    # "eventType":I
    :goto_1
    return-object v0

    .line 261
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLEventReaderImpl;
    :cond_7
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLEventReaderImpl;->fXMLReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v3}, Ljavax/xml/stream/XMLStreamReader;->nextTag()I

    move-result v3

    .line 262
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLEventReaderImpl;->fXMLEventAllocator:Ljavax/xml/stream/util/XMLEventAllocator;

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLEventReaderImpl;->fXMLReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v4, v5}, Ljavax/xml/stream/util/XMLEventAllocator;->allocate(Ljavax/xml/stream/XMLStreamReader;)Ljavax/xml/stream/events/XMLEvent;

    move-result-object v4

    move-object v7, v3

    move-object v8, v4

    move-object v3, v8

    move-object v4, v7

    move-object v5, v8

    iput-object v5, v4, Lcom/sun/xml/stream/XMLEventReaderImpl;->fLastEvent:Ljavax/xml/stream/events/XMLEvent;

    move-object v0, v3

    goto :goto_1
.end method

.method public peek()Ljavax/xml/stream/events/XMLEvent;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 280
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEventReaderImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLEventReaderImpl;->fPeekedEvent:Ljavax/xml/stream/events/XMLEvent;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLEventReaderImpl;->fPeekedEvent:Ljavax/xml/stream/events/XMLEvent;

    move-object v0, v1

    .line 297
    .end local v0    # "this":Lcom/sun/xml/stream/XMLEventReaderImpl;
    :goto_0
    return-object v0

    .line 282
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLEventReaderImpl;
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/xml/stream/XMLEventReaderImpl;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 293
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLEventReaderImpl;->fXMLReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamReader;->next()I

    move-result v1

    .line 294
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLEventReaderImpl;->fXMLEventAllocator:Ljavax/xml/stream/util/XMLEventAllocator;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLEventReaderImpl;->fXMLReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v2, v3}, Ljavax/xml/stream/util/XMLEventAllocator;->allocate(Ljavax/xml/stream/XMLStreamReader;)Ljavax/xml/stream/events/XMLEvent;

    move-result-object v2

    iput-object v2, v1, Lcom/sun/xml/stream/XMLEventReaderImpl;->fPeekedEvent:Ljavax/xml/stream/events/XMLEvent;

    .line 295
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLEventReaderImpl;->fPeekedEvent:Ljavax/xml/stream/events/XMLEvent;

    move-object v0, v1

    goto :goto_0

    .line 297
    :cond_1
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public remove()V
    .locals 4

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEventReaderImpl;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method
