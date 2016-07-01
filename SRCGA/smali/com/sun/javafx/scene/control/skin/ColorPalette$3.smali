.class Lcom/sun/javafx/scene/control/skin/ColorPalette$3;
.super Ljava/lang/Object;
.source "ColorPalette.java"

# interfaces
.implements Lcom/sun/javafx/scene/traversal/Algorithm;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/scene/control/skin/ColorPalette;->initNavigation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/ColorPalette;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/ColorPalette;)V
    .locals 4

    .prologue
    .line 262
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ColorPalette$3;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/ColorPalette;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/ColorPalette$3;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPalette;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isAtBorder(Lcom/sun/javafx/scene/traversal/Direction;IIZ)Z
    .locals 8

    .prologue
    .line 340
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ColorPalette$3;
    move-object v1, p1

    .local v1, "dir":Lcom/sun/javafx/scene/traversal/Direction;
    move v2, p2

    .local v2, "row":I
    move v3, p3

    .local v3, "column":I
    move v4, p4

    .local v4, "custom":Z
    sget-object v5, Lcom/sun/javafx/scene/control/skin/ColorPalette$4;->$SwitchMap$com$sun$javafx$scene$traversal$Direction:[I

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/scene/traversal/Direction;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 351
    const/4 v5, 0x0

    move v0, v5

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ColorPalette$3;
    :goto_0
    return v0

    .line 342
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/ColorPalette$3;
    :pswitch_0
    move v5, v3

    if-nez v5, :cond_0

    const/4 v5, 0x1

    :goto_1
    move v0, v5

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    .line 344
    :pswitch_1
    move v5, v4

    if-eqz v5, :cond_2

    move v5, v2

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/ColorPalette$3;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPalette;

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/ColorPalette;->access$300(Lcom/sun/javafx/scene/control/skin/ColorPalette;)I

    move-result v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    if-ne v5, v6, :cond_2

    move v5, v3

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/ColorPalette$3;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPalette;

    .line 345
    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/ColorPalette;->access$400(Lcom/sun/javafx/scene/control/skin/ColorPalette;)I

    move-result v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    if-ne v5, v6, :cond_1

    const/4 v5, 0x1

    :goto_2
    move v0, v5

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    move v5, v3

    const/16 v6, 0xb

    if-ne v5, v6, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    goto :goto_2

    .line 347
    :pswitch_2
    move v5, v4

    if-nez v5, :cond_4

    move v5, v2

    if-nez v5, :cond_4

    const/4 v5, 0x1

    :goto_3
    move v0, v5

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    goto :goto_3

    .line 349
    :pswitch_3
    move v5, v4

    if-nez v5, :cond_5

    move v5, v2

    # getter for: Lcom/sun/javafx/scene/control/skin/ColorPalette;->NUM_OF_ROWS:I
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/ColorPalette;->access$500()I

    move-result v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    if-ne v5, v6, :cond_5

    const/4 v5, 0x1

    :goto_4
    move v0, v5

    goto :goto_0

    :cond_5
    const/4 v5, 0x0

    goto :goto_4

    .line 340
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private processArrow(Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;Lcom/sun/javafx/scene/traversal/Direction;)Ljavafx/scene/Node;
    .locals 13

    .prologue
    .line 290
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ColorPalette$3;
    move-object v1, p1

    .local v1, "owner":Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;
    move-object v2, p2

    .local v2, "dir":Lcom/sun/javafx/scene/traversal/Direction;
    move-object v8, v1

    iget v8, v8, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;->index:I

    const/16 v9, 0xc

    div-int/lit8 v8, v8, 0xc

    move v3, v8

    .line 291
    .local v3, "row":I
    move-object v8, v1

    iget v8, v8, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;->index:I

    const/16 v9, 0xc

    rem-int/lit8 v8, v8, 0xc

    move v4, v8

    .line 294
    .local v4, "column":I
    move-object v8, v2

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/ColorPalette$3;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPalette;

    invoke-static {v9}, Lcom/sun/javafx/scene/control/skin/ColorPalette;->access$200(Lcom/sun/javafx/scene/control/skin/ColorPalette;)Ljavafx/scene/control/ColorPicker;

    move-result-object v9

    invoke-virtual {v9}, Ljavafx/scene/control/ColorPicker;->getEffectiveNodeOrientation()Ljavafx/geometry/NodeOrientation;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sun/javafx/scene/traversal/Direction;->getDirectionForNodeOrientation(Ljavafx/geometry/NodeOrientation;)Lcom/sun/javafx/scene/traversal/Direction;

    move-result-object v8

    move-object v2, v8

    .line 296
    move-object v8, v0

    move-object v9, v2

    move v10, v3

    move v11, v4

    move-object v12, v1

    iget-boolean v12, v12, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;->isCustom:Z

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/sun/javafx/scene/control/skin/ColorPalette$3;->isAtBorder(Lcom/sun/javafx/scene/traversal/Direction;IIZ)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 299
    move v8, v3

    move v5, v8

    .line 300
    .local v5, "subsequentRow":I
    move v8, v4

    move v6, v8

    .line 301
    .local v6, "subsequentColumn":I
    move-object v8, v1

    iget-boolean v8, v8, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;->isCustom:Z

    move v7, v8

    .line 302
    .local v7, "subSequentSquareCustom":Z
    sget-object v8, Lcom/sun/javafx/scene/control/skin/ColorPalette$4;->$SwitchMap$com$sun$javafx$scene$traversal$Direction:[I

    move-object v9, v2

    invoke-virtual {v9}, Lcom/sun/javafx/scene/traversal/Direction;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 330
    :goto_0
    move v8, v7

    if-eqz v8, :cond_8

    .line 331
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ColorPalette$3;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPalette;

    invoke-static {v8}, Lcom/sun/javafx/scene/control/skin/ColorPalette;->access$700(Lcom/sun/javafx/scene/control/skin/ColorPalette;)Ljavafx/scene/layout/GridPane;

    move-result-object v8

    invoke-virtual {v8}, Ljavafx/scene/layout/GridPane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v8

    move v9, v5

    const/16 v10, 0xc

    mul-int/lit8 v9, v9, 0xc

    move v10, v6

    add-int/2addr v9, v10

    invoke-interface {v8, v9}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavafx/scene/Node;

    move-object v0, v8

    .line 336
    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ColorPalette$3;
    .end local v5    # "subsequentRow":I
    .end local v6    # "subsequentColumn":I
    .end local v7    # "subSequentSquareCustom":Z
    :goto_1
    return-object v0

    .line 307
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/ColorPalette$3;
    .restart local v5    # "subsequentRow":I
    .restart local v6    # "subsequentColumn":I
    .restart local v7    # "subSequentSquareCustom":Z
    :pswitch_0
    move-object v8, v1

    iget-boolean v8, v8, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;->isCustom:Z

    if-eqz v8, :cond_3

    .line 308
    move-object v8, v2

    sget-object v9, Lcom/sun/javafx/scene/traversal/Direction;->LEFT:Lcom/sun/javafx/scene/traversal/Direction;

    if-ne v8, v9, :cond_0

    move v8, v3

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    :goto_2
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/ColorPalette$3;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPalette;

    invoke-static {v9}, Lcom/sun/javafx/scene/control/skin/ColorPalette;->access$300(Lcom/sun/javafx/scene/control/skin/ColorPalette;)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->floorMod(II)I

    move-result v8

    move v5, v8

    .line 309
    move-object v8, v2

    sget-object v9, Lcom/sun/javafx/scene/traversal/Direction;->LEFT:Lcom/sun/javafx/scene/traversal/Direction;

    if-ne v8, v9, :cond_2

    move v8, v5

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/ColorPalette$3;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPalette;

    invoke-static {v9}, Lcom/sun/javafx/scene/control/skin/ColorPalette;->access$300(Lcom/sun/javafx/scene/control/skin/ColorPalette;)I

    move-result v9

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    if-ne v8, v9, :cond_1

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ColorPalette$3;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPalette;

    .line 310
    invoke-static {v8}, Lcom/sun/javafx/scene/control/skin/ColorPalette;->access$400(Lcom/sun/javafx/scene/control/skin/ColorPalette;)I

    move-result v8

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    :goto_3
    move v6, v8

    goto :goto_0

    .line 308
    :cond_0
    move v8, v3

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 310
    :cond_1
    const/16 v8, 0xb

    goto :goto_3

    :cond_2
    const/4 v8, 0x0

    goto :goto_3

    .line 312
    :cond_3
    move-object v8, v2

    sget-object v9, Lcom/sun/javafx/scene/traversal/Direction;->LEFT:Lcom/sun/javafx/scene/traversal/Direction;

    if-ne v8, v9, :cond_4

    move v8, v3

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    :goto_4
    # getter for: Lcom/sun/javafx/scene/control/skin/ColorPalette;->NUM_OF_ROWS:I
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/ColorPalette;->access$500()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->floorMod(II)I

    move-result v8

    move v5, v8

    .line 313
    move-object v8, v2

    sget-object v9, Lcom/sun/javafx/scene/traversal/Direction;->LEFT:Lcom/sun/javafx/scene/traversal/Direction;

    if-ne v8, v9, :cond_5

    const/16 v8, 0xb

    :goto_5
    move v6, v8

    .line 315
    goto :goto_0

    .line 312
    :cond_4
    move v8, v3

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 313
    :cond_5
    const/4 v8, 0x0

    goto :goto_5

    .line 317
    :pswitch_1
    # getter for: Lcom/sun/javafx/scene/control/skin/ColorPalette;->NUM_OF_ROWS:I
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/ColorPalette;->access$500()I

    move-result v8

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    move v5, v8

    .line 318
    goto/16 :goto_0

    .line 320
    :pswitch_2
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ColorPalette$3;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPalette;

    invoke-static {v8}, Lcom/sun/javafx/scene/control/skin/ColorPalette;->access$600(Lcom/sun/javafx/scene/control/skin/ColorPalette;)I

    move-result v8

    if-lez v8, :cond_7

    .line 321
    const/4 v8, 0x1

    move v7, v8

    .line 322
    const/4 v8, 0x0

    move v5, v8

    .line 323
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ColorPalette$3;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPalette;

    invoke-static {v8}, Lcom/sun/javafx/scene/control/skin/ColorPalette;->access$300(Lcom/sun/javafx/scene/control/skin/ColorPalette;)I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_6

    move v8, v4

    :goto_6
    move v6, v8

    .line 324
    goto/16 :goto_0

    .line 323
    :cond_6
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ColorPalette$3;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPalette;

    invoke-static {v8}, Lcom/sun/javafx/scene/control/skin/ColorPalette;->access$400(Lcom/sun/javafx/scene/control/skin/ColorPalette;)I

    move-result v8

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    move v9, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    goto :goto_6

    .line 326
    :cond_7
    const/4 v8, 0x0

    move-object v0, v8

    goto/16 :goto_1

    .line 333
    :cond_8
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ColorPalette$3;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPalette;

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ColorPalette;->colorPickerGrid:Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorPickerGrid;

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorPickerGrid;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v8

    move v9, v5

    const/16 v10, 0xc

    mul-int/lit8 v9, v9, 0xc

    move v10, v6

    add-int/2addr v9, v10

    invoke-interface {v8, v9}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavafx/scene/Node;

    move-object v0, v8

    goto/16 :goto_1

    .line 336
    .end local v5    # "subsequentRow":I
    .end local v6    # "subsequentColumn":I
    .end local v7    # "subSequentSquareCustom":Z
    :cond_9
    const/4 v8, 0x0

    move-object v0, v8

    goto/16 :goto_1

    .line 302
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public select(Ljavafx/scene/Node;Lcom/sun/javafx/scene/traversal/Direction;Lcom/sun/javafx/scene/traversal/TraversalContext;)Ljavafx/scene/Node;
    .locals 10

    .prologue
    .line 265
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ColorPalette$3;
    move-object v1, p1

    .local v1, "owner":Ljavafx/scene/Node;
    move-object v2, p2

    .local v2, "dir":Lcom/sun/javafx/scene/traversal/Direction;
    move-object v3, p3

    .local v3, "context":Lcom/sun/javafx/scene/traversal/TraversalContext;
    move-object v6, v3

    move-object v7, v3

    invoke-interface {v7}, Lcom/sun/javafx/scene/traversal/TraversalContext;->getRoot()Ljavafx/scene/Parent;

    move-result-object v7

    move-object v8, v1

    move-object v9, v2

    invoke-interface {v6, v7, v8, v9}, Lcom/sun/javafx/scene/traversal/TraversalContext;->selectInSubtree(Ljavafx/scene/Parent;Ljavafx/scene/Node;Lcom/sun/javafx/scene/traversal/Direction;)Ljavafx/scene/Node;

    move-result-object v6

    move-object v4, v6

    .line 266
    .local v4, "subsequentNode":Ljavafx/scene/Node;
    sget-object v6, Lcom/sun/javafx/scene/control/skin/ColorPalette$4;->$SwitchMap$com$sun$javafx$scene$traversal$Direction:[I

    move-object v7, v2

    invoke-virtual {v7}, Lcom/sun/javafx/scene/traversal/Direction;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 286
    const/4 v6, 0x0

    move-object v0, v6

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ColorPalette$3;
    :goto_0
    return-object v0

    .line 270
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/ColorPalette$3;
    :pswitch_0
    move-object v6, v4

    move-object v0, v6

    goto :goto_0

    .line 279
    :pswitch_1
    move-object v6, v1

    instance-of v6, v6, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;

    if-eqz v6, :cond_1

    .line 280
    move-object v6, v0

    move-object v7, v1

    check-cast v7, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Lcom/sun/javafx/scene/control/skin/ColorPalette$3;->processArrow(Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorSquare;Lcom/sun/javafx/scene/traversal/Direction;)Ljavafx/scene/Node;

    move-result-object v6

    move-object v5, v6

    .line 281
    .local v5, "result":Ljavafx/scene/Node;
    move-object v6, v5

    if-eqz v6, :cond_0

    move-object v6, v5

    :goto_1
    move-object v0, v6

    goto :goto_0

    :cond_0
    move-object v6, v4

    goto :goto_1

    .line 283
    .end local v5    # "result":Ljavafx/scene/Node;
    :cond_1
    move-object v6, v4

    move-object v0, v6

    goto :goto_0

    .line 266
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public selectFirst(Lcom/sun/javafx/scene/traversal/TraversalContext;)Ljavafx/scene/Node;
    .locals 4

    .prologue
    .line 356
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ColorPalette$3;
    move-object v1, p1

    .local v1, "context":Lcom/sun/javafx/scene/traversal/TraversalContext;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ColorPalette$3;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPalette;

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ColorPalette;->colorPickerGrid:Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorPickerGrid;

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ColorPalette$ColorPickerGrid;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/scene/Node;

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ColorPalette$3;
    return-object v0
.end method

.method public selectLast(Lcom/sun/javafx/scene/traversal/TraversalContext;)Ljavafx/scene/Node;
    .locals 3

    .prologue
    .line 361
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ColorPalette$3;
    move-object v1, p1

    .local v1, "context":Lcom/sun/javafx/scene/traversal/TraversalContext;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ColorPalette$3;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPalette;

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ColorPalette;->customColorLink:Ljavafx/scene/control/Hyperlink;

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ColorPalette$3;
    return-object v0
.end method
