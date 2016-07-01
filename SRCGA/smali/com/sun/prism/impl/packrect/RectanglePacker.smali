.class public Lcom/sun/prism/impl/packrect/RectanglePacker;
.super Ljava/lang/Object;
.source "RectanglePacker.java"


# static fields
.field private static final MIN_SIZE:I = 0x8

.field private static final ROUND_UP:I = 0x4


# instance fields
.field private backingStore:Lcom/sun/prism/Texture;

.field private length:I

.field private levels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sun/prism/impl/packrect/Level;",
            ">;"
        }
    .end annotation
.end field

.field private recentUsedLevelIndex:I

.field private size:I

.field private sizeOffset:I

.field private vertical:Z

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>(Lcom/sun/prism/Texture;II)V
    .locals 11

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/packrect/RectanglePacker;
    move-object v1, p1

    .local v1, "backingStore":Lcom/sun/prism/Texture;
    move v2, p2

    .local v2, "width":I
    move v3, p3

    .local v3, "height":I
    move-object v4, v0

    move-object v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v2

    move v9, v3

    const/4 v10, 0x0

    invoke-direct/range {v4 .. v10}, Lcom/sun/prism/impl/packrect/RectanglePacker;-><init>(Lcom/sun/prism/Texture;IIIIZ)V

    .line 87
    return-void
.end method

.method public constructor <init>(Lcom/sun/prism/Texture;IIIIZ)V
    .locals 12

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/packrect/RectanglePacker;
    move-object v1, p1

    .local v1, "backingStore":Lcom/sun/prism/Texture;
    move v2, p2

    .local v2, "x":I
    move v3, p3

    .local v3, "y":I
    move/from16 v4, p4

    .local v4, "width":I
    move/from16 v5, p5

    .local v5, "height":I
    move/from16 v6, p6

    .local v6, "vertical":Z
    move-object v7, v0

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 50
    move-object v7, v0

    new-instance v8, Ljava/util/ArrayList;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    const/16 v10, 0x96

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v8, v7, Lcom/sun/prism/impl/packrect/RectanglePacker;->levels:Ljava/util/List;

    .line 53
    move-object v7, v0

    const/4 v8, 0x0

    iput v8, v7, Lcom/sun/prism/impl/packrect/RectanglePacker;->recentUsedLevelIndex:I

    .line 63
    move-object v7, v0

    move-object v8, v1

    iput-object v8, v7, Lcom/sun/prism/impl/packrect/RectanglePacker;->backingStore:Lcom/sun/prism/Texture;

    .line 64
    move v7, v6

    if-eqz v7, :cond_0

    .line 65
    move-object v7, v0

    move v8, v5

    iput v8, v7, Lcom/sun/prism/impl/packrect/RectanglePacker;->length:I

    .line 66
    move-object v7, v0

    move v8, v4

    iput v8, v7, Lcom/sun/prism/impl/packrect/RectanglePacker;->size:I

    .line 71
    :goto_0
    move-object v7, v0

    move v8, v2

    iput v8, v7, Lcom/sun/prism/impl/packrect/RectanglePacker;->x:I

    .line 72
    move-object v7, v0

    move v8, v3

    iput v8, v7, Lcom/sun/prism/impl/packrect/RectanglePacker;->y:I

    .line 73
    move-object v7, v0

    move v8, v6

    iput-boolean v8, v7, Lcom/sun/prism/impl/packrect/RectanglePacker;->vertical:Z

    .line 74
    return-void

    .line 68
    :cond_0
    move-object v7, v0

    move v8, v4

    iput v8, v7, Lcom/sun/prism/impl/packrect/RectanglePacker;->length:I

    .line 69
    move-object v7, v0

    move v8, v5

    iput v8, v7, Lcom/sun/prism/impl/packrect/RectanglePacker;->size:I

    goto :goto_0
.end method

