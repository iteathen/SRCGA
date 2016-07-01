.class public final Ljavafx/scene/control/TextFormatter$Change;
.super Ljava/lang/Object;
.source "TextFormatter.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/TextFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Change"
.end annotation


# instance fields
.field private final accessor:Lcom/sun/javafx/scene/control/FormatterAccessor;

.field anchor:I

.field caret:I

.field private control:Ljavafx/scene/control/Control;

.field end:I

.field start:I

.field text:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljavafx/scene/control/Control;Lcom/sun/javafx/scene/control/FormatterAccessor;II)V
    .locals 13

    .prologue
    .line 259
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextFormatter$Change;
    move-object v1, p1

    .local v1, "control":Ljavafx/scene/control/Control;
    move-object v2, p2

    .local v2, "accessor":Lcom/sun/javafx/scene/control/FormatterAccessor;
    move/from16 v3, p3

    .local v3, "anchor":I
    move/from16 v4, p4

    .local v4, "caret":I
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move v8, v4

    move v9, v4

    const-string v10, ""

    move v11, v3

    move v12, v4

    invoke-direct/range {v5 .. v12}, Ljavafx/scene/control/TextFormatter$Change;-><init>(Ljavafx/scene/control/Control;Lcom/sun/javafx/scene/control/FormatterAccessor;IILjava/lang/String;II)V

    .line 260
    return-void
.end method

.method constructor <init>(Ljavafx/scene/control/Control;Lcom/sun/javafx/scene/control/FormatterAccessor;IILjava/lang/String;)V
    .locals 15

    .prologue
    .line 263
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextFormatter$Change;
    move-object/from16 v1, p1

    .local v1, "control":Ljavafx/scene/control/Control;
    move-object/from16 v2, p2

    .local v2, "accessor":Lcom/sun/javafx/scene/control/FormatterAccessor;
    move/from16 v3, p3

    .local v3, "start":I
    move/from16 v4, p4

    .local v4, "end":I
    move-object/from16 v5, p5

    .local v5, "text":Ljava/lang/String;
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move v9, v3

    move v10, v4

    move-object v11, v5

    move v12, v3

    move-object v13, v5

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v12, v13

    move v13, v3

    move-object v14, v5

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v13, v14

    invoke-direct/range {v6 .. v13}, Ljavafx/scene/control/TextFormatter$Change;-><init>(Ljavafx/scene/control/Control;Lcom/sun/javafx/scene/control/FormatterAccessor;IILjava/lang/String;II)V

    .line 264
    return-void
.end method

.method constructor <init>(Ljavafx/scene/control/Control;Lcom/sun/javafx/scene/control/FormatterAccessor;IILjava/lang/String;II)V
    .locals 10

    .prologue
    .line 269
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextFormatter$Change;
    move-object v1, p1

    .local v1, "control":Ljavafx/scene/control/Control;
    move-object v2, p2

    .local v2, "accessor":Lcom/sun/javafx/scene/control/FormatterAccessor;
    move v3, p3

    .local v3, "start":I
    move v4, p4

    .local v4, "end":I
    move-object v5, p5

    .local v5, "text":Ljava/lang/String;
    move/from16 v6, p6

    .local v6, "anchor":I
    move/from16 v7, p7

    .local v7, "caret":I
    move-object v8, v0

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 270
    move-object v8, v0

    move-object v9, v1

    iput-object v9, v8, Ljavafx/scene/control/TextFormatter$Change;->control:Ljavafx/scene/control/Control;

    .line 271
    move-object v8, v0

    move-object v9, v2

    iput-object v9, v8, Ljavafx/scene/control/TextFormatter$Change;->accessor:Lcom/sun/javafx/scene/control/FormatterAccessor;

    .line 272
    move-object v8, v0

    move v9, v3

    iput v9, v8, Ljavafx/scene/control/TextFormatter$Change;->start:I

    .line 273
    move-object v8, v0

    move v9, v4

    iput v9, v8, Ljavafx/scene/control/TextFormatter$Change;->end:I

    .line 274
    move-object v8, v0

    move-object v9, v5

    iput-object v9, v8, Ljavafx/scene/control/TextFormatter$Change;->text:Ljava/lang/String;

    .line 275
    move-object v8, v0

    move v9, v6

    iput v9, v8, Ljavafx/scene/control/TextFormatter$Change;->anchor:I

    .line 276
    move-object v8, v0

    move v9, v7

    iput v9, v8, Ljavafx/scene/control/TextFormatter$Change;->caret:I

    .line 277
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 248
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextFormatter$Change;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TextFormatter$Change;->clone()Ljavafx/scene/control/TextFormatter$Change;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextFormatter$Change;
    return-object v0
