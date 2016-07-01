.class final Ljavafx/scene/control/cell/CellUtils$2;
.super Ljavafx/util/StringConverter;
.source "CellUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/cell/CellUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/util/StringConverter",
        "<",
        "Ljavafx/scene/control/TreeItem",
        "<*>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/CellUtils$2;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/util/StringConverter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic fromString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/CellUtils$2;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/cell/CellUtils$2;->fromString(Ljava/lang/String;)Ljavafx/scene/control/TreeItem;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/cell/CellUtils$2;
    return-object v0
.end method

.method public fromString(Ljava/lang/String;)Ljavafx/scene/control/TreeItem;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljavafx/scene/control/TreeItem",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/CellUtils$2;
    move-object v1, p1

    .local v1, "string":Ljava/lang/String;
    new-instance v2, Ljavafx/scene/control/TreeItem;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Ljavafx/scene/control/TreeItem;-><init>(Ljava/lang/Object;)V

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/cell/CellUtils$2;
    return-object v0
.end method

.method public bridge synthetic toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/CellUtils$2;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavafx/scene/control/TreeItem;

    invoke-virtual {v2, v3}, Ljavafx/scene/control/cell/CellUtils$2;->toString(Ljavafx/scene/control/TreeItem;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/cell/CellUtils$2;
    return-object v0
.end method

.method public toString(Ljavafx/scene/control/TreeItem;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TreeItem",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/CellUtils$2;
    move-object v1, p1

    .local v1, "treeItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<*>;"
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/TreeItem;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    const-string v2, ""

    .line 65
    :goto_0
    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/cell/CellUtils$2;
    return-object v0

    .line 64
    .restart local v0    # "this":Ljavafx/scene/control/cell/CellUtils$2;
    :cond_1
    move-object v2, v1

    .line 65
    invoke-virtual {v2}, Ljavafx/scene/control/TreeItem;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
