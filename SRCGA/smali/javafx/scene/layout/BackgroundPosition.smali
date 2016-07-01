.class public Ljavafx/scene/layout/BackgroundPosition;
.super Ljava/lang/Object;
.source "BackgroundPosition.java"


# static fields
.field public static final CENTER:Ljavafx/scene/layout/BackgroundPosition;

.field public static final DEFAULT:Ljavafx/scene/layout/BackgroundPosition;


# instance fields
.field private final hash:I

.field final horizontalAsPercentage:Z

.field final horizontalPosition:D

.field final horizontalSide:Ljavafx/geometry/Side;

.field final verticalAsPercentage:Z

.field final verticalPosition:D

.field final verticalSide:Ljavafx/geometry/Side;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    .line 58
    new-instance v1, Ljavafx/scene/layout/BackgroundPosition;

    move-object v11, v1

    move-object v1, v11

    move-object v2, v11

    sget-object v3, Ljavafx/geometry/Side;->LEFT:Ljavafx/geometry/Side;

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    sget-object v7, Ljavafx/geometry/Side;->TOP:Ljavafx/geometry/Side;

    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    invoke-direct/range {v2 .. v10}, Ljavafx/scene/layout/BackgroundPosition;-><init>(Ljavafx/geometry/Side;DZLjavafx/geometry/Side;DZ)V

    sput-object v1, Ljavafx/scene/layout/BackgroundPosition;->DEFAULT:Ljavafx/scene/layout/BackgroundPosition;

    .line 65
    new-instance v1, Ljavafx/scene/layout/BackgroundPosition;

    move-object v11, v1

    move-object v1, v11

    move-object v2, v11

    sget-object v3, Ljavafx/geometry/Side;->LEFT:Ljavafx/geometry/Side;

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    const/4 v6, 0x1

    sget-object v7, Ljavafx/geometry/Side;->TOP:Ljavafx/geometry/Side;

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    const/4 v10, 0x1

    invoke-direct/range {v2 .. v10}, Ljavafx/scene/layout/BackgroundPosition;-><init>(Ljavafx/geometry/Side;DZLjavafx/geometry/Side;DZ)V

    sput-object v1, Ljavafx/scene/layout/BackgroundPosition;->CENTER:Ljavafx/scene/layout/BackgroundPosition;

    return-void
.end method

