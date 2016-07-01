.class final Lcom/sun/javafx/geom/CurveLink;
.super Ljava/lang/Object;
.source "CurveLink.java"


# instance fields
.field curve:Lcom/sun/javafx/geom/Curve;

.field etag:I

.field next:Lcom/sun/javafx/geom/CurveLink;

.field ybot:D

.field ytop:D


# direct methods
.method public constructor <init>(Lcom/sun/javafx/geom/Curve;DDI)V
    .locals 14

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/CurveLink;
    move-object v1, p1

    .local v1, "curve":Lcom/sun/javafx/geom/Curve;
    move-wide/from16 v2, p2

    .local v2, "ystart":D
    move-wide/from16 v4, p4

    .local v4, "yend":D
    move/from16 v6, p6

    .local v6, "etag":I
    move-object v7, v0

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 37
    move-object v7, v0

    move-object v8, v1

    iput-object v8, v7, Lcom/sun/javafx/geom/CurveLink;->curve:Lcom/sun/javafx/geom/Curve;

    .line 38
    move-object v7, v0

    move-wide v8, v2

    iput-wide v8, v7, Lcom/sun/javafx/geom/CurveLink;->ytop:D

    .line 39
    move-object v7, v0

    move-wide v8, v4

    iput-wide v8, v7, Lcom/sun/javafx/geom/CurveLink;->ybot:D

    .line 40
    move-object v7, v0

    move v8, v6

    iput v8, v7, Lcom/sun/javafx/geom/CurveLink;->etag:I

    .line 41
    move-object v7, v0

    iget-wide v7, v7, Lcom/sun/javafx/geom/CurveLink;->ytop:D

    move-object v9, v1

    invoke-virtual {v9}, Lcom/sun/javafx/geom/Curve;->getYTop()D

    move-result-wide v9

    cmpg-double v7, v7, v9

    if-ltz v7, :cond_0

    move-object v7, v0

    iget-wide v7, v7, Lcom/sun/javafx/geom/CurveLink;->ybot:D

    move-object v9, v1

    invoke-virtual {v9}, Lcom/sun/javafx/geom/Curve;->getYBot()D

    move-result-wide v9

    cmpl-double v7, v7, v9

    if-lez v7, :cond_1

    .line 42
    :cond_0
    new-instance v7, Ljava/lang/InternalError;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bad curvelink ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v0

    iget-wide v10, v10, Lcom/sun/javafx/geom/CurveLink;->ytop:D

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "=>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v0

    iget-wide v10, v10, Lcom/sun/javafx/geom/CurveLink;->ybot:D

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v7

    .line 44
    :cond_1
    return-void
.end method


