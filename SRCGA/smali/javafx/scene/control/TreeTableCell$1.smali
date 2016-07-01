.class Ljavafx/scene/control/TreeTableCell$1;
.super Ljavafx/beans/property/ReadOnlyObjectWrapper;
.source "TreeTableCell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/TreeTableCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/ReadOnlyObjectWrapper",
        "<",
        "Ljavafx/scene/control/TreeTableColumn",
        "<TS;TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/TreeTableCell;


# direct methods
.method constructor <init>(Ljavafx/scene/control/TreeTableCell;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 206
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableCell$1;, "Ljavafx/scene/control/TreeTableCell$1;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/TreeTableCell;
    move-object v2, p2

    .local v2, "x0":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "x1":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/control/TreeTableCell$1;->this$0:Ljavafx/scene/control/TreeTableCell;

    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-direct {v4, v5, v6}, Ljavafx/beans/property/ReadOnlyObjectWrapper;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected invalidated()V
    .locals 2

    .prologue
    .line 208
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableCell$1;, "Ljavafx/scene/control/TreeTableCell$1;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableCell$1;->this$0:Ljavafx/scene/control/TreeTableCell;

    invoke-static {v1}, Ljavafx/scene/control/TreeTableCell;->access$000(Ljavafx/scene/control/TreeTableCell;)V

    .line 209
    return-void
.end method