.method public constructor <init>(Ljavafx/geometry/Side;DZLjavafx/geometry/Side;DZ)V
    .locals 20
    .param p1    # Ljavafx/geometry/Side;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "horizontalSide"
        .end annotation
    .end param
    .param p2    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "horizontalPosition"
        .end annotation
    .end param
    .param p4    # Z
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "horizontalAsPercentage"
        .end annotation
    .end param
    .param p5    # Ljavafx/geometry/Side;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "verticalSide"
        .end annotation
    .end param
    .param p6    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "verticalPosition"
        .end annotation
    .end param
    .param p8    # Z
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "verticalAsPercentage"
        .end annotation
    .end param

    .prologue
    .line 137
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/layout/BackgroundPosition;
    move-object/from16 v1, p1

    .local v1, "horizontalSide":Ljavafx/geometry/Side;
    move-wide/from16 v2, p2

    .local v2, "horizontalPosition":D
    move/from16 v4, p4

    .local v4, "horizontalAsPercentage":Z
    move-object/from16 v5, p5

    .local v5, "verticalSide":Ljavafx/geometry/Side;
    move-wide/from16 v6, p6

    .local v6, "verticalPosition":D
    move/from16 v8, p8

    .local v8, "verticalAsPercentage":Z
    move-object v12, v0

    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    .line 139
    move-object v12, v1

    sget-object v13, Ljavafx/geometry/Side;->TOP:Ljavafx/geometry/Side;

    if-eq v12, v13, :cond_0

    move-object v12, v1

    sget-object v13, Ljavafx/geometry/Side;->BOTTOM:Ljavafx/geometry/Side;

    if-ne v12, v13, :cond_1

    .line 140
    :cond_0
    new-instance v12, Ljava/lang/IllegalArgumentException;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    const-string v14, "The horizontalSide must be LEFT or RIGHT"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 143
    :cond_1
    move-object v12, v5

    sget-object v13, Ljavafx/geometry/Side;->LEFT:Ljavafx/geometry/Side;

    if-eq v12, v13, :cond_2

    move-object v12, v5

    sget-object v13, Ljavafx/geometry/Side;->RIGHT:Ljavafx/geometry/Side;

    if-ne v12, v13, :cond_3

    .line 144
    :cond_2
    new-instance v12, Ljava/lang/IllegalArgumentException;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    const-string v14, "The verticalSide must be TOP or BOTTOM"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 147
    :cond_3
    move-object v12, v0

    move-object v13, v1

    if-nez v13, :cond_4

    sget-object v13, Ljavafx/geometry/Side;->LEFT:Ljavafx/geometry/Side;

    :goto_0
    iput-object v13, v12, Ljavafx/scene/layout/BackgroundPosition;->horizontalSide:Ljavafx/geometry/Side;

    .line 148
    move-object v12, v0

    move-object v13, v5

    if-nez v13, :cond_5

    sget-object v13, Ljavafx/geometry/Side;->TOP:Ljavafx/geometry/Side;

    :goto_1
    iput-object v13, v12, Ljavafx/scene/layout/BackgroundPosition;->verticalSide:Ljavafx/geometry/Side;

    .line 149
    move-object v12, v0

    move-wide v13, v2

    iput-wide v13, v12, Ljavafx/scene/layout/BackgroundPosition;->horizontalPosition:D

    .line 150
    move-object v12, v0

    move-wide v13, v6

    iput-wide v13, v12, Ljavafx/scene/layout/BackgroundPosition;->verticalPosition:D

    .line 151
    move-object v12, v0

    move v13, v4

    iput-boolean v13, v12, Ljavafx/scene/layout/BackgroundPosition;->horizontalAsPercentage:Z

    .line 152
    move-object v12, v0

    move v13, v8

    iput-boolean v13, v12, Ljavafx/scene/layout/BackgroundPosition;->verticalAsPercentage:Z

    .line 159
    move-object v12, v0

    iget-object v12, v12, Ljavafx/scene/layout/BackgroundPosition;->horizontalSide:Ljavafx/geometry/Side;

    invoke-virtual {v12}, Ljavafx/geometry/Side;->hashCode()I

    move-result v12

    move v9, v12

    .line 160
    .local v9, "result":I
    const/16 v12, 0x1f

    move v13, v9

    mul-int/2addr v12, v13

    move-object v13, v0

    iget-object v13, v13, Ljavafx/scene/layout/BackgroundPosition;->verticalSide:Ljavafx/geometry/Side;

    invoke-virtual {v13}, Ljavafx/geometry/Side;->hashCode()I

    move-result v13

    add-int/2addr v12, v13

    move v9, v12

    .line 161
    move-object v12, v0

    iget-wide v12, v12, Ljavafx/scene/layout/BackgroundPosition;->horizontalPosition:D

    const-wide/16 v14, 0x0

    cmpl-double v12, v12, v14

    if-eqz v12, :cond_6

    move-object v12, v0

    iget-wide v12, v12, Ljavafx/scene/layout/BackgroundPosition;->horizontalPosition:D

    invoke-static {v12, v13}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v12

    :goto_2
    move-wide v10, v12

    .line 162
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

    .line 163
    move-object v12, v0

    iget-wide v12, v12, Ljavafx/scene/layout/BackgroundPosition;->verticalPosition:D

    const-wide/16 v14, 0x0

    cmpl-double v12, v12, v14

    if-eqz v12, :cond_7

    move-object v12, v0

    iget-wide v12, v12, Ljavafx/scene/layout/BackgroundPosition;->verticalPosition:D

    invoke-static {v12, v13}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v12

    :goto_3
    move-wide v10, v12

    .line 164
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

    .line 165
    const/16 v12, 0x1f

    move v13, v9

    mul-int/2addr v12, v13

    move-object v13, v0

    iget-boolean v13, v13, Ljavafx/scene/layout/BackgroundPosition;->horizontalAsPercentage:Z

    if-eqz v13, :cond_8

    const/4 v13, 0x1

    :goto_4
    add-int/2addr v12, v13

    move v9, v12

    .line 166
    const/16 v12, 0x1f

    move v13, v9

    mul-int/2addr v12, v13

    move-object v13, v0

    iget-boolean v13, v13, Ljavafx/scene/layout/BackgroundPosition;->verticalAsPercentage:Z

    if-eqz v13, :cond_9

    const/4 v13, 0x1

    :goto_5
    add-int/2addr v12, v13

    move v9, v12

    .line 167
    move-object v12, v0

    move v13, v9

    iput v13, v12, Ljavafx/scene/layout/BackgroundPosition;->hash:I

    .line 168
    return-void

    .line 147
    .end local v9    # "result":I
    .end local v10    # "temp":J
    :cond_4
    move-object v13, v1

    goto/16 :goto_0

    .line 148
    :cond_5
    move-object v13, v5

    goto/16 :goto_1

    .line 161
    .restart local v9    # "result":I
    :cond_6
    const-wide/16 v12, 0x0

    goto :goto_2

    .line 163
    .restart local v10    # "temp":J
    :cond_7
    const-wide/16 v12, 0x0

    goto :goto_3

    .line 165
    :cond_8
    const/4 v13, 0x0

    goto :goto_4

    .line 166
    :cond_9
    const/4 v13, 0x0

    goto :goto_5
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8

    .prologue
    .line 174
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/BackgroundPosition;
    move-object v2, p1

    .local v2, "o":Ljava/lang/Object;
    move-object v4, v1

    move-object v5, v2

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    move v1, v4

    .line 185
    .end local v1    # "this":Ljavafx/scene/layout/BackgroundPosition;
    :goto_0
    return v1

    .line 175
    .restart local v1    # "this":Ljavafx/scene/layout/BackgroundPosition;
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

    .line 176
    :cond_2
    move-object v4, v2

    check-cast v4, Ljavafx/scene/layout/BackgroundPosition;

    move-object v3, v4

    .line 177
    .local v3, "that":Ljavafx/scene/layout/BackgroundPosition;
    move-object v4, v1

    iget v4, v4, Ljavafx/scene/layout/BackgroundPosition;->hash:I

    move-object v5, v3

    iget v5, v5, Ljavafx/scene/layout/BackgroundPosition;->hash:I

    if-eq v4, v5, :cond_3

    const/4 v4, 0x0

    move v1, v4

    goto :goto_0

    .line 178
    :cond_3
    move-object v4, v1

    iget-boolean v4, v4, Ljavafx/scene/layout/BackgroundPosition;->horizontalAsPercentage:Z

    move-object v5, v3

    iget-boolean v5, v5, Ljavafx/scene/layout/BackgroundPosition;->horizontalAsPercentage:Z

    if-eq v4, v5, :cond_4

    const/4 v4, 0x0

    move v1, v4

    goto :goto_0

    .line 179
    :cond_4
    move-object v4, v3

    iget-wide v4, v4, Ljavafx/scene/layout/BackgroundPosition;->horizontalPosition:D

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/layout/BackgroundPosition;->horizontalPosition:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x0

    move v1, v4

    goto :goto_0

    .line 180
    :cond_5
    move-object v4, v1

    iget-boolean v4, v4, Ljavafx/scene/layout/BackgroundPosition;->verticalAsPercentage:Z

    move-object v5, v3

    iget-boolean v5, v5, Ljavafx/scene/layout/BackgroundPosition;->verticalAsPercentage:Z

    if-eq v4, v5, :cond_6

    const/4 v4, 0x0

    move v1, v4

    goto :goto_0

    .line 181
    :cond_6
    move-object v4, v3

    iget-wide v4, v4, Ljavafx/scene/layout/BackgroundPosition;->verticalPosition:D

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/layout/BackgroundPosition;->verticalPosition:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v4

    if-eqz v4, :cond_7

    const/4 v4, 0x0

    move v1, v4

    goto :goto_0

    .line 182
    :cond_7
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/layout/BackgroundPosition;->horizontalSide:Ljavafx/geometry/Side;

    move-object v5, v3

    iget-object v5, v5, Ljavafx/scene/layout/BackgroundPosition;->horizontalSide:Ljavafx/geometry/Side;

    if-eq v4, v5, :cond_8

    const/4 v4, 0x0

    move v1, v4

    goto :goto_0

    .line 183
    :cond_8
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/layout/BackgroundPosition;->verticalSide:Ljavafx/geometry/Side;

    move-object v5, v3

    iget-object v5, v5, Ljavafx/scene/layout/BackgroundPosition;->verticalSide:Ljavafx/geometry/Side;

    if-eq v4, v5, :cond_9

    const/4 v4, 0x0

    move v1, v4

    goto :goto_0

    .line 185
    :cond_9
    const/4 v4, 0x1

    move v1, v4

    goto :goto_0
