.class Ljavafx/scene/control/Menu$6;
.super Lcom/sun/javafx/collections/TrackableObservableList;
.source "Menu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/Menu;
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
.field final synthetic this$0:Ljavafx/scene/control/Menu;


# direct methods
.method constructor <init>(Ljavafx/scene/control/Menu;)V
    .locals 4

    .prologue
    .line 358
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Menu$6;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/Menu;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/Menu$6;->this$0:Ljavafx/scene/control/Menu;

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/collections/TrackableObservableList;-><init>()V

    return-void
.end method


# virtual methods
.method protected onChanged(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 8
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
    .line 360
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Menu$6;
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<Ljavafx/scene/control/MenuItem;>;"
    :goto_0
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 362
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

    .line 363
    .local v3, "item":Ljavafx/scene/control/MenuItem;
    move-object v4, v3

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljavafx/scene/control/MenuItem;->setParentMenu(Ljavafx/scene/control/Menu;)V

    .line 364
    move-object v4, v3

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljavafx/scene/control/MenuItem;->setParentPopup(Ljavafx/scene/control/ContextMenu;)V

    .line 365
    goto :goto_1

    .line 368
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

    .line 369
    .restart local v3    # "item":Ljavafx/scene/control/MenuItem;
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/control/MenuItem;->getParentMenu()Ljavafx/scene/control/Menu;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 370
    invoke-static {}, Lcom/sun/javafx/scene/control/Logging;->getControlsLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adding MenuItem "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v3

    .line 371
    invoke-virtual {v6}, Ljavafx/scene/control/MenuItem;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " that has already been added to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v3

    .line 372
    invoke-virtual {v6}, Ljavafx/scene/control/MenuItem;->getParentMenu()Ljavafx/scene/control/Menu;

    move-result-object v6

    invoke-virtual {v6}, Ljavafx/scene/control/Menu;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 370
    invoke-virtual {v4, v5}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    .line 373
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/control/MenuItem;->getParentMenu()Ljavafx/scene/control/Menu;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/scene/control/Menu;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v5, v3

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v4

    .line 376
    :cond_1
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/Menu$6;->this$0:Ljavafx/scene/control/Menu;

    invoke-virtual {v4, v5}, Ljavafx/scene/control/MenuItem;->setParentMenu(Ljavafx/scene/control/Menu;)V

    .line 377
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/Menu$6;->this$0:Ljavafx/scene/control/Menu;

    invoke-virtual {v5}, Ljavafx/scene/control/Menu;->getParentPopup()Ljavafx/scene/control/ContextMenu;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavafx/scene/control/MenuItem;->setParentPopup(Ljavafx/scene/control/ContextMenu;)V

    .line 378
    goto :goto_2

    .end local v3    # "item":Ljavafx/scene/control/MenuItem;
    :cond_2
    goto/16 :goto_0

    .line 380
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/Menu$6;->this$0:Ljavafx/scene/control/Menu;

    invoke-virtual {v4}, Ljavafx/scene/control/Menu;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v4

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->size()I

    move-result v4

    if-nez v4, :cond_4

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/Menu$6;->this$0:Ljavafx/scene/control/Menu;

    invoke-virtual {v4}, Ljavafx/scene/control/Menu;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 381
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/Menu$6;->this$0:Ljavafx/scene/control/Menu;

    invoke-static {v4}, Ljavafx/scene/control/Menu;->access$000(Ljavafx/scene/control/Menu;)Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->set(Z)V

    .line 383
    :cond_4
    return-void
.end method
