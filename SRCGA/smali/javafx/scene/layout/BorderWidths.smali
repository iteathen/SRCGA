.class public final Ljavafx/scene/layout/BorderWidths;
.super Ljava/lang/Object;
.source "BorderWidths.java"


# static fields
.field public static final AUTO:D = -1.0

.field public static final DEFAULT:Ljavafx/scene/layout/BorderWidths;

.field public static final EMPTY:Ljavafx/scene/layout/BorderWidths;

.field public static final FULL:Ljavafx/scene/layout/BorderWidths;


# instance fields
.field final bottom:D

.field final bottomAsPercentage:Z

.field private final hash:I

.field final left:D

.field final leftAsPercentage:Z

.field final right:D

.field final rightAsPercentage:Z

.field final top:D

.field final topAsPercentage:Z


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .prologue
    .line 57
    new-instance v0, Ljavafx/scene/layout/BorderWidths;

    move-object v14, v0

    move-object v0, v14

    move-object v1, v14

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v1 .. v13}, Ljavafx/scene/layout/BorderWidths;-><init>(DDDDZZZZ)V

    sput-object v0, Ljavafx/scene/layout/BorderWidths;->DEFAULT:Ljavafx/scene/layout/BorderWidths;

    .line 62
    new-instance v0, Ljavafx/scene/layout/BorderWidths;

    move-object v14, v0

    move-object v0, v14

    move-object v1, v14

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v1 .. v13}, Ljavafx/scene/layout/BorderWidths;-><init>(DDDDZZZZ)V

    sput-object v0, Ljavafx/scene/layout/BorderWidths;->EMPTY:Ljavafx/scene/layout/BorderWidths;

    .line 67
    new-instance v0, Ljavafx/scene/layout/BorderWidths;

    move-object v14, v0

    move-object v0, v14

    move-object v1, v14

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x1

    invoke-direct/range {v1 .. v13}, Ljavafx/scene/layout/BorderWidths;-><init>(DDDDZZZZ)V

    sput-object v0, Ljavafx/scene/layout/BorderWidths;->FULL:Ljavafx/scene/layout/BorderWidths;

    return-void
.end method

.method public constructor <init>(D)V
    .locals 17
    .param p1    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "width"
        .end annotation
    .end param

    .prologue
    .line 147
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/layout/BorderWidths;
    move-wide/from16 v1, p1

    .local v1, "width":D
    move-object v3, v0

    move-wide v4, v1

    move-wide v6, v1

    move-wide v8, v1

    move-wide v10, v1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v3 .. v15}, Ljavafx/scene/layout/BorderWidths;-><init>(DDDDZZZZ)V

    .line 148
    return-void
.end method

.method public constructor <init>(DDDD)V
    .locals 23
    .param p1    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "top"
        .end annotation
    .end param
    .param p3    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "right"
        .end annotation
    .end param
    .param p5    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "bottom"
        .end annotation
    .end param
    .param p7    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "left"
        .end annotation
    .end param

    .prologue
    .line 161
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/layout/BorderWidths;
    move-wide/from16 v1, p1

    .local v1, "top":D
    move-wide/from16 v3, p3

    .local v3, "right":D
    move-wide/from16 v5, p5

    .local v5, "bottom":D
    move-wide/from16 v7, p7

    .local v7, "left":D
    move-object v9, v0

    move-wide v10, v1

    move-wide v12, v3

    move-wide v14, v5

    move-wide/from16 v16, v7

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-direct/range {v9 .. v21}, Ljavafx/scene/layout/BorderWidths;-><init>(DDDDZZZZ)V

    .line 162
    return-void
.end method

