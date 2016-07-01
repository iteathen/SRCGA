.class public Ljavafx/scene/control/cell/CheckBoxTableCellBuilder;
.super Ljavafx/scene/control/TableCellBuilder;
.source "CheckBoxTableCellBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljavafx/scene/control/cell/CheckBoxTableCellBuilder",
        "<TS;TT;TB;>;>",
        "Ljavafx/scene/control/TableCellBuilder",
        "<TS;TT;TB;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private __set:I

.field private converter:Ljavafx/util/StringConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/util/StringConverter",
            "<TT;>;"
        }
    .end annotation
.end field

.field private selectedStateCallback:Ljavafx/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/util/Callback",
            "<",
            "Ljava/lang/Integer;",
            "Ljavafx/beans/value/ObservableValue",
            "<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/CheckBoxTableCellBuilder;, "Ljavafx/scene/control/cell/CheckBoxTableCellBuilder<TS;TT;TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/TableCellBuilder;-><init>()V

    .line 38
    return-void
.end method

.method public static create()Ljavafx/scene/control/cell/CheckBoxTableCellBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljavafx/scene/control/cell/CheckBoxTableCellBuilder",
            "<TS;TT;*>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljavafx/scene/control/cell/CheckBoxTableCellBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/control/cell/CheckBoxTableCellBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public applyTo(Ljavafx/scene/control/cell/CheckBoxTableCell;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/cell/CheckBoxTableCell",
            "<TS;TT;>;)V"
        }
    .end annotation

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/CheckBoxTableCellBuilder;, "Ljavafx/scene/control/cell/CheckBoxTableCellBuilder<TS;TT;TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/control/cell/CheckBoxTableCell;, "Ljavafx/scene/control/cell/CheckBoxTableCell<TS;TT;>;"
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Ljavafx/scene/control/TableCellBuilder;->applyTo(Ljavafx/scene/control/Cell;)V

    .line 49
    move-object v3, v0

    iget v3, v3, Ljavafx/scene/control/cell/CheckBoxTableCellBuilder;->__set:I

    move v2, v3

    .line 50
    .local v2, "set":I
    move v3, v2

    const/4 v4, 0x1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/cell/CheckBoxTableCellBuilder;->converter:Ljavafx/util/StringConverter;

    invoke-virtual {v3, v4}, Ljavafx/scene/control/cell/CheckBoxTableCell;->setConverter(Ljavafx/util/StringConverter;)V

    .line 51
    :cond_0
    move v3, v2

    const/4 v4, 0x2

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/cell/CheckBoxTableCellBuilder;->selectedStateCallback:Ljavafx/util/Callback;

    invoke-virtual {v3, v4}, Ljavafx/scene/control/cell/CheckBoxTableCell;->setSelectedStateCallback(Ljavafx/util/Callback;)V

    .line 52
    :cond_1
    return-void
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/CheckBoxTableCellBuilder;, "Ljavafx/scene/control/cell/CheckBoxTableCellBuilder<TS;TT;TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/cell/CheckBoxTableCellBuilder;->build()Ljavafx/scene/control/cell/CheckBoxTableCell;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/cell/CheckBoxTableCellBuilder;, "Ljavafx/scene/control/cell/CheckBoxTableCellBuilder<TS;TT;TB;>;"
    return-object v0
.end method

.method public bridge synthetic build()Ljavafx/scene/control/Cell;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/CheckBoxTableCellBuilder;, "Ljavafx/scene/control/cell/CheckBoxTableCellBuilder<TS;TT;TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/cell/CheckBoxTableCellBuilder;->build()Ljavafx/scene/control/cell/CheckBoxTableCell;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/cell/CheckBoxTableCellBuilder;, "Ljavafx/scene/control/cell/CheckBoxTableCellBuilder<TS;TT;TB;>;"
    return-object v0
.end method

.method public bridge synthetic build()Ljavafx/scene/control/TableCell;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/CheckBoxTableCellBuilder;, "Ljavafx/scene/control/cell/CheckBoxTableCellBuilder<TS;TT;TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/cell/CheckBoxTableCellBuilder;->build()Ljavafx/scene/control/cell/CheckBoxTableCell;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/cell/CheckBoxTableCellBuilder;, "Ljavafx/scene/control/cell/CheckBoxTableCellBuilder<TS;TT;TB;>;"
    return-object v0
.end method

.method public build()Ljavafx/scene/control/cell/CheckBoxTableCell;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/cell/CheckBoxTableCell",
            "<TS;TT;>;"
        }
    .end annotation

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/CheckBoxTableCellBuilder;, "Ljavafx/scene/control/cell/CheckBoxTableCellBuilder<TS;TT;TB;>;"
    new-instance v2, Ljavafx/scene/control/cell/CheckBoxTableCell;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/scene/control/cell/CheckBoxTableCell;-><init>()V

    move-object v1, v2

    .line 81
    .local v1, "x":Ljavafx/scene/control/cell/CheckBoxTableCell;, "Ljavafx/scene/control/cell/CheckBoxTableCell<TS;TT;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/cell/CheckBoxTableCellBuilder;->applyTo(Ljavafx/scene/control/cell/CheckBoxTableCell;)V

    .line 82
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/cell/CheckBoxTableCellBuilder;, "Ljavafx/scene/control/cell/CheckBoxTableCellBuilder<TS;TT;TB;>;"
    return-object v0
.end method

.method public converter(Ljavafx/util/StringConverter;)Ljavafx/scene/control/cell/CheckBoxTableCellBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/util/StringConverter",
            "<TT;>;)TB;"
        }
    .end annotation

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/CheckBoxTableCellBuilder;, "Ljavafx/scene/control/cell/CheckBoxTableCellBuilder<TS;TT;TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/util/StringConverter;, "Ljavafx/util/StringConverter<TT;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/cell/CheckBoxTableCellBuilder;->converter:Ljavafx/util/StringConverter;

    .line 61
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/control/cell/CheckBoxTableCellBuilder;->__set:I

    const/4 v4, 0x1

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Ljavafx/scene/control/cell/CheckBoxTableCellBuilder;->__set:I

    .line 62
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/cell/CheckBoxTableCellBuilder;, "Ljavafx/scene/control/cell/CheckBoxTableCellBuilder<TS;TT;TB;>;"
    return-object v0
.end method

.method public selectedStateCallback(Ljavafx/util/Callback;)Ljavafx/scene/control/cell/CheckBoxTableCellBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/util/Callback",
            "<",
            "Ljava/lang/Integer;",
            "Ljavafx/beans/value/ObservableValue",
            "<",
            "Ljava/lang/Boolean;",
            ">;>;)TB;"
        }
    .end annotation

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/CheckBoxTableCellBuilder;, "Ljavafx/scene/control/cell/CheckBoxTableCellBuilder<TS;TT;TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljava/lang/Integer;Ljavafx/beans/value/ObservableValue<Ljava/lang/Boolean;>;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/cell/CheckBoxTableCellBuilder;->selectedStateCallback:Ljavafx/util/Callback;

    .line 72
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/control/cell/CheckBoxTableCellBuilder;->__set:I

    const/4 v4, 0x2

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Ljavafx/scene/control/cell/CheckBoxTableCellBuilder;->__set:I

    .line 73
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/cell/CheckBoxTableCellBuilder;, "Ljavafx/scene/control/cell/CheckBoxTableCellBuilder<TS;TT;TB;>;"
    return-object v0
.end method
