.class final Lcom/sun/javafx/geom/ChainEnd;
.super Ljava/lang/Object;
.source "ChainEnd.java"


# instance fields
.field etag:I

.field head:Lcom/sun/javafx/geom/CurveLink;

.field partner:Lcom/sun/javafx/geom/ChainEnd;

.field tail:Lcom/sun/javafx/geom/CurveLink;


# direct methods
.method public constructor <init>(Lcom/sun/javafx/geom/CurveLink;Lcom/sun/javafx/geom/ChainEnd;)V
    .locals 5

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/ChainEnd;
    move-object v1, p1

    .local v1, "first":Lcom/sun/javafx/geom/CurveLink;
    move-object v2, p2

    .local v2, "partner":Lcom/sun/javafx/geom/ChainEnd;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 35
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/geom/ChainEnd;->head:Lcom/sun/javafx/geom/CurveLink;

    .line 36
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/geom/ChainEnd;->tail:Lcom/sun/javafx/geom/CurveLink;

    .line 37
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/geom/ChainEnd;->partner:Lcom/sun/javafx/geom/ChainEnd;

    .line 38
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/geom/CurveLink;->getEdgeTag()I

    move-result v4

    iput v4, v3, Lcom/sun/javafx/geom/ChainEnd;->etag:I

    .line 39
    return-void
.end method


# virtual methods
.method public addLink(Lcom/sun/javafx/geom/CurveLink;)V
    .locals 4

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/ChainEnd;
    move-object v1, p1

    .local v1, "newlink":Lcom/sun/javafx/geom/CurveLink;
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/ChainEnd;->etag:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 102
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/geom/ChainEnd;->tail:Lcom/sun/javafx/geom/CurveLink;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/geom/CurveLink;->setNext(Lcom/sun/javafx/geom/CurveLink;)V

    .line 103
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/geom/ChainEnd;->tail:Lcom/sun/javafx/geom/CurveLink;

    .line 108
    :goto_0
    return-void

    .line 105
    :cond_0
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/ChainEnd;->head:Lcom/sun/javafx/geom/CurveLink;

    invoke-virtual {v2, v3}, Lcom/sun/javafx/geom/CurveLink;->setNext(Lcom/sun/javafx/geom/CurveLink;)V

    .line 106
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/geom/ChainEnd;->head:Lcom/sun/javafx/geom/CurveLink;

    goto :goto_0
.end method

.method public getChain()Lcom/sun/javafx/geom/CurveLink;
    .locals 2

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/ChainEnd;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/geom/ChainEnd;->head:Lcom/sun/javafx/geom/CurveLink;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/ChainEnd;
    return-object v0
.end method

.method public getPartner()Lcom/sun/javafx/geom/ChainEnd;
    .locals 2

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/ChainEnd;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/geom/ChainEnd;->partner:Lcom/sun/javafx/geom/ChainEnd;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/ChainEnd;
    return-object v0
.end method

.method public getX()D
    .locals 4

    .prologue
    .line 111
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/ChainEnd;
    move-object v2, v1

    iget v2, v2, Lcom/sun/javafx/geom/ChainEnd;->etag:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 112
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/geom/ChainEnd;->tail:Lcom/sun/javafx/geom/CurveLink;

    invoke-virtual {v2}, Lcom/sun/javafx/geom/CurveLink;->getXBot()D

    move-result-wide v2

    move-wide v1, v2

    .line 114
    .end local v1    # "this":Lcom/sun/javafx/geom/ChainEnd;
    :goto_0
    return-wide v1

    .restart local v1    # "this":Lcom/sun/javafx/geom/ChainEnd;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/geom/ChainEnd;->head:Lcom/sun/javafx/geom/CurveLink;

    invoke-virtual {v2}, Lcom/sun/javafx/geom/CurveLink;->getXBot()D

    move-result-wide v2

    move-wide v1, v2

    goto :goto_0
.end method