.method public constructor <init>(DDDDZZZZ)V
    .locals 27
    .param p1    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "top"
        .end annotation
    .end param
    .param p3    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "right"
        .end annotation
    .end param
    .param p5    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "bottom"
        .end annotation
    .end param
    .param p7    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "left"
        .end annotation
    .end param
    .param p9    # Z
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "topAsPercentage"
        .end annotation
    .end param
    .param p10    # Z
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "rightAsPercentage"
        .end annotation
    .end param
    .param p11    # Z
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "bottomAsPercentage"
        .end annotation
    .end param
    .param p12    # Z
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "leftAsPercentage"
        .end annotation
    .end param

    .prologue
    .line 179
    move-object/from16 v4, p0

    .local v4, "this":Ljavafx/scene/layout/BorderWidths;
    move-wide/from16 v5, p1

    .local v5, "top":D
    move-wide/from16 v7, p3

    .local v7, "right":D
    move-wide/from16 v9, p5

    .local v9, "bottom":D
    move-wide/from16 v11, p7

    .local v11, "left":D
    move/from16 v13, p9

    .local v13, "topAsPercentage":Z
    move/from16 v14, p10

    .local v14, "rightAsPercentage":Z
    move/from16 v15, p11

    .local v15, "bottomAsPercentage":Z
    move/from16 v16, p12

    .local v16, "leftAsPercentage":Z
    move-object/from16 v20, v4

    invoke-direct/range {v20 .. v20}, Ljava/lang/Object;-><init>()V

    .line 182
    move-wide/from16 v20, v5

    const-wide/high16 v22, -0x4010000000000000L    # -1.0

    cmpl-double v20, v20, v22

    if-eqz v20, :cond_0

    move-wide/from16 v20, v5

    const-wide/16 v22, 0x0

    cmpg-double v20, v20, v22

    if-ltz v20, :cond_3

    :cond_0
    move-wide/from16 v20, v7

    const-wide/high16 v22, -0x4010000000000000L    # -1.0

    cmpl-double v20, v20, v22

    if-eqz v20, :cond_1

    move-wide/from16 v20, v7

    const-wide/16 v22, 0x0

    cmpg-double v20, v20, v22

    if-ltz v20, :cond_3

    :cond_1
    move-wide/from16 v20, v9

    const-wide/high16 v22, -0x4010000000000000L    # -1.0

    cmpl-double v20, v20, v22

    if-eqz v20, :cond_2

    move-wide/from16 v20, v9

    const-wide/16 v22, 0x0

    cmpg-double v20, v20, v22

    if-ltz v20, :cond_3

    :cond_2
    move-wide/from16 v20, v11

    const-wide/high16 v22, -0x4010000000000000L    # -1.0

    cmpl-double v20, v20, v22

    if-eqz v20, :cond_4

    move-wide/from16 v20, v11

    const-wide/16 v22, 0x0

    cmpg-double v20, v20, v22

    if-gez v20, :cond_4

    .line 186
    :cond_3
    new-instance v20, Ljava/lang/IllegalArgumentException;

    move-object/from16 v26, v20

    move-object/from16 v20, v26

    move-object/from16 v21, v26

    const-string v22, "None of the widths can be < 0"

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 189
    :cond_4
    move-object/from16 v20, v4

    move-wide/from16 v21, v5

    move-wide/from16 v0, v21

    move-object/from16 v2, v20

    iput-wide v0, v2, Ljavafx/scene/layout/BorderWidths;->top:D

    .line 190
    move-object/from16 v20, v4

    move-wide/from16 v21, v7

    move-wide/from16 v0, v21

    move-object/from16 v2, v20

    iput-wide v0, v2, Ljavafx/scene/layout/BorderWidths;->right:D

    .line 191
    move-object/from16 v20, v4

    move-wide/from16 v21, v9

    move-wide/from16 v0, v21

    move-object/from16 v2, v20

    iput-wide v0, v2, Ljavafx/scene/layout/BorderWidths;->bottom:D

    .line 192
    move-object/from16 v20, v4

    move-wide/from16 v21, v11

    move-wide/from16 v0, v21

    move-object/from16 v2, v20

    iput-wide v0, v2, Ljavafx/scene/layout/BorderWidths;->left:D

    .line 193
    move-object/from16 v20, v4

    move/from16 v21, v13

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput-boolean v0, v1, Ljavafx/scene/layout/BorderWidths;->topAsPercentage:Z

    .line 194
    move-object/from16 v20, v4

    move/from16 v21, v14

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput-boolean v0, v1, Ljavafx/scene/layout/BorderWidths;->rightAsPercentage:Z

    .line 195
    move-object/from16 v20, v4

    move/from16 v21, v15

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput-boolean v0, v1, Ljavafx/scene/layout/BorderWidths;->bottomAsPercentage:Z

    .line 196
    move-object/from16 v20, v4

    move/from16 v21, v16

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput-boolean v0, v1, Ljavafx/scene/layout/BorderWidths;->leftAsPercentage:Z

    .line 203
    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget-wide v0, v0, Ljavafx/scene/layout/BorderWidths;->top:D

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmpl-double v20, v20, v22

    if-eqz v20, :cond_5

    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget-wide v0, v0, Ljavafx/scene/layout/BorderWidths;->top:D

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v20

    :goto_0
    move-wide/from16 v18, v20

    .line 204
    .local v18, "temp":J
    move-wide/from16 v20, v18

    move-wide/from16 v22, v18

    const/16 v24, 0x20

    ushr-long v22, v22, v24

    xor-long v20, v20, v22

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v20, v0

    move/from16 v17, v20

    .line 205
    .local v17, "result":I
    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget-wide v0, v0, Ljavafx/scene/layout/BorderWidths;->right:D

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmpl-double v20, v20, v22

    if-eqz v20, :cond_6

    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget-wide v0, v0, Ljavafx/scene/layout/BorderWidths;->right:D

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v20

    :goto_1
    move-wide/from16 v18, v20

    .line 206
    const/16 v20, 0x1f

    move/from16 v21, v17

    mul-int v20, v20, v21

    move-wide/from16 v21, v18

    move-wide/from16 v23, v18

    const/16 v25, 0x20

    ushr-long v23, v23, v25

    xor-long v21, v21, v23

    move-wide/from16 v0, v21

    long-to-int v0, v0

    move/from16 v21, v0

    add-int v20, v20, v21

    move/from16 v17, v20

    .line 207
    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget-wide v0, v0, Ljavafx/scene/layout/BorderWidths;->bottom:D

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmpl-double v20, v20, v22

    if-eqz v20, :cond_7

    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget-wide v0, v0, Ljavafx/scene/layout/BorderWidths;->bottom:D

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v20

    :goto_2
    move-wide/from16 v18, v20

    .line 208
    const/16 v20, 0x1f

    move/from16 v21, v17

    mul-int v20, v20, v21

    move-wide/from16 v21, v18

    move-wide/from16 v23, v18

    const/16 v25, 0x20

    ushr-long v23, v23, v25

    xor-long v21, v21, v23

    move-wide/from16 v0, v21

    long-to-int v0, v0

    move/from16 v21, v0

    add-int v20, v20, v21

    move/from16 v17, v20

    .line 209
    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget-wide v0, v0, Ljavafx/scene/layout/BorderWidths;->left:D

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmpl-double v20, v20, v22

    if-eqz v20, :cond_8

    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget-wide v0, v0, Ljavafx/scene/layout/BorderWidths;->left:D

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v20

    :goto_3
    move-wide/from16 v18, v20

    .line 210
    const/16 v20, 0x1f

    move/from16 v21, v17

    mul-int v20, v20, v21

    move-wide/from16 v21, v18

    move-wide/from16 v23, v18

    const/16 v25, 0x20

    ushr-long v23, v23, v25

    xor-long v21, v21, v23

    move-wide/from16 v0, v21

    long-to-int v0, v0

    move/from16 v21, v0

    add-int v20, v20, v21

    move/from16 v17, v20

    .line 211
    const/16 v20, 0x1f

    move/from16 v21, v17

    mul-int v20, v20, v21

    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget-boolean v0, v0, Ljavafx/scene/layout/BorderWidths;->topAsPercentage:Z

    move/from16 v21, v0

    if-eqz v21, :cond_9

    const/16 v21, 0x1

    :goto_4
    add-int v20, v20, v21

    move/from16 v17, v20

    .line 212
    const/16 v20, 0x1f

    move/from16 v21, v17

    mul-int v20, v20, v21

    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget-boolean v0, v0, Ljavafx/scene/layout/BorderWidths;->rightAsPercentage:Z

    move/from16 v21, v0

    if-eqz v21, :cond_a

    const/16 v21, 0x1

    :goto_5
    add-int v20, v20, v21

    move/from16 v17, v20

    .line 213
    const/16 v20, 0x1f

    move/from16 v21, v17

    mul-int v20, v20, v21

    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget-boolean v0, v0, Ljavafx/scene/layout/BorderWidths;->bottomAsPercentage:Z

    move/from16 v21, v0

    if-eqz v21, :cond_b

    const/16 v21, 0x1

    :goto_6
    add-int v20, v20, v21

    move/from16 v17, v20

    .line 214
    const/16 v20, 0x1f

    move/from16 v21, v17

    mul-int v20, v20, v21

    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget-boolean v0, v0, Ljavafx/scene/layout/BorderWidths;->leftAsPercentage:Z

    move/from16 v21, v0

    if-eqz v21, :cond_c

    const/16 v21, 0x1

    :goto_7
    add-int v20, v20, v21

    move/from16 v17, v20

    .line 215
    move-object/from16 v20, v4

    move/from16 v21, v17

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Ljavafx/scene/layout/BorderWidths;->hash:I

    .line 216
    return-void

    .line 203
    .end local v17    # "result":I
    .end local v18    # "temp":J
    :cond_5
    const-wide/16 v20, 0x0

    goto/16 :goto_0

    .line 205
    .restart local v17    # "result":I
    .restart local v18    # "temp":J
    :cond_6
    const-wide/16 v20, 0x0

    goto/16 :goto_1

    .line 207
    :cond_7
    const-wide/16 v20, 0x0

    goto/16 :goto_2

    .line 209
    :cond_8
    const-wide/16 v20, 0x0

    goto/16 :goto_3

    .line 211
    :cond_9
    const/16 v21, 0x0

    goto :goto_4

    .line 212
    :cond_a
    const/16 v21, 0x0

    goto :goto_5

    .line 213
    :cond_b
    const/16 v21, 0x0

    goto :goto_6

    .line 214
    :cond_c
    const/16 v21, 0x0

    goto :goto_7
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8

    .prologue
    .line 222
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/BorderWidths;
    move-object v2, p1

    .local v2, "o":Ljava/lang/Object;
    move-object v4, v1

    move-object v5, v2

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    move v1, v4

    .line 236
    .end local v1    # "this":Ljavafx/scene/layout/BorderWidths;
    :goto_0
    return v1

    .line 223
    .restart local v1    # "this":Ljavafx/scene/layout/BorderWidths;
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

    .line 224
    :cond_2
    move-object v4, v2

    check-cast v4, Ljavafx/scene/layout/BorderWidths;

    move-object v3, v4

    .line 226
    .local v3, "that":Ljavafx/scene/layout/BorderWidths;
    move-object v4, v1

    iget v4, v4, Ljavafx/scene/layout/BorderWidths;->hash:I

    move-object v5, v3

    iget v5, v5, Ljavafx/scene/layout/BorderWidths;->hash:I

    if-eq v4, v5, :cond_3

    const/4 v4, 0x0

    move v1, v4

    goto :goto_0

    .line 227
    :cond_3
    move-object v4, v3

    iget-wide v4, v4, Ljavafx/scene/layout/BorderWidths;->bottom:D

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/layout/BorderWidths;->bottom:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    move v1, v4

    goto :goto_0

    .line 228
    :cond_4
    move-object v4, v1

    iget-boolean v4, v4, Ljavafx/scene/layout/BorderWidths;->bottomAsPercentage:Z

    move-object v5, v3

    iget-boolean v5, v5, Ljavafx/scene/layout/BorderWidths;->bottomAsPercentage:Z

    if-eq v4, v5, :cond_5

    const/4 v4, 0x0

    move v1, v4

    goto :goto_0

    .line 229
    :cond_5
    move-object v4, v3

    iget-wide v4, v4, Ljavafx/scene/layout/BorderWidths;->left:D

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/layout/BorderWidths;->left:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x0

    move v1, v4

    goto :goto_0

    .line 230
    :cond_6
    move-object v4, v1

    iget-boolean v4, v4, Ljavafx/scene/layout/BorderWidths;->leftAsPercentage:Z

    move-object v5, v3

    iget-boolean v5, v5, Ljavafx/scene/layout/BorderWidths;->leftAsPercentage:Z

    if-eq v4, v5, :cond_7

    const/4 v4, 0x0

    move v1, v4

    goto :goto_0

    .line 231
    :cond_7
    move-object v4, v3

    iget-wide v4, v4, Ljavafx/scene/layout/BorderWidths;->right:D

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/layout/BorderWidths;->right:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x0

    move v1, v4

    goto :goto_0

    .line 232
    :cond_8
    move-object v4, v1

    iget-boolean v4, v4, Ljavafx/scene/layout/BorderWidths;->rightAsPercentage:Z

    move-object v5, v3

    iget-boolean v5, v5, Ljavafx/scene/layout/BorderWidths;->rightAsPercentage:Z

    if-eq v4, v5, :cond_9

    const/4 v4, 0x0

    move v1, v4

    goto :goto_0

    .line 233
    :cond_9
    move-object v4, v3

    iget-wide v4, v4, Ljavafx/scene/layout/BorderWidths;->top:D

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/layout/BorderWidths;->top:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v4

    if-eqz v4, :cond_a

    const/4 v4, 0x0

    move v1, v4

    goto :goto_0

    .line 234
    :cond_a
    move-object v4, v1

    iget-boolean v4, v4, Ljavafx/scene/layout/BorderWidths;->topAsPercentage:Z

    move-object v5, v3

    iget-boolean v5, v5, Ljavafx/scene/layout/BorderWidths;->topAsPercentage:Z

    if-eq v4, v5, :cond_b

    const/4 v4, 0x0

    move v1, v4

    goto/16 :goto_0

    .line 236
    :cond_b
    const/4 v4, 0x1

    move v1, v4

    goto/16 :goto_0
