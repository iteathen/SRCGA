.class Ljavafx/scene/control/DialogPane$7;
.super Ljavafx/beans/property/SimpleObjectProperty;
.source "DialogPane.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/DialogPane;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/SimpleObjectProperty",
        "<",
        "Ljavafx/scene/Node;",
        ">;"
    }
.end annotation


# instance fields
.field expandableContentRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljavafx/scene/control/DialogPane;


# direct methods
.method constructor <init>(Ljavafx/scene/control/DialogPane;Ljavafx/scene/Node;)V
    .locals 8

    .prologue
    .line 601
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/DialogPane$7;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/DialogPane;
    move-object v2, p2

    .local v2, "x0":Ljavafx/scene/Node;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/control/DialogPane$7;->this$0:Ljavafx/scene/control/DialogPane;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;)V

    .line 602
    move-object v3, v0

    new-instance v4, Ljava/lang/ref/WeakReference;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, v3, Ljavafx/scene/control/DialogPane$7;->expandableContentRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected invalidated()V
    .locals 8

    .prologue
    .line 604
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/DialogPane$7;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/DialogPane$7;->expandableContentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/scene/Node;

    move-object v1, v3

    .line 605
    .local v1, "oldExpandableContent":Ljavafx/scene/Node;
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 606
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/DialogPane$7;->this$0:Ljavafx/scene/control/DialogPane;

    invoke-virtual {v3}, Ljavafx/scene/control/DialogPane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v3

    .line 609
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/DialogPane$7;->this$0:Ljavafx/scene/control/DialogPane;

    invoke-virtual {v3}, Ljavafx/scene/control/DialogPane;->getExpandableContent()Ljavafx/scene/Node;

    move-result-object v3

    move-object v2, v3

    .line 610
    .local v2, "newExpandableContent":Ljavafx/scene/Node;
    move-object v3, v0

    new-instance v4, Ljava/lang/ref/WeakReference;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v2

    invoke-direct {v5, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, v3, Ljavafx/scene/control/DialogPane$7;->expandableContentRef:Ljava/lang/ref/WeakReference;

    .line 611
    move-object v3, v2

    if-eqz v3, :cond_2

    .line 612
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/DialogPane$7;->this$0:Ljavafx/scene/control/DialogPane;

    invoke-virtual {v4}, Ljavafx/scene/control/DialogPane;->isExpanded()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljavafx/scene/Node;->setVisible(Z)V

    .line 613
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/DialogPane$7;->this$0:Ljavafx/scene/control/DialogPane;

    invoke-virtual {v4}, Ljavafx/scene/control/DialogPane;->isExpanded()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljavafx/scene/Node;->setManaged(Z)V

    .line 615
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/Node;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v3

    const-string v4, "expandable-content"

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 616
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/Node;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v3

    const-string v4, "expandable-content"

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 619
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/DialogPane$7;->this$0:Ljavafx/scene/control/DialogPane;

    invoke-virtual {v3}, Ljavafx/scene/control/DialogPane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v2

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 621
    :cond_2
    return-void
.end method
