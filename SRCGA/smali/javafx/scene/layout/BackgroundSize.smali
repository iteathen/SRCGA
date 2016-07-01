.class public final Ljavafx/scene/layout/BackgroundSize;
.super Ljava/lang/Object;
.source "BackgroundSize.java"


# static fields
.field public static final AUTO:D = -1.0

.field public static final DEFAULT:Ljavafx/scene/layout/BackgroundSize;


# instance fields
.field final contain:Z

.field final cover:Z

.field private final hash:I

.field final height:D

.field final heightAsPercentage:Z

.field final width:D

.field final widthAsPercentage:Z


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    .line 78
    new-instance v0, Ljavafx/scene/layout/BackgroundSize;

    move-object v10, v0

    move-object v0, v10

    move-object v1, v10

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Ljavafx/scene/layout/BackgroundSize;-><init>(DDZZZZ)V

    sput-object v0, Ljavafx/scene/layout/BackgroundSize;->DEFAULT:Ljavafx/scene/layout/BackgroundSize;

    return-void
.end method

.method public constructor <init>(DDZZZZ)V
    .locals 19
    .param p1    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "width"
        .end annotation
    .end param
    .param p3    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "height"
        .end annotation
    .end param
    .param p5    # Z
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "widthAsPercentage"
        .end annotation
    .end param
    .param p6    # Z
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "heightAsPercentage"
        .end annotation
    .end param
    .param p7    # Z
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "contain"
        .end annotation
    .end param
    .param p8    # Z
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "cover"
        .end annotation
    .end param

    .prologue
    .line 145
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/layout/BackgroundSize;
    move-wide/from16 v1, p1

    .local v1, "width":D
    move-wide/from16 v3, p3

    .local v3, "height":D
    move/from16 v5, p5

    .local v5, "widthAsPercentage":Z
    move/from16 v6, p6

    .local v6, "heightAsPercentage":Z
    move/from16 v7, p7

    .local v7, "contain":Z
    move/from16 v8, p8

    .local v8, "cover":Z
    move-object v12, v0

    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    .line 147
    move-wide v12, v1

    const-wide/16 v14, 0x0

    cmpg-double v12, v12, v14

    if-gez v12, :cond_0

    move-wide v12, v1

    const-wide/high16 v14, -0x4010000000000000L    # -1.0

    cmpl-double v12, v12, v14

    if-eqz v12, :cond_0

    .line 148
    new-instance v12, Ljava/lang/IllegalArgumentException;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    const-string v14, "Width cannot be < 0, except when AUTO"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 149
    :cond_0
    move-wide v12, v3

    const-wide/16 v14, 0x0

    cmpg-double v12, v12, v14

    if-gez v12, :cond_1

    move-wide v12, v3

    const-wide/high16 v14, -0x4010000000000000L    # -1.0

    cmpl-double v12, v12, v14

    if-eqz v12, :cond_1

    .line 150
    new-instance v12, Ljava/lang/IllegalArgumentException;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    const-string v14, "Height cannot be < 0, except when AUTO"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 152
    :cond_1
    move-object v12, v0

    move-wide v13, v1

    iput-wide v13, v12, Ljavafx/scene/layout/BackgroundSize;->width:D

    .line 153
    move-object v12, v0

    move-wide v13, v3

    iput-wide v13, v12, Ljavafx/scene/layout/BackgroundSize;->height:D

    .line 154
    move-object v12, v0

    move v13, v5

    iput-boolean v13, v12, Ljavafx/scene/layout/BackgroundSize;->widthAsPercentage:Z

    .line 155
    move-object v12, v0

    move v13, v6

    iput-boolean v13, v12, Ljavafx/scene/layout/BackgroundSize;->heightAsPercentage:Z

    .line 156
    move-object v12, v0

    move v13, v7

    iput-boolean v13, v12, Ljavafx/scene/layout/BackgroundSize;->contain:Z

    .line 157
    move-object v12, v0

    move v13, v8

    iput-boolean v13, v12, Ljavafx/scene/layout/BackgroundSize;->cover:Z

    .line 164
    move-object v12, v0

    iget-boolean v12, v12, Ljavafx/scene/layout/BackgroundSize;->widthAsPercentage:Z

    if-eqz v12, :cond_2

    const/4 v12, 0x1

    :goto_0
    move v9, v12

    .line 165
    .local v9, "result":I
    const/16 v12, 0x1f

    move v13, v9

    mul-int/2addr v12, v13

    move-object v13, v0

    iget-boolean v13, v13, Ljavafx/scene/layout/BackgroundSize;->heightAsPercentage:Z

    if-eqz v13, :cond_3

    const/4 v13, 0x1

    :goto_1
    add-int/2addr v12, v13

    move v9, v12

    .line 166
    move-object v12, v0

    iget-wide v12, v12, Ljavafx/scene/layout/BackgroundSize;->width:D

    const-wide/16 v14, 0x0

    cmpl-double v12, v12, v14

    if-eqz v12, :cond_4

    move-object v12, v0

    iget-wide v12, v12, Ljavafx/scene/layout/BackgroundSize;->width:D

    invoke-static {v12, v13}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v12

    :goto_2
    move-wide v10, v12

    .line 167
    .local v10, "temp":J
    const/16 v12, 0x1f

    move v13, v9

    mul-int/2addr v12, v13

    move-wide v13, v10

    move-wide v15, v10

    const/16 v17, 0x20

    ushr-long v15, v15, v17

    xor-long/2addr v13, v15

    long-to-int v13, v13

    add-int/2addr v12, v13

    move v9, v12

    .line 168
    move-object v12, v0

    iget-wide v12, v12, Ljavafx/scene/layout/BackgroundSize;->height:D

    const-wide/16 v14, 0x0

    cmpl-double v12, v12, v14

    if-eqz v12, :cond_5

    move-object v12, v0

    iget-wide v12, v12, Ljavafx/scene/layout/BackgroundSize;->height:D

    invoke-static {v12, v13}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v12

    :goto_3
    move-wide v10, v12

    .line 169
    const/16 v12, 0x1f

    move v13, v9

    mul-int/2addr v12, v13

    move-wide v13, v10

    move-wide v15, v10

    const/16 v17, 0x20

    ushr-long v15, v15, v17

    xor-long/2addr v13, v15

    long-to-int v13, v13

    add-int/2addr v12, v13

    move v9, v12

    .line 170
    const/16 v12, 0x1f

    move v13, v9

    mul-int/2addr v12, v13

    move-object v13, v0

    iget-boolean v13, v13, Ljavafx/scene/layout/BackgroundSize;->cover:Z

    if-eqz v13, :cond_6

    const/4 v13, 0x1

    :goto_4
    add-int/2addr v12, v13

    move v9, v12

    .line 171
    const/16 v12, 0x1f

    move v13, v9

    mul-int/2addr v12, v13

    move-object v13, v0

    iget-boolean v13, v13, Ljavafx/scene/layout/BackgroundSize;->contain:Z

    if-eqz v13, :cond_7

    const/4 v13, 0x1

    :goto_5
    add-int/2addr v12, v13

    move v9, v12

    .line 172
    move-object v12, v0

    move v13, v9

    iput v13, v12, Ljavafx/scene/layout/BackgroundSize;->hash:I

    .line 173
    return-void

    .line 164
    .end local v9    # "result":I
    .end local v10    # "temp":J
    :cond_2
    const/4 v12, 0x0

    goto :goto_0

    .line 165
    .restart local v9    # "result":I
    :cond_3
    const/4 v13, 0x0

    goto :goto_1

    .line 166
    :cond_4
    const-wide/16 v12, 0x0

    goto :goto_2

    .line 168
    .restart local v10    # "temp":J
    :cond_5
    const-wide/16 v12, 0x0

    goto :goto_3

    .line 170
    :cond_6
    const/4 v13, 0x0

    goto :goto_4

    .line 171
    :cond_7
    const/4 v13, 0x0

    goto :goto_5
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8

    .prologue
    .line 179
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/BackgroundSize;
    move-object v2, p1

    .local v2, "o":Ljava/lang/Object;
    move-object v4, v1

    move-object v5, v2

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    move v1, v4

    .line 191
    .end local v1    # "this":Ljavafx/scene/layout/BackgroundSize;
    :goto_0
    return v1

    .line 180
    .restart local v1    # "this":Ljavafx/scene/layout/BackgroundSize;
    :cond_0
    move-object v4, v2

    if-eqz v4, :cond_1

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    if-eq v4, v5, :cond_2

    :cond_1
    const/4 v4, 0x0

    move v1, v4

    goto :goto_0

    .line 181
    :cond_2
    move-object v4, v2

    check-cast v4, Ljavafx/scene/layout/BackgroundSize;

    move-object v3, v4

    .line 183
    .local v3, "that":Ljavafx/scene/layout/BackgroundSize;
    move-object v4, v1

    iget v4, v4, Ljavafx/scene/layout/BackgroundSize;->hash:I

    move-object v5, v3

    iget v5, v5, Ljavafx/scene/layout/BackgroundSize;->hash:I

    if-eq v4, v5, :cond_3

    const/4 v4, 0x0

    move v1, v4

    goto :goto_0

    .line 184
    :cond_3
    move-object v4, v1

    iget-boolean v4, v4, Ljavafx/scene/layout/BackgroundSize;->contain:Z

    move-object v5, v3

    iget-boolean v5, v5, Ljavafx/scene/layout/BackgroundSize;->contain:Z

    if-eq v4, v5, :cond_4

    const/4 v4, 0x0

    move v1, v4

    goto :goto_0

    .line 185
    :cond_4
    move-object v4, v1

    iget-boolean v4, v4, Ljavafx/scene/layout/BackgroundSize;->cover:Z

    move-object v5, v3

    iget-boolean v5, v5, Ljavafx/scene/layout/BackgroundSize;->cover:Z

    if-eq v4, v5, :cond_5

    const/4 v4, 0x0

    move v1, v4

    goto :goto_0

    .line 186
    :cond_5
    move-object v4, v3

    iget-wide v4, v4, Ljavafx/scene/layout/BackgroundSize;->height:D

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/layout/BackgroundSize;->height:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x0

    move v1, v4

    goto :goto_0

    .line 187
    :cond_6
    move-object v4, v1

    iget-boolean v4, v4, Ljavafx/scene/layout/BackgroundSize;->heightAsPercentage:Z

    move-object v5, v3

    iget-boolean v5, v5, Ljavafx/scene/layout/BackgroundSize;->heightAsPercentage:Z

    if-eq v4, v5, :cond_7

    const/4 v4, 0x0

    move v1, v4

    goto :goto_0

    .line 188
    :cond_7
    move-object v4, v1

    iget-boolean v4, v4, Ljavafx/scene/layout/BackgroundSize;->widthAsPercentage:Z

    move-object v5, v3

    iget-boolean v5, v5, Ljavafx/scene/layout/BackgroundSize;->widthAsPercentage:Z

    if-eq v4, v5, :cond_8

    const/4 v4, 0x0

    move v1, v4

    goto :goto_0

    .line 189
    :cond_8
    move-object v4, v3

    iget-wide v4, v4, Ljavafx/scene/layout/BackgroundSize;->width:D

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/layout/BackgroundSize;->width:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v4

    if-eqz v4, :cond_9

    const/4 v4, 0x0

    move v1, v4

    goto :goto_0

    .line 191
    :cond_9
    const/4 v4, 0x1

    move v1, v4

    goto :goto_0
.end method

.method public final getHeight()D
    .locals 3

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BackgroundSize;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/layout/BackgroundSize;->height:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/BackgroundSize;
    return-wide v0
.end method

.method public final getWidth()D
    .locals 3

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BackgroundSize;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/layout/BackgroundSize;->width:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/BackgroundSize;
    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 198
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BackgroundSize;
    move-object v1, v0

    iget v1, v1, Ljavafx/scene/layout/BackgroundSize;->hash:I

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/BackgroundSize;
    return v0
.end method

.method public final isContain()Z
    .locals 2

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BackgroundSize;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/layout/BackgroundSize;->contain:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/BackgroundSize;
    return v0
.end method

.method public final isCover()Z
    .locals 2

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BackgroundSize;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/layout/BackgroundSize;->cover:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/BackgroundSize;
    return v0
.end method

.method public final isHeightAsPercentage()Z
    .locals 2

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BackgroundSize;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/layout/BackgroundSize;->heightAsPercentage:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/BackgroundSize;
    return v0
.end method

.method public final isWidthAsPercentage()Z
    .locals 2

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BackgroundSize;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/layout/BackgroundSize;->widthAsPercentage:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/BackgroundSize;
    return v0
.end method
