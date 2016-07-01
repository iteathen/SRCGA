.class public Lcom/sun/javafx/jmx/HighlightRegion;
.super Ljavafx/geometry/Rectangle2D;
.source "HighlightRegion.java"


# instance fields
.field private hash:I

.field private tkScene:Lcom/sun/javafx/tk/TKScene;


# direct methods
.method public constructor <init>(Lcom/sun/javafx/tk/TKScene;DDDD)V
    .locals 20

    .prologue
    .line 55
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/jmx/HighlightRegion;
    move-object/from16 v1, p1

    .local v1, "tkScene":Lcom/sun/javafx/tk/TKScene;
    move-wide/from16 v2, p2

    .local v2, "x":D
    move-wide/from16 v4, p4

    .local v4, "y":D
    move-wide/from16 v6, p6

    .local v6, "w":D
    move-wide/from16 v8, p8

    .local v8, "h":D
    move-object v10, v0

    move-wide v11, v2

    move-wide v13, v4

    move-wide v15, v6

    move-wide/from16 v17, v8

    invoke-direct/range {v10 .. v18}, Ljavafx/geometry/Rectangle2D;-><init>(DDDD)V

    .line 43
    move-object v10, v0

    const/4 v11, 0x0

    iput v11, v10, Lcom/sun/javafx/jmx/HighlightRegion;->hash:I

    .line 56
    move-object v10, v0

    move-object v11, v1

    iput-object v11, v10, Lcom/sun/javafx/jmx/HighlightRegion;->tkScene:Lcom/sun/javafx/tk/TKScene;

    .line 57
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/jmx/HighlightRegion;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v3, v1

    move-object v4, v0

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    move v0, v3

    .line 77
    .end local v0    # "this":Lcom/sun/javafx/jmx/HighlightRegion;
    :goto_0
    return v0

    .line 73
    .restart local v0    # "this":Lcom/sun/javafx/jmx/HighlightRegion;
    :cond_0
    move-object v3, v1

    instance-of v3, v3, Lcom/sun/javafx/jmx/HighlightRegion;

    if-eqz v3, :cond_2

    .line 74
    move-object v3, v1

    check-cast v3, Lcom/sun/javafx/jmx/HighlightRegion;

    move-object v2, v3

    .line 75
    .local v2, "other":Lcom/sun/javafx/jmx/HighlightRegion;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/jmx/HighlightRegion;->tkScene:Lcom/sun/javafx/tk/TKScene;

    move-object v4, v2

    iget-object v4, v4, Lcom/sun/javafx/jmx/HighlightRegion;->tkScene:Lcom/sun/javafx/tk/TKScene;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v0

    move-object v4, v2

    .line 76
    invoke-super {v3, v4}, Ljavafx/geometry/Rectangle2D;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 77
    .end local v2    # "other":Lcom/sun/javafx/jmx/HighlightRegion;
    :cond_2
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public getTKScene()Lcom/sun/javafx/tk/TKScene;
    .locals 2

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/jmx/HighlightRegion;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/jmx/HighlightRegion;->tkScene:Lcom/sun/javafx/tk/TKScene;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/jmx/HighlightRegion;
    return-object v0
.end method

.method public hashCode()I
    .locals 10

    .prologue
    .line 84
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/jmx/HighlightRegion;
    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/jmx/HighlightRegion;->hash:I

    if-nez v4, :cond_0

    .line 85
    const-wide/16 v4, 0x7

    move-wide v2, v4

    .line 86
    .local v2, "bits":J
    const-wide/16 v4, 0x1f

    move-wide v6, v2

    mul-long/2addr v4, v6

    move-object v6, v1

    invoke-super {v6}, Ljavafx/geometry/Rectangle2D;->hashCode()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    move-wide v2, v4

    .line 87
    const-wide/16 v4, 0x1f

    move-wide v6, v2

    mul-long/2addr v4, v6

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/jmx/HighlightRegion;->tkScene:Lcom/sun/javafx/tk/TKScene;

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    move-wide v2, v4

    .line 88
    move-object v4, v1

    move-wide v5, v2

    move-wide v7, v2

    const/16 v9, 0x20

    shr-long/2addr v7, v9

    xor-long/2addr v5, v7

    long-to-int v5, v5

    iput v5, v4, Lcom/sun/javafx/jmx/HighlightRegion;->hash:I

    .line 90
    .end local v2    # "bits":J
    :cond_0
    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/jmx/HighlightRegion;->hash:I

    move v1, v4

    .end local v1    # "this":Lcom/sun/javafx/jmx/HighlightRegion;
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/jmx/HighlightRegion;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HighlighRegion [tkScene = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/jmx/HighlightRegion;->tkScene:Lcom/sun/javafx/tk/TKScene;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rectangle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 104
    invoke-super {v2}, Ljavafx/geometry/Rectangle2D;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/jmx/HighlightRegion;
    return-object v0
.end method
