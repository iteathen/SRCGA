.class public Lcom/sun/javafx/tk/FontMetrics;
.super Ljava/lang/Object;
.source "FontMetrics.java"


# instance fields
.field private ascent:F

.field private baseline:I

.field private descent:F

.field private font:Ljavafx/scene/text/Font;

.field private leading:F

.field private lineHeight:F

.field private maxAscent:F

.field private maxDescent:F

.field private xheight:F


# direct methods
.method public constructor <init>(FFFFFFLjavafx/scene/text/Font;)V
    .locals 11

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/FontMetrics;
    move v1, p1

    .local v1, "maxAscent":F
    move v2, p2

    .local v2, "ascent":F
    move v3, p3

    .local v3, "xheight":F
    move v4, p4

    .local v4, "descent":F
    move/from16 v5, p5

    .local v5, "maxDescent":F
    move/from16 v6, p6

    .local v6, "leading":F
    move-object/from16 v7, p7

    .local v7, "font":Ljavafx/scene/text/Font;
    move-object v8, v0

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 139
    move-object v8, v0

    move v9, v1

    iput v9, v8, Lcom/sun/javafx/tk/FontMetrics;->maxAscent:F

    .line 140
    move-object v8, v0

    move v9, v2

    iput v9, v8, Lcom/sun/javafx/tk/FontMetrics;->ascent:F

    .line 141
    move-object v8, v0

    move v9, v3

    iput v9, v8, Lcom/sun/javafx/tk/FontMetrics;->xheight:F

    .line 142
    move-object v8, v0

    move v9, v4

    iput v9, v8, Lcom/sun/javafx/tk/FontMetrics;->descent:F

    .line 143
    move-object v8, v0

    move v9, v5

    iput v9, v8, Lcom/sun/javafx/tk/FontMetrics;->maxDescent:F

    .line 144
    move-object v8, v0

    move v9, v6

    iput v9, v8, Lcom/sun/javafx/tk/FontMetrics;->leading:F

    .line 145
    move-object v8, v0

    move-object v9, v7

    iput-object v9, v8, Lcom/sun/javafx/tk/FontMetrics;->font:Ljavafx/scene/text/Font;

    .line 146
    move-object v8, v0

    move v9, v1

    move v10, v5

    add-float/2addr v9, v10

    move v10, v6

    add-float/2addr v9, v10

    iput v9, v8, Lcom/sun/javafx/tk/FontMetrics;->lineHeight:F

    .line 147
    return-void
.end method

.method public static impl_createFontMetrics(FFFFFFLjavafx/scene/text/Font;)Lcom/sun/javafx/tk/FontMetrics;
    .locals 17

    .prologue
    .line 40
    move/from16 v0, p0

    .local v0, "maxAscent":F
    move/from16 v1, p1

    .local v1, "ascent":F
    move/from16 v2, p2

    .local v2, "xheight":F
    move/from16 v3, p3

    .local v3, "descent":F
    move/from16 v4, p4

    .local v4, "maxDescent":F
    move/from16 v5, p5

    .local v5, "leading":F
    move-object/from16 v6, p6

    .local v6, "font":Ljavafx/scene/text/Font;
    new-instance v7, Lcom/sun/javafx/tk/FontMetrics;

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    move v9, v0

    move v10, v1

    move v11, v2

    move v12, v3

    move v13, v4

    move v14, v5

    move-object v15, v6

    invoke-direct/range {v8 .. v15}, Lcom/sun/javafx/tk/FontMetrics;-><init>(FFFFFFLjavafx/scene/text/Font;)V

    move-object v0, v7

    .end local v0    # "maxAscent":F
    return-object v0
.end method


# virtual methods
.method public computeStringWidth(Ljava/lang/String;)F
    .locals 5

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/FontMetrics;
    move-object v1, p1

    .local v1, "string":Ljava/lang/String;
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/javafx/tk/Toolkit;->getFontLoader()Lcom/sun/javafx/tk/FontLoader;

    move-result-object v2

    move-object v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/tk/FontMetrics;->getFont()Ljavafx/scene/text/Font;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/tk/FontLoader;->computeStringWidth(Ljava/lang/String;Ljavafx/scene/text/Font;)F

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/tk/FontMetrics;
    return v0
.end method

.method public final getAscent()F
    .locals 2

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/FontMetrics;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/tk/FontMetrics;->ascent:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/FontMetrics;
    return v0
.end method

.method public final getBaseline()I
    .locals 2

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/FontMetrics;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/tk/FontMetrics;->baseline:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/FontMetrics;
    return v0
.end method

.method public final getDescent()F
    .locals 2

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/FontMetrics;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/tk/FontMetrics;->descent:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/FontMetrics;
    return v0
.end method

.method public final getFont()Ljavafx/scene/text/Font;
    .locals 3

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/FontMetrics;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/FontMetrics;->font:Ljavafx/scene/text/Font;

    if-nez v1, :cond_0

    .line 131
    move-object v1, v0

    invoke-static {}, Ljavafx/scene/text/Font;->getDefault()Ljavafx/scene/text/Font;

    move-result-object v2

    iput-object v2, v1, Lcom/sun/javafx/tk/FontMetrics;->font:Ljavafx/scene/text/Font;

    .line 133
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/FontMetrics;->font:Ljavafx/scene/text/Font;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/FontMetrics;
    return-object v0
.end method

.method public final getLeading()F
    .locals 2

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/FontMetrics;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/tk/FontMetrics;->leading:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/FontMetrics;
    return v0
.end method

.method public final getLineHeight()F
    .locals 2

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/FontMetrics;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/tk/FontMetrics;->lineHeight:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/FontMetrics;
    return v0
.end method

.method public final getMaxAscent()F
    .locals 2

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/FontMetrics;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/tk/FontMetrics;->maxAscent:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/FontMetrics;
    return v0
.end method

.method public final getMaxDescent()F
    .locals 2

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/FontMetrics;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/tk/FontMetrics;->maxDescent:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/FontMetrics;
    return v0
.end method

.method public final getXheight()F
    .locals 2

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/FontMetrics;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/tk/FontMetrics;->xheight:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/FontMetrics;
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/FontMetrics;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FontMetrics: [maxAscent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/tk/FontMetrics;->getMaxAscent()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ascent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 159
    invoke-virtual {v2}, Lcom/sun/javafx/tk/FontMetrics;->getAscent()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", xheight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 160
    invoke-virtual {v2}, Lcom/sun/javafx/tk/FontMetrics;->getXheight()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", baseline="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 161
    invoke-virtual {v2}, Lcom/sun/javafx/tk/FontMetrics;->getBaseline()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", descent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 162
    invoke-virtual {v2}, Lcom/sun/javafx/tk/FontMetrics;->getDescent()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", maxDescent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 163
    invoke-virtual {v2}, Lcom/sun/javafx/tk/FontMetrics;->getMaxDescent()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", leading="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 164
    invoke-virtual {v2}, Lcom/sun/javafx/tk/FontMetrics;->getLeading()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", lineHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 165
    invoke-virtual {v2}, Lcom/sun/javafx/tk/FontMetrics;->getLineHeight()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", font="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 166
    invoke-virtual {v2}, Lcom/sun/javafx/tk/FontMetrics;->getFont()Ljavafx/scene/text/Font;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/FontMetrics;
    return-object v0
.end method
