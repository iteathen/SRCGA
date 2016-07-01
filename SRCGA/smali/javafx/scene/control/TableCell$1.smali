.class Ljavafx/scene/control/TableCell$1;
.super Ljavafx/beans/property/ReadOnlyObjectWrapper;
.source "TableCell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/TableCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/ReadOnlyObjectWrapper",
        "<",
        "Ljavafx/scene/control/TableColumn",
        "<TS;TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/TableCell;


# direct methods
.method constructor <init>(Ljavafx/scene/control/TableCell;)V
    .locals 4

    .prologue
    .line 198
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableCell$1;, "Ljavafx/scene/control/TableCell$1;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/TableCell;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/TableCell$1;->this$0:Ljavafx/scene/control/TableCell;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/ReadOnlyObjectWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 204
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableCell$1;, "Ljavafx/scene/control/TableCell$1;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableCell$1;->this$0:Ljavafx/scene/control/TableCell;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableCell$1;, "Ljavafx/scene/control/TableCell$1;"
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 208
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableCell$1;, "Ljavafx/scene/control/TableCell$1;"
    const-string v1, "tableColumn"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableCell$1;, "Ljavafx/scene/control/TableCell$1;"
    return-object v0
.end method

.method protected invalidated()V
    .locals 2

    .prologue
    .line 200
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableCell$1;, "Ljavafx/scene/control/TableCell$1;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableCell$1;->this$0:Ljavafx/scene/control/TableCell;

    invoke-static {v1}, Ljavafx/scene/control/TableCell;->access$000(Ljavafx/scene/control/TableCell;)V

    .line 201
    return-void
.end method
