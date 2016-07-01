.class public Ljavafx/scene/control/TableCellBuilder;
.super Ljavafx/scene/control/CellBuilder;
.source "TableCellBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljavafx/scene/control/TableCellBuilder",
        "<TS;TT;TB;>;>",
        "Ljavafx/scene/control/CellBuilder",
        "<TT;TB;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableCellBuilder;, "Ljavafx/scene/control/TableCellBuilder<TS;TT;TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/CellBuilder;-><init>()V

    .line 38
    return-void
.end method

.method public static create()Ljavafx/scene/control/TableCellBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljavafx/scene/control/TableCellBuilder",
            "<TS;TT;*>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljavafx/scene/control/TableCellBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/control/TableCellBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableCellBuilder;, "Ljavafx/scene/control/TableCellBuilder<TS;TT;TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TableCellBuilder;->build()Ljavafx/scene/control/TableCell;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableCellBuilder;, "Ljavafx/scene/control/TableCellBuilder<TS;TT;TB;>;"
    return-object v0
.end method

.method public bridge synthetic build()Ljavafx/scene/control/Cell;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableCellBuilder;, "Ljavafx/scene/control/TableCellBuilder<TS;TT;TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TableCellBuilder;->build()Ljavafx/scene/control/TableCell;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableCellBuilder;, "Ljavafx/scene/control/TableCellBuilder<TS;TT;TB;>;"
    return-object v0
.end method

.method public build()Ljavafx/scene/control/TableCell;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/TableCell",
            "<TS;TT;>;"
        }
    .end annotation

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableCellBuilder;, "Ljavafx/scene/control/TableCellBuilder<TS;TT;TB;>;"
    new-instance v2, Ljavafx/scene/control/TableCell;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/scene/control/TableCell;-><init>()V

    move-object v1, v2

    .line 51
    .local v1, "x":Ljavafx/scene/control/TableCell;, "Ljavafx/scene/control/TableCell<TS;TT;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TableCellBuilder;->applyTo(Ljavafx/scene/control/Cell;)V

    .line 52
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TableCellBuilder;, "Ljavafx/scene/control/TableCellBuilder<TS;TT;TB;>;"
    return-object v0
.end method