.method private static binarySearch(Ljava/util/List;I)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sun/prism/impl/packrect/Level;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "levels":Ljava/util/List;, "Ljava/util/List<Lcom/sun/prism/impl/packrect/Level;>;"
    move v1, p1

    .local v1, "k":I
    move v7, v1

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move v2, v7

    .line 197
    .local v2, "key":I
    const/4 v7, 0x0

    move v3, v7

    .local v3, "from":I
    move-object v7, v0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v4, v7

    .line 198
    .local v4, "to":I
    const/4 v7, 0x0

    move v5, v7

    .line 199
    .local v5, "mid":I
    const/4 v7, 0x0

    move v6, v7

    .line 201
    .local v6, "midSize":I
    move v7, v4

    if-gez v7, :cond_0

    .line 202
    const/4 v7, 0x0

    move v0, v7

    .line 220
    .end local v0    # "levels":Ljava/util/List;, "Ljava/util/List<Lcom/sun/prism/impl/packrect/Level;>;"
    :goto_0
    return v0

    .line 205
    .restart local v0    # "levels":Ljava/util/List;, "Ljava/util/List<Lcom/sun/prism/impl/packrect/Level;>;"
    :cond_0
    :goto_1
    move v7, v3

    move v8, v4

    if-gt v7, v8, :cond_2

    .line 206
    move v7, v3

    move v8, v4

    add-int/2addr v7, v8

    const/4 v8, 0x2

    div-int/lit8 v7, v7, 0x2

    move v5, v7

    .line 207
    move-object v7, v0

    move v8, v5

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sun/prism/impl/packrect/Level;

    iget v7, v7, Lcom/sun/prism/impl/packrect/Level;->size:I

    move v6, v7

    .line 208
    move v7, v2

    move v8, v6

    if-ge v7, v8, :cond_1

    .line 209
    move v7, v5

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v4, v7

    goto :goto_1

    .line 211
    :cond_1
    move v7, v5

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move v3, v7

    goto :goto_1

    .line 215
    :cond_2
    move v7, v6

    move v8, v1

    if-ge v7, v8, :cond_3

    .line 216
    move v7, v5

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move v0, v7

    goto :goto_0

    .line 217
    :cond_3
    move v7, v6

    move v8, v1

    if-le v7, v8, :cond_5

    .line 218
    move v7, v5

    if-lez v7, :cond_4

    move v7, v5

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    :goto_2
    move v0, v7

    goto :goto_0

    :cond_4
    const/4 v7, 0x0

    goto :goto_2

    .line 220
    :cond_5
    move v7, v5

    move v0, v7

    goto :goto_0
.end method


