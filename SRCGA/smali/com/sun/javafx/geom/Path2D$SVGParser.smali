.class Lcom/sun/javafx/geom/Path2D$SVGParser;
.super Ljava/lang/Object;
.source "Path2D.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/geom/Path2D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SVGParser"
.end annotation


# instance fields
.field allowcomma:Z

.field final len:I

.field pos:I

.field final svgpath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1591
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Path2D$SVGParser;
    move-object v1, p1

    .local v1, "svgpath":Ljava/lang/String;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 1592
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/geom/Path2D$SVGParser;->svgpath:Ljava/lang/String;

    .line 1593
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iput v3, v2, Lcom/sun/javafx/geom/Path2D$SVGParser;->len:I

    .line 1594
    return-void
.end method

.method private toNextNonWsp()I
    .locals 6

    .prologue
    .line 1658
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Path2D$SVGParser;
    move-object v2, v0

    iget-boolean v2, v2, Lcom/sun/javafx/geom/Path2D$SVGParser;->allowcomma:Z

    move v1, v2

    .line 1659
    .local v1, "canbecomma":Z
    :goto_0
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/Path2D$SVGParser;->pos:I

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/Path2D$SVGParser;->len:I

    if-ge v2, v3, :cond_1

    .line 1660
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/geom/Path2D$SVGParser;->svgpath:Ljava/lang/String;

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/Path2D$SVGParser;->pos:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 1673
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/Path2D$SVGParser;->pos:I

    move v0, v2

    .line 1677
    .end local v0    # "this":Lcom/sun/javafx/geom/Path2D$SVGParser;
    :goto_1
    return v0

    .line 1662
    .restart local v0    # "this":Lcom/sun/javafx/geom/Path2D$SVGParser;
    :sswitch_0
    move v2, v1

    if-nez v2, :cond_0

    .line 1663
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/Path2D$SVGParser;->pos:I

    move v0, v2

    goto :goto_1

    .line 1665
    :cond_0
    const/4 v2, 0x0

    move v1, v2

    .line 1675
    :goto_2
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lcom/sun/javafx/geom/Path2D$SVGParser;->pos:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/sun/javafx/geom/Path2D$SVGParser;->pos:I

    goto :goto_0

    .line 1671
    :sswitch_1
    goto :goto_2

    .line 1677
    :cond_1
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/Path2D$SVGParser;->pos:I

    move v0, v2

    goto :goto_1

    .line 1660
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_1
        0x2c -> :sswitch_0
    .end sparse-switch
.end method

.method private toNumberEnd()I
    .locals 8

    .prologue
    .line 1681
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Path2D$SVGParser;
    const/4 v4, 0x1

    move v1, v4

    .line 1682
    .local v1, "allowsign":Z
    const/4 v4, 0x0

    move v2, v4

    .line 1683
    .local v2, "hasexp":Z
    const/4 v4, 0x0

    move v3, v4

    .line 1684
    .local v3, "hasdecimal":Z
    :goto_0
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/Path2D$SVGParser;->pos:I

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/Path2D$SVGParser;->len:I

    if-ge v4, v5, :cond_4

    .line 1685
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/geom/Path2D$SVGParser;->svgpath:Ljava/lang/String;

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/Path2D$SVGParser;->pos:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 1705
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/Path2D$SVGParser;->pos:I

    move v0, v4

    .line 1709
    .end local v0    # "this":Lcom/sun/javafx/geom/Path2D$SVGParser;
    :goto_1
    return v0

    .line 1688
    .restart local v0    # "this":Lcom/sun/javafx/geom/Path2D$SVGParser;
    :sswitch_0
    move v4, v1

    if-nez v4, :cond_0

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/Path2D$SVGParser;->pos:I

    move v0, v4

    goto :goto_1

    .line 1689
    :cond_0
    const/4 v4, 0x0

    move v1, v4

    .line 1707
    :goto_2
    move-object v4, v0

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    iget v5, v5, Lcom/sun/javafx/geom/Path2D$SVGParser;->pos:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/sun/javafx/geom/Path2D$SVGParser;->pos:I

    goto :goto_0

    .line 1693
    :sswitch_1
    const/4 v4, 0x0

    move v1, v4

    .line 1694
    goto :goto_2

    .line 1696
    :sswitch_2
    move v4, v2

    if-eqz v4, :cond_1

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/Path2D$SVGParser;->pos:I

    move v0, v4

    goto :goto_1

    .line 1697
    :cond_1
    const/4 v4, 0x1

    move v7, v4

    move v4, v7

    move v5, v7

    move v1, v5

    move v2, v4

    .line 1698
    goto :goto_2

    .line 1700
    :sswitch_3
    move v4, v2

    if-nez v4, :cond_2

    move v4, v3

    if-eqz v4, :cond_3

    :cond_2
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/Path2D$SVGParser;->pos:I

    move v0, v4

    goto :goto_1

    .line 1701
    :cond_3
    const/4 v4, 0x1

    move v3, v4

    .line 1702
    const/4 v4, 0x0

    move v1, v4

    .line 1703
    goto :goto_2

    .line 1709
    :cond_4
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/Path2D$SVGParser;->pos:I

    move v0, v4

    goto :goto_1

    .line 1685
    :sswitch_data_0
    .sparse-switch
        0x2b -> :sswitch_0
        0x2d -> :sswitch_0
        0x2e -> :sswitch_3
        0x30 -> :sswitch_1
        0x31 -> :sswitch_1
        0x32 -> :sswitch_1
        0x33 -> :sswitch_1
        0x34 -> :sswitch_1
        0x35 -> :sswitch_1
        0x36 -> :sswitch_1
        0x37 -> :sswitch_1
        0x38 -> :sswitch_1
        0x39 -> :sswitch_1
        0x45 -> :sswitch_2
        0x65 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public a()F
    .locals 4

    .prologue
    .line 1623
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/Path2D$SVGParser;
    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/javafx/geom/Path2D$SVGParser;->getFloat()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    double-to-float v2, v2

    move v1, v2

    .end local v1    # "this":Lcom/sun/javafx/geom/Path2D$SVGParser;
    return v1
