.class Ljavafx/scene/control/ContextMenu$2;
.super Lcom/sun/javafx/collections/TrackableObservableList;
.source "ContextMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/ContextMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/collections/TrackableObservableList",
        "<",
        "Ljavafx/scene/control/MenuItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/ContextMenu;


# direct methods
.method constructor <init>(Ljavafx/scene/control/ContextMenu;)V
    .locals 4

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ContextMenu$2;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/ContextMenu;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/ContextMenu$2;->this$0:Ljavafx/scene/control/ContextMenu;

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/collections/TrackableObservableList;-><init>()V

    return-void
.end method


# virtual methods
.method protected onChanged(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener$Change",
            "<",
            "Ljavafx/scene/control/MenuItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 180
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ContextMenu$2;
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<Ljavafx/scene/control/MenuItem;>;"
    :goto_0
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 181
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/collections/ListChangeListener$Change;->getRemoved()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_1
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/MenuItem;

    move-object v3, v4

    .line 182
    .local v3, "item":Ljavafx/scene/control/MenuItem;
    move-object v4, v3

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljavafx/scene/control/MenuItem;->setParentPopup(Ljavafx/scene/control/ContextMenu;)V

    .line 183
    goto :goto_1

    .line 184
    .end local v3    # "item":Ljavafx/scene/control/MenuItem;
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/collections/ListChangeListener$Change;->getAddedSubList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_2
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/MenuItem;

    move-object v3, v4

    .line 185
    .restart local v3    # "item":Ljavafx/scene/control/MenuItem;
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/control/MenuItem;->getParentPopup()Ljavafx/scene/control/ContextMenu;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 189
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/control/MenuItem;->getParentPopup()Ljavafx/scene/control/ContextMenu;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/scene/control/ContextMenu;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v5, v3

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v4

    .line 191
    :cond_1
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/ContextMenu$2;->this$0:Ljavafx/scene/control/ContextMenu;

    invoke-virtual {v4, v5}, Ljavafx/scene/control/MenuItem;->setParentPopup(Ljavafx/scene/control/ContextMenu;)V

    .line 192
    goto :goto_2

    .end local v3    # "item":Ljavafx/scene/control/MenuItem;
    :cond_2
    goto :goto_0

    .line 194
    :cond_3
    return-void
.end method
