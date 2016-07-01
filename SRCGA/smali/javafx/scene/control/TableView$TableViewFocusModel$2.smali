.class Ljavafx/scene/control/TableView$TableViewFocusModel$2;
.super Ljavafx/beans/property/ReadOnlyObjectWrapper;
.source "TableView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/control/TableView$TableViewFocusModel;->focusedCellPropertyImpl()Ljavafx/beans/property/ReadOnlyObjectWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/ReadOnlyObjectWrapper",
        "<",
        "Ljavafx/scene/control/TablePosition;",
        ">;"
    }
.end annotation


# instance fields
.field private old:Ljavafx/scene/control/TablePosition;

.field final synthetic this$0:Ljavafx/scene/control/TableView$TableViewFocusModel;


# direct methods
.method constructor <init>(Ljavafx/scene/control/TableView$TableViewFocusModel;Ljavafx/scene/control/TablePosition;)V
    .locals 5

    .prologue
    .line 3236
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$TableViewFocusModel$2;, "Ljavafx/scene/control/TableView$TableViewFocusModel$2;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/TableView$TableViewFocusModel;
    move-object v2, p2

    .local v2, "x0":Ljavafx/scene/control/TablePosition;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/control/TableView$TableViewFocusModel$2;->this$0:Ljavafx/scene/control/TableView$TableViewFocusModel;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljavafx/beans/property/ReadOnlyObjectWrapper;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 3251
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$TableViewFocusModel$2;, "Ljavafx/scene/control/TableView$TableViewFocusModel$2;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableView$TableViewFocusModel$2;->this$0:Ljavafx/scene/control/TableView$TableViewFocusModel;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableView$TableViewFocusModel$2;, "Ljavafx/scene/control/TableView$TableViewFocusModel$2;"
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3256
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$TableViewFocusModel$2;, "Ljavafx/scene/control/TableView$TableViewFocusModel$2;"
    const-string v1, "focusedCell"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableView$TableViewFocusModel$2;, "Ljavafx/scene/control/TableView$TableViewFocusModel$2;"
    return-object v0
.end method

.method protected invalidated()V
    .locals 4

    .prologue
    .line 3239
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$TableViewFocusModel$2;, "Ljavafx/scene/control/TableView$TableViewFocusModel$2;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TableView$TableViewFocusModel$2;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3247
    :goto_0
    return-void

    .line 3241
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableView$TableViewFocusModel$2;->old:Ljavafx/scene/control/TablePosition;

    if-eqz v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableView$TableViewFocusModel$2;->old:Ljavafx/scene/control/TablePosition;

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TableView$TableViewFocusModel$2;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavafx/scene/control/TablePosition;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3242
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableView$TableViewFocusModel$2;->this$0:Ljavafx/scene/control/TableView$TableViewFocusModel;

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TableView$TableViewFocusModel$2;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/TablePosition;

    invoke-virtual {v2}, Ljavafx/scene/control/TablePosition;->getRow()I

    move-result v2

    invoke-virtual {v1, v2}, Ljavafx/scene/control/TableView$TableViewFocusModel;->setFocusedIndex(I)V

    .line 3243
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableView$TableViewFocusModel$2;->this$0:Ljavafx/scene/control/TableView$TableViewFocusModel;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TableView$TableViewFocusModel$2;->this$0:Ljavafx/scene/control/TableView$TableViewFocusModel;

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TableView$TableViewFocusModel$2;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/TablePosition;

    invoke-virtual {v3}, Ljavafx/scene/control/TablePosition;->getRow()I

    move-result v3

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TableView$TableViewFocusModel;->getModelItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavafx/scene/control/TableView$TableViewFocusModel;->setFocusedItem(Ljava/lang/Object;)V

    .line 3245
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TableView$TableViewFocusModel$2;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/TablePosition;

    iput-object v2, v1, Ljavafx/scene/control/TableView$TableViewFocusModel$2;->old:Ljavafx/scene/control/TablePosition;

    .line 3247
    :cond_2
    goto :goto_0
.end method