.method public linkTo(Lcom/sun/javafx/geom/ChainEnd;)Lcom/sun/javafx/geom/CurveLink;
    .locals 11

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/ChainEnd;
    move-object v1, p1

    .local v1, "that":Lcom/sun/javafx/geom/ChainEnd;
    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/ChainEnd;->etag:I

    if-eqz v6, :cond_0

    move-object v6, v1

    iget v6, v6, Lcom/sun/javafx/geom/ChainEnd;->etag:I

    if-nez v6, :cond_1

    .line 61
    :cond_0
    new-instance v6, Ljava/lang/InternalError;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-string v8, "ChainEnd linked more than once!"

    invoke-direct {v7, v8}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v6

    .line 63
    :cond_1
    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/ChainEnd;->etag:I

    move-object v7, v1

    iget v7, v7, Lcom/sun/javafx/geom/ChainEnd;->etag:I

    if-ne v6, v7, :cond_2

    .line 64
    new-instance v6, Ljava/lang/InternalError;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-string v8, "Linking chains of the same type!"

    invoke-direct {v7, v8}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v6

    .line 68
    :cond_2
    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/ChainEnd;->etag:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    .line 69
    move-object v6, v0

    move-object v2, v6

    .line 70
    .local v2, "enter":Lcom/sun/javafx/geom/ChainEnd;
    move-object v6, v1

    move-object v3, v6

    .line 76
    .local v3, "exit":Lcom/sun/javafx/geom/ChainEnd;
    :goto_0
    move-object v6, v0

    const/4 v7, 0x0

    iput v7, v6, Lcom/sun/javafx/geom/ChainEnd;->etag:I

    .line 77
    move-object v6, v1

    const/4 v7, 0x0

    iput v7, v6, Lcom/sun/javafx/geom/ChainEnd;->etag:I

    .line 79
    move-object v6, v2

    iget-object v6, v6, Lcom/sun/javafx/geom/ChainEnd;->tail:Lcom/sun/javafx/geom/CurveLink;

    move-object v7, v3

    iget-object v7, v7, Lcom/sun/javafx/geom/ChainEnd;->head:Lcom/sun/javafx/geom/CurveLink;

    invoke-virtual {v6, v7}, Lcom/sun/javafx/geom/CurveLink;->setNext(Lcom/sun/javafx/geom/CurveLink;)V

    .line 80
    move-object v6, v2

    move-object v7, v3

    iget-object v7, v7, Lcom/sun/javafx/geom/ChainEnd;->tail:Lcom/sun/javafx/geom/CurveLink;

    iput-object v7, v6, Lcom/sun/javafx/geom/ChainEnd;->tail:Lcom/sun/javafx/geom/CurveLink;

    .line 81
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/geom/ChainEnd;->partner:Lcom/sun/javafx/geom/ChainEnd;

    move-object v7, v1

    if-ne v6, v7, :cond_4

    .line 83
    move-object v6, v2

    iget-object v6, v6, Lcom/sun/javafx/geom/ChainEnd;->head:Lcom/sun/javafx/geom/CurveLink;

    move-object v0, v6

    .line 97
    .end local v0    # "this":Lcom/sun/javafx/geom/ChainEnd;
    :goto_1
    return-object v0

    .line 72
    .end local v2    # "enter":Lcom/sun/javafx/geom/ChainEnd;
    .end local v3    # "exit":Lcom/sun/javafx/geom/ChainEnd;
    .restart local v0    # "this":Lcom/sun/javafx/geom/ChainEnd;
    :cond_3
    move-object v6, v1

    move-object v2, v6

    .line 73
    .restart local v2    # "enter":Lcom/sun/javafx/geom/ChainEnd;
    move-object v6, v0

    move-object v3, v6

    .restart local v3    # "exit":Lcom/sun/javafx/geom/ChainEnd;
    goto :goto_0

    .line 86
    :cond_4
    move-object v6, v3

    iget-object v6, v6, Lcom/sun/javafx/geom/ChainEnd;->partner:Lcom/sun/javafx/geom/ChainEnd;

    move-object v4, v6

    .line 87
    .local v4, "otherenter":Lcom/sun/javafx/geom/ChainEnd;
    move-object v6, v2

    iget-object v6, v6, Lcom/sun/javafx/geom/ChainEnd;->partner:Lcom/sun/javafx/geom/ChainEnd;

    move-object v5, v6

    .line 88
    .local v5, "otherexit":Lcom/sun/javafx/geom/ChainEnd;
    move-object v6, v4

    move-object v7, v5

    iput-object v7, v6, Lcom/sun/javafx/geom/ChainEnd;->partner:Lcom/sun/javafx/geom/ChainEnd;

    .line 89
    move-object v6, v5

    move-object v7, v4

    iput-object v7, v6, Lcom/sun/javafx/geom/ChainEnd;->partner:Lcom/sun/javafx/geom/ChainEnd;

    .line 90
    move-object v6, v2

    iget-object v6, v6, Lcom/sun/javafx/geom/ChainEnd;->head:Lcom/sun/javafx/geom/CurveLink;

    invoke-virtual {v6}, Lcom/sun/javafx/geom/CurveLink;->getYTop()D

    move-result-wide v6

    move-object v8, v4

    iget-object v8, v8, Lcom/sun/javafx/geom/ChainEnd;->head:Lcom/sun/javafx/geom/CurveLink;

    invoke-virtual {v8}, Lcom/sun/javafx/geom/CurveLink;->getYTop()D

    move-result-wide v8

    cmpg-double v6, v6, v8

    if-gez v6, :cond_5

    .line 91
    move-object v6, v2

    iget-object v6, v6, Lcom/sun/javafx/geom/ChainEnd;->tail:Lcom/sun/javafx/geom/CurveLink;

    move-object v7, v4

    iget-object v7, v7, Lcom/sun/javafx/geom/ChainEnd;->head:Lcom/sun/javafx/geom/CurveLink;

    invoke-virtual {v6, v7}, Lcom/sun/javafx/geom/CurveLink;->setNext(Lcom/sun/javafx/geom/CurveLink;)V

    .line 92
    move-object v6, v4

    move-object v7, v2

    iget-object v7, v7, Lcom/sun/javafx/geom/ChainEnd;->head:Lcom/sun/javafx/geom/CurveLink;

    iput-object v7, v6, Lcom/sun/javafx/geom/ChainEnd;->head:Lcom/sun/javafx/geom/CurveLink;

    .line 97
    :goto_2
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_1

    .line 94
    :cond_5
    move-object v6, v5

    iget-object v6, v6, Lcom/sun/javafx/geom/ChainEnd;->tail:Lcom/sun/javafx/geom/CurveLink;

    move-object v7, v2

    iget-object v7, v7, Lcom/sun/javafx/geom/ChainEnd;->head:Lcom/sun/javafx/geom/CurveLink;

    invoke-virtual {v6, v7}, Lcom/sun/javafx/geom/CurveLink;->setNext(Lcom/sun/javafx/geom/CurveLink;)V

    .line 95
    move-object v6, v5

    move-object v7, v2

    iget-object v7, v7, Lcom/sun/javafx/geom/ChainEnd;->tail:Lcom/sun/javafx/geom/CurveLink;

    iput-object v7, v6, Lcom/sun/javafx/geom/ChainEnd;->tail:Lcom/sun/javafx/geom/CurveLink;

    goto :goto_2
.end method

.method public setOtherEnd(Lcom/sun/javafx/geom/ChainEnd;)V
    .locals 4

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/ChainEnd;
    move-object v1, p1

    .local v1, "partner":Lcom/sun/javafx/geom/ChainEnd;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/geom/ChainEnd;->partner:Lcom/sun/javafx/geom/ChainEnd;

    .line 47
    return-void
.end method
