.class Ljavafx/scene/control/Accordion$1;
.super Lcom/sun/javafx/collections/TrackableObservableList;
.source "Accordion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/Accordion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/collections/TrackableObservableList",
        "<",
        "Ljavafx/scene/control/TitledPane;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/Accordion;


# direct methods
.method constructor <init>(Ljavafx/scene/control/Accordion;)V
    .locals 4

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Accordion$1;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/Accordion;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/Accordion$1;->this$0:Ljavafx/scene/control/Accordion;

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
            "Ljavafx/scene/control/TitledPane;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Accordion$1;
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<Ljavafx/scene/control/TitledPane;>;"
    :cond_0
    :goto_0
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 112
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/collections/ListChangeListener$Change;->wasRemoved()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/Accordion$1;->this$0:Ljavafx/scene/control/Accordion;

    invoke-static {v4}, Ljavafx/scene/control/Accordion;->access$000(Ljavafx/scene/control/Accordion;)Ljavafx/beans/property/ObjectProperty;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/beans/property/ObjectProperty;->isBound()Z

    move-result v4

    if-nez v4, :cond_0

    .line 113
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

    if-eqz v4, :cond_1

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/TitledPane;

    move-object v3, v4

    .line 114
    .local v3, "pane":Ljavafx/scene/control/TitledPane;
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/collections/ListChangeListener$Change;->getAddedSubList()Ljava/util/List;

    move-result-object v4

    move-object v5, v3

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/Accordion$1;->this$0:Ljavafx/scene/control/Accordion;

    invoke-virtual {v4}, Ljavafx/scene/control/Accordion;->getExpandedPane()Ljavafx/scene/control/TitledPane;

    move-result-object v4

    move-object v5, v3

    if-ne v4, v5, :cond_2

    .line 115
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/Accordion$1;->this$0:Ljavafx/scene/control/Accordion;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljavafx/scene/control/Accordion;->setExpandedPane(Ljavafx/scene/control/TitledPane;)V

    .line 116
    .line 118
    .end local v3    # "pane":Ljavafx/scene/control/TitledPane;
    :cond_1
    goto :goto_0

    .restart local v3    # "pane":Ljavafx/scene/control/TitledPane;
    :cond_2
    goto :goto_1

    .line 121
    .end local v3    # "pane":Ljavafx/scene/control/TitledPane;
    :cond_3
    return-void
.end method