# virtual methods
.method public final add(Lcom/sun/javafx/geom/Rectangle;)Z
    .locals 19

    .prologue
    .line 104
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/prism/impl/packrect/RectanglePacker;
    move-object/from16 v2, p1

    .local v2, "rect":Lcom/sun/javafx/geom/Rectangle;
    move-object v11, v1

    iget-boolean v11, v11, Lcom/sun/prism/impl/packrect/RectanglePacker;->vertical:Z

    if-eqz v11, :cond_0

    move-object v11, v2

    iget v11, v11, Lcom/sun/javafx/geom/Rectangle;->height:I

    :goto_0
    move v3, v11

    .line 105
    .local v3, "requestedLength":I
    move-object v11, v1

    iget-boolean v11, v11, Lcom/sun/prism/impl/packrect/RectanglePacker;->vertical:Z

    if-eqz v11, :cond_1

    move-object v11, v2

    iget v11, v11, Lcom/sun/javafx/geom/Rectangle;->width:I

    :goto_1
    move v4, v11

    .line 107
    .local v4, "requestedSize":I
    move v11, v3

    move-object v12, v1

    iget v12, v12, Lcom/sun/prism/impl/packrect/RectanglePacker;->length:I

    if-le v11, v12, :cond_2

    const/4 v11, 0x0

    move v1, v11

    .line 159
    .end local v1    # "this":Lcom/sun/prism/impl/packrect/RectanglePacker;
    :goto_2
    return v1

    .line 104
    .end local v3    # "requestedLength":I
    .end local v4    # "requestedSize":I
    .restart local v1    # "this":Lcom/sun/prism/impl/packrect/RectanglePacker;
    :cond_0
    move-object v11, v2

    iget v11, v11, Lcom/sun/javafx/geom/Rectangle;->width:I

    goto :goto_0

    .line 105
    .restart local v3    # "requestedLength":I
    :cond_1
    move-object v11, v2

    iget v11, v11, Lcom/sun/javafx/geom/Rectangle;->height:I

    goto :goto_1

    .line 108
    .restart local v4    # "requestedSize":I
    :cond_2
    move v11, v4

    move-object v12, v1

    iget v12, v12, Lcom/sun/prism/impl/packrect/RectanglePacker;->size:I

    if-le v11, v12, :cond_3

    const/4 v11, 0x0

    move v1, v11

    goto :goto_2

    .line 110
    :cond_3
    const/16 v11, 0x8

    move v12, v4

    if-le v11, v12, :cond_5

    const/16 v11, 0x8

    :goto_3
    move v5, v11

    .line 113
    .local v5, "newSize":I
    move v11, v5

    const/4 v12, 0x4

    add-int/lit8 v11, v11, 0x4

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    move v12, v5

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    const/4 v13, 0x4

    rem-int/lit8 v12, v12, 0x4

    sub-int/2addr v11, v12

    move v5, v11

    .line 118
    move-object v11, v1

    iget v11, v11, Lcom/sun/prism/impl/packrect/RectanglePacker;->recentUsedLevelIndex:I

    move-object v12, v1

    iget-object v12, v12, Lcom/sun/prism/impl/packrect/RectanglePacker;->levels:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_6

    move-object v11, v1

    iget-object v11, v11, Lcom/sun/prism/impl/packrect/RectanglePacker;->levels:Ljava/util/List;

    move-object v12, v1

    iget v12, v12, Lcom/sun/prism/impl/packrect/RectanglePacker;->recentUsedLevelIndex:I

    .line 119
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sun/prism/impl/packrect/Level;

    iget v11, v11, Lcom/sun/prism/impl/packrect/Level;->size:I

    move v12, v5

    if-eq v11, v12, :cond_6

    .line 120
    move-object v11, v1

    iget-object v11, v11, Lcom/sun/prism/impl/packrect/RectanglePacker;->levels:Ljava/util/List;

    move v12, v5

    invoke-static {v11, v12}, Lcom/sun/prism/impl/packrect/RectanglePacker;->binarySearch(Ljava/util/List;I)I

    move-result v11

    move v6, v11

    .line 126
    .local v6, "newIndex":I
    :goto_4
    move-object v11, v1

    iget v11, v11, Lcom/sun/prism/impl/packrect/RectanglePacker;->sizeOffset:I

    move v12, v5

    add-int/2addr v11, v12

    move-object v12, v1

    iget v12, v12, Lcom/sun/prism/impl/packrect/RectanglePacker;->size:I

    if-gt v11, v12, :cond_7

    const/4 v11, 0x1

    :goto_5
    move v7, v11

    .line 130
    .local v7, "newLevelFlag":Z
    move v11, v6

    move v8, v11

    .local v8, "i":I
    move-object v11, v1

    iget-object v11, v11, Lcom/sun/prism/impl/packrect/RectanglePacker;->levels:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    move v9, v11

    .local v9, "max":I
    :goto_6
    move v11, v8

    move v12, v9

    if-ge v11, v12, :cond_4

    .line 131
    move-object v11, v1

    iget-object v11, v11, Lcom/sun/prism/impl/packrect/RectanglePacker;->levels:Ljava/util/List;

    move v12, v8

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sun/prism/impl/packrect/Level;

    move-object v10, v11

    .line 134
    .local v10, "level":Lcom/sun/prism/impl/packrect/Level;
    move-object v11, v10

    iget v11, v11, Lcom/sun/prism/impl/packrect/Level;->size:I

    move v12, v5

    const/16 v13, 0x8

    add-int/lit8 v12, v12, 0x8

    if-le v11, v12, :cond_8

    move v11, v7

    if-eqz v11, :cond_8

    .line 135
    .line 143
    .end local v10    # "level":Lcom/sun/prism/impl/packrect/Level;
    :cond_4
    move v11, v7

    if-nez v11, :cond_a

    .line 144
    const/4 v11, 0x0

    move v1, v11

    goto/16 :goto_2

    .line 110
    .end local v5    # "newSize":I
    .end local v6    # "newIndex":I
    .end local v7    # "newLevelFlag":Z
    .end local v8    # "i":I
    .end local v9    # "max":I
    :cond_5
    move v11, v4

    goto :goto_3

    .line 122
    .restart local v5    # "newSize":I
    :cond_6
    move-object v11, v1

    iget v11, v11, Lcom/sun/prism/impl/packrect/RectanglePacker;->recentUsedLevelIndex:I

    move v6, v11

    .restart local v6    # "newIndex":I
    goto :goto_4

    .line 126
    :cond_7
    const/4 v11, 0x0

    goto :goto_5

    .line 136
    .restart local v7    # "newLevelFlag":Z
    .restart local v8    # "i":I
    .restart local v9    # "max":I
    .restart local v10    # "level":Lcom/sun/prism/impl/packrect/Level;
    :cond_8
    move-object v11, v10

    move-object v12, v2

    move-object v13, v1

    iget v13, v13, Lcom/sun/prism/impl/packrect/RectanglePacker;->x:I

    move-object v14, v1

    iget v14, v14, Lcom/sun/prism/impl/packrect/RectanglePacker;->y:I

    move v15, v3

    move/from16 v16, v4

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/sun/prism/impl/packrect/RectanglePacker;->vertical:Z

    move/from16 v17, v0

    invoke-virtual/range {v11 .. v17}, Lcom/sun/prism/impl/packrect/Level;->add(Lcom/sun/javafx/geom/Rectangle;IIIIZ)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 137
    move-object v11, v1

    move v12, v8

    iput v12, v11, Lcom/sun/prism/impl/packrect/RectanglePacker;->recentUsedLevelIndex:I

    .line 138
    const/4 v11, 0x1

    move v1, v11

    goto/16 :goto_2

    .line 130
    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 147
    .end local v10    # "level":Lcom/sun/prism/impl/packrect/Level;
    :cond_a
    new-instance v11, Lcom/sun/prism/impl/packrect/Level;

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    move-object v13, v1

    iget v13, v13, Lcom/sun/prism/impl/packrect/RectanglePacker;->length:I

    move v14, v5

    move-object v15, v1

    iget v15, v15, Lcom/sun/prism/impl/packrect/RectanglePacker;->sizeOffset:I

    invoke-direct {v12, v13, v14, v15}, Lcom/sun/prism/impl/packrect/Level;-><init>(III)V

    move-object v8, v11

    .line 148
    .local v8, "newLevel":Lcom/sun/prism/impl/packrect/Level;
    move-object v11, v1

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    iget v12, v12, Lcom/sun/prism/impl/packrect/RectanglePacker;->sizeOffset:I

    move v13, v5

    add-int/2addr v12, v13

    iput v12, v11, Lcom/sun/prism/impl/packrect/RectanglePacker;->sizeOffset:I

    .line 152
    move v11, v6

    move-object v12, v1

    iget-object v12, v12, Lcom/sun/prism/impl/packrect/RectanglePacker;->levels:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_b

    move-object v11, v1

    iget-object v11, v11, Lcom/sun/prism/impl/packrect/RectanglePacker;->levels:Ljava/util/List;

    move v12, v6

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sun/prism/impl/packrect/Level;

    iget v11, v11, Lcom/sun/prism/impl/packrect/Level;->size:I

    move v12, v5

    if-gt v11, v12, :cond_b

    .line 153
    move-object v11, v1

    iget-object v11, v11, Lcom/sun/prism/impl/packrect/RectanglePacker;->levels:Ljava/util/List;

    move v12, v6

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    move-object v13, v8

    invoke-interface {v11, v12, v13}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 154
    move-object v11, v1

    move v12, v6

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    iput v12, v11, Lcom/sun/prism/impl/packrect/RectanglePacker;->recentUsedLevelIndex:I

    .line 159
    :goto_7
    move-object v11, v8

    move-object v12, v2

    move-object v13, v1

    iget v13, v13, Lcom/sun/prism/impl/packrect/RectanglePacker;->x:I

    move-object v14, v1

    iget v14, v14, Lcom/sun/prism/impl/packrect/RectanglePacker;->y:I

    move v15, v3

    move/from16 v16, v4

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/sun/prism/impl/packrect/RectanglePacker;->vertical:Z

    move/from16 v17, v0

    invoke-virtual/range {v11 .. v17}, Lcom/sun/prism/impl/packrect/Level;->add(Lcom/sun/javafx/geom/Rectangle;IIIIZ)Z

    move-result v11

    move v1, v11

    goto/16 :goto_2

    .line 156
    :cond_b
    move-object v11, v1

    iget-object v11, v11, Lcom/sun/prism/impl/packrect/RectanglePacker;->levels:Ljava/util/List;

    move v12, v6

    move-object v13, v8

    invoke-interface {v11, v12, v13}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 157
    move-object v11, v1

    move v12, v6

    iput v12, v11, Lcom/sun/prism/impl/packrect/RectanglePacker;->recentUsedLevelIndex:I

    goto :goto_7
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/packrect/RectanglePacker;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/impl/packrect/RectanglePacker;->levels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 167
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/prism/impl/packrect/RectanglePacker;->sizeOffset:I

    .line 168
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/prism/impl/packrect/RectanglePacker;->recentUsedLevelIndex:I

    .line 169
    return-void
.end method

.method public dispose()V
    .locals 3

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/packrect/RectanglePacker;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/impl/packrect/RectanglePacker;->backingStore:Lcom/sun/prism/Texture;

    if-eqz v1, :cond_0

    .line 178
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/impl/packrect/RectanglePacker;->backingStore:Lcom/sun/prism/Texture;

    invoke-interface {v1}, Lcom/sun/prism/Texture;->dispose()V

    .line 181
    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/prism/impl/packrect/RectanglePacker;->backingStore:Lcom/sun/prism/Texture;

    .line 182
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/prism/impl/packrect/RectanglePacker;->levels:Ljava/util/List;

    .line 183
    return-void
.end method

.method public final getBackingStore()Lcom/sun/prism/Texture;
    .locals 2

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/packrect/RectanglePacker;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/impl/packrect/RectanglePacker;->backingStore:Lcom/sun/prism/Texture;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/packrect/RectanglePacker;
    return-object v0
.end method