.end method

.method public final getHorizontalPosition()D
    .locals 3

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BackgroundPosition;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/layout/BackgroundPosition;->horizontalPosition:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/BackgroundPosition;
    return-wide v0
.end method

.method public final getHorizontalSide()Ljavafx/geometry/Side;
    .locals 2

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BackgroundPosition;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/BackgroundPosition;->horizontalSide:Ljavafx/geometry/Side;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/BackgroundPosition;
    return-object v0
.end method

.method public final getVerticalPosition()D
    .locals 3

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BackgroundPosition;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/layout/BackgroundPosition;->verticalPosition:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/BackgroundPosition;
    return-wide v0
.end method

.method public final getVerticalSide()Ljavafx/geometry/Side;
    .locals 2

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BackgroundPosition;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/BackgroundPosition;->verticalSide:Ljavafx/geometry/Side;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/BackgroundPosition;
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 192
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BackgroundPosition;
    move-object v1, v0

    iget v1, v1, Ljavafx/scene/layout/BackgroundPosition;->hash:I

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/BackgroundPosition;
    return v0
.end method

.method public final isHorizontalAsPercentage()Z
    .locals 2

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BackgroundPosition;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/layout/BackgroundPosition;->horizontalAsPercentage:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/BackgroundPosition;
    return v0
.end method

.method public final isVerticalAsPercentage()Z
    .locals 2

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BackgroundPosition;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/layout/BackgroundPosition;->verticalAsPercentage:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/BackgroundPosition;
    return v0
.end method
