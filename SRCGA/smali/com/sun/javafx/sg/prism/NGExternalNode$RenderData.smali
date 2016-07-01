.class Lcom/sun/javafx/sg/prism/NGExternalNode$RenderData;
.super Ljava/lang/Object;
.source "NGExternalNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/sg/prism/NGExternalNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RenderData"
.end annotation


# instance fields
.field final bdata:Lcom/sun/javafx/sg/prism/NGExternalNode$BufferData;

.field final clearTarget:Z

.field final dirtyRect:Lcom/sun/javafx/geom/Rectangle;


# direct methods
.method constructor <init>(Lcom/sun/javafx/sg/prism/NGExternalNode$BufferData;IIIIZ)V
    .locals 15

    .prologue
    .line 186
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGExternalNode$RenderData;
    move-object/from16 v1, p1

    .local v1, "bdata":Lcom/sun/javafx/sg/prism/NGExternalNode$BufferData;
    move/from16 v2, p2

    .local v2, "dirtyX":I
    move/from16 v3, p3

    .local v3, "dirtyY":I
    move/from16 v4, p4

    .local v4, "dirtyWidth":I
    move/from16 v5, p5

    .local v5, "dirtyHeight":I
    move/from16 v6, p6

    .local v6, "clearTarget":Z
    move-object v7, v0

    move-object v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    move v12, v5

    move v13, v6

    const/4 v14, 0x1

    invoke-direct/range {v7 .. v14}, Lcom/sun/javafx/sg/prism/NGExternalNode$RenderData;-><init>(Lcom/sun/javafx/sg/prism/NGExternalNode$BufferData;IIIIZZ)V

    .line 187
    return-void
.end method

.method constructor <init>(Lcom/sun/javafx/sg/prism/NGExternalNode$BufferData;IIIIZZ)V
    .locals 16

    .prologue
    .line 192
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGExternalNode$RenderData;
    move-object/from16 v1, p1

    .local v1, "bdata":Lcom/sun/javafx/sg/prism/NGExternalNode$BufferData;
    move/from16 v2, p2

    .local v2, "dirtyX":I
    move/from16 v3, p3

    .local v3, "dirtyY":I
    move/from16 v4, p4

    .local v4, "dirtyWidth":I
    move/from16 v5, p5

    .local v5, "dirtyHeight":I
    move/from16 v6, p6

    .local v6, "clearTarget":Z
    move/from16 v7, p7

    .local v7, "applyScale":Z
    move-object v9, v0

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 193
    move-object v9, v0

    move-object v10, v1

    iput-object v10, v9, Lcom/sun/javafx/sg/prism/NGExternalNode$RenderData;->bdata:Lcom/sun/javafx/sg/prism/NGExternalNode$BufferData;

    .line 194
    new-instance v9, Lcom/sun/javafx/geom/Rectangle;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move v11, v2

    move v12, v3

    move v13, v4

    move v14, v5

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/sun/javafx/geom/Rectangle;-><init>(IIII)V

    move-object v8, v9

    .line 195
    .local v8, "r":Lcom/sun/javafx/geom/Rectangle;
    move-object v9, v0

    move v10, v7

    if-eqz v10, :cond_0

    move-object v10, v1

    move-object v11, v8

    invoke-virtual {v10, v11}, Lcom/sun/javafx/sg/prism/NGExternalNode$BufferData;->scale(Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v10

    :goto_0
    iput-object v10, v9, Lcom/sun/javafx/sg/prism/NGExternalNode$RenderData;->dirtyRect:Lcom/sun/javafx/geom/Rectangle;

    .line 196
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/sg/prism/NGExternalNode$RenderData;->dirtyRect:Lcom/sun/javafx/geom/Rectangle;

    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/NGExternalNode$BufferData;->srcbounds:Lcom/sun/javafx/geom/Rectangle;

    invoke-virtual {v9, v10}, Lcom/sun/javafx/geom/Rectangle;->intersectWith(Lcom/sun/javafx/geom/Rectangle;)V

    .line 197
    move-object v9, v0

    move v10, v6

    iput-boolean v10, v9, Lcom/sun/javafx/sg/prism/NGExternalNode$RenderData;->clearTarget:Z

    .line 198
    return-void

    .line 195
    :cond_0
    move-object v10, v8

    goto :goto_0
.end method


# virtual methods
.method copyAddDirtyRect(IIII)Lcom/sun/javafx/sg/prism/NGExternalNode$RenderData;
    .locals 16

    .prologue
    .line 202
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGExternalNode$RenderData;
    move/from16 v1, p1

    .local v1, "dirtyX":I
    move/from16 v2, p2

    .local v2, "dirtyY":I
    move/from16 v3, p3

    .local v3, "dirtyWidth":I
    move/from16 v4, p4

    .local v4, "dirtyHeight":I
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/sg/prism/NGExternalNode$RenderData;->bdata:Lcom/sun/javafx/sg/prism/NGExternalNode$BufferData;

    new-instance v7, Lcom/sun/javafx/geom/Rectangle;

    move-object v15, v7

    move-object v7, v15

    move-object v8, v15

    move v9, v1

    move v10, v2

    move v11, v3

    move v12, v4

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/sun/javafx/geom/Rectangle;-><init>(IIII)V

    invoke-virtual {v6, v7}, Lcom/sun/javafx/sg/prism/NGExternalNode$BufferData;->scale(Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v6

    move-object v5, v6

    .line 203
    .local v5, "r":Lcom/sun/javafx/geom/Rectangle;
    move-object v6, v5

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/sg/prism/NGExternalNode$RenderData;->dirtyRect:Lcom/sun/javafx/geom/Rectangle;

    invoke-virtual {v6, v7}, Lcom/sun/javafx/geom/Rectangle;->add(Lcom/sun/javafx/geom/Rectangle;)V

    .line 204
    new-instance v6, Lcom/sun/javafx/sg/prism/NGExternalNode$RenderData;

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/sg/prism/NGExternalNode$RenderData;->bdata:Lcom/sun/javafx/sg/prism/NGExternalNode$BufferData;

    move-object v9, v5

    iget v9, v9, Lcom/sun/javafx/geom/Rectangle;->x:I

    move-object v10, v5

    iget v10, v10, Lcom/sun/javafx/geom/Rectangle;->y:I

    move-object v11, v5

    iget v11, v11, Lcom/sun/javafx/geom/Rectangle;->width:I

    move-object v12, v5

    iget v12, v12, Lcom/sun/javafx/geom/Rectangle;->height:I

    move-object v13, v0

    iget-boolean v13, v13, Lcom/sun/javafx/sg/prism/NGExternalNode$RenderData;->clearTarget:Z

    const/4 v14, 0x0

    invoke-direct/range {v7 .. v14}, Lcom/sun/javafx/sg/prism/NGExternalNode$RenderData;-><init>(Lcom/sun/javafx/sg/prism/NGExternalNode$BufferData;IIIIZZ)V

    move-object v0, v6

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGExternalNode$RenderData;
    return-object v0
.end method
