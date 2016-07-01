.class final Ljavafx/scene/control/cell/CellUtils$1;
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
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/CellUtils$1;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/util/StringConverter;-><init>()V

    return-void
.end method


# virtual methods
.method public fromString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/CellUtils$1;
    move-object v1, p1

    .local v1, "string":Ljava/lang/String;
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/cell/CellUtils$1;
    return-object v0
.end method

.method public toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/CellUtils$1;
    move-object v1, p1

    .local v1, "t":Ljava/lang/Object;
    move-object v2, v1

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/cell/CellUtils$1;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/cell/CellUtils$1;
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