.end method

.method public final getBottom()D
    .locals 3

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BorderWidths;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/layout/BorderWidths;->bottom:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/BorderWidths;
    return-wide v0
.end method

.method public final getLeft()D
    .locals 3

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BorderWidths;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/layout/BorderWidths;->left:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/BorderWidths;
    return-wide v0
.end method

.method public final getRight()D
    .locals 3

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BorderWidths;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/layout/BorderWidths;->right:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/BorderWidths;
    return-wide v0
.end method

.method public final getTop()D
    .locals 3

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BorderWidths;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/layout/BorderWidths;->top:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/BorderWidths;
    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 243
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BorderWidths;
    move-object v1, v0

    iget v1, v1, Ljavafx/scene/layout/BorderWidths;->hash:I

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/BorderWidths;
    return v0
.end method

.method public final isBottomAsPercentage()Z
    .locals 2

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BorderWidths;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/layout/BorderWidths;->bottomAsPercentage:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/BorderWidths;
    return v0
.end method

.method public final isLeftAsPercentage()Z
    .locals 2

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BorderWidths;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/layout/BorderWidths;->leftAsPercentage:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/BorderWidths;
    return v0
.end method

.method public final isRightAsPercentage()Z
    .locals 2

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BorderWidths;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/layout/BorderWidths;->rightAsPercentage:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/BorderWidths;
    return v0
.end method

.method public final isTopAsPercentage()Z
    .locals 2

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BorderWidths;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/layout/BorderWidths;->topAsPercentage:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/BorderWidths;
    return v0
.end method
