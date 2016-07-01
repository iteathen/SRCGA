.class Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$1;
.super Lcom/sun/javafx/scene/control/SelectedCellsMap;
.source "TreeTableView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;-><init>(Ljavafx/scene/control/TreeTableView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/scene/control/SelectedCellsMap",
        "<",
        "Ljavafx/scene/control/TreeTablePosition",
        "<TS;*>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;


# direct methods
.method constructor <init>(Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;Ljavafx/collections/ListChangeListener;)V
    .locals 5

    .prologue
    .line 2313
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$1;, "Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$1;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;
    move-object v2, p2

    .local v2, "listener":Ljavafx/collections/ListChangeListener;, "Ljavafx/collections/ListChangeListener<Ljavafx/scene/control/TreeTablePosition<TS;*>;>;"
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$1;->this$0:Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Lcom/sun/javafx/scene/control/SelectedCellsMap;-><init>(Ljavafx/collections/ListChangeListener;)V

    return-void
.end method


# virtual methods
.method public isCellSelectionEnabled()Z
    .locals 2

    .prologue
    .line 2315
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$1;, "Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$1;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$1;->this$0:Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->isCellSelectionEnabled()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$1;, "Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$1;"
    return v0
.end method
