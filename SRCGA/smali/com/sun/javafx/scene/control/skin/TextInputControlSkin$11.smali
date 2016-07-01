.class Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$11;
.super Ljava/lang/Object;
.source "TextInputControlSkin.java"

# interfaces
.implements Lcom/sun/javafx/scene/input/ExtendedInputMethodRequests;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;-><init>(Ljavafx/scene/control/TextInputControl;Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;

.field final synthetic val$textInput:Ljavafx/scene/control/TextInputControl;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;Ljavafx/scene/control/TextInputControl;)V
    .locals 5

    .prologue
    .line 380
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$11;, "Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$11;"
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$11;->this$0:Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$11;->val$textInput:Ljavafx/scene/control/TextInputControl;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelLatestCommittedText()V
    .locals 0

    .prologue
    .line 400
    .local p0, "this":Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$11;, "Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$11;"
    return-void
.end method

.method public getCommittedText(II)Ljava/lang/String;
    .locals 10

    .prologue
    .line 424
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$11;, "Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$11;"
    move v1, p1

    .local v1, "begin":I
    move v2, p2

    .local v2, "end":I
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$11;->this$0:Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/TextInputControl;

    move-object v3, v4

    .line 425
    .local v3, "textInput":Ljavafx/scene/control/TextInputControl;
    move v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$11;->this$0:Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->access$600(Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;)I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 426
    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$11;->this$0:Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->access$600(Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;)I

    move-result v5

    if-gt v4, v5, :cond_0

    .line 427
    move-object v4, v3

    move v5, v1

    move v6, v2

    invoke-virtual {v4, v5, v6}, Ljavafx/scene/control/TextInputControl;->getText(II)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 432
    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$11;, "Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$11;"
    :goto_0
    return-object v0

    .line 429
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$11;, "Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$11;"
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v3

    move v6, v1

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$11;->this$0:Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;

    invoke-static {v7}, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->access$600(Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/TextInputControl;->getText(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$11;->this$0:Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->access$600(Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;)I

    move-result v6

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$11;->this$0:Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;

    invoke-static {v7}, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->access$700(Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;)I

    move-result v7

    add-int/2addr v6, v7

    move v7, v2

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$11;->this$0:Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;

    invoke-static {v8}, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->access$700(Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;)I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/TextInputControl;->getText(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 432
    :cond_1
    move-object v4, v3

    move v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$11;->this$0:Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->access$700(Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;)I

    move-result v6

    add-int/2addr v5, v6

    move v6, v2

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$11;->this$0:Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;

    invoke-static {v7}, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->access$700(Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;)I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Ljavafx/scene/control/TextInputControl;->getText(II)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method

.method public getCommittedTextLength()I
    .locals 3

    .prologue
    .line 438
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$11;, "Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$11;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$11;->this$0:Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TextInputControl;

    invoke-virtual {v1}, Ljavafx/scene/control/TextInputControl;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$11;->this$0:Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->access$700(Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;)I

    move-result v2

    sub-int/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$11;, "Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$11;"
    return v0
.end method

.method public getInsertPositionOffset()I
    .locals 5

    .prologue
    .line 412
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$11;, "Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$11;"
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$11;->this$0:Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/TextInputControl;

    invoke-virtual {v2}, Ljavafx/scene/control/TextInputControl;->getCaretPosition()I

    move-result v2

    move v1, v2

    .line 413
    .local v1, "caretPosition":I
    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$11;->this$0:Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->access$600(Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;)I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 414
    move v2, v1

    move v0, v2

    .line 418
    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$11;, "Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$11;"
    :goto_0
    return v0

    .line 415
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$11;, "Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$11;"
    :cond_0
    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$11;->this$0:Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->access$600(Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;)I

    move-result v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$11;->this$0:Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->access$700(Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;)I

    move-result v4

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_1

    .line 416
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$11;->this$0:Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->access$600(Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;)I

    move-result v2

    move v0, v2

    goto :goto_0

    .line 418
    :cond_1
    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$11;->this$0:Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->access$700(Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;)I

    move-result v3

    sub-int/2addr v2, v3

    move v0, v2

    goto :goto_0
.end method

.method public getLocationOffset(II)I
    .locals 8

    .prologue
    .line 394
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$11;, "Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$11;"
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$11;->this$0:Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;

    move v4, v1

    int-to-double v4, v4

    move v6, v2

    int-to-double v6, v6

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->getInsertionPoint(DD)I

    move-result v3

    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$11;, "Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$11;"
    return v0
.end method

.method public getSelectedText()Ljava/lang/String;
    .locals 6

    .prologue
    .line 404
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$11;, "Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$11;"
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$11;->this$0:Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/TextInputControl;

    move-object v1, v3

    .line 405
    .local v1, "textInput":Ljavafx/scene/control/TextInputControl;
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TextInputControl;->getSelection()Ljavafx/scene/control/IndexRange;

    move-result-object v3

    move-object v2, v3

    .line 407
    .local v2, "selection":Ljavafx/scene/control/IndexRange;
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/IndexRange;->getStart()I

    move-result v4

    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/IndexRange;->getEnd()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/TextInputControl;->getText(II)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$11;, "Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$11;"
    return-object v0
.end method

.method public getTextLocation(I)Ljavafx/geometry/Point2D;
    .locals 17

    .prologue
    .line 382
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$11;, "Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$11;"
    move/from16 v2, p1

    .local v2, "offset":I
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$11;->this$0:Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v8

    check-cast v8, Ljavafx/scene/control/TextInputControl;

    invoke-virtual {v8}, Ljavafx/scene/control/TextInputControl;->getScene()Ljavafx/scene/Scene;

    move-result-object v8

    move-object v3, v8

    .line 383
    .local v3, "scene":Ljavafx/scene/Scene;
    move-object v8, v3

    invoke-virtual {v8}, Ljavafx/scene/Scene;->getWindow()Ljavafx/stage/Window;

    move-result-object v8

    move-object v4, v8

    .line 385
    .local v4, "window":Ljavafx/stage/Window;
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$11;->this$0:Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;

    move-object v9, v1

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$11;->val$textInput:Ljavafx/scene/control/TextInputControl;

    invoke-virtual {v9}, Ljavafx/scene/control/TextInputControl;->getSelection()Ljavafx/scene/control/IndexRange;

    move-result-object v9

    invoke-virtual {v9}, Ljavafx/scene/control/IndexRange;->getStart()I

    move-result v9

    move v10, v2

    add-int/2addr v9, v10

    invoke-virtual {v8, v9}, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->getCharacterBounds(I)Ljavafx/geometry/Rectangle2D;

    move-result-object v8

    move-object v5, v8

    .line 386
    .local v5, "characterBounds":Ljavafx/geometry/Rectangle2D;
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$11;->this$0:Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v8

    check-cast v8, Ljavafx/scene/control/TextInputControl;

    move-object v9, v5

    invoke-virtual {v9}, Ljavafx/geometry/Rectangle2D;->getMinX()D

    move-result-wide v9

    move-object v11, v5

    invoke-virtual {v11}, Ljavafx/geometry/Rectangle2D;->getMaxY()D

    move-result-wide v11

    invoke-virtual {v8, v9, v10, v11, v12}, Ljavafx/scene/control/TextInputControl;->localToScene(DD)Ljavafx/geometry/Point2D;

    move-result-object v8

    move-object v6, v8

    .line 387
    .local v6, "p":Ljavafx/geometry/Point2D;
    new-instance v8, Ljavafx/geometry/Point2D;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    move-object v10, v4

    invoke-virtual {v10}, Ljavafx/stage/Window;->getX()D

    move-result-wide v10

    move-object v12, v3

    invoke-virtual {v12}, Ljavafx/scene/Scene;->getX()D

    move-result-wide v12

    add-double/2addr v10, v12

    move-object v12, v6

    invoke-virtual {v12}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v12

    add-double/2addr v10, v12

    move-object v12, v4

    .line 388
    invoke-virtual {v12}, Ljavafx/stage/Window;->getY()D

    move-result-wide v12

    move-object v14, v3

    invoke-virtual {v14}, Ljavafx/scene/Scene;->getY()D

    move-result-wide v14

    add-double/2addr v12, v14

    move-object v14, v6

    invoke-virtual {v14}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v14

    add-double/2addr v12, v14

    invoke-direct {v9, v10, v11, v12, v13}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object v7, v8

    .line 389
    .local v7, "location":Ljavafx/geometry/Point2D;
    move-object v8, v7

    move-object v1, v8

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$11;, "Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$11;"
    return-object v1
.end method