.end method

.method public b()Z
    .locals 7

    .prologue
    .line 1643
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Path2D$SVGParser;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/geom/Path2D$SVGParser;->toNextNonWsp()I

    move-result v2

    .line 1644
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/javafx/geom/Path2D$SVGParser;->allowcomma:Z

    .line 1645
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/Path2D$SVGParser;->pos:I

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/Path2D$SVGParser;->len:I

    if-ge v2, v3, :cond_0

    .line 1646
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/geom/Path2D$SVGParser;->svgpath:Ljava/lang/String;

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/Path2D$SVGParser;->pos:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move v1, v2

    .line 1647
    .local v1, "flag":C
    move v2, v1

    packed-switch v2, :pswitch_data_0

    .line 1651
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid boolean flag ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") in path at pos="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/Path2D$SVGParser;->pos:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1648
    :pswitch_0
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Lcom/sun/javafx/geom/Path2D$SVGParser;->pos:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/sun/javafx/geom/Path2D$SVGParser;->pos:I

    const/4 v2, 0x0

    move v0, v2

    .line 1649
    .end local v0    # "this":Lcom/sun/javafx/geom/Path2D$SVGParser;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/geom/Path2D$SVGParser;
    :pswitch_1
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Lcom/sun/javafx/geom/Path2D$SVGParser;->pos:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/sun/javafx/geom/Path2D$SVGParser;->pos:I

    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 1654
    .end local v1    # "flag":C
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "end of path looking for boolean"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1647
    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public f()F
    .locals 2

    .prologue
    .line 1619
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Path2D$SVGParser;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/geom/Path2D$SVGParser;->getFloat()F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/Path2D$SVGParser;
    return v0
.end method

.method public getChar()C
    .locals 8

    .prologue
    .line 1601
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Path2D$SVGParser;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/geom/Path2D$SVGParser;->svgpath:Ljava/lang/String;

    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Lcom/sun/javafx/geom/Path2D$SVGParser;->pos:I

    move-object v6, v2

    move v7, v3

    move v2, v7

    move-object v3, v6

    move v4, v7

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/sun/javafx/geom/Path2D$SVGParser;->pos:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/Path2D$SVGParser;
    return v0
.end method

.method public getFloat()F
    .locals 10

    .prologue
    .line 1627
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Path2D$SVGParser;
    move-object v5, v0

    invoke-direct {v5}, Lcom/sun/javafx/geom/Path2D$SVGParser;->toNextNonWsp()I

    move-result v5

    move v1, v5

    .line 1628
    .local v1, "start":I
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/sun/javafx/geom/Path2D$SVGParser;->allowcomma:Z

    .line 1629
    move-object v5, v0

    invoke-direct {v5}, Lcom/sun/javafx/geom/Path2D$SVGParser;->toNumberEnd()I

    move-result v5

    move v2, v5

    .line 1630
    .local v2, "end":I
    move v5, v1

    move v6, v2

    if-ge v5, v6, :cond_0

    .line 1631
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/geom/Path2D$SVGParser;->svgpath:Ljava/lang/String;

    move v6, v1

    move v7, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 1633
    .local v3, "flstr":Ljava/lang/String;
    move-object v5, v3

    :try_start_0
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    move v0, v5

    .end local v0    # "this":Lcom/sun/javafx/geom/Path2D$SVGParser;
    return v0

    .line 1634
    .restart local v0    # "this":Lcom/sun/javafx/geom/Path2D$SVGParser;
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 1636
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "invalid float ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") in path at pos="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1639
    .end local v3    # "flstr":Ljava/lang/String;
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string v7, "end of path looking for float"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public isDone()Z
    .locals 3

    .prologue
    .line 1597
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Path2D$SVGParser;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/geom/Path2D$SVGParser;->toNextNonWsp()I

    move-result v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/Path2D$SVGParser;->len:I

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/Path2D$SVGParser;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/geom/Path2D$SVGParser;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public nextIsNumber()Z
    .locals 3

    .prologue
    .line 1605
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Path2D$SVGParser;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/geom/Path2D$SVGParser;->toNextNonWsp()I

    move-result v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/Path2D$SVGParser;->len:I

    if-ge v1, v2, :cond_0

    .line 1606
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/geom/Path2D$SVGParser;->svgpath:Ljava/lang/String;

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/Path2D$SVGParser;->pos:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1615
    :cond_0
    :pswitch_0
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/Path2D$SVGParser;
    :goto_0
    return v0

    .line 1612
    .restart local v0    # "this":Lcom/sun/javafx/geom/Path2D$SVGParser;
    :pswitch_1
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0

    .line 1606
    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
