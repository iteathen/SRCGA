.class public Ljavafx/scene/control/cell/TextFieldTableCellBuilder;
.super Ljavafx/scene/control/TableCellBuilder;
.source "TextFieldTableCellBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljavafx/scene/control/cell/TextFieldTableCellBuilder",
        "<TS;TT;TB;>;>",
        "Ljavafx/scene/control/TableCellBuilder",
        "<TS;TT;TB;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private __set:Z

.field private converter:Ljavafx/util/StringConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/util/StringConverter",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/TextFieldTableCellBuilder;, "Ljavafx/scene/control/cell/TextFieldTableCellBuilder<TS;TT;TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/TableCellBuilder;-><init>()V

    .line 38
    return-void
.end method

.method public static create()Ljavafx/scene/control/cell/TextFieldTableCellBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljavafx/scene/control/cell/TextFieldTableCellBuilder",
            "<TS;TT;*>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljavafx/scene/control/cell/TextFieldTableCellBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/control/cell/TextFieldTableCellBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public applyTo(Ljavafx/scene/control/cell/TextFieldTableCell;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/cell/TextFieldTableCell",
            "<TS;TT;>;)V"
        }
    .end annotation

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/TextFieldTableCellBuilder;, "Ljavafx/scene/control/cell/TextFieldTableCellBuilder<TS;TT;TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/control/cell/TextFieldTableCell;, "Ljavafx/scene/control/cell/TextFieldTableCell<TS;TT;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljavafx/scene/control/TableCellBuilder;->applyTo(Ljavafx/scene/control/Cell;)V

    .line 49
    move-object v2, v0

    iget-boolean v2, v2, Ljavafx/scene/control/cell/TextFieldTableCellBuilder;->__set:Z

    if-eqz v2, :cond_0

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/cell/TextFieldTableCellBuilder;->converter:Ljavafx/util/StringConverter;

    invoke-virtual {v2, v3}, Ljavafx/scene/control/cell/TextFieldTableCell;->setConverter(Ljavafx/util/StringConverter;)V

    .line 50
    :cond_0
    return-void
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/TextFieldTableCellBuilder;, "Ljavafx/scene/control/cell/TextFieldTableCellBuilder<TS;TT;TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/cell/TextFieldTableCellBuilder;->build()Ljavafx/scene/control/cell/TextFieldTableCell;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/cell/TextFieldTableCellBuilder;, "Ljavafx/scene/control/cell/TextFieldTableCellBuilder<TS;TT;TB;>;"
    return-object v0
.end method

.method public bridge synthetic build()Ljavafx/scene/control/Cell;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/TextFieldTableCellBuilder;, "Ljavafx/scene/control/cell/TextFieldTableCellBuilder<TS;TT;TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/cell/TextFieldTableCellBuilder;->build()Ljavafx/scene/control/cell/TextFieldTableCell;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/cell/TextFieldTableCellBuilder;, "Ljavafx/scene/control/cell/TextFieldTableCellBuilder<TS;TT;TB;>;"
    return-object v0
.end method

.method public bridge synthetic build()Ljavafx/scene/control/TableCell;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/TextFieldTableCellBuilder;, "Ljavafx/scene/control/cell/TextFieldTableCellBuilder<TS;TT;TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/cell/TextFieldTableCellBuilder;->build()Ljavafx/scene/control/cell/TextFieldTableCell;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/cell/TextFieldTableCellBuilder;, "Ljavafx/scene/control/cell/TextFieldTableCellBuilder<TS;TT;TB;>;"
    return-object v0
.end method

.method public build()Ljavafx/scene/control/cell/TextFieldTableCell;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/cell/TextFieldTableCell",
            "<TS;TT;>;"
        }
    .end annotation

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/TextFieldTableCellBuilder;, "Ljavafx/scene/control/cell/TextFieldTableCellBuilder<TS;TT;TB;>;"
    new-instance v2, Ljavafx/scene/control/cell/TextFieldTableCell;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/scene/control/cell/TextFieldTableCell;-><init>()V

    move-object v1, v2

    .line 68
    .local v1, "x":Ljavafx/scene/control/cell/TextFieldTableCell;, "Ljavafx/scene/control/cell/TextFieldTableCell<TS;TT;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/cell/TextFieldTableCellBuilder;->applyTo(Ljavafx/scene/control/cell/TextFieldTableCell;)V

    .line 69
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/cell/TextFieldTableCellBuilder;, "Ljavafx/scene/control/cell/TextFieldTableCellBuilder<TS;TT;TB;>;"
    return-object v0
.end method

.method public converter(Ljavafx/util/StringConverter;)Ljavafx/scene/control/cell/TextFieldTableCellBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/util/StringConverter",
            "<TT;>;)TB;"
        }
    .end annotation

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/TextFieldTableCellBuilder;, "Ljavafx/scene/control/cell/TextFieldTableCellBuilder<TS;TT;TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/util/StringConverter;, "Ljavafx/util/StringConverter<TT;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/cell/TextFieldTableCellBuilder;->converter:Ljavafx/util/StringConverter;

    .line 59
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljavafx/scene/control/cell/TextFieldTableCellBuilder;->__set:Z

    .line 60
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/cell/TextFieldTableCellBuilder;, "Ljavafx/scene/control/cell/TextFieldTableCellBuilder<TS;TT;TB;>;"
    return-object v0
.end method
