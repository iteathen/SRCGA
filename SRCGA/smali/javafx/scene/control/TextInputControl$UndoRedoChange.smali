.class Ljavafx/scene/control/TextInputControl$UndoRedoChange;
.super Ljava/lang/Object;
.source "TextInputControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/TextInputControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UndoRedoChange"
.end annotation


# instance fields
.field newText:Ljava/lang/String;

.field next:Ljavafx/scene/control/TextInputControl$UndoRedoChange;

.field oldText:Ljava/lang/String;

.field prev:Ljavafx/scene/control/TextInputControl$UndoRedoChange;

.field start:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 1453
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl$UndoRedoChange;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(ILjava/lang/String;Ljava/lang/String;)Ljavafx/scene/control/TextInputControl$UndoRedoChange;
    .locals 8

    .prologue
    .line 1456
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl$UndoRedoChange;
    move v1, p1

    .local v1, "start":I
    move-object v2, p2

    .local v2, "oldText":Ljava/lang/String;
    move-object v3, p3

    .local v3, "newText":Ljava/lang/String;
    new-instance v5, Ljavafx/scene/control/TextInputControl$UndoRedoChange;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljavafx/scene/control/TextInputControl$UndoRedoChange;-><init>()V

    move-object v4, v5

    .line 1457
    .local v4, "c":Ljavafx/scene/control/TextInputControl$UndoRedoChange;
    move-object v5, v4

    move v6, v1

    iput v6, v5, Ljavafx/scene/control/TextInputControl$UndoRedoChange;->start:I

    .line 1458
    move-object v5, v4

    move-object v6, v2

    iput-object v6, v5, Ljavafx/scene/control/TextInputControl$UndoRedoChange;->oldText:Ljava/lang/String;

    .line 1459
    move-object v5, v4

    move-object v6, v3

    iput-object v6, v5, Ljavafx/scene/control/TextInputControl$UndoRedoChange;->newText:Ljava/lang/String;

    .line 1460
    move-object v5, v4

    move-object v6, v0

    iput-object v6, v5, Ljavafx/scene/control/TextInputControl$UndoRedoChange;->prev:Ljavafx/scene/control/TextInputControl$UndoRedoChange;

    .line 1461
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Ljavafx/scene/control/TextInputControl$UndoRedoChange;->next:Ljavafx/scene/control/TextInputControl$UndoRedoChange;

    .line 1462
    move-object v5, v4

    move-object v0, v5

    .end local v0    # "this":Ljavafx/scene/control/TextInputControl$UndoRedoChange;
    return-object v0
.end method

.method debugPrint()V
    .locals 4

    .prologue
    .line 1474
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl$UndoRedoChange;
    move-object v2, v0

    move-object v1, v2

    .line 1475
    .local v1, "c":Ljavafx/scene/control/TextInputControl$UndoRedoChange;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1476
    :goto_0
    move-object v2, v1

    if-eqz v2, :cond_1

    .line 1477
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TextInputControl$UndoRedoChange;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1478
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/TextInputControl$UndoRedoChange;->next:Ljavafx/scene/control/TextInputControl$UndoRedoChange;

    if-eqz v2, :cond_0

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1479
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/TextInputControl$UndoRedoChange;->next:Ljavafx/scene/control/TextInputControl$UndoRedoChange;

    move-object v1, v2

    goto :goto_0

    .line 1481
    :cond_1
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1482
    return-void
.end method

.method public discard()Ljavafx/scene/control/TextInputControl$UndoRedoChange;
    .locals 3

    .prologue
    .line 1466
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl$UndoRedoChange;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextInputControl$UndoRedoChange;->prev:Ljavafx/scene/control/TextInputControl$UndoRedoChange;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TextInputControl$UndoRedoChange;->next:Ljavafx/scene/control/TextInputControl$UndoRedoChange;

    iput-object v2, v1, Ljavafx/scene/control/TextInputControl$UndoRedoChange;->next:Ljavafx/scene/control/TextInputControl$UndoRedoChange;

    .line 1467
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextInputControl$UndoRedoChange;->prev:Ljavafx/scene/control/TextInputControl$UndoRedoChange;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextInputControl$UndoRedoChange;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1485
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl$UndoRedoChange;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextInputControl$UndoRedoChange;->oldText:Ljava/lang/String;

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextInputControl$UndoRedoChange;->newText:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1486
    const-string v1, "head"

    move-object v0, v1

    .line 1493
    .end local v0    # "this":Ljavafx/scene/control/TextInputControl$UndoRedoChange;
    :goto_0
    return-object v0

    .line 1488
    .restart local v0    # "this":Ljavafx/scene/control/TextInputControl$UndoRedoChange;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextInputControl$UndoRedoChange;->oldText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextInputControl$UndoRedoChange;->newText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1489
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "added \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TextInputControl$UndoRedoChange;->newText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Ljavafx/scene/control/TextInputControl$UndoRedoChange;->start:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 1490
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextInputControl$UndoRedoChange;->oldText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextInputControl$UndoRedoChange;->newText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1491
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "replaced \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TextInputControl$UndoRedoChange;->oldText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' with \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TextInputControl$UndoRedoChange;->newText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Ljavafx/scene/control/TextInputControl$UndoRedoChange;->start:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto/16 :goto_0

    .line 1493
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleted \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TextInputControl$UndoRedoChange;->oldText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Ljavafx/scene/control/TextInputControl$UndoRedoChange;->start:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto/16 :goto_0
.end method