# virtual methods
.method public absorb(Lcom/sun/javafx/geom/Curve;DDI)Z
    .locals 14

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/CurveLink;
    move-object v1, p1

    .local v1, "curve":Lcom/sun/javafx/geom/Curve;
    move-wide/from16 v2, p2

    .local v2, "ystart":D
    move-wide/from16 v4, p4

    .local v4, "yend":D
    move/from16 v6, p6

    .local v6, "etag":I
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/geom/CurveLink;->curve:Lcom/sun/javafx/geom/Curve;

    move-object v8, v1

    if-ne v7, v8, :cond_0

    move-object v7, v0

    iget v7, v7, Lcom/sun/javafx/geom/CurveLink;->etag:I

    move v8, v6

    if-ne v7, v8, :cond_0

    move-object v7, v0

    iget-wide v7, v7, Lcom/sun/javafx/geom/CurveLink;->ybot:D

    move-wide v9, v2

    cmpg-double v7, v7, v9

    if-ltz v7, :cond_0

    move-object v7, v0

    iget-wide v7, v7, Lcom/sun/javafx/geom/CurveLink;->ytop:D

    move-wide v9, v4

    cmpl-double v7, v7, v9

    if-lez v7, :cond_1

    .line 54
    :cond_0
    const/4 v7, 0x0

    move v0, v7

    .line 61
    .end local v0    # "this":Lcom/sun/javafx/geom/CurveLink;
    :goto_0
    return v0

    .line 56
    .restart local v0    # "this":Lcom/sun/javafx/geom/CurveLink;
    :cond_1
    move-wide v7, v2

    move-object v9, v1

    invoke-virtual {v9}, Lcom/sun/javafx/geom/Curve;->getYTop()D

    move-result-wide v9

    cmpg-double v7, v7, v9

    if-ltz v7, :cond_2

    move-wide v7, v4

    move-object v9, v1

    invoke-virtual {v9}, Lcom/sun/javafx/geom/Curve;->getYBot()D

    move-result-wide v9

    cmpl-double v7, v7, v9

    if-lez v7, :cond_3

    .line 57
    :cond_2
    new-instance v7, Ljava/lang/InternalError;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bad curvelink ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide v10, v2

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "=>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide v10, v4

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v7

    .line 59
    :cond_3
    move-object v7, v0

    move-object v8, v0

    iget-wide v8, v8, Lcom/sun/javafx/geom/CurveLink;->ytop:D

    move-wide v10, v2

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    iput-wide v8, v7, Lcom/sun/javafx/geom/CurveLink;->ytop:D

    .line 60
    move-object v7, v0

    move-object v8, v0

    iget-wide v8, v8, Lcom/sun/javafx/geom/CurveLink;->ybot:D

    move-wide v10, v4

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    iput-wide v8, v7, Lcom/sun/javafx/geom/CurveLink;->ybot:D

    .line 61
    const/4 v7, 0x1

    move v0, v7

    goto :goto_0
.end method

.method public absorb(Lcom/sun/javafx/geom/CurveLink;)Z
    .locals 9

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/CurveLink;
    move-object v1, p1

    .local v1, "link":Lcom/sun/javafx/geom/CurveLink;
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/geom/CurveLink;->curve:Lcom/sun/javafx/geom/Curve;

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/geom/CurveLink;->ytop:D

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/geom/CurveLink;->ybot:D

    move-object v8, v1

    iget v8, v8, Lcom/sun/javafx/geom/CurveLink;->etag:I

    invoke-virtual/range {v2 .. v8}, Lcom/sun/javafx/geom/CurveLink;->absorb(Lcom/sun/javafx/geom/Curve;DDI)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/geom/CurveLink;
    return v0
.end method

.method public getCurve()Lcom/sun/javafx/geom/Curve;
    .locals 2

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/CurveLink;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/geom/CurveLink;->curve:Lcom/sun/javafx/geom/Curve;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/CurveLink;
    return-object v0
.end method

.method public getEdgeTag()I
    .locals 2

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/CurveLink;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/geom/CurveLink;->etag:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/CurveLink;
    return v0
.end method

.method public getMoveto()Lcom/sun/javafx/geom/Curve;
    .locals 9

    .prologue
    .line 80
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/CurveLink;
    new-instance v2, Lcom/sun/javafx/geom/Order0;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/geom/CurveLink;->getXTop()D

    move-result-wide v4

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/geom/CurveLink;->getYTop()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/sun/javafx/geom/Order0;-><init>(DD)V

    move-object v1, v2

    .end local v1    # "this":Lcom/sun/javafx/geom/CurveLink;
    return-object v1
.end method

.method public getNext()Lcom/sun/javafx/geom/CurveLink;
    .locals 2

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/CurveLink;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/geom/CurveLink;->next:Lcom/sun/javafx/geom/CurveLink;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/CurveLink;
    return-object v0
.end method

