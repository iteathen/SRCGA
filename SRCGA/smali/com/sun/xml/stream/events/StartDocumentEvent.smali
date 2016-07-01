.class public Lcom/sun/xml/stream/events/StartDocumentEvent;
.super Lcom/sun/xml/stream/events/DummyEvent;
.source "StartDocumentEvent.java"

# interfaces
.implements Ljavax/xml/stream/events/StartDocument;


# instance fields
.field protected fEncodingScheam:Ljava/lang/String;

.field private fEncodingSchemeSet:Z

.field protected fStandalone:Z

.field private fStandaloneSet:Z

.field protected fSystemId:Ljava/lang/String;

.field protected fVersion:Ljava/lang/String;

.field private nestedCall:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/StartDocumentEvent;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/xml/stream/events/DummyEvent;-><init>()V

    .line 64
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/xml/stream/events/StartDocumentEvent;->fEncodingSchemeSet:Z

    .line 65
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/xml/stream/events/StartDocumentEvent;->fStandaloneSet:Z

    .line 66
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/xml/stream/events/StartDocumentEvent;->nestedCall:Z

    .line 69
    move-object v1, v0

    const-string v2, "UTF-8"

    const-string v3, "1.0"

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sun/xml/stream/events/StartDocumentEvent;->init(Ljava/lang/String;Ljava/lang/String;ZLjavax/xml/stream/Location;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/StartDocumentEvent;
    move-object v1, p1

    .local v1, "encoding":Ljava/lang/String;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/xml/stream/events/DummyEvent;-><init>()V

    .line 64
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/xml/stream/events/StartDocumentEvent;->fEncodingSchemeSet:Z

    .line 65
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/xml/stream/events/StartDocumentEvent;->fStandaloneSet:Z

    .line 66
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/xml/stream/events/StartDocumentEvent;->nestedCall:Z

    .line 73
    move-object v2, v0

    move-object v3, v1

    const-string v4, "1.0"

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sun/xml/stream/events/StartDocumentEvent;->init(Ljava/lang/String;Ljava/lang/String;ZLjavax/xml/stream/Location;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/StartDocumentEvent;
    move-object v1, p1

    .local v1, "encoding":Ljava/lang/String;
    move-object v2, p2

    .local v2, "version":Ljava/lang/String;
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/xml/stream/events/DummyEvent;-><init>()V

    .line 64
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/xml/stream/events/StartDocumentEvent;->fEncodingSchemeSet:Z

    .line 65
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/xml/stream/events/StartDocumentEvent;->fStandaloneSet:Z

    .line 66
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/xml/stream/events/StartDocumentEvent;->nestedCall:Z

    .line 77
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/sun/xml/stream/events/StartDocumentEvent;->init(Ljava/lang/String;Ljava/lang/String;ZLjavax/xml/stream/Location;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/StartDocumentEvent;
    move-object v1, p1

    .local v1, "encoding":Ljava/lang/String;
    move-object v2, p2

    .local v2, "version":Ljava/lang/String;
    move v3, p3

    .local v3, "standalone":Z
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/xml/stream/events/DummyEvent;-><init>()V

    .line 64
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/sun/xml/stream/events/StartDocumentEvent;->fEncodingSchemeSet:Z

    .line 65
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/sun/xml/stream/events/StartDocumentEvent;->fStandaloneSet:Z

    .line 66
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/sun/xml/stream/events/StartDocumentEvent;->nestedCall:Z

    .line 81
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/sun/xml/stream/events/StartDocumentEvent;->fStandaloneSet:Z

    .line 82
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/sun/xml/stream/events/StartDocumentEvent;->init(Ljava/lang/String;Ljava/lang/String;ZLjavax/xml/stream/Location;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjavax/xml/stream/Location;)V
    .locals 10

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/StartDocumentEvent;
    move-object v1, p1

    .local v1, "encoding":Ljava/lang/String;
    move-object v2, p2

    .local v2, "version":Ljava/lang/String;
    move v3, p3

    .local v3, "standalone":Z
    move-object v4, p4

    .local v4, "loc":Ljavax/xml/stream/Location;
    move-object v5, v0

    invoke-direct {v5}, Lcom/sun/xml/stream/events/DummyEvent;-><init>()V

    .line 64
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/sun/xml/stream/events/StartDocumentEvent;->fEncodingSchemeSet:Z

    .line 65
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/sun/xml/stream/events/StartDocumentEvent;->fStandaloneSet:Z

    .line 66
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/sun/xml/stream/events/StartDocumentEvent;->nestedCall:Z

    .line 86
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/sun/xml/stream/events/StartDocumentEvent;->fStandaloneSet:Z

    .line 87
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    move-object v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/sun/xml/stream/events/StartDocumentEvent;->init(Ljava/lang/String;Ljava/lang/String;ZLjavax/xml/stream/Location;)V

    .line 88
    return-void
.end method


# virtual methods
.method clear()V
    .locals 3

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/StartDocumentEvent;
    move-object v1, v0

    const-string v2, "UTF-8"

    iput-object v2, v1, Lcom/sun/xml/stream/events/StartDocumentEvent;->fEncodingScheam:Ljava/lang/String;

    .line 162
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sun/xml/stream/events/StartDocumentEvent;->fStandalone:Z

    .line 163
    move-object v1, v0

    const-string v2, "1.0"

    iput-object v2, v1, Lcom/sun/xml/stream/events/StartDocumentEvent;->fVersion:Ljava/lang/String;

    .line 164
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/xml/stream/events/StartDocumentEvent;->fEncodingSchemeSet:Z

    .line 165
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/xml/stream/events/StartDocumentEvent;->fStandaloneSet:Z

    .line 166
    return-void
.end method

.method public encodingSet()Z
    .locals 2

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/StartDocumentEvent;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/xml/stream/events/StartDocumentEvent;->fEncodingSchemeSet:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/events/StartDocumentEvent;
    return v0
.end method

.method public getCharacterEncodingScheme()Ljava/lang/String;
    .locals 2

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/StartDocumentEvent;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/events/StartDocumentEvent;->fEncodingScheam:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/events/StartDocumentEvent;
    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/StartDocumentEvent;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/events/StartDocumentEvent;->fLocation:Ljavax/xml/stream/Location;

    if-nez v1, :cond_0

    .line 105
    const-string v1, ""

    move-object v0, v1

    .line 107
    .end local v0    # "this":Lcom/sun/xml/stream/events/StartDocumentEvent;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/sun/xml/stream/events/StartDocumentEvent;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/events/StartDocumentEvent;->fLocation:Ljavax/xml/stream/Location;

    invoke-interface {v1}, Ljavax/xml/stream/Location;->getSystemId()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/StartDocumentEvent;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/events/StartDocumentEvent;->fVersion:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/events/StartDocumentEvent;
    return-object v0
.end method

.method protected init(Ljava/lang/String;Ljava/lang/String;ZLjavax/xml/stream/Location;)V
    .locals 7

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/StartDocumentEvent;
    move-object v1, p1

    .local v1, "encoding":Ljava/lang/String;
    move-object v2, p2

    .local v2, "version":Ljava/lang/String;
    move v3, p3

    .local v3, "standalone":Z
    move-object v4, p4

    .local v4, "loc":Ljavax/xml/stream/Location;
    move-object v5, v0

    const/4 v6, 0x7

    invoke-virtual {v5, v6}, Lcom/sun/xml/stream/events/StartDocumentEvent;->setEventType(I)V

    .line 91
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/sun/xml/stream/events/StartDocumentEvent;->fEncodingScheam:Ljava/lang/String;

    .line 92
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lcom/sun/xml/stream/events/StartDocumentEvent;->fVersion:Ljava/lang/String;

    .line 93
    move-object v5, v0

    move v6, v3

    iput-boolean v6, v5, Lcom/sun/xml/stream/events/StartDocumentEvent;->fStandalone:Z

    .line 94
    move-object v5, v1

    if-eqz v5, :cond_0

    move-object v5, v1

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 95
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/sun/xml/stream/events/StartDocumentEvent;->fEncodingSchemeSet:Z

    .line 100
    :goto_0
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lcom/sun/xml/stream/events/StartDocumentEvent;->fLocation:Ljavax/xml/stream/Location;

    .line 101
    return-void

    .line 97
    :cond_0
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/sun/xml/stream/events/StartDocumentEvent;->fEncodingSchemeSet:Z

    .line 98
    move-object v5, v0

    const-string v6, "UTF-8"

    iput-object v6, v5, Lcom/sun/xml/stream/events/StartDocumentEvent;->fEncodingScheam:Ljava/lang/String;

    goto :goto_0
.end method

.method public isStandalone()Z
    .locals 2

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/StartDocumentEvent;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/xml/stream/events/StartDocumentEvent;->fStandalone:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/events/StartDocumentEvent;
    return v0
.end method

.method public isStartDocument()Z
    .locals 2

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/StartDocumentEvent;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/events/StartDocumentEvent;
    return v0
.end method

.method setDeclaredEncoding(Z)V
    .locals 4

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/StartDocumentEvent;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/sun/xml/stream/events/StartDocumentEvent;->fEncodingSchemeSet:Z

    .line 154
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/StartDocumentEvent;
    move-object v1, p1

    .local v1, "encoding":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/xml/stream/events/StartDocumentEvent;->fEncodingScheam:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public setStandalone(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/StartDocumentEvent;
    move-object v1, p1

    .local v1, "s":Ljava/lang/String;
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/xml/stream/events/StartDocumentEvent;->fStandaloneSet:Z

    .line 130
    move-object v2, v1

    if-nez v2, :cond_0

    .line 131
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/xml/stream/events/StartDocumentEvent;->fStandalone:Z

    .line 132
    .line 138
    :goto_0
    return-void

    .line 134
    :cond_0
    move-object v2, v1

    const-string v3, "yes"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 135
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/xml/stream/events/StartDocumentEvent;->fStandalone:Z

    .line 138
    :goto_1
    goto :goto_0

    .line 137
    :cond_1
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/xml/stream/events/StartDocumentEvent;->fStandalone:Z

    goto :goto_1
.end method

.method public setStandalone(Z)V
    .locals 4

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/StartDocumentEvent;
    move v1, p1

    .local v1, "flag":Z
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/xml/stream/events/StartDocumentEvent;->fStandaloneSet:Z

    .line 125
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/sun/xml/stream/events/StartDocumentEvent;->fStandalone:Z

    .line 126
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/StartDocumentEvent;
    move-object v1, p1

    .local v1, "s":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/xml/stream/events/StartDocumentEvent;->fVersion:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public standaloneSet()Z
    .locals 2

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/StartDocumentEvent;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/xml/stream/events/StartDocumentEvent;->fStandaloneSet:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/events/StartDocumentEvent;
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/StartDocumentEvent;
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<?xml version=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/events/StartDocumentEvent;->fVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 170
    .local v1, "s":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " encoding=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/events/StartDocumentEvent;->fEncodingScheam:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 171
    move-object v2, v0

    iget-boolean v2, v2, Lcom/sun/xml/stream/events/StartDocumentEvent;->fStandaloneSet:Z

    if-eqz v2, :cond_1

    .line 172
    move-object v2, v0

    iget-boolean v2, v2, Lcom/sun/xml/stream/events/StartDocumentEvent;->fStandalone:Z

    if-eqz v2, :cond_0

    .line 173
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " standalone=\'yes\'?>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 179
    :goto_0
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/xml/stream/events/StartDocumentEvent;
    return-object v0

    .line 175
    .restart local v0    # "this":Lcom/sun/xml/stream/events/StartDocumentEvent;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " standalone=\'no\'?>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    goto :goto_0

    .line 177
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

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
    .line 189
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/StartDocumentEvent;
    move-object v1, p1

    .local v1, "writer":Ljava/io/Writer;
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/xml/stream/events/StartDocumentEvent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 190
    return-void
.end method
