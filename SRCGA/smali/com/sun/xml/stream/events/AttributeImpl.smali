.class public Lcom/sun/xml/stream/events/AttributeImpl;
.super Lcom/sun/xml/stream/events/DummyEvent;
.source "AttributeImpl.java"

# interfaces
.implements Ljavax/xml/stream/events/Attribute;


# instance fields
.field private fAttributeType:Ljava/lang/String;

.field private fIsSpecified:Z

.field private fNonNormalizedvalue:Ljava/lang/String;

.field private fQName:Ljavax/xml/namespace/QName;

.field private fValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/AttributeImpl;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/xml/stream/events/DummyEvent;-><init>()V

    .line 73
    move-object v1, v0

    const-string v2, "CDATA"

    iput-object v2, v1, Lcom/sun/xml/stream/events/AttributeImpl;->fAttributeType:Ljava/lang/String;

    .line 81
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/xml/stream/events/AttributeImpl;->init()V

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/AttributeImpl;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "value":Ljava/lang/String;
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/xml/stream/events/DummyEvent;-><init>()V

    .line 73
    move-object v3, v0

    const-string v4, "CDATA"

    iput-object v4, v3, Lcom/sun/xml/stream/events/AttributeImpl;->fAttributeType:Ljava/lang/String;

    .line 84
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/xml/stream/events/AttributeImpl;->init()V

    .line 85
    move-object v3, v0

    new-instance v4, Ljavax/xml/namespace/QName;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;)V

    iput-object v4, v3, Lcom/sun/xml/stream/events/AttributeImpl;->fQName:Ljavax/xml/namespace/QName;

    .line 86
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/xml/stream/events/AttributeImpl;->fValue:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/AttributeImpl;
    move-object v1, p1

    .local v1, "prefix":Ljava/lang/String;
    move-object v2, p2

    .local v2, "name":Ljava/lang/String;
    move-object v3, p3

    .local v3, "value":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v1

    const/4 v6, 0x0

    move-object v7, v2

    move-object v8, v3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v4 .. v11}, Lcom/sun/xml/stream/events/AttributeImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 91
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/AttributeImpl;
    move-object v1, p1

    .local v1, "prefix":Ljava/lang/String;
    move-object/from16 v2, p2

    .local v2, "uri":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "localPart":Ljava/lang/String;
    move-object/from16 v4, p4

    .local v4, "value":Ljava/lang/String;
    move-object/from16 v5, p5

    .local v5, "type":Ljava/lang/String;
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    const/4 v11, 0x0

    move-object v12, v5

    const/4 v13, 0x0

    invoke-direct/range {v6 .. v13}, Lcom/sun/xml/stream/events/AttributeImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 15

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/AttributeImpl;
    move-object/from16 v1, p1

    .local v1, "prefix":Ljava/lang/String;
    move-object/from16 v2, p2

    .local v2, "uri":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "localPart":Ljava/lang/String;
    move-object/from16 v4, p4

    .local v4, "value":Ljava/lang/String;
    move-object/from16 v5, p5

    .local v5, "nonNormalizedvalue":Ljava/lang/String;
    move-object/from16 v6, p6

    .local v6, "type":Ljava/lang/String;
    move/from16 v7, p7

    .local v7, "isSpecified":Z
    move-object v8, v0

    new-instance v9, Ljavax/xml/namespace/QName;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v2

    move-object v12, v3

    move-object v13, v1

    invoke-direct {v10, v11, v12, v13}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v4

    move-object v11, v5

    move-object v12, v6

    move v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/sun/xml/stream/events/AttributeImpl;-><init>(Ljavax/xml/namespace/QName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 99
    return-void
.end method

.method public constructor <init>(Ljavax/xml/namespace/QName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/AttributeImpl;
    move-object v1, p1

    .local v1, "qname":Ljavax/xml/namespace/QName;
    move-object v2, p2

    .local v2, "value":Ljava/lang/String;
    move-object v3, p3

    .local v3, "nonNormalizedvalue":Ljava/lang/String;
    move-object v4, p4

    .local v4, "type":Ljava/lang/String;
    move v5, p5

    .local v5, "isSpecified":Z
    move-object v6, v0

    invoke-direct {v6}, Lcom/sun/xml/stream/events/DummyEvent;-><init>()V

    .line 73
    move-object v6, v0

    const-string v7, "CDATA"

    iput-object v7, v6, Lcom/sun/xml/stream/events/AttributeImpl;->fAttributeType:Ljava/lang/String;

    .line 103
    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/xml/stream/events/AttributeImpl;->init()V

    .line 104
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lcom/sun/xml/stream/events/AttributeImpl;->fQName:Ljavax/xml/namespace/QName;

    .line 105
    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Lcom/sun/xml/stream/events/AttributeImpl;->fValue:Ljava/lang/String;

    .line 106
    move-object v6, v4

    if-eqz v6, :cond_0

    move-object v6, v4

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 107
    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Lcom/sun/xml/stream/events/AttributeImpl;->fAttributeType:Ljava/lang/String;

    .line 109
    :cond_0
    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Lcom/sun/xml/stream/events/AttributeImpl;->fNonNormalizedvalue:Ljava/lang/String;

    .line 110
    move-object v6, v0

    move v7, v5

    iput-boolean v7, v6, Lcom/sun/xml/stream/events/AttributeImpl;->fIsSpecified:Z

    .line 112
    return-void
.end method


# virtual methods
.method public getDTDType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/AttributeImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/events/AttributeImpl;->fAttributeType:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/events/AttributeImpl;
    return-object v0
.end method

.method public getName()Ljavax/xml/namespace/QName;
    .locals 2

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/AttributeImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/events/AttributeImpl;->fQName:Ljavax/xml/namespace/QName;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/events/AttributeImpl;
    return-object v0
.end method

.method public getNonNormalizedValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/AttributeImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/events/AttributeImpl;->fNonNormalizedvalue:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/events/AttributeImpl;
    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/AttributeImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/events/AttributeImpl;->fValue:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/events/AttributeImpl;
    return-object v0
.end method

.method protected init()V
    .locals 3

    .prologue
    .line 172
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/AttributeImpl;
    move-object v1, v0

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/sun/xml/stream/events/AttributeImpl;->setEventType(I)V

    .line 173
    return-void
.end method

.method public isSpecified()Z
    .locals 2

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/AttributeImpl;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/xml/stream/events/AttributeImpl;->fIsSpecified:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/events/AttributeImpl;
    return v0
.end method

.method public setAttributeType(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/AttributeImpl;
    move-object v1, p1

    .local v1, "attributeType":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/xml/stream/events/AttributeImpl;->fAttributeType:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public setName(Ljavax/xml/namespace/QName;)V
    .locals 4

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/AttributeImpl;
    move-object v1, p1

    .local v1, "name":Ljavax/xml/namespace/QName;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/xml/stream/events/AttributeImpl;->fQName:Ljavax/xml/namespace/QName;

    .line 123
    return-void
.end method

.method public setNonNormalizedValue(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/AttributeImpl;
    move-object v1, p1

    .local v1, "nonNormalizedvalue":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/xml/stream/events/AttributeImpl;->fNonNormalizedvalue:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public setSpecified(Z)V
    .locals 4

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/AttributeImpl;
    move v1, p1

    .local v1, "isSpecified":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/sun/xml/stream/events/AttributeImpl;->fIsSpecified:Z

    .line 159
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/AttributeImpl;
    move-object v1, p1

    .local v1, "value":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/xml/stream/events/AttributeImpl;->fValue:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/AttributeImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/events/AttributeImpl;->fQName:Ljavax/xml/namespace/QName;

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/events/AttributeImpl;->fQName:Ljavax/xml/namespace/QName;

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/events/AttributeImpl;->fQName:Ljavax/xml/namespace/QName;

    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/events/AttributeImpl;->fQName:Ljavax/xml/namespace/QName;

    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/events/AttributeImpl;->fValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 118
    .end local v0    # "this":Lcom/sun/xml/stream/events/AttributeImpl;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/sun/xml/stream/events/AttributeImpl;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/events/AttributeImpl;->fQName:Ljavax/xml/namespace/QName;

    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/events/AttributeImpl;->fValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method protected writeAsEncodedUnicodeEx(Ljava/io/Writer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 168
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/AttributeImpl;
    move-object v1, p1

    .local v1, "writer":Ljava/io/Writer;
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/xml/stream/events/AttributeImpl;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 169
    return-void
.end method