.method public getSubCurve()Lcom/sun/javafx/geom/Curve;
    .locals 8

    .prologue
    .line 73
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/CurveLink;
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/geom/CurveLink;->ytop:D

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/geom/CurveLink;->curve:Lcom/sun/javafx/geom/Curve;

    invoke-virtual {v4}, Lcom/sun/javafx/geom/Curve;->getYTop()D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/geom/CurveLink;->ybot:D

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/geom/CurveLink;->curve:Lcom/sun/javafx/geom/Curve;

    invoke-virtual {v4}, Lcom/sun/javafx/geom/Curve;->getYBot()D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    .line 74
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/geom/CurveLink;->curve:Lcom/sun/javafx/geom/Curve;

    move-object v3, v1

    iget v3, v3, Lcom/sun/javafx/geom/CurveLink;->etag:I

    invoke-virtual {v2, v3}, Lcom/sun/javafx/geom/Curve;->getWithDirection(I)Lcom/sun/javafx/geom/Curve;

    move-result-object v2

    move-object v1, v2

    .line 76
    .end local v1    # "this":Lcom/sun/javafx/geom/CurveLink;
    :goto_0
    return-object v1

    .restart local v1    # "this":Lcom/sun/javafx/geom/CurveLink;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/geom/CurveLink;->curve:Lcom/sun/javafx/geom/Curve;

    move-object v3, v1

    iget-wide v3, v3, Lcom/sun/javafx/geom/CurveLink;->ytop:D

    move-object v5, v1

    iget-wide v5, v5, Lcom/sun/javafx/geom/CurveLink;->ybot:D

    move-object v7, v1

    iget v7, v7, Lcom/sun/javafx/geom/CurveLink;->etag:I

    invoke-virtual/range {v2 .. v7}, Lcom/sun/javafx/geom/Curve;->getSubCurve(DDI)Lcom/sun/javafx/geom/Curve;

    move-result-object v2

    move-object v1, v2

    goto :goto_0
.end method

.method public getX()D
    .locals 4

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/CurveLink;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/geom/CurveLink;->curve:Lcom/sun/javafx/geom/Curve;

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/javafx/geom/CurveLink;->ytop:D

    invoke-virtual {v1, v2, v3}, Lcom/sun/javafx/geom/Curve;->XforY(D)D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/CurveLink;
    return-wide v0
.end method

.method public getXBot()D
    .locals 4

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/CurveLink;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/geom/CurveLink;->curve:Lcom/sun/javafx/geom/Curve;

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/javafx/geom/CurveLink;->ybot:D

    invoke-virtual {v1, v2, v3}, Lcom/sun/javafx/geom/Curve;->XforY(D)D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/CurveLink;
    return-wide v0
.end method

.method public getXTop()D
    .locals 4

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/CurveLink;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/geom/CurveLink;->curve:Lcom/sun/javafx/geom/Curve;

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/javafx/geom/CurveLink;->ytop:D

    invoke-virtual {v1, v2, v3}, Lcom/sun/javafx/geom/Curve;->XforY(D)D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/CurveLink;
    return-wide v0
.end method

.method public getYBot()D
    .locals 3

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/CurveLink;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/geom/CurveLink;->ybot:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/CurveLink;
    return-wide v0
.end method

.method public getYTop()D
    .locals 3

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/CurveLink;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/geom/CurveLink;->ytop:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/CurveLink;
    return-wide v0
.end method

.method public isEmpty()Z
    .locals 6

    .prologue
    .line 65
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/CurveLink;
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/geom/CurveLink;->ytop:D

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/geom/CurveLink;->ybot:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v1, v2

    .end local v1    # "this":Lcom/sun/javafx/geom/CurveLink;
    return v1

    .restart local v1    # "this":Lcom/sun/javafx/geom/CurveLink;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setNext(Lcom/sun/javafx/geom/CurveLink;)V
    .locals 4

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/CurveLink;
    move-object v1, p1

    .local v1, "link":Lcom/sun/javafx/geom/CurveLink;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/geom/CurveLink;->next:Lcom/sun/javafx/geom/CurveLink;

    .line 109
    return-void
.end method
