.class public Ljavafx/scene/control/TableRowBuilder;
.super Ljavafx/scene/control/IndexedCellBuilder;
.source "TableRowBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljavafx/scene/control/TableRowBuilder",
        "<TT;TB;>;>",
        "Ljavafx/scene/control/IndexedCellBuilder",
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

    .local v0, "this":Ljavafx/scene/control/TableRowBuilder;, "Ljavafx/scene/control/TableRowBuilder<TT;TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/IndexedCellBuilder;-><init>()V

    .line 38
    return-void
.end method

.method public static create()Ljavafx/scene/control/TableRowBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljavafx/scene/control/TableRowBuilder",
            "<TT;*>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljavafx/scene/control/TableRowBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/control/TableRowBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableRowBuilder;, "Ljavafx/scene/control/TableRowBuilder<TT;TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TableRowBuilder;->build()Ljavafx/scene/control/TableRow;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableRowBuilder;, "Ljavafx/scene/control/TableRowBuilder<TT;TB;>;"
    return-object v0
.end method

.method public bridge synthetic build()Ljavafx/scene/control/Cell;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableRowBuilder;, "Ljavafx/scene/control/TableRowBuilder<TT;TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TableRowBuilder;->build()Ljavafx/scene/control/TableRow;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableRowBuilder;, "Ljavafx/scene/control/TableRowBuilder<TT;TB;>;"
    return-object v0
.end method

.method public bridge synthetic build()Ljavafx/scene/control/IndexedCell;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableRowBuilder;, "Ljavafx/scene/control/TableRowBuilder<TT;TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TableRowBuilder;->build()Ljavafx/scene/control/TableRow;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableRowBuilder;, "Ljavafx/scene/control/TableRowBuilder<TT;TB;>;"
    return-object v0
.end method

.method public build()Ljavafx/scene/control/TableRow;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/TableRow",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableRowBuilder;, "Ljavafx/scene/control/TableRowBuilder<TT;TB;>;"
    new-instance v2, Ljavafx/scene/control/TableRow;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/scene/control/TableRow;-><init>()V

    move-object v1, v2

    .line 51
    .local v1, "x":Ljavafx/scene/control/TableRow;, "Ljavafx/scene/control/TableRow<TT;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TableRowBuilder;->applyTo(Ljavafx/scene/control/Cell;)V

    .line 52
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TableRowBuilder;, "Ljavafx/scene/control/TableRowBuilder<TT;TB;>;"
    return-object v0
.end method
