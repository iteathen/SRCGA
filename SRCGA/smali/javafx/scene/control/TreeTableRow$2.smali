.class Ljavafx/scene/control/TreeTableRow$2;
.super Ljavafx/beans/property/ReadOnlyObjectWrapper;
.source "TreeTableRow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/TreeTableRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/ReadOnlyObjectWrapper",
        "<",
        "Ljavafx/scene/control/TreeItem",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field oldValue:Ljavafx/scene/control/TreeItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljavafx/scene/control/TreeTableRow;


# direct methods
.method constructor <init>(Ljavafx/scene/control/TreeTableRow;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableRow$2;, "Ljavafx/scene/control/TreeTableRow$2;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/TreeTableRow;
    move-object v2, p2

    .local v2, "x0":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "x1":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/control/TreeTableRow$2;->this$0:Ljavafx/scene/control/TreeTableRow;

    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-direct {v4, v5, v6}, Ljavafx/beans/property/ReadOnlyObjectWrapper;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Ljavafx/scene/control/TreeTableRow$2;->oldValue:Ljavafx/scene/control/TreeItem;

    return-void
.end method


# virtual methods
.method protected invalidated()V
    .locals 3

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableRow$2;, "Ljavafx/scene/control/TreeTableRow$2;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableRow$2;->oldValue:Ljavafx/scene/control/TreeItem;

    if-eqz v1, :cond_0

    .line 155
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableRow$2;->oldValue:Ljavafx/scene/control/TreeItem;

    invoke-virtual {v1}, Ljavafx/scene/control/TreeItem;->expandedProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TreeTableRow$2;->this$0:Ljavafx/scene/control/TreeTableRow;

    invoke-static {v2}, Ljavafx/scene/control/TreeTableRow;->access$000(Ljavafx/scene/control/TreeTableRow;)Ljavafx/beans/WeakInvalidationListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavafx/beans/property/BooleanProperty;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 158
    :cond_0
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableRow$2;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/TreeItem;

    iput-object v2, v1, Ljavafx/scene/control/TreeTableRow$2;->oldValue:Ljavafx/scene/control/TreeItem;

    .line 160
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableRow$2;->oldValue:Ljavafx/scene/control/TreeItem;

    if-eqz v1, :cond_1

    .line 161
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableRow$2;->this$0:Ljavafx/scene/control/TreeTableRow;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TreeTableRow$2;->oldValue:Ljavafx/scene/control/TreeItem;

    invoke-virtual {v2}, Ljavafx/scene/control/TreeItem;->isExpanded()Z

    move-result v2

    invoke-static {v1, v2}, Ljavafx/scene/control/TreeTableRow;->access$102(Ljavafx/scene/control/TreeTableRow;Z)Z

    move-result v1

    .line 162
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableRow$2;->oldValue:Ljavafx/scene/control/TreeItem;

    invoke-virtual {v1}, Ljavafx/scene/control/TreeItem;->expandedProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TreeTableRow$2;->this$0:Ljavafx/scene/control/TreeTableRow;

    invoke-static {v2}, Ljavafx/scene/control/TreeTableRow;->access$000(Ljavafx/scene/control/TreeTableRow;)Ljavafx/beans/WeakInvalidationListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavafx/beans/property/BooleanProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 164
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableRow$2;->this$0:Ljavafx/scene/control/TreeTableRow;

    invoke-static {v1}, Ljavafx/scene/control/TreeTableRow;->access$000(Ljavafx/scene/control/TreeTableRow;)Ljavafx/beans/WeakInvalidationListener;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TreeTableRow$2;->oldValue:Ljavafx/scene/control/TreeItem;

    invoke-virtual {v2}, Ljavafx/scene/control/TreeItem;->expandedProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavafx/beans/WeakInvalidationListener;->invalidated(Ljavafx/beans/Observable;)V

    .line 166
    :cond_1
    return-void
.end method