.end method

.method public clone()Ljavafx/scene/control/TextFormatter$Change;
    .locals 6

    .prologue
    .line 525
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextFormatter$Change;
    move-object v2, v0

    :try_start_0
    invoke-super {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/TextFormatter$Change;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TextFormatter$Change;
    return-object v0

    .line 526
    .restart local v0    # "this":Ljavafx/scene/control/TextFormatter$Change;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 528
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/RuntimeException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public final getAnchor()I
    .locals 2

    .prologue
    .line 335
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextFormatter$Change;
    move-object v1, v0

    iget v1, v1, Ljavafx/scene/control/TextFormatter$Change;->anchor:I

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextFormatter$Change;
    return v0
.end method

.method public final getCaretPosition()I
    .locals 2

    .prologue
    .line 327
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextFormatter$Change;
    move-object v1, v0

    iget v1, v1, Ljavafx/scene/control/TextFormatter$Change;->caret:I

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextFormatter$Change;
    return v0
.end method

.method public final getControl()Ljavafx/scene/control/Control;
    .locals 2

    .prologue
    .line 283
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextFormatter$Change;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextFormatter$Change;->control:Ljavafx/scene/control/Control;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextFormatter$Change;
    return-object v0
.end method

.method public final getControlAnchor()I
    .locals 2

    .prologue
    .line 347
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextFormatter$Change;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextFormatter$Change;->accessor:Lcom/sun/javafx/scene/control/FormatterAccessor;

    invoke-interface {v1}, Lcom/sun/javafx/scene/control/FormatterAccessor;->getAnchor()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextFormatter$Change;
    return v0
.end method

.method public final getControlCaretPosition()I
    .locals 2

    .prologue
    .line 341
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextFormatter$Change;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextFormatter$Change;->accessor:Lcom/sun/javafx/scene/control/FormatterAccessor;

    invoke-interface {v1}, Lcom/sun/javafx/scene/control/FormatterAccessor;->getCaret()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextFormatter$Change;
    return v0
.end method

.method public final getControlNewText()Ljava/lang/String;
    .locals 6

    .prologue
    .line 453
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextFormatter$Change;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TextFormatter$Change;->accessor:Lcom/sun/javafx/scene/control/FormatterAccessor;

    const/4 v3, 0x0

    move-object v4, v0

    iget v4, v4, Ljavafx/scene/control/TextFormatter$Change;->start:I

    invoke-interface {v2, v3, v4}, Lcom/sun/javafx/scene/control/FormatterAccessor;->getText(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TextFormatter$Change;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TextFormatter$Change;->accessor:Lcom/sun/javafx/scene/control/FormatterAccessor;

    move-object v3, v0

    iget v3, v3, Ljavafx/scene/control/TextFormatter$Change;->end:I

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TextFormatter$Change;->accessor:Lcom/sun/javafx/scene/control/FormatterAccessor;

    invoke-interface {v4}, Lcom/sun/javafx/scene/control/FormatterAccessor;->getTextLength()I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/sun/javafx/scene/control/FormatterAccessor;->getText(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextFormatter$Change;
    return-object v0
.end method

.method public final getControlText()Ljava/lang/String;
    .locals 4

    .prologue
    .line 435
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextFormatter$Change;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextFormatter$Change;->accessor:Lcom/sun/javafx/scene/control/FormatterAccessor;

    const/4 v2, 0x0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TextFormatter$Change;->accessor:Lcom/sun/javafx/scene/control/FormatterAccessor;

    invoke-interface {v3}, Lcom/sun/javafx/scene/control/FormatterAccessor;->getTextLength()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/sun/javafx/scene/control/FormatterAccessor;->getText(II)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextFormatter$Change;
    return-object v0
.end method

.method public final getRangeEnd()I
    .locals 2

    .prologue
    .line 301
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextFormatter$Change;
    move-object v1, v0

    iget v1, v1, Ljavafx/scene/control/TextFormatter$Change;->end:I

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextFormatter$Change;
    return v0
.end method

.method public final getRangeStart()I
    .locals 2

    .prologue
    .line 292
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextFormatter$Change;
    move-object v1, v0

    iget v1, v1, Ljavafx/scene/control/TextFormatter$Change;->start:I

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextFormatter$Change;
    return v0
.end method

.method public final getSelection()Ljavafx/scene/control/IndexRange;
    .locals 3

    .prologue
    .line 373
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextFormatter$Change;
    move-object v1, v0

    iget v1, v1, Ljavafx/scene/control/TextFormatter$Change;->anchor:I

    move-object v2, v0

    iget v2, v2, Ljavafx/scene/control/TextFormatter$Change;->caret:I

    invoke-static {v1, v2}, Ljavafx/scene/control/IndexRange;->normalize(II)Ljavafx/scene/control/IndexRange;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextFormatter$Change;
    return-object v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 415
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextFormatter$Change;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextFormatter$Change;->text:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextFormatter$Change;
    return-object v0
.end method

.method public final isAdded()Z
    .locals 2

    .prologue
    .line 465
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextFormatter$Change;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextFormatter$Change;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextFormatter$Change;
    return v0

    .restart local v0    # "this":Ljavafx/scene/control/TextFormatter$Change;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final isContentChange()Z
    .locals 2

    .prologue
    .line 497
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextFormatter$Change;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TextFormatter$Change;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TextFormatter$Change;->isDeleted()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextFormatter$Change;
    return v0

    .restart local v0    # "this":Ljavafx/scene/control/TextFormatter$Change;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final isDeleted()Z
    .locals 3

    .prologue
    .line 476
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextFormatter$Change;
    move-object v1, v0

    iget v1, v1, Ljavafx/scene/control/TextFormatter$Change;->start:I

    move-object v2, v0

    iget v2, v2, Ljavafx/scene/control/TextFormatter$Change;->end:I

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextFormatter$Change;
    return v0

    .restart local v0    # "this":Ljavafx/scene/control/TextFormatter$Change;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final isReplaced()Z
    .locals 2

    .prologue
    .line 488
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextFormatter$Change;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TextFormatter$Change;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TextFormatter$Change;->isDeleted()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextFormatter$Change;
    return v0

    .restart local v0    # "this":Ljavafx/scene/control/TextFormatter$Change;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final selectRange(II)V
    .locals 8

    .prologue
    .line 359
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextFormatter$Change;
    move v1, p1

    .local v1, "newAnchor":I
    move v2, p2

    .local v2, "newCaretPosition":I
    move v3, v1

    if-ltz v3, :cond_0

    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TextFormatter$Change;->accessor:Lcom/sun/javafx/scene/control/FormatterAccessor;

    invoke-interface {v4}, Lcom/sun/javafx/scene/control/FormatterAccessor;->getTextLength()I

    move-result v4

    move-object v5, v0

    iget v5, v5, Ljavafx/scene/control/TextFormatter$Change;->end:I

    move-object v6, v0

    iget v6, v6, Ljavafx/scene/control/TextFormatter$Change;->start:I

    sub-int/2addr v5, v6

    sub-int/2addr v4, v5

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TextFormatter$Change;->text:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    if-gt v3, v4, :cond_0

    move v3, v2

    if-ltz v3, :cond_0

    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TextFormatter$Change;->accessor:Lcom/sun/javafx/scene/control/FormatterAccessor;

    .line 360
    invoke-interface {v4}, Lcom/sun/javafx/scene/control/FormatterAccessor;->getTextLength()I

    move-result v4

    move-object v5, v0

    iget v5, v5, Ljavafx/scene/control/TextFormatter$Change;->end:I

    move-object v6, v0

    iget v6, v6, Ljavafx/scene/control/TextFormatter$Change;->start:I

    sub-int/2addr v5, v6

    sub-int/2addr v4, v5

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TextFormatter$Change;->text:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    if-le v3, v4, :cond_1

    .line 361
    :cond_0
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    .line 363
    :cond_1
    move-object v3, v0

    move v4, v1

    iput v4, v3, Ljavafx/scene/control/TextFormatter$Change;->anchor:I

    .line 364
    move-object v3, v0

    move v4, v2

    iput v4, v3, Ljavafx/scene/control/TextFormatter$Change;->caret:I

    .line 365
    return-void
.end method

.method public final setAnchor(I)V
    .locals 7

    .prologue
    .line 386
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextFormatter$Change;
    move v1, p1

    .local v1, "newAnchor":I
    move v2, v1

    if-ltz v2, :cond_0

    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TextFormatter$Change;->accessor:Lcom/sun/javafx/scene/control/FormatterAccessor;

    invoke-interface {v3}, Lcom/sun/javafx/scene/control/FormatterAccessor;->getTextLength()I

    move-result v3

    move-object v4, v0

    iget v4, v4, Ljavafx/scene/control/TextFormatter$Change;->end:I

    move-object v5, v0

    iget v5, v5, Ljavafx/scene/control/TextFormatter$Change;->start:I

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TextFormatter$Change;->text:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    if-le v2, v3, :cond_1

    .line 387
    :cond_0
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 389
    :cond_1
    move-object v2, v0

    move v3, v1

    iput v3, v2, Ljavafx/scene/control/TextFormatter$Change;->anchor:I

    .line 390
    return-void
.end method

.method public final setCaretPosition(I)V
    .locals 7

    .prologue
    .line 401
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextFormatter$Change;
    move v1, p1

    .local v1, "newCaretPosition":I
    move v2, v1

    if-ltz v2, :cond_0

    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TextFormatter$Change;->accessor:Lcom/sun/javafx/scene/control/FormatterAccessor;

    invoke-interface {v3}, Lcom/sun/javafx/scene/control/FormatterAccessor;->getTextLength()I

    move-result v3

    move-object v4, v0

    iget v4, v4, Ljavafx/scene/control/TextFormatter$Change;->end:I

    move-object v5, v0

    iget v5, v5, Ljavafx/scene/control/TextFormatter$Change;->start:I

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TextFormatter$Change;->text:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    if-le v2, v3, :cond_1

    .line 402
    :cond_0
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 404
    :cond_1
    move-object v2, v0

    move v3, v1

    iput v3, v2, Ljavafx/scene/control/TextFormatter$Change;->caret:I

    .line 405
    return-void
.end method

.method public final setRange(II)V
    .locals 7

    .prologue
    .line 312
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextFormatter$Change;
    move v1, p1

    .local v1, "start":I
    move v2, p2

    .local v2, "end":I
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TextFormatter$Change;->accessor:Lcom/sun/javafx/scene/control/FormatterAccessor;

    invoke-interface {v4}, Lcom/sun/javafx/scene/control/FormatterAccessor;->getTextLength()I

    move-result v4

    move v3, v4

    .line 313
    .local v3, "length":I
    move v4, v1

    if-ltz v4, :cond_0

    move v4, v1

    move v5, v3

    if-gt v4, v5, :cond_0

    move v4, v2

    if-ltz v4, :cond_0

    move v4, v2

    move v5, v3

    if-le v4, v5, :cond_1

    .line 314
    :cond_0
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4

    .line 316
    :cond_1
    move-object v4, v0

    move v5, v1

    iput v5, v4, Ljavafx/scene/control/TextFormatter$Change;->start:I

    .line 317
    move-object v4, v0

    move v5, v2

    iput v5, v4, Ljavafx/scene/control/TextFormatter$Change;->end:I

    .line 318
    return-void
.end method

.method public final setText(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 425
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextFormatter$Change;
    move-object v1, p1

    .local v1, "value":Ljava/lang/String;
    move-object v2, v1

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 426
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/TextFormatter$Change;->text:Ljava/lang/String;

    .line 427
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 502
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextFormatter$Change;
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "TextInputControl.Change ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 503
    .local v1, "builder":Ljava/lang/StringBuilder;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TextFormatter$Change;->isReplaced()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 504
    move-object v2, v1

    const-string v3, " replaced \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TextFormatter$Change;->accessor:Lcom/sun/javafx/scene/control/FormatterAccessor;

    move-object v4, v0

    iget v4, v4, Ljavafx/scene/control/TextFormatter$Change;->start:I

    move-object v5, v0

    iget v5, v5, Ljavafx/scene/control/TextFormatter$Change;->end:I

    invoke-interface {v3, v4, v5}, Lcom/sun/javafx/scene/control/FormatterAccessor;->getText(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" with \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TextFormatter$Change;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" at ("

    .line 505
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget v3, v3, Ljavafx/scene/control/TextFormatter$Change;->start:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget v3, v3, Ljavafx/scene/control/TextFormatter$Change;->end:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 512
    :cond_0
    :goto_0
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TextFormatter$Change;->isAdded()Z

    move-result v2

    if-nez v2, :cond_1

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TextFormatter$Change;->isDeleted()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 513
    :cond_1
    move-object v2, v1

    const-string v3, "; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 517
    :goto_1
    move-object v2, v1

    const-string v3, "new selection (anchor, caret): ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget v3, v3, Ljavafx/scene/control/TextFormatter$Change;->anchor:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget v3, v3, Ljavafx/scene/control/TextFormatter$Change;->caret:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 518
    move-object v2, v1

    const-string v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 519
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TextFormatter$Change;
    return-object v0

    .line 506
    .restart local v0    # "this":Ljavafx/scene/control/TextFormatter$Change;
    :cond_2
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TextFormatter$Change;->isDeleted()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 507
    move-object v2, v1

    const-string v3, " deleted \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TextFormatter$Change;->accessor:Lcom/sun/javafx/scene/control/FormatterAccessor;

    move-object v4, v0

    iget v4, v4, Ljavafx/scene/control/TextFormatter$Change;->start:I

    move-object v5, v0

    iget v5, v5, Ljavafx/scene/control/TextFormatter$Change;->end:I

    invoke-interface {v3, v4, v5}, Lcom/sun/javafx/scene/control/FormatterAccessor;->getText(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" at ("

    .line 508
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget v3, v3, Ljavafx/scene/control/TextFormatter$Change;->start:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget v3, v3, Ljavafx/scene/control/TextFormatter$Change;->end:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    goto/16 :goto_0

    .line 509
    :cond_3
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TextFormatter$Change;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 510
    move-object v2, v1

    const-string v3, " added \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TextFormatter$Change;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget v3, v3, Ljavafx/scene/control/TextFormatter$Change;->start:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    goto/16 :goto_0

    .line 515
    :cond_4
    move-object v2, v1

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    goto/16 :goto_1
.end method
