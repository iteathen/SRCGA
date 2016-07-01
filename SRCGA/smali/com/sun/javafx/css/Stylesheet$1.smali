.class Lcom/sun/javafx/css/Stylesheet$1;
.super Lcom/sun/javafx/collections/TrackableObservableList;
.source "Stylesheet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/css/Stylesheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/collections/TrackableObservableList",
        "<",
        "Lcom/sun/javafx/css/Rule;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/css/Stylesheet;


# direct methods
.method constructor <init>(Lcom/sun/javafx/css/Stylesheet;)V
    .locals 4

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/Stylesheet$1;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/css/Stylesheet;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/css/Stylesheet$1;->this$0:Lcom/sun/javafx/css/Stylesheet;

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
            "Lcom/sun/javafx/css/Rule;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/Stylesheet$1;
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<Lcom/sun/javafx/css/Rule;>;"
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/collections/ListChangeListener$Change;->reset()V

    .line 92
    :cond_0
    :goto_0
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 93
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/collections/ListChangeListener$Change;->wasAdded()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 94
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/collections/ListChangeListener$Change;->getAddedSubList()Ljava/util/List;

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

    check-cast v4, Lcom/sun/javafx/css/Rule;

    move-object v3, v4

    .line 95
    .local v3, "rule":Lcom/sun/javafx/css/Rule;
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/css/Stylesheet$1;->this$0:Lcom/sun/javafx/css/Stylesheet;

    invoke-virtual {v4, v5}, Lcom/sun/javafx/css/Rule;->setStylesheet(Lcom/sun/javafx/css/Stylesheet;)V

    .line 96
    goto :goto_1

    .end local v3    # "rule":Lcom/sun/javafx/css/Rule;
    :cond_1
    goto :goto_0

    .line 97
    :cond_2
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/collections/ListChangeListener$Change;->wasRemoved()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 98
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/collections/ListChangeListener$Change;->getRemoved()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_2
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/javafx/css/Rule;

    move-object v3, v4

    .line 99
    .restart local v3    # "rule":Lcom/sun/javafx/css/Rule;
    move-object v4, v3

    invoke-virtual {v4}, Lcom/sun/javafx/css/Rule;->getStylesheet()Lcom/sun/javafx/css/Stylesheet;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/css/Stylesheet$1;->this$0:Lcom/sun/javafx/css/Stylesheet;

    if-ne v4, v5, :cond_3

    move-object v4, v3

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sun/javafx/css/Rule;->setStylesheet(Lcom/sun/javafx/css/Stylesheet;)V

    .line 100
    :cond_3
    goto :goto_2

    .end local v3    # "rule":Lcom/sun/javafx/css/Rule;
    :cond_4
    goto :goto_0

    .line 103
    :cond_5
    return-void
.end method
